#!/usr/bin/env python3
"""
Extract alignment kernel timing data from nsys profiling reports.
"""

import subprocess
import json
import os
import re

# List of report names to process
REPORT_NAMES = [
    "report_cudasw4",
]

# those are the thoroughput numbers taken from the paper. 
DP_HLS_THROUGHPUT = {
    "report_cudasw4": 2081707.00,  # This is the throughput for the optimal config of the no traceback version for the protein kernel. This is not in the paper. 
}

F1_DISCOUNT = 1.65
G4DN_DISCOUNT = 0.752
P3_DISCOUNT = 3.06

def extract_nsys_report(report_name):
    """
    Run nsys stats command to extract GPU kernel summary as JSON.
    
    Args:
        report_name: Base name of the report (without .nsys-rep extension)
    
    Returns:
        Path to the generated JSON file, or None if extraction failed
    """
    input_file = os.path.join(".", f"{report_name}.nsys-rep")
    output_base = os.path.join(".", f"exported_{report_name}")
    
    if not os.path.exists(input_file):
        print(f"Warning: Input file not found: {input_file}")
        return None
    
    cmd = [
        "nsys", "stats",
        "--report", "gpukernsum",
        "-f", "json",
        "-o", output_base,
        input_file
    ]
    
    print(f"Running: {' '.join(cmd)}")
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
        print(result.stdout)
    except subprocess.CalledProcessError as e:
        print(f"Error extracting report {report_name}: {e}")
        print(f"stderr: {e.stderr}")
        return None
    
    # nsys adds _gpukernsum suffix to the output filename
    output_json = f"{output_base}_gpukernsum.json"
    
    if os.path.exists(output_json):
        return output_json
    else:
        print(f"Warning: Expected output file not found: {output_json}")
        return None


def find_alignment_kernel_time(json_file):
    """
    Parse the JSON report and find the alignment kernel entry.
    
    The alignment kernel typically has a name matching pattern:
    gasal_<type>_kernel<function_signature>
    
    Args:
        json_file: Path to the JSON file
    
    Returns:
        Dictionary with kernel name and time in seconds, or None if not found
    """
    # Pattern to match alignment kernels like:
    # void gasal_local_kernel<...>
    # void gasal_global_kernel<...>
    # void gasal_banded_kernel<...>
    kernel_pattern = re.compile(r'cudasw4::NW_local_affine_single_pass_half2<')
    
    try:
        with open(json_file, 'r') as f:
            data = json.load(f)
    except (json.JSONDecodeError, FileNotFoundError) as e:
        print(f"Error reading JSON file {json_file}: {e}")
        return None
    
    for entry in data:
        name = entry.get("Name", "")
        if kernel_pattern.search(name):
            total_time_ns = entry.get("Total Time (ns)", 0)
            # Convert nanoseconds to seconds
            total_time_sec = total_time_ns / 1_000_000_000
            avg_time_ns = entry.get("Avg (ns)", 0)
            avg_time_sec = avg_time_ns / 1_000_000_000

            return {
                "kernel_name": name,
                "total_time_ns": total_time_ns,
                "total_time_sec": total_time_sec,
                "instances": entry.get("Instances", 0),
                "avg_time_ns": avg_time_ns,
                "avg_time_sec": avg_time_sec,
                "time_percent": entry.get("Time (%)", 0),
            }
    
    print(f"Warning: No alignment kernel found in {json_file}")
    return None


def clean_existing_exports():
    """Remove existing exported JSON files before re-extracting."""
    print("Cleaning existing exported JSON files...")
    for report_name in REPORT_NAMES:
        json_file = os.path.join(".", f"exported_{report_name}_gpukernsum.json")
        if os.path.exists(json_file):
            os.remove(json_file)
            print(f"  Removed: {json_file}")


def main():
    """Main function to extract and process all reports."""
    results = {}
    
    print("=" * 60)
    print("Extracting nsys reports and finding alignment kernel times")
    print("=" * 60)
    
    # Clean existing exported JSON files first
    clean_existing_exports()

    for report_name in REPORT_NAMES:
        print(f"\nProcessing: {report_name}")
        print("-" * 40)
        
        # Extract the report to JSON
        json_file = extract_nsys_report(report_name)
        
        if json_file is None:
            print(f"Skipping {report_name} due to extraction failure")
            continue
        
        # Find the alignment kernel timing
        kernel_info = find_alignment_kernel_time(json_file)
        
        if kernel_info:
            results[report_name] = kernel_info
            print(f"  Kernel: {kernel_info['kernel_name'][:60]}...")
            print(f"  Total Time: {kernel_info['total_time_sec']:.6f} seconds")
            print(f"  Total Time: {kernel_info['total_time_ns']:,} ns")
            print(f"  Instances: {kernel_info['instances']}")
            print(f"  Time %: {kernel_info['time_percent']}%")
            print(f"  Average Time: {kernel_info['avg_time_ns']:.6f} ns")
            print(f"  Average Time: {kernel_info['avg_time_sec']:.6f} seconds")
    
    # Print raw throughput summary
    print("\n" + "=" * 80)
    print("SUMMARY: Raw Throughput and Speedup")
    print("=" * 80)
    print(f"{'Report Name':<30} {'Average Time (s)':<15} {'DP-HLS (align/s)':<20} {'GPU (align/s)':<20} {'Raw Speedup':<15}")
    print("-" * 100)
    
    for report_name, info in results.items():
        dp_hls_throughput = DP_HLS_THROUGHPUT[report_name]
        gpu_throughput = 327233 / info['avg_time_sec']
        raw_speedup = dp_hls_throughput / gpu_throughput
        print(f"{report_name:<30} {info['avg_time_sec']:.6f} {dp_hls_throughput:<20.2f} {gpu_throughput:<20.2f} {raw_speedup:<15.2f}")
    
    # Print ISO-cost summary
    print("\n" + "=" * 80)
    print("SUMMARY: ISO-Cost Throughput and Speedup")
    print("=" * 80)
    print(f"{'Report Name':<30} {'Average Time (s)':<15} {'DP-HLS/$ (align/$)':<25} {'GPU/$ (align/$)':<25} {'ISO-Cost Speedup':<20}")
    print("-" * 100)
    
    for report_name, info in results.items():
        dp_hls_throughput = DP_HLS_THROUGHPUT[report_name]
        gpu_throughput = 327233 / info['avg_time_sec']
        dp_hls_per_dollar = dp_hls_throughput * 3600 / F1_DISCOUNT
        gpu_per_dollar = gpu_throughput * 3600 / G4DN_DISCOUNT
        iso_cost_speedup = dp_hls_per_dollar / gpu_per_dollar
        print(f"{report_name:<30} {info['avg_time_sec']:.6f} {dp_hls_per_dollar:<25.2f} {gpu_per_dollar:<25.2f} {iso_cost_speedup:<20.2f}")
    
    # Save results to a summary JSON file
    summary_file = os.path.join(".", "alignment_kernel_summary.json")
    with open(summary_file, 'w') as f:
        json.dump(results, f, indent=2)
    print(f"\nSummary saved to: {summary_file}")
    
    return results


if __name__ == "__main__":
    main()


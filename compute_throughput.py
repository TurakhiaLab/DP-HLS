#!/usr/bin/env python3
"""
Compute throughput for DP-HLS kernels based on cosim reports and config files.
"""

import os
import json
import glob
import re


def find_rpt_file(cosim_outputs_dir: str, kernel_name: str) -> str | None:
    """
    Find the .rpt file for a given kernel.
    Path pattern: <kernel_name>/<a_single_folder>/seq_align_multiple_static/solution1/sim/report/seq_align_multiple_static_cosim.rpt
    """
    kernel_dir = os.path.join(cosim_outputs_dir, kernel_name)
    if not os.path.isdir(kernel_dir):
        return None
    
    # Get the single subfolder inside the kernel directory
    subfolders = [f for f in os.listdir(kernel_dir) if os.path.isdir(os.path.join(kernel_dir, f))]
    if not subfolders:
        return None
    
    # Use the first subfolder (there should be only one based on the description)
    subfolder = subfolders[0]
    rpt_path = os.path.join(
        kernel_dir, subfolder,
        "seq_align_multiple_static", "solution1", "sim", "report",
        "seq_align_multiple_static_cosim.rpt"
    )
    
    if os.path.isfile(rpt_path):
        return rpt_path
    return None


def extract_cycle_count(rpt_file: str) -> int | None:
    """
    Read the .rpt file and extract the last number from row 11 (1-indexed).
    """
    with open(rpt_file, 'r') as f:
        lines = f.readlines()
    
    if len(lines) < 11:
        return None
    
    # Get line 11 (1-indexed, so index 10)
    line_11 = lines[10]
    
    # Find all numbers in the line and get the last one
    numbers = re.findall(r'\d+', line_11)
    if numbers:
        return int(numbers[-1])
    return None


def find_config_file(compile_configs_dir: str, kernel_name: str) -> str | None:
    """
    Find the JSON config file for a given kernel.
    There should be only one .json file in the kernel's config folder.
    """
    kernel_config_dir = os.path.join(compile_configs_dir, kernel_name)
    if not os.path.isdir(kernel_config_dir):
        return None
    
    json_files = glob.glob(os.path.join(kernel_config_dir, "*.json"))
    if json_files:
        return json_files[0]  # Return the first (and should be only) JSON file
    return None


def load_config(config_file: str) -> dict | None:
    """
    Load and parse the JSON config file.
    """
    with open(config_file, 'r') as f:
        return json.load(f)


def extract_config_values(config: dict) -> tuple[int, int, int] | None:
    """
    Extract blocks, cu, and clock_frequency from the config.
    Returns (blocks, cu, clock_frequency) or None if any field is missing.
    """
    try:
        # size/blocks - can be a list, take the first value
        blocks = config["size"]["blocks"]
        if isinstance(blocks, list):
            blocks = blocks[0]
        
        # size/cu - can be a list, take the first value
        cu = config["size"]["cu"]
        if isinstance(cu, list):
            cu = cu[0]
        
        # kernel/clock_frequency
        clock_frequency = config["kernel"]["clock_frequency"]
        
        return blocks, cu, clock_frequency
    except KeyError as e:
        print(f"Missing config key: {e}")
        return None


def compute_throughput(clock_frequency: int, cycle_count: int, blocks: int, cu: int) -> float:
    """
    Compute throughput using the formula:
    throughput = clock_frequency / cycle_count * blocks * cu
    """
    return clock_frequency / cycle_count * blocks * cu


def process_kernels(
    kernel_names: list[str],
    cosim_outputs_dir: str = "/home/ubuntu/DP-HLS/cosim_outputs",
    compile_configs_dir: str = "/home/ubuntu/DP-HLS/compile_configs"
) -> dict[str, dict]:
    """
    Process all kernels and compute their throughput.
    
    Args:
        kernel_names: List of kernel names to process
        cosim_outputs_dir: Path to cosim_outputs directory
        compile_configs_dir: Path to compile_configs directory
    
    Returns:
        Dictionary mapping kernel names to their throughput data
    """
    results = {}
    
    for kernel_name in kernel_names:
        print(f"Processing kernel: {kernel_name}")
        
        # Find and read the .rpt file
        rpt_file = find_rpt_file(cosim_outputs_dir, kernel_name)
        if not rpt_file:
            print(f"  Warning: No .rpt file found for {kernel_name}")
            continue
        
        cycle_count = extract_cycle_count(rpt_file)
        if cycle_count is None:
            print(f"  Warning: Could not extract cycle count from {rpt_file}")
            continue
        
        # Find and read the config file
        config_file = find_config_file(compile_configs_dir, kernel_name)
        if not config_file:
            print(f"  Warning: No config file found for {kernel_name}")
            continue
        
        config = load_config(config_file)
        if config is None:
            print(f"  Warning: Could not load config from {config_file}")
            continue
        
        config_values = extract_config_values(config)
        if config_values is None:
            print(f"  Warning: Could not extract config values for {kernel_name}")
            continue
        
        blocks, cu, clock_frequency = config_values
        
        # Compute throughput
        throughput = compute_throughput(clock_frequency, cycle_count, blocks, cu)
        
        results[kernel_name] = {
            "cycle_count": cycle_count,
            "blocks": blocks,
            "cu": cu,
            "clock_frequency": clock_frequency,
            "throughput": throughput,
            "rpt_file": rpt_file,
            "config_file": config_file
        }
        
        print(f"  Cycle count: {cycle_count}")
        print(f"  Blocks: {blocks}, CU: {cu}, Clock frequency: {clock_frequency}")
        print(f"  Throughput: {throughput:.2f}")
    
    return results


def main():
    # List of kernel names (based on evaluate_throughput.sh)
    kernel_names = [
        "global_linear",
        "global_affine",
        "local_linear",
        "local_affine",
        "global_two_piece_affine",
        "overlap_suffix_prefix",
        "semiglobal_short_long",
        "profile_alignment",
        "global_dtw",
        "viterbi",
        "banding_global_linear",
        "banding_local_affine_scored",
        "banding_global_two_piece_affine", 
        "sdtw",
        "protein_local_affine",
        "protein_local_affine_notb",
    ]

    kernel_indices = {
        "global_linear": 1,
        "global_affine": 2,
        "local_linear": 3,
        "local_affine": 4,
        "global_two_piece_affine": 5,
        "overlap_suffix_prefix": 6,
        "semiglobal_short_long": 7,
        "profile_alignment": 8,
        "global_dtw": 9,
        "viterbi": 10,
        "banding_global_linear": 11,
        "banding_local_affine_scored": 12,
        "banding_global_two_piece_affine": 13,
        "sdtw": 14,
        "protein_local_affine": 15,
        "protein_local_affine_notb": 16,
    }

    reference_throughputs = {
        "global_linear": 3.51e6,
        "global_affine": 2.85e6,
        "local_linear": 3.43e6,
        "local_affine": 2.71e6,
        "global_two_piece_affine": 1.06e6,
        "overlap_suffix_prefix": 2.73e6,
        "semiglobal_short_long": 3.34e6,
        "profile_alignment": 3.70e4,
        "global_dtw": 2.31e5,
        "viterbi": 4.90e5,
        "banding_global_linear": 2.25e6,
        "banding_local_affine_scored": 4.77e6,
        "banding_global_two_piece_affine": 1.24e6,
        "sdtw": 5.16e6,
        "protein_local_affine": 9.33e5,
        "protein_local_affine_notb": None,
    }
    
    results = process_kernels(kernel_names)
    
    # Print results in a table format
    print("\n")
    header = f"{'#':<3} {'Kernel':<35} {'Throughput (align/s)':<22} {'Reference (align/s)':<20} {'Margin':<10}"
    print("=" * len(header))
    print("Summary")
    print("=" * len(header))
    print(header)
    print("-" * len(header))
    
    for kernel_name, data in results.items():
        idx = kernel_indices[kernel_name]
        throughput = data['throughput']
        reference = reference_throughputs[kernel_name]
        if reference is None:
            margin = None
            print(f"{idx:<3} {kernel_name:<35} {throughput:<22.2f} None Reference No Applicable")
        else:
            margin = ((throughput - reference) / reference) * 100
            print(f"{idx:<3} {kernel_name:<35} {throughput:<22.2f} {reference:<20.2e} {margin:>+.2f}%")
    
    print("=" * len(header))
    
    return results


if __name__ == "__main__":
    main()

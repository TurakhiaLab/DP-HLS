import os
import re

kernel_names = [
    "global_linear",
    "global_affine",
    "local_linear",
    "local_affine",
    # "global_two_piece_affine",
    "overlap_suffix_prefix",
    "semiglobal_short_long",
    # "profile_alignment",
    # "global_dtw",
    # "viterbi",
    "banding_global_linear",
    "banding_local_affine_scored",
    # "banding_global_two_piece_affine", 
    # "sdtw",
    # "protein_local_affine",
    # "protein_local_affine_notb",
]

kernel_report_names = {
    "global_linear": "global_linear.txt",
    "global_affine": "global_affine.txt",
    "local_linear": "local_linear.txt",
    "local_affine": "local_affine.txt",
    "overlap_suffix_prefix": "overlap_linear.txt",
    "semiglobal_short_long": "semi_global_linear.txt",
    "banding_global_linear": "banded_global_linear.txt",
    "banding_local_affine_scored": "banded_local_affine.txt",
}

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

def extract_throughput(report_path):
    try:
        with open(report_path, "r") as f:
            lines = f.readlines()
            if len(lines) < 2:
                return None
            match = re.search(r"Throughput: ([\deE\+\.\-]+)", lines[1])
            if match:
                return float(match.group(1))
    except Exception as e:
        return None
    return None

def main():
    reports_dir = "reports"
    throughputs = {}

    for kernel_name in kernel_names:
        report_path = os.path.join(reports_dir, kernel_report_names[kernel_name])
        throughput = extract_throughput(report_path)
        throughputs[kernel_name] = throughput

    # Print table
    print("{:<5} {:<25} {:>20} {:>20} {:>10}".format(
        "Idx", "Kernel", "Throughput", "DP-HLS", "Speedup"))
    print('-' * 82)
    for k, t in throughputs.items():
        idx = kernel_indices.get(k, "-")
        ref = reference_throughputs.get(k)
        if t is not None and ref is not None:
            speedup = ref / t
            print("{:<5} {:<25} {:>20.2f} {:>20.2f} {:>10.2f}x".format(idx, k, t, ref, speedup))
        elif t is not None:
            print("{:<5} {:<25} {:>20.2f} {:>20} {:>10}".format(idx, k, t, "N/A", "N/A"))
        else:
            print("{:<5} {:<25} {:>20} {:>20} {:>10}".format(idx, k, "N/A", ref if ref else "N/A", "N/A"))

if __name__ == "__main__":
    main()

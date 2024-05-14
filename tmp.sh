#!/bin/bash

# /home/centos/workspace/DP-HLS/scripts/extract_report.sh -b /home/centos/workspace/DP-HLS/synthesis/results/overlap_suffix_prefix -d /home/centos/workspace/DP-HLS/reports_compile/overlap_suffix_prefix -n overlap_suffix_prefix
# /home/centos/workspace/DP-HLS/scripts/extract_report.sh -b /home/centos/workspace/DP-HLS/synthesis/results/semiglobal_short_long -d /home/centos/workspace/DP-HLS/reports_compile/semiglobal_short_long -n semiglobal_short_long

/home/centos/workspace/DP-HLS/scripts/extract_vitis_report.sh -b /home/centos/workspace/DP-HLS/vitis_projects/local_linear -d /home/centos/workspace/DP-HLS/reports_vitis_hls/local_linear -n local_linear
/home/centos/workspace/DP-HLS/scripts/extract_vitis_report.sh -b /home/centos/workspace/DP-HLS/vitis_projects/global_dtw -d /home/centos/workspace/DP-HLS/reports_vitis_hls/global_dtw -n global_dtw
/home/centos/workspace/DP-HLS/scripts/extract_vitis_report.sh -b /home/centos/workspace/DP-HLS/vitis_projects/global_two_piece_affine -d /home/centos/workspace/DP-HLS/reports_vitis_hls/global_two_piece_affine -n global_two_piece_affine

/home/centos/workspace/DP-HLS/scripts/extract_vitis_report.sh -b /home/centos/workspace/DP-HLS/vitis_projects/overlap_suffix_prefix -d /home/centos/workspace/DP-HLS/reports_vitis_hls/overlap_suffix_prefix -n overlap_suffix_prefix
/home/centos/workspace/DP-HLS/scripts/extract_vitis_report.sh -b /home/centos/workspace/DP-HLS/vitis_projects/semiglobal_short_long -d /home/centos/workspace/DP-HLS/reports_vitis_hls/semiglobal_short_long -n semiglobal_short_long
/home/centos/workspace/DP-HLS/scripts/extract_vitis_report.sh -b /home/centos/workspace/DP-HLS/vitis_projects/viterbi -d /home/centos/workspace/DP-HLS/reports_vitis_hls/viterbi -n viterbi
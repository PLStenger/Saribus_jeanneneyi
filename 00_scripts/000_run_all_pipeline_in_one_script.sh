#!/usr/bin/env bash

# Run all scripts :

# time nohup bash 00_quality_check_by_FastQC.sh &> 00_quality_check_by_FastQC.out
# time nohup bash 01_pooling_sequences.sh &> 01_pooling_sequences.out
time nohup bash 02_trimmomatic_q30.sh &> 02_trimmomatic_q30.out
time nohup bash 03_cleaned_data_quality_check_by_FastQC.sh &> 03_cleaned_data_quality_check_by_FastQC.out
# time nohup bash 04_qiime2_import_PE.sh &> 04_qiime2_import_PE.out
# time nohup bash 05_qiime2_denoise_PE.sh &> 05_qiime2_denoise_PE.out
# time nohup bash 06_qiime2_tree_PE.sh &> 06_qiime2_tree_PE.out
# time nohup bash 07_qiime2_rarefaction_PE.sh &> 07_qiime2_rarefaction_PE.out

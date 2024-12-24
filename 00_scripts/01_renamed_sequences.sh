#!/usr/bin/env bash

# pathways in cluster:
DATADIRECTORY_16S=/home/fungi/Saribus_jeanneneyi/01_raw_data/16S
OUTPUT_16S=/home/fungi/Saribus_jeanneneyi/02_pooled_data/16S

DATADIRECTORY_ITS=/home/fungi/Saribus_jeanneneyi/01_raw_data/ITS
OUTPUT_ITS=/home/fungi/Saribus_jeanneneyi/02_pooled_data/ITS

WORKING_DIRECTORY=/home/fungi/Saribus_jeanneneyi

# pathways in local:
#DATADIRECTORY_16S=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/00_raw_data/16S
#OUTPUT_16S=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/01_pooled/16S

#DATADIRECTORY_ITS=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/00_raw_data/ITS
#OUTPUT_ITS=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/01_pooled/ITS

# WARNING : HERE ITS NOT NECESSARY TO POOL SEQ, ONLY CHANGE THE NAME

cd $WORKING_DIRECTORY

# Make the directory (mkdir) only if not existe already(-p)
mkdir -p $OUTPUT_ITS
mkdir -p $OUTPUT_16S

cd $DATADIRECTORY_16S

cat IAC-5-17_S160_L001_R1_001.fastq.gz > $OUTPUT_16S/leaf_nursery_01_R1.fastq.gz
cat IAC-5-17_S160_L001_R2_001.fastq.gz > $OUTPUT_16S/leaf_nursery_01_R2.fastq.gz
cat IAC-11-17_S161_L001_R1_001.fastq.gz > $OUTPUT_16S/leaf_nursery_02_R1.fastq.gz
cat IAC-11-17_S161_L001_R2_001.fastq.gz > $OUTPUT_16S/leaf_nursery_02_R2.fastq.gz
cat SAR-1-1-01_S146_L001_R1_001.fastq.gz > $OUTPUT_16S/bark_foret_nord_01_R1.fastq.gz
cat SAR-1-1-01_S146_L001_R2_001.fastq.gz > $OUTPUT_16S/bark_foret_nord_01_R2.fastq.gz
cat SAR-1-1-02_S147_L001_R1_001.fastq.gz > $OUTPUT_16S/bark_foret_nord_02_R1.fastq.gz
cat SAR-1-1-02_S147_L001_R2_001.fastq.gz > $OUTPUT_16S/bark_foret_nord_02_R2.fastq.gz
cat SAR-1-1-03_S148_L001_R1_001.fastq.gz > $OUTPUT_16S/bark_foret_nord_03_R1.fastq.gz
cat SAR-1-1-03_S148_L001_R2_001.fastq.gz > $OUTPUT_16S/bark_foret_nord_03_R2.fastq.gz
cat SAR-5-1_S162_L001_R1_001.fastq.gz > $OUTPUT_16S/leaf_PPRB_01_R1.fastq.gz
cat SAR-5-1_S162_L001_R2_001.fastq.gz > $OUTPUT_16S/leaf_PPRB_01_R2.fastq.gz
cat SAR-5-3_S163_L001_R1_001.fastq.gz > $OUTPUT_16S/leaf_PPRB_02_R1.fastq.gz
cat SAR-5-3_S163_L001_R2_001.fastq.gz > $OUTPUT_16S/leaf_PPRB_02_R2.fastq.gz
cat SAR-11-1_S149_L001_R1_001.fastq.gz > $OUTPUT_16S/leaf_creek_pernod_R1.fastq.gz
cat SAR-11-1_S149_L001_R2_001.fastq.gz > $OUTPUT_16S/leaf_creek_pernod_R2.fastq.gz
cat SAR-11-1-BASE_S150_L001_R1_001.fastq.gz > $OUTPUT_16S/base_palm_creek_pernod_R1.fastq.gz
cat SAR-11-1-BASE_S150_L001_R2_001.fastq.gz > $OUTPUT_16S/base_palm_creek_pernod_R2.fastq.gz
cat SAR-11-1-R_S159_L001_R1_001.fastq.gz > $OUTPUT_16S/root_creek_pernod_R1.fastq.gz
cat SAR-11-1-R_S159_L001_R2_001.fastq.gz > $OUTPUT_16S/root_creek_pernod_R2.fastq.gz

cd $DATADIRECTORY_ITS

cat IAC-5-17_S160_L001_R1_001.fastq.gz > $OUTPUT_ITS/leaf_nursery_01_R1.fastq.gz
cat IAC-5-17_S160_L001_R2_001.fastq.gz > $OUTPUT_ITS/leaf_nursery_01_R2.fastq.gz
cat IAC-11-17_S161_L001_R1_001.fastq.gz > $OUTPUT_ITS/leaf_nursery_02_R1.fastq.gz
cat IAC-11-17_S161_L001_R2_001.fastq.gz > $OUTPUT_ITS/leaf_nursery_02_R2.fastq.gz
cat SAR-1-1-01_S146_L001_R1_001.fastq.gz > $OUTPUT_ITS/bark_foret_nord_01_R1.fastq.gz
cat SAR-1-1-01_S146_L001_R2_001.fastq.gz > $OUTPUT_ITS/bark_foret_nord_01_R2.fastq.gz
cat SAR-1-1-02_S147_L001_R1_001.fastq.gz > $OUTPUT_ITS/bark_foret_nord_02_R1.fastq.gz
cat SAR-1-1-02_S147_L001_R2_001.fastq.gz > $OUTPUT_ITS/bark_foret_nord_02_R2.fastq.gz
cat SAR-1-1-03_S148_L001_R1_001.fastq.gz > $OUTPUT_ITS/bark_foret_nord_03_R1.fastq.gz
cat SAR-1-1-03_S148_L001_R2_001.fastq.gz > $OUTPUT_ITS/bark_foret_nord_03_R2.fastq.gz
cat SAR-5-1_S162_L001_R1_001.fastq.gz > $OUTPUT_ITS/leaf_PPRB_01_R1.fastq.gz
cat SAR-5-1_S162_L001_R2_001.fastq.gz > $OUTPUT_ITS/leaf_PPRB_01_R2.fastq.gz
cat SAR-5-3_S163_L001_R1_001.fastq.gz > $OUTPUT_ITS/leaf_PPRB_02_R1.fastq.gz
cat SAR-5-3_S163_L001_R2_001.fastq.gz > $OUTPUT_ITS/leaf_PPRB_02_R2.fastq.gz
cat SAR-11-1_S149_L001_R1_001.fastq.gz > $OUTPUT_ITS/leaf_creek_pernod_R1.fastq.gz
cat SAR-11-1_S149_L001_R2_001.fastq.gz > $OUTPUT_ITS/leaf_creek_pernod_R2.fastq.gz
cat SAR-11-1-BASE_S150_L001_R1_001.fastq.gz > $OUTPUT_ITS/base_palm_creek_pernod_R1.fastq.gz
cat SAR-11-1-BASE_S150_L001_R2_001.fastq.gz > $OUTPUT_ITS/base_palm_creek_pernod_R2.fastq.gz
cat SAR-11-1-R_S159_L001_R1_001.fastq.gz > $OUTPUT_ITS/root_creek_pernod_R1.fastq.gz
cat SAR-11-1-R_S159_L001_R2_001.fastq.gz > $OUTPUT_ITS/root_creek_pernod_R2.fastq.gz

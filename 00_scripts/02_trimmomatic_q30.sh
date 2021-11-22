#!/usr/bin/env bash

# trimmomatic version 0.39
# trimmomatic manual : http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf

# pathways in cluster:
DATADIRECTORY_ITS=/scratch_vol1/fungi/Saribus_jeanneneyi/02_pooled_data/ITS
DATADIRECTORY_16S=/scratch_vol1/fungi/Saribus_jeanneneyi/02_pooled_data/16S
DATAOUTPUT_ITS=/scratch_vol1/fungi/Saribus_jeanneneyi/03_cleaned_data/DATAOUTPUT_ITS
DATAOUTPUT_16S=/scratch_vol1/fungi/Saribus_jeanneneyi/03_cleaned_data/DATAOUTPUT_16S

WORKING_DIRECTORY=/scratch_vol1/fungi/Saribus_jeanneneyi


# pathways in local:
#DATADIRECTORY_ITS=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/01_pooled/ITS
#DATADIRECTORY_16S=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/01_pooled/16S
#DATAOUTPUT_ITS=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/03_cleaned_data/DATAOUTPUT_ITS
#DATAOUTPUT_16S=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/03_cleaned_data/DATAOUTPUT_16S

eval "$(conda shell.bash hook)"
conda activate trimmomatic

ADAPTERFILE=/scratch_vol1/fungi/Pycnandra/98_database_files/adapters_sequences.fasta



cd $WORKING_DIRECTORY

# Make the directory (mkdir) only if not existe already(-p)
mkdir -p $DATAOUTPUT_ITS
mkdir -p $DATAOUTPUT_16S


# cat $ADAPTERFILE
#>Illumina_TruSeq_LT_R1 AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC
#>Illumina_TruSeq_LT_R2 AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT
#>truseq AGATCGGAAGAGC
#>nextera CTGTCTCTTATACACATC
#>small TGGAATTCTCGGGTGCCAAGG
#>ScriptSeqR1 AGATCGGAAGAGCACACGTCTGAAC
#>ScriptSeqR2 AGATCGGAAGAGCGTCGTGTAGGGA
#>TruSeqRibo AGATCGGAAGAGCACACGTCT

# Arguments :
# ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150

## For fungi :

cd $DATADIRECTORY_ITS

trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/bark_foret_nord_01_R1.fastq.gz $DATADIRECTORY_ITS/bark_foret_nord_01_R2.fastq.gz $DATAOUTPUT_ITS/bark_foret_nord_01_R1.paired.fastq.gz $DATAOUTPUT_ITS/bark_foret_nord_01_R2.paired.fastq.gz $DATAOUTPUT_ITS/bark_foret_nord_01_R1.single.fastq.gz $DATAOUTPUT_ITS/bark_foret_nord_01_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/bark_foret_nord_02_R1.fastq.gz $DATADIRECTORY_ITS/bark_foret_nord_02_R2.fastq.gz $DATAOUTPUT_ITS/bark_foret_nord_02_R1.paired.fastq.gz $DATAOUTPUT_ITS/bark_foret_nord_02_R2.paired.fastq.gz $DATAOUTPUT_ITS/bark_foret_nord_02_R1.single.fastq.gz $DATAOUTPUT_ITS/bark_foret_nord_02_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/bark_foret_nord_03_R1.fastq.gz $DATADIRECTORY_ITS/bark_foret_nord_03_R2.fastq.gz $DATAOUTPUT_ITS/bark_foret_nord_03_R1.paired.fastq.gz $DATAOUTPUT_ITS/bark_foret_nord_03_R2.paired.fastq.gz $DATAOUTPUT_ITS/bark_foret_nord_03_R1.single.fastq.gz $DATAOUTPUT_ITS/bark_foret_nord_03_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/base_palm_creek_pernod_R1.fastq.gz $DATADIRECTORY_ITS/base_palm_creek_pernod_R2.fastq.gz $DATAOUTPUT_ITS/base_palm_creek_pernod_R1.paired.fastq.gz $DATAOUTPUT_ITS/base_palm_creek_pernod_R2.paired.fastq.gz $DATAOUTPUT_ITS/base_palm_creek_pernod_R1.single.fastq.gz $DATAOUTPUT_ITS/base_palm_creek_pernod_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/leaf_creek_pernod_R1.fastq.gz $DATADIRECTORY_ITS/leaf_creek_pernod_R2.fastq.gz $DATAOUTPUT_ITS/leaf_creek_pernod_R1.paired.fastq.gz $DATAOUTPUT_ITS/leaf_creek_pernod_R2.paired.fastq.gz $DATAOUTPUT_ITS/leaf_creek_pernod_R1.single.fastq.gz $DATAOUTPUT_ITS/leaf_creek_pernod_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/leaf_nursery_01_R1.fastq.gz $DATADIRECTORY_ITS/leaf_nursery_01_R2.fastq.gz $DATAOUTPUT_ITS/leaf_nursery_01_R1.paired.fastq.gz $DATAOUTPUT_ITS/leaf_nursery_01_R2.paired.fastq.gz $DATAOUTPUT_ITS/leaf_nursery_01_R1.single.fastq.gz $DATAOUTPUT_ITS/leaf_nursery_01_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/leaf_nursery_02_R1.fastq.gz $DATADIRECTORY_ITS/leaf_nursery_02_R2.fastq.gz $DATAOUTPUT_ITS/leaf_nursery_02_R1.paired.fastq.gz $DATAOUTPUT_ITS/leaf_nursery_02_R2.paired.fastq.gz $DATAOUTPUT_ITS/leaf_nursery_02_R1.single.fastq.gz $DATAOUTPUT_ITS/leaf_nursery_02_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/leaf_PPRB_01_R1.fastq.gz $DATADIRECTORY_ITS/leaf_PPRB_01_R2.fastq.gz $DATAOUTPUT_ITS/leaf_PPRB_01_R1.paired.fastq.gz $DATAOUTPUT_ITS/leaf_PPRB_01_R2.paired.fastq.gz $DATAOUTPUT_ITS/leaf_PPRB_01_R1.single.fastq.gz $DATAOUTPUT_ITS/leaf_PPRB_01_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/leaf_PPRB_02_R1.fastq.gz $DATADIRECTORY_ITS/leaf_PPRB_02_R2.fastq.gz $DATAOUTPUT_ITS/leaf_PPRB_02_R1.paired.fastq.gz $DATAOUTPUT_ITS/leaf_PPRB_02_R2.paired.fastq.gz $DATAOUTPUT_ITS/leaf_PPRB_02_R1.single.fastq.gz $DATAOUTPUT_ITS/leaf_PPRB_02_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/root_creek_pernod_R1.fastq.gz $DATADIRECTORY_ITS/root_creek_pernod_R2.fastq.gz $DATAOUTPUT_ITS/root_creek_pernod_R1.paired.fastq.gz $DATAOUTPUT_ITS/root_creek_pernod_R2.paired.fastq.gz $DATAOUTPUT_ITS/root_creek_pernod_R1.single.fastq.gz $DATAOUTPUT_ITS/root_creek_pernod_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150

# For bacteria :

cd $DATADIRECTORY_16S

trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/bark_foret_nord_01_R1.fastq.gz $DATADIRECTORY_16S/bark_foret_nord_01_R2.fastq.gz $DATAOUTPUT_16S/bark_foret_nord_01_R1.paired.fastq.gz $DATAOUTPUT_16S/bark_foret_nord_01_R2.paired.fastq.gz $DATAOUTPUT_16S/bark_foret_nord_01_R1.single.fastq.gz $DATAOUTPUT_16S/bark_foret_nord_01_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/bark_foret_nord_02_R1.fastq.gz $DATADIRECTORY_16S/bark_foret_nord_02_R2.fastq.gz $DATAOUTPUT_16S/bark_foret_nord_02_R1.paired.fastq.gz $DATAOUTPUT_16S/bark_foret_nord_02_R2.paired.fastq.gz $DATAOUTPUT_16S/bark_foret_nord_02_R1.single.fastq.gz $DATAOUTPUT_16S/bark_foret_nord_02_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/bark_foret_nord_03_R1.fastq.gz $DATADIRECTORY_16S/bark_foret_nord_03_R2.fastq.gz $DATAOUTPUT_16S/bark_foret_nord_03_R1.paired.fastq.gz $DATAOUTPUT_16S/bark_foret_nord_03_R2.paired.fastq.gz $DATAOUTPUT_16S/bark_foret_nord_03_R1.single.fastq.gz $DATAOUTPUT_16S/bark_foret_nord_03_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/base_palm_creek_pernod_R1.fastq.gz $DATADIRECTORY_16S/base_palm_creek_pernod_R2.fastq.gz $DATAOUTPUT_16S/base_palm_creek_pernod_R1.paired.fastq.gz $DATAOUTPUT_16S/base_palm_creek_pernod_R2.paired.fastq.gz $DATAOUTPUT_16S/base_palm_creek_pernod_R1.single.fastq.gz $DATAOUTPUT_16S/base_palm_creek_pernod_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/leaf_creek_pernod_R1.fastq.gz $DATADIRECTORY_16S/leaf_creek_pernod_R2.fastq.gz $DATAOUTPUT_16S/leaf_creek_pernod_R1.paired.fastq.gz $DATAOUTPUT_16S/leaf_creek_pernod_R2.paired.fastq.gz $DATAOUTPUT_16S/leaf_creek_pernod_R1.single.fastq.gz $DATAOUTPUT_16S/leaf_creek_pernod_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/leaf_nursery_01_R1.fastq.gz $DATADIRECTORY_16S/leaf_nursery_01_R2.fastq.gz $DATAOUTPUT_16S/leaf_nursery_01_R1.paired.fastq.gz $DATAOUTPUT_16S/leaf_nursery_01_R2.paired.fastq.gz $DATAOUTPUT_16S/leaf_nursery_01_R1.single.fastq.gz $DATAOUTPUT_16S/leaf_nursery_01_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/leaf_nursery_02_R1.fastq.gz $DATADIRECTORY_16S/leaf_nursery_02_R2.fastq.gz $DATAOUTPUT_16S/leaf_nursery_02_R1.paired.fastq.gz $DATAOUTPUT_16S/leaf_nursery_02_R2.paired.fastq.gz $DATAOUTPUT_16S/leaf_nursery_02_R1.single.fastq.gz $DATAOUTPUT_16S/leaf_nursery_02_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/leaf_PPRB_01_R1.fastq.gz $DATADIRECTORY_16S/leaf_PPRB_01_R2.fastq.gz $DATAOUTPUT_16S/leaf_PPRB_01_R1.paired.fastq.gz $DATAOUTPUT_16S/leaf_PPRB_01_R2.paired.fastq.gz $DATAOUTPUT_16S/leaf_PPRB_01_R1.single.fastq.gz $DATAOUTPUT_16S/leaf_PPRB_01_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/leaf_PPRB_02_R1.fastq.gz $DATADIRECTORY_16S/leaf_PPRB_02_R2.fastq.gz $DATAOUTPUT_16S/leaf_PPRB_02_R1.paired.fastq.gz $DATAOUTPUT_16S/leaf_PPRB_02_R2.paired.fastq.gz $DATAOUTPUT_16S/leaf_PPRB_02_R1.single.fastq.gz $DATAOUTPUT_16S/leaf_PPRB_02_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/root_creek_pernod_R1.fastq.gz $DATADIRECTORY_16S/root_creek_pernod_R2.fastq.gz $DATAOUTPUT_16S/root_creek_pernod_R1.paired.fastq.gz $DATAOUTPUT_16S/root_creek_pernod_R2.paired.fastq.gz $DATAOUTPUT_16S/root_creek_pernod_R1.single.fastq.gz $DATAOUTPUT_16S/root_creek_pernod_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150



#!/usr/bin/env bash

# pathways in cluster:
DATADIRECTORY_16S=/home/fungi/Saribus_jeanneneyi/05_QIIME2/16S/

TMPDIR=/home

cd $DATADIRECTORY_16S

eval "$(conda shell.bash hook)"
source /home/fungi/miniconda3/bin/activate 
conda activate picrust2

# Make the directory (mkdir) only if not existe already(-p)
mkdir -p picrust2
mkdir -p export/picrust2

# I'm doing this step in order to deal the no space left in cluster :
export TMPDIR='/home/fungi'
echo $TMPDIR

echo '##############################################################################################################################'
echo '### Bacteria ###'
echo '##############################################################################################################################'

picrust2_pipeline.py  -s /home/fungi/Saribus_jeanneneyi/05_QIIME2/16S/export/taxonomy/DataSeq/dna-sequences.fasta  -i picrust2/16S.tsv  -o export/export/picrust2/picrust2_out_16S -p4
picrust2_pipeline.py  -s /home/fungi/Saribus_jeanneneyi/05_QIIME2/16S/export/taxonomy/DataSeq/dna-sequences.fasta  -i picrust2/16S_all.tsv  -o export/export/picrust2/picrust2_out_16S_all -p4

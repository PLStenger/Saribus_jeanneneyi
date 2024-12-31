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

#Lancer la premier ligne:
# picrust2_pipeline.py  -s /home/fungi/Saribus_jeanneneyi/05_QIIME2/16S/export/taxonomy/DataSeq/dna-sequences.fasta  -i picrust2/16S.tsv  -o export/export/picrust2/picrust2_out_16S -p4
#### picrust2_pipeline.py  -s /home/fungi/Saribus_jeanneneyi/05_QIIME2/16S/export/taxonomy/DataSeq/dna-sequences.fasta  -i picrust2/16S_all.tsv  -o export/export/picrust2/picrust2_out_16S_all -p4

hsp.py -i /home/fungi/Saribus_jeanneneyi/05_QIIME2/16S/export/export/picrust2/picrust2_out_16S/intermediate/place_seqs/query_align.stockholm -o export/export/picrust2/picrust2_out_16S/placement_results.tre -p 4

predict_metagenomes.py -i export/export/picrust2/picrust2_out_16S/placement_results.tre -o export/export/picrust2/picrust2_out_16S/pred_metagenome -p 4

add_descriptions.py -i export/export/picrust2/picrust2_out_16S/pred_metagenome_unstrat.tsv -m KEGG_Pathways -o export/export/picrust2/picrust2_out_16S/final_output.tsv


#!/usr/bin/env bash

# pathways in cluster:
DATADIRECTORY_ITS=/home/fungi/Saribus_jeanneneyi/05_QIIME2/ITS/
DATADIRECTORY_16S=/home/fungi/Saribus_jeanneneyi/05_QIIME2/16S/

METADATA_ITS=/home/fungi/Saribus_jeanneneyi/98_database_files/ITS
METADATA_16S=/home/fungi/Saribus_jeanneneyi/98_database_files/16S

# pathways in local:
#DATADIRECTORY_ITS=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/05_QIIME2/ITS/
#DATADIRECTORY_16S=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/05_QIIME2/16S/

#METADATA_ITS=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/98_database_files/ITS
#METADATA_16S=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/98_database_files/16S

# Aim: rarefy a feature table to compare alpha/beta diversity results

# A good forum to understand what it does :
# https://forum.qiime2.org/t/can-someone-help-in-alpha-rarefaction-plotting-depths/4580/16

###############################################################
### For Fungi
###############################################################

cd $DATADIRECTORY_ITS

eval "$(conda shell.bash hook)"
conda activate qiime2-2021.4

# Note: max-depth should be chosen based on ConTable.qzv

qiime diversity alpha-rarefaction \
  --i-table core/ConTable.qza \
  --i-phylogeny tree/rooted-tree.qza \
  --p-max-depth 37612 \
  --p-min-depth 1 \
  --m-metadata-file $METADATA_ITS/sample-metadata.tsv \
  --o-visualization visual/alpha-rarefaction.qzv
  
# Note: Interpreting alpha diversity metrics: it is important to understand that certain metrics are stricly qualitative (presence/absence), 
# that is they only take diversity into account, often referred to as richness of the community (e.g. observed otus). 
# In contrast, other methods are quantitative in that they consider both richness and abundance across samples, commonly referred to as evenness (e.g. Shannon). 
# Yet other methods take phylogenetic distance into account by asking how diverse the phylogenetic tree is for each sample. 
# These phylogenetic tree-based methods include the popular Faith’s PD, which calculates the sum of the branch length covered by a sample
  
  
#clustering method:
        #- 'nj'   # neighbor joining
        #- 'upgma' # UPGMA, an arbitrary rarefaction trial will be used for the tree, and the remaining trials
                   # are used to calculate the support of the internal nodes of that tree.
                   
# --p-sampling-depth # The total frequency that each sample should be rarefied to prior to computing the diversity metric.  
# --p-sampling-depth # Besoin de se baser sur les resultats de la rarefaction

#qiime diversity beta-rarefaction \
#        --i-table core/ConTable.qza \
#        --i-phylogeny tree/rooted-tree.qza \
#        --m-metadata-file $METADATA_ITS/sample-metadata.tsv \ 
#        --p-clustering-method upgma \ 
#        --p-sampling-depth 16708 \ 
#        --p-iterations 10 \
#        --p-correlation-method spearman \
#        --p-color-scheme BrBG \
#        --o-visualization visual/RareGraph-beta.qzv
  
qiime tools export --input-path visual/alpha-rarefaction.qzv --output-path export/visual/alpha-rarefaction
#qiime tools export --input-path visual/RareGraph-beta.qzv --output-path export/visual/RareGraph-beta


###############################################################
### For Bacteria
###############################################################

cd $DATADIRECTORY_16S

eval "$(conda shell.bash hook)"
conda activate qiime2-2021.4

# Note: max-depth should be chosen based on ConTable.qzv

qiime diversity alpha-rarefaction \
  --i-table core/ConTable.qza \
  --i-phylogeny tree/rooted-tree.qza \
  --p-max-depth 14209 \
  --p-min-depth 1 \
  --m-metadata-file $METADATA_16S/sample-metadata.tsv \
  --o-visualization visual/alpha-rarefaction.qzv
  
# Note: Interpreting alpha diversity metrics: it is important to understand that certain metrics are stricly qualitative (presence/absence), 
# that is they only take diversity into account, often referred to as richness of the community (e.g. observed otus). 
# In contrast, other methods are quantitative in that they consider both richness and abundance across samples, commonly referred to as evenness (e.g. Shannon). 
# Yet other methods take phylogenetic distance into account by asking how diverse the phylogenetic tree is for each sample. 
# These phylogenetic tree-based methods include the popular Faith’s PD, which calculates the sum of the branch length covered by a sample

#clustering method:
        #- 'nj'   # neighbor joining
        #- 'upgma' # UPGMA, an arbitrary rarefaction trial will be used for the tree, and the remaining trials
                   # are used to calculate the support of the internal nodes of that tree.
                   
# --p-sampling-depth # The total frequency that each sample should be rarefied to prior to computing the diversity metric.  
# --p-sampling-depth # Besoin de se baser sur les resultats de la rarefaction

#qiime diversity beta-rarefaction \
#        --i-table core/ConTable.qza \
#        --i-phylogeny tree/rooted-tree.qza \
#        --m-metadata-file $METADATA_16S/sample-metadata.tsv \ 
#        --p-clustering-method upgma \ 
#        --p-sampling-depth 2634 \ 
#        --p-iterations 10 \
#        --p-correlation-method spearman \
#        --p-color-scheme BrBG \
#        --o-visualization visual/RareGraph-beta.qzv

qiime tools export --input-path visual/alpha-rarefaction.qzv --output-path export/visual/alpha-rarefaction
#qiime tools export --input-path visual/RareGraph-beta.qzv --output-path export/visual/RareGraph-beta

#!/usr/bin/env bash

# pathways in cluster:
DATADIRECTORY_ITS=/home/fungi/Saribus_jeanneneyi/05_QIIME2/ITS/
DATADIRECTORY_16S=/home/fungi/Saribus_jeanneneyi/05_QIIME2/16S/

METADATA_ITS=/home/fungi/Saribus_jeanneneyi/98_database_files/ITS/
METADATA_16S=/home/fungi/Saribus_jeanneneyi/98_database_files/16S/

# pathways in local:
#DATADIRECTORY_ITS=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/05_QIIME2/ITS/
#DATADIRECTORY_16S=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/05_QIIME2/16S/

#METADATA_ITS=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/98_database_files/ITS/
#METADATA_16S=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/21_Saribus/Saribus_jeanneneyi/98_database_files/16S/



###############################################################
### For Fungi
###############################################################

cd $DATADIRECTORY_ITS

eval "$(conda shell.bash hook)"
conda activate qiime2-2021.4

# Aim: Filter sample from table based on a feature table or metadata

#qiime feature-table filter-samples \
#        --i-table core/RarTable.qza \
#        --m-metadata-file $METADATA_ITS/sample-metadata.tsv \
#        --p-where "[#SampleID] IN ('bark_foret_nord_01', 'bark_foret_nord_02', 'bark_foret_nord_03', 'base_palm_creek_pernod', 'leaf_creek_pernod', 'leaf_nursery_01', 'leaf_nursery_02', 'leaf_PPRB_01', 'leaf_PPRB_02', 'root_creek_pernod')"  \
#        --o-filtered-table core/RarTable-all.qza

qiime feature-table filter-samples \
        --i-table core/Table.qza \
        --m-metadata-file $METADATA_ITS/sample-metadata.tsv \
        --p-where "[#SampleID] IN ('bark_foret_nord_01', 'bark_foret_nord_02', 'bark_foret_nord_03', 'base_palm_creek_pernod', 'leaf_creek_pernod', 'leaf_nursery_01', 'leaf_nursery_02', 'leaf_PPRB_01', 'leaf_PPRB_02', 'root_creek_pernod')"  \
        --o-filtered-table core/Table-all.qza

        
# Aim: Identify "core" features, which are features observed,
     # in a user-defined fraction of the samples

        
#qiime feature-table core-features \
#        --i-table core/RarTable-all.qza \
#        --p-min-fraction 0.1 \
#        --p-max-fraction 1.0 \
#        --p-steps 10 \
#        --o-visualization visual/CoreBiom-all.qzv  

qiime feature-table core-features \
        --i-table core/Table-all.qza \
        --p-min-fraction 0.1 \
        --p-max-fraction 1.0 \
        --p-steps 10 \
        --o-visualization visual/CoreBiom-all_notRar.qzv  


qiime tools export --input-path core/Table-all.qza --output-path export/core/Table-all    
        
#qiime tools export --input-path visual/CoreBiomAll.qzv --output-path export/visual/CoreBiomAll
qiime tools export --input-path visual/CoreBiom-all_notRar.qzv --output-path export/visual/CoreBiom-all_notRar



###### Biom convert

# Aim: Convert to/from the BIOM table format

biom convert -i export/core/Table-all/feature-table.biom -o export/core/Table-all/table-from-biom.tsv --to-tsv

 # Aim: Remove first line and rename '#OTU ID' into 'ASV'

 sed '1d ; s/\#OTU ID/ASV_ID/' export/core/Table-all/table-from-biom.tsv > export/core/Table-all/ASV.tsv


###############################################################
### For Bacteria
###############################################################

cd $DATADIRECTORY_16S

eval "$(conda shell.bash hook)"
conda activate qiime2-2021.4

# Aim: Filter sample from table based on a feature table or metadata

# qiime feature-table filter-samples \
#        --i-table core/RarTable.qza \
#        --m-metadata-file $METADATA_16S/sample-metadata.tsv \
#        --p-where "[#SampleID] IN ('bark_foret_nord_01', 'bark_foret_nord_02', 'bark_foret_nord_03', 'base_palm_creek_pernod', 'leaf_creek_pernod', 'leaf_nursery_01', 'leaf_nursery_02', 'leaf_PPRB_01', 'leaf_PPRB_02', 'root_creek_pernod')"  \
#        --o-filtered-table core/RarTable-all.qza
           
 qiime feature-table filter-samples \
        --i-table core/Table.qza \
        --m-metadata-file $METADATA_16S/sample-metadata.tsv \
        --p-where "[#SampleID] IN ('bark_foret_nord_01', 'bark_foret_nord_02', 'bark_foret_nord_03', 'base_palm_creek_pernod', 'leaf_creek_pernod', 'leaf_nursery_01', 'leaf_nursery_02', 'leaf_PPRB_01', 'leaf_PPRB_02', 'root_creek_pernod')"  \
        --o-filtered-table core/Table-all.qza
           
# Aim: Identify "core" features, which are features observed,
     # in a user-defined fraction of the samples

#qiime feature-table core-features \
#        --i-table core/RarTable-all.qza \
#        --p-min-fraction 0.1 \
#        --p-max-fraction 1.0 \
#        --p-steps 10 \
#        --o-visualization visual/CoreBiom-all.qzv
#
qiime feature-table core-features \
        --i-table core/Table-all.qza \
        --p-min-fraction 0.1 \
        --p-max-fraction 1.0 \
        --p-steps 10 \
        --o-visualization visual/CoreBiom-all_notRar.qzv
        

#qiime tools export --input-path core/RarTable-all.qza --output-path export/core/RarTable-all    
qiime tools export --input-path core/Table-all.qza --output-path export/core/Table-all    
        
#qiime tools export --input-path visual/CoreBiomAll.qzv --output-path export/visual/CoreBiomAll
#qiime tools export --input-path visual/CoreBiom-all.qzv --output-path export/visual/CoreBiom-all
qiime tools export --input-path visual/CoreBiom-all_notRar.qzv --output-path export/visual/CoreBiom-all_notRar


###### Biom convert

# Aim: Convert to/from the BIOM table format

#biom convert -i export/core/RarTable-all/feature-table.biom -o export/core/RarTable-all/table-from-biom.tsv --to-tsv
biom convert -i export/core/Table-all/feature-table.biom -o export/core/Table-all/table-from-biom.tsv --to-tsv

 # Aim: Remove first line and rename '#OTU ID' into 'ASV'
 
# sed '1d ; s/\#OTU ID/ASV_ID/' export/core/RarTable-all/table-from-biom.tsv >export/core/RarTable-all/ASV.tsv
 sed '1d ; s/\#OTU ID/ASV_ID/' export/core/Table-all/table-from-biom.tsv >export/core/Table-all/ASV.tsv

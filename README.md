# Saribus_jeanneneyi



### Installing pipeline :


<details>
  <summary>Click here to see how to install this pipeline</summary>

First, open your terminal. Then, run these two command lines :

    pwd
    /scratch_vol1/fungi

    cd -place_in_your_local_computer
    git clone https://github.com/PLStenger/Saribus_jeanneneyi.git

</details> 

### Running pipeline :

<details>
  
    # For run all pipeline, lunch only this command line : 
    time nohup bash 000_run_all_pipeline_in_one_script.sh &> 000_run_all_pipeline_in_one_script.out
  
    time nohup bash 00_quality_check_by_FastQC.sh &> 00_quality_check_by_FastQC.out
    >real	6m6,947s
    >user	9m24,144s
    >sys	0m29,619s

    time nohup bash 01_renamed_sequences.sh &> 01_renamed_sequences.out
    >real	0m1,222s
    >user	0m0,042s
    >sys	0m1,134s
  
    time nohup bash 02_trimmomatic_q30.sh &> 02_trimmomatic_q30.out
    >real	9m44,926s
    >user	71m7,566s
    >sys	3m32,825s
    
    time nohup bash 03_cleaned_data_quality_check_by_FastQC.sh &> 03_cleaned_data_quality_check_by_FastQC.out
    >real    6m17,025s
    >user    10m0,410s
    >sys     0m28,958s
  
    time nohup bash 04_qiime2_import_PE.sh &> 04_qiime2_import_PE.out
    >real	1m25,070s
    >user	1m36,740s
    >sys	0m28,981s
  
    time nohup bash 05_qiime2_denoise_PE.sh &> 05_qiime2_denoise_PE.out
    >real    20m39,038s
    >user    75m11,841s
    >sys     2m22,181s
  
    time nohup bash 06_qiime2_tree_PE.sh &> 06_qiime2_tree_PE.out
    >real    1m14,812s
    >user    1m24,746s
    >sys     0m26,862s
    
    time nohup bash 07_qiime2_rarefaction_PE.sh &> 07_qiime2_rarefaction_PE.out
    >
  
    time nohup bash 08_qiime2_calculate_and_explore_diversity_metrics_PE.sh &> 08_qiime2_calculate_and_explore_diversity_metrics_PE.out
    >
   
    time nohup bash 09_core_biom_PE.sh &> 09_core_biom_PE.out
    >
  
    time nohup bash 10_qiime2_assign_taxonomy_PE.sh &> 10_qiime2_assign_taxonomy_PE.out
    >
    

  
</details> 

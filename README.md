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
    >
  
</details> 

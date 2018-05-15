# intel-gatk4-somatic-with-preprocessing
Workflows for data pre-processing and initial calling of somatic SNP, Indel, and copy number variants optimized by Intel for on-premises infrastructure

### WORKFLOWS AND JSONS
This repository contains the modified WDLs for Somatic workflow optimized to run on BIGstack.

a. Set the correct path in [SomaticPairedSingleSampleWf.wdl](https://github.com/gatk-workflows/intel-gatk4-somatic-with-preprocessing/blob/master/SomaticPairedSingleSampleWf.wdl#L110) for where your datasets reside.
b. [SomaticPairedSingleSampleWf.wdl](https://github.com/gatk-workflows/intel-gatk4-somatic-with-preprocessing/blob/master/SomaticPairedSingleSampleWf.wdl#L433-L454) uses Samtools Sort instead of Picard Sort. 
c. If BWA threads for SamToFastqAndBwaMemAndMba stage has to be changed, make the change in two places: 
      [SomaticPairedSingleSampleWf.wdl](https://github.com/gatk-workflows/intel-gatk4-somatic-with-preprocessing/blob/master/SomaticPairedSingleSampleWf.wdl#L83)
      [CommonTasks.wdl](https://github.com/gatk-workflows/intel-gatk4-somatic-with-preprocessing/blob/master/CommonTasks.wdl#L79)
d. [mutect2.wdl](https://github.com/gatk-workflows/intel-gatk4-somatic-with-preprocessing/blob/master/mutect2.wdl#L466) - Enabled Mutect2 with pairHMM and smith-waterman AVX implementations. 

#### FPGA CHANGES
Assuming the environemnt has been setup to offload the pairhmm kernel of Mutect2 to FPGA - the below changes must be enabled in the mutect2.wdl file (based on the comments) to make use of the FPGA. 

a. In the WDL file, for task [M2 runtime section](https://github.com/gatk-workflows/intel-gatk4-somatic-with-preprocessing/blob/master/mutect2.wdl#L479), uncomment the line:
require\_fpga: "yes". Also modify the [-pairHMM flag](https://github.com/gatk-workflows/intel-gatk4-somatic-with-preprocessing/blob/master/mutect2.wdl#L466) to use EXPERIMENTAL\_FPGA\_LOGLESS\_CACHING.

### DATASETS
Use the Download\_Somatic\_Data.sh script to download all the datasets needed for this workflow.

### TOOLS
For on-prem, this workflow uses dockerized tools. However, if mutect2 uses FPGA, we recommend modifying the task M2 to use tools from the filesystem to work with the FPGA. There's a bug running FPGA with docker.

### NOTE
This workflow works with Cromwell v30.2 and HTCondor backend. Going <30.2 or >30.2 has caused issues. 

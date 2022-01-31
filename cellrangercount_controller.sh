#!/bin/bash
#SBATCH --account=def-hpcg1641
#SBATCH --job-name=cellRanger
#SBATCH --qos=privileged
#SBATCH --nodes=2                # number of Nodes
#SBATCH --tasks-per-node=64        # number of MPI processes per node
#SBATCH --mem=500G
#SBATCH --time 48:00:00
#SBATCH --array=1-10
#SBATCH --output=cellRanger.%J.out
#SBATCH --error=cellRanger.%J.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=tabasinezhad.m@gmail.com

# activate CellRanger-6.1.2
cd /global/home/hpc4798/scs10x/apps/cellranger-6.1.2
export PATH=/global/home/hpc4798/scs10x/apps/cellranger-6.1.2:$PATH
which cellranger
cellranger

# celranger count
cellranger count --id=PBMC_L002_I2 \
--fastqs=/global/home/hpc4798/scs10x/Controller/10k_PBMC_3p_nextgem_Chromium_Controller_fastqs \
--sample=10k_PBMC_3p_nextgem_Chromium_Controller \
--transcriptome=/global/home/hpc4798/scs10x/refdata-gex-GRCh38-2020-A \


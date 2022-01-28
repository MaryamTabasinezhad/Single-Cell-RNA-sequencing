# Single-Cell-RNA-sequencing
Gene expression
## activate CellRanger-6.1.2
```ruby
cd /global/home/hpc4798/scs10x/apps/cellranger-6.1.2
export PATH=/global/home/hpc4798/scs10x/apps/cellranger-6.1.2:$PATH
which cellranger
cellranger
```

## celranger count
```ruby
cellranger count --id=PBMC_L001_I1 \
--fastqs=/global/home/hpc4798/scs10x/PBMC_samples/10k_PBMC_3p_nextgem_Chromium_X_fastqs \
--sample=10k_PBMC_3p_nextgem_Chromium_X \
--transcriptome=/global/home/hpc4798/scs10x/refdata-gex-GRCh38-2020-A \
```

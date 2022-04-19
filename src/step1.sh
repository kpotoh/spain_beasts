# QC 1
mkdir fastqc_report1raw
fastqc raw/* -o fastqc_report1raw -t 4
multiqc -o multiqc_report1raw -i Raw fastqc_report1raw/

# trim sequences
trimmomatic PE -threads 4 data/raw/ВГС\ кант1V350045595_L04_81_1.fq.gz data/raw/ВГС\ кант1V350045595_L04_81_2.fq.gz data/output1_forward_paired.fq.gz data/output1_forward_unpaired.fq.gz data/output1_reverse_paired.fq.gz data/output1_reverse_unpaired.fq.gz ILLUMINACLIP:data/external/adapters.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36
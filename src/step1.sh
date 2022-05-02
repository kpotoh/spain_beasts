# QC 1
mkdir fastqc_report1raw  && fastqc raw/* -o fastqc_report1raw -t 4
multiqc -o multiqc_report1raw -i Raw fastqc_report1raw/

# trim sequences
trimmomatic PE -threads 20 data/raw/ВГС\ кант1V350045595_L04_81_1.fq.gz data/raw/ВГС\ кант1V350045595_L04_81_2.fq.gz data/interim/kant1_f_pa.fq.gz data/interim/kant1_f_unp.fq.gz data/interim/kant1_r_pa.fq.gz data/interim/kant1_r_unp.fq.gz ILLUMINACLIP:data/external/adapters.fa:2:30:10:2:True SLIDINGWINDOW:4:25 LEADING:5 TRAILING:5 MINLEN:50
trimmomatic PE -threads 16 data/raw/ВГС\ кант2V350045595_L04_82_1.fq.gz data/raw/ВГС\ кант2V350045595_L04_82_2.fq.gz data/interim/kant2_f_pa.fq.gz data/interim/kant2_f_unp.fq.gz data/interim/kant2_r_pa.fq.gz data/interim/kant2_r_unp.fq.gz ILLUMINACLIP:data/external/adapters.fa:2:30:10:2:True SLIDINGWINDOW:4:25 LEADING:5 TRAILING:5 MINLEN:50


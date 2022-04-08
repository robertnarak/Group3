#!/bin/bash

acc_list=Acc_list.txt

for sample in `cat $acc_list`;
do 
	fastq-dump --split-3 --gzip $sample
	read1=${sample}_1.fastq.gz 
	read2=${sample}_2.fastq.gz
	fastqc $read1 $read2

done
	echo "Your job has been completed succcesfully"

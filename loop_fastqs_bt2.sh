
start=$(date +%s)

for sample in /Users/lunasun/data/shipment_98/*R1_001_paired.fastq.gz;
	do
	dir="/Users/lunasun/data/shipment_98"
	#echo $sample
	base=$(basename -s "_R1_001_paired.fastq.gz" $sample)
        #echo $base

	bowtie2 -x /Users/lunasun/data/bt2_test/bt2_idx/bt2_sra_idx -1 ${dir}/${base}_R1_001_paired.fastq.gz -2 ${dir}/${base}_R2_001_paired.fastq.gz -S /Users/lunasun/data/bt2_test/sam/${base}.sam -p 6
done

end=$(date +%s)
runtime=$((end-start))
echo "Elapsed time: $runtime seconds"
start=$(date +%s)

 
for sample in /Users/lunasun/data/shipment_98/*R1_001_paired.fastq.gz;
	do
	dir="/Users/lunasun/data/shipment_98"
	#echo $sample
	base=$(basename -s "_R1_001_paired.fastq.gz" $sample)
        #echo $base

	bwa-mem2 mem -t 4 phix ${dir}/${base}_R1_001_paired.fastq.gz ${dir}/${base}_R2_001_paired.fastq.gz > ${base}.sam
done

end=$(date +%s)
runtime=$((end-start))
echo "Elapsed time: $runtime seconds"

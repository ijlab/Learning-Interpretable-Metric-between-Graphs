#!/bin/bash

datasets=("AIDS" "BZR" "DD" "DHFR" "FRANKENSTEIN" "Mutagenicity" "NCI1" "DBLP_v1" "PTC_MR" "COX2")
maxpats=(30 15 30 15 15 10 15 30 30 15)


for i in `seq 0 $((${#datasets[@]}-1))`;do
	(for j in `seq 1 10`;do
		echo $j ${datasets[$i]} ${maxpats[$i]}
	done) | xargs -L 1 -P 5 ./run.sh
done

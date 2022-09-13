#!/bin/bash
grep "Gene[1-2]" gene_results.txt > protein_results.txt
cat protein_results.txt
sed -i 's/Gene/Protein/g' "protein_results.txt"
cat protein_results.txt
awk '{x+=$2}END{print x}' protein_results.txt
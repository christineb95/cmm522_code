#!/bin/bash
#SBATCH --job-name=hw5
#SBATCH --ntasks=1
#SBATCH --nodes=1             
#SBATCH --mem=100mb                    
#SBATCH --time=00:01:00   
#SBATCH --partition=windfall
#SBATCH --account=windfall
#SBATCH --mail-type=ALL
#SBATCH -e hw5.err
#SBATCH -o hw5.out

grep "Gene[1-2]" gene_results.txt > protein_results.txt | sed -i 's/Gene/Protein/g' "protein_results.txt" | awk '{x+=$2}END{print x}' protein_results.txt
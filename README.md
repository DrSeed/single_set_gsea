Overview
This repository contains a script for performing enrichment analysis using gene lists. The analyze_enrichment function takes a CSV file containing gene symbols and analyzes it against multiple gene set databases. It uses enrichR to find enriched pathways and other gene sets, then creates a visual representation of the results with ggplot2.

Dependencies
R (version 3.x or higher)
ggplot2: for creating the visualizations
enrichR: for accessing various gene set databases and performing the enrichment analysis
Make sure you have the required libraries installed in R:

Input Data
The input CSV file should have a column named Symbol containing gene symbols. The script expects the following structure:

Symbol
Gene1
Gene2
Gene3
...

Replace "diffrentailly_expressed_genes.csv" with your actual data file.

Usage
To run the script, provide it with the name of your CSV file and a vector of database names you want to query against. Example usage:

R
Copy code
analyze_enrichment("your_data_file.csv", c("KEGG_2019_Human", "GO_Biological_Process_2021", 
                                           "GO_Cellular_Component_2021", "GO_Molecular_Function_2021"))
The script will output a PNG file and a CSV file for each database queried.

Output
The script generates two types of files for each database:

A PNG file with a bar plot of the top enrichment terms.
A CSV file with detailed enrichment results.

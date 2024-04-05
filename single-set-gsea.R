library(ggplot2)

analyze_enrichment <- function(data_file, dbs) {
  data <- read.csv(data_file, header = TRUE)
  #all <- read.csv("final_", header = TRUE)
  
  up.idx <- data$Symbol
  all.genes <- data$Symbol
  up.genes <- data$Symbol

  
  library(enrichR)
  
  for (db in dbs) {
    
    enriched_pw <- enrichr(genes = up.genes, databases = db)
    
    plotEnrich(enriched_pw[[1]], showTerms = 15, numChar = 40, y = "Ratio", orderBy = "P.value", 
               title = paste0(db))
    ggsave(paste0(db, ".png"), dpi = 300, width = 8, height = 6)
    
    write.csv(enriched_pw[[1]], paste0(db, ".csv"))
  
    
  }
}


analyze_enrichment("roc_0.75.csv", c("KEGG_2019_Human", "GO_Biological_Process_2021", 
                                               "GO_Cellular_Component_2021", "GO_Molecular_Function_2021"))

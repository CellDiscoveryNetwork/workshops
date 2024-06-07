if (!requireNamespace("palmerpenguins", quietly = TRUE))
    install.packages("palmerpenguins")

if (!requireNamespace("devtools", quietly = TRUE))
    install.packages("devtools")

if (!requireNamespace("gridExtra", quietly = TRUE))
    install.packages('gridExtra')

if (!requireNamespace("tidyverse", quietly = TRUE))
    install.packages('tidyverse')

if (!requireNamespace("DT", quietly = TRUE))
    install.packages('DT')

if (!requireNamespace("presto", quietly = TRUE))
    devtools::install_github("immunogenomics/presto")

if (!requireNamespace("plotly", quietly = TRUE))
    install.packages('plotly')

if (!requireNamespace("cluster", quietly = TRUE))
    install.packages('cluster')

if (!requireNamespace("scales", quietly = TRUE))
    install.packages('scales')

if (!requireNamespace("viridis", quietly = TRUE))
    install.packages('viridis')

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

if (!requireNamespace("vegan", quietly = TRUE))
    BiocManager::install('vegan') 

if (!requireNamespace("sparseMatrixStats", quietly = TRUE))
    install.packages("sparseMatrixStats")

if (!requireNamespace("ComplexHeatmap", quietly = TRUE))
    BiocManager::install("ComplexHeatmap")

if (!requireNamespace("Seurat", quietly = TRUE))
    install.packages("Seurat")

if (!requireNamespace("tidyverse", quietly = TRUE))
    install.packages("tidyverse")

if (!requireNamespace("remotes", quietly = TRUE))
    install.packages("remotes")

if (!requireNamespace("decoupleR", quietly = TRUE))
    remotes::install_github('saezlab/decoupleR')

if (!requireNamespace("ComplexHeatmap", quietly = TRUE))
    BiocManager::install("ComplexHeatmap")

if (!requireNamespace("glue", quietly = TRUE))
    install.packages("glue")

if (!requireNamespace("colorBlindness", quietly = TRUE))
    install.packages("colorBlindness")

if (!requireNamespace("ggpmisc", quietly = TRUE))
    install.packages("ggpmisc")

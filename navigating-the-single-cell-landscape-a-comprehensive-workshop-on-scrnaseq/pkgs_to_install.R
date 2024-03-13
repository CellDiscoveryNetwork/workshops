if (!requireNamespace("devtools", quietly = TRUE))
    install.packages("devtools")

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

if (!requireNamespace("cellxgene.census", quietly = TRUE))
    install.packages(
        "cellxgene.census",
        repos=c('https://chanzuckerberg.r-universe.dev', 'https://cloud.r-project.org')
    )

if (!requireNamespace("gganatogram", quietly = TRUE))
    devtools::install_github("jespermaag/gganatogram")

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

if (!requireNamespace("ARBOL", quietly = TRUE))
    devtools::install_github('jo-m-lab/ARBOL')

if (!requireNamespace("vegan", quietly = TRUE))
    BiocManager::install('vegan') 

if (!requireNamespace("RcppML", quietly = TRUE)) {
    devtools::install_github("zdebruine/RcppML")
    devtools::install_github("zdebruine/RcppSparse")
}

if (!requireNamespace("sparseMatrixStats", quietly = TRUE))
    install.packages("sparseMatrixStats")

if (!requireNamespace("inflection", quietly = TRUE))
    install.packages("inflection")

if (!requireNamespace("org.Hs.eg.db", quietly = TRUE))
    BiocManager::install("org.Hs.eg.db")

if (!requireNamespace("clusterProfiler", quietly = TRUE))
    BiocManager::install("clusterProfiler")

if (!requireNamespace("CellChat", quietly = TRUE))
    devtools::install_github("jinworks/CellChat")

if (!requireNamespace("ComplexHeatmap", quietly = TRUE))
    BiocManager::install("ComplexHeatmap")

if (!requireNamespace("Seurat", quietly = TRUE))
    install.packages("Seurat")

if (!requireNamespace("tidyverse", quietly = TRUE))
    install.packages("tidyverse")

if (!requireNamespace("SingleCellExperiment", quietly = TRUE))
    BiocManager::install("SingleCellExperiment", update = FALSE)

if (!requireNamespace("scran", quietly = TRUE))
    BiocManager::install("scran")

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

if (!requireNamespace("circlize", quietly = TRUE))
    install.packages("circlize")
    
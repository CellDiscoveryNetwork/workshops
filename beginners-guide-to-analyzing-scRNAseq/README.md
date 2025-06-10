# A Beginner's Guide to Analyzing scRNA-seq

## Day 1: June 4th 2024

-   **Where**: Karp 11 Conference Room
-   **Course Material**:
    -   [Introduction to R/Rstudio/Seurat](https://github.com/CellDiscoveryNetwork/workshops/tree/main/beginners-guide-to-analyzing-scRNAseq/prework) [[Recording](https://youtu.be/-MaUe0c_5c4?si=JofHaR9BpA6RwVaD)]
        -   How to navigate Rstudio
        -   Fundamentals and data wrangling in R
        -   Working with a Seurat object
    -   [Basic sc-RNAseq workflow](https://github.com/CellDiscoveryNetwork/workshops/blob/main/beginners-guide-to-analyzing-scRNAseq/day-1/The%20Basic%20scRNAseq%20Analysis%20Workflow.pdf) [[Recording](https://youtu.be/HWu7YTk-5hM?si=pjsG0fhXU76unvJd)]
        -   Main steps for scRNAseq workflow
        -   Intuition behind each step
    -   [Normalization & HVG selection](http://htmlpreview.github.io/?https://github.com/CellDiscoveryNetwork/workshops/blob/main/beginners-guide-to-analyzing-scRNAseq/day-1/3-norm-hvg.html)[[Recording](https://youtu.be/WcEfiTtKsj4?si=ADP37LVVSst4GjzJ)]
        -   Why and how to normalize sc-RNAseq data
        -   Why and how to select highly variable genes
    -   [PCA, Integration & KNN graphs](http://htmlpreview.github.io/?https://github.com/CellDiscoveryNetwork/workshops/blob/main/beginners-guide-to-analyzing-scRNAseq/day-1/4-PCA_Harmony_kNN.html)[[Recording](https://drive.google.com/file/d/13qvJhqK-EwnEJ4F_QI6eoLlknAcoNs18/view?usp=sharing)](Request Access if needed)
        -   Brief overview on PCA and how to use it for sc-RNAseq
        -   KNN-graph representation of the data
        -   Correcting batch effects with Harmony

## Day 2: June 11th 2024

-   **Where**: Karp 11 Conference Room
-   **Course Material**:
    -   [Quality Control](http://htmlpreview.github.io/?https://github.com/CellDiscoveryNetwork/workshops/blob/main/beginners-guide-to-analyzing-scRNAseq/day-2/5-QC.html) [[Recording](https://youtu.be/6GHcfh7fj9Y?si=QrLGpgaem5nWIzM_)]
        -   How to carry out QC analysis
        -   What parameters do we need to look at and how to interpret them
        -   Computing doublet scores
        -   Tips and tricks during the QC process
    -   [Clustering](http://htmlpreview.github.io/?https://github.com/CellDiscoveryNetwork/workshops/blob/main/beginners-guide-to-analyzing-scRNAseq/day-2/6-Clustering.html) [[Recording](https://drive.google.com/file/d/1nuY2Tnr7w3aLKY3yU0J1rC5szFa5FTkh/view?usp=sharing)]
        -   How to cluster sc-RNAseq data
        -   What algorithms can we use
        -   How to assess if a clustering resolution is good
    -   [Differential Gene Expression & Level 1 Annotation](http://htmlpreview.github.io/?https://github.com/CellDiscoveryNetwork/workshops/blob/main/beginners-guide-to-analyzing-scRNAseq/day-2/7-dge-annotlvl1.html) [[Recording](https://youtu.be/GOg7IxKxGvk?si=Vcdqt4b-dJTcLaRq)]
        -   How to compute differentially expressed genes between clusters
        -   How to evaluate differential expression statistics
        -   Reference-based cell type annotation
        -   Manual cell type annotation
    -   [Subclustering & Level 2 Annotation](http://htmlpreview.github.io/?https://github.com/CellDiscoveryNetwork/workshops/blob/main/beginners-guide-to-analyzing-scRNAseq/day-2/8-Subclustering.html) [[Recording](https://youtu.be/uFi1Q0U_MF4?si=uKK_rJPGGtGvGiOa)]
        -   What does level 2 annotation mean and why we need it
        -   How to iteratively annotate a dataset

### Exit Forms
-   Please take a moment to fill out the exit form for day 1 [here](https://forms.gle/SFMgoJTXsQF4SiE68). It really helps us plan better future workshops and improve the material of our current ones!

-   Please take a moment to fill out the exit form for day 2 [here](https://forms.gle/aMMufpccqcoMkdQr5). It really helps us plan better future workshops and improve the material of our current ones!

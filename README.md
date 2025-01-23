# mitoscore
R-package to perform single sample mitoscore for mitochondria genesets from mitocarta V3



### package installation
```r
library(devtools)
install_github("cdesterke/mitoscore")
```

### mitochondria scoring (mitocarta V3) of a human transcriptome matrix annotated with gene symbols and based on GSVA algorithm: function "mitogenescore"
```r
library(keggmetascore)
data(gene_data)
data(symbol)
res<-metagenescore(gene_data,symbol,method="ssgsea")
```
![res](https://github.com/cdesterke/mitoscore/blob/main/mitogenescore.png)

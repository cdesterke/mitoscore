# mitoscore
R-package to perform single sample mitoscore for mitochondria genesets from mitocarta V3



### package installation
```r
library(devtools)
install_github("cdesterke/mitoscore")
```

### mitochondria scoring (mitocarta V3) of a human transcriptome matrix annotated with gene symbols and based on GSVA algorithm: function "mitogenescore"
```r
library(mitoscore)
data(mito_data)
data(mitol2)

res<-mitogenescore(mito_data,symbol=mitol2,method="ssgsea")
head(res)[,1:5]
```
![res](https://github.com/cdesterke/mitoscore/blob/main/mitogenescore.png)

### mitochondria scoring (mitocarta V3) heatmap: function "mitoheat"
```r

data(mito_pheno)
mitoheat(res,mito_pheno,scale="none",fontsize=10)

```
![res](https://github.com/cdesterke/mitoscore/blob/main/mitoheat.png)

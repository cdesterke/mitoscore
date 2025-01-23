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


## REFERENCES

> Rath S, Sharma R, Gupta R, Ast T, Chan C, Durham TJ, Goodman RP, Grabarek Z, Haas ME, Hung WHW, Joshi PR, Jourdain AA, Kim SH, Kotrys AV, Lam SS, McCoy JG, Meisel JD, Miranda M, Panda A, Patgiri A, Rogers R, Sadre S, Shah H, Skinner OS, To TL, Walker MA, Wang H, Ward PS, Wengrod J, Yuan CC, Calvo SE, Mootha VK. MitoCarta3.0: an updated mitochondrial proteome now with sub-organelle localization and pathway annotations. Nucleic Acids Res. 2021 Jan 8;49(D1):D1541-D1547. doi: 10.1093/nar/gkaa1011. PMID: 33174596; PMCID: PMC7778944.

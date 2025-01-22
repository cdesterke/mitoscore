#' @title mitoheat

#' @param results results obtained from mitogenescore function or sub-geneset
#' @param symbol phenotype file from tested samples
#' @param scale method of scaling "none" "row" "column"
#' @param fontsize size of the font on the graph
#' @usage data(mito_data)
#' @usage data(mitol2)
#' @usage data(mito_pheno)
#' @usage res<-mitogenescore(mito_data,symbol=mitol2,method="ssgsea")
#' @usage metaheat(res,pheno,scale="none",fontsize=10)
#' @examples data(mito_data)
#' @examples data(mitol2)
#' @examples data(mito_pheno)
#' @examples res<-mitogenescore(mito_data,symbol=mitol2,method="ssgsea")
#' @examples mitoheat(res,mito_pheno,scale="none",fontsize=10)



mitoheat<-function(results,pheno,scale="none",fontsize=10){
  if(!require(pheatmap)){install.packages("pheatmap")}
  library(pheatmap)

  pheatmap(results,method="ward.D2",scale=scale, clustering_distance_cols = "euclidean",annotation=pheno,
           clustering_distance_rows = "euclidean",cluster_cols=FALSE,show_colnames=F, fontsize = fontsize,
           color = colorRampPalette(c("gold", "white", "orchid"))(50))
}

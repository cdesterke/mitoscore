#' @title mitogenescore

#' @param mito_data transcriptome matrix
#' @param symbol mitocarta genesets by gene symbols: mitol1,mitol2,mitol3,mitolall
#' @param method GSVA method of enrichment: "gsva", "ssgsea", "zscore", "plage"
#' @usage data(mito_data)
#' @usage data(mitol2)
#' @usage res<-mitogenescore(mito_data,symbol=mitol2,method="ssgsea")
#' @usage head(res[,1:6])
#' @examples data(mito_data)
#' @examples data(mitol2)
#' @examples res<-mitogenescore(mito_data,symbol=mitol2,method="ssgsea")
#' @examples head(res[,1:6])


mitogenescore<-function(mito_data,symbol="mitol2",method="ssgsea"){
 if(!require(GSVA))
   {if (!require("BiocManager", quietly = TRUE))
   install.packages("BiocManager")
   BiocManager::install("GSVA")}
  library(GSVA)

  data<-as.matrix(mito_data)

  if(method=="zscore"){
  param<-zscoreParam(data,symbol)
  results<-gsva(param)
  results<-as.data.frame(results)
  return(results)
  }
  else if(method=="gsva"){
  param<-gsvaParam(data,symbol)
  results<-gsva(param)
  results<-as.data.frame(results)
  return(results)
  }

  else if(method=="ssgsea"){
  param<-ssgseaParam(data,symbol)
  results<-gsva(param)
  results<-as.data.frame(results)
  return(results)
  }

  else if(method=="plage"){
  param<-plageParam(data,symbol)
  results<-gsva(param)
  results<-as.data.frame(results)
  return(results)
  }

  else{
  print("Input method is wrong ! (gsva, ssgsea, plage or zscore)")
  }

}

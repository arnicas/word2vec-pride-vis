# Code borrowed and modified to fit my data and run in RStudio:
# http://www.codeproject.com/Tips/788739/Visualization-of-High-Dimensional-Data-using-t-SNE

#  Make sure you 'paste' your _words.csv and _scores files together into data_for_r.tsv:

data_for_r <- read.delim("data/data_for_r.tsv", header=FALSE)

# a little cleaning, just in case
mydata <- unique(data_for_r)
mydata <- na.omit(mydata)
row.names(mydata) <- mydata$V1

library(Rtsne)

# need to get rid of the word column again
rtsne_out <- Rtsne(as.matrix(mydata[,2:201]), theta=0.3)

plot(rtsne_out$Y, t='n', main="BarnesHut t-SNE")
text(rtsne_out$Y, labels=rownames(mydata), cex=0.6, col=rgb(0,0,0,0.5))

library(tsne)

# initialize counter to 0
x <- 0
epc <- function(x) {
  x <<- x + 1
  plot(x, t='n', main="T-SNE")
  text(x, labels=rownames(mydata), cex=0.6, col=rgb(0, 0, 0, 0.5))
}

# run tsne (maximum iterations:500, callback/graph every 200 epochs, target dimension k=25)
# Note: this takes a long time and seems to do nothing/freeze for some cases. Beware.
tsne_data <- tsne(mydata[,2:201], k=25, epoch_callback=epc, max_iter=500, epoch=200)



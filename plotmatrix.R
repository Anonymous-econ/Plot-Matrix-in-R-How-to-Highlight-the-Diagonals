####Prepare a Matrix

##Here, for example, I am creating a square matrix that has matched pairs. 
#This could be a typical parent-child educational matrix. The parent’s educations are classified into five distinct educational categories I, II, III, IV and V. 
#Similarly, the same classification is used for children’s education.

sample_mat <- matrix(
  c(
    35.24,26.67,17.14,9.05,11.9,
    18.70,35.65,10.00,24.78,10.87,
    10.92,12.69,25.50,39.64,11.24,
    10.88,9.33,3.11,62.69, 13.99,
    9.29, 20.14,10.71, 27.71,32.14
  ),
  nrow = 5
) 
 rownames(sample_mat) <- c("I", "II", "III", "IV", "V")
colnames(sample_mat) <- c("I", "II", "III", "IV", "V")
 sample_mat
 par("mar")
 par(mar=c(5.1, 4.1, 4.1, 4.1))
library(plot.matrix)
plot(sample_mat)
##Putting parent’s education at the top of the matrix
plot(sample_mat, 
      axis.col=list(side=3, cex.axis=1), axis.row=list(cex.axis=1), 
)
##For more clarity, we can remove x, y labels, main title and we can also put data on the matrix itself
plot(sample_mat, fmt.cell='%.2f', xlab="", ylab="", 
      axis.col=list(side=3, cex.axis=1), axis.row=list(cex.axis=1), main=""
)
##Change the colour of the matrix and remove the key
plot(sample_mat, fmt.cell='%.2f', xlab="", ylab="", 
      axis.col=list(side=3, cex.axis=1), axis.row=list(cex.axis=1), main="", 
      col=c('white'), key=NULL
)
##Change the colour of the diagonal
plot(sample_mat,fmt.cell='%.2f', col=c('gray', 'gray', 'gray', 'gray','gray' ), breaks=c(25.50,32.14, 35.24, 35.65, 62.69), 
      key=NULL, main="", xlab="", ylab="", axis.col=list(side=3, cex.axis=1), cex=.9)

##As we can see, this attempt goes in vain because brakes=c() operates as a range. So, anything under the mentioned range c() gets a ‘grey’ colour.
##To solve this issue, we can employ the idea of converting matrix elements into character

>sample_mat_1<- matrix(as.character(sample_mat), nrow=5)

##However, it will remove the zeros after the decimal. Better to enter manually
sample_mat_1<- matrix(as.character(sample_mat), nrow=5)
sample_mat_1 <- matrix(
  c(
    "35.24", "26.67", "17.14", "9.05", "11.90",
    "18.70", "35.65", "10.00", "24.78", "10.87",
    "10.92", "12.69", "25.50", "39.64", "11.24",
    "10.88", "9.33", "3.11", "62.69", "13.99",
    "9.29", "20.14", "10.71", "27.71", "32.14"
  ),
  nrow = 5
)
 rownames(sample_mat_1) <- c("I", "II", "III", "IV", "V")
colnames(sample_mat_1) <- c("I", "II", "III", "IV", "V")
plot(sample_mat_1, col=c('gray', 'gray', 'gray', 'gray','gray' ), breaks=c('25.50', '32.14', '35.24', '35.65', '62.69'),digits=5, 
      key=NULL, main="", xlab="", ylab="", axis.col=list(side=3, cex.axis=1), cex=.9)
title(main="Educational Mobility", side=1, adj=0.5, line=-18,  cex.main = 1)
mtext( "Parents' Education", side = 3, line = 2.5)
mtext( "Child's Education", side = 2, line = 2.5)

##Note: However, the problem remains unresolved if we have more than one matrix element with the same frequency.
##For example, 25.50 appears twice in the following matrix.
 sample_mat_2 <- matrix(
  c(
    "35.24", "26.67", "17.14", "9.05", "11.90",
    "18.70", "35.65", "10.72", "25.50", "10.87",
    "10.92", "12.69", "25.50", "39.64", "11.24",
    "10.88", "9.33", "3.11", "62.69", "13.99",
    "9.29", "20.14", "10.71", "27.71", "32.14"
  ),
  nrow = 5
)
 rownames(sample_mat_2) <- c("I", "II", "III", "IV", "V")
colnames(sample_mat_2) <- c("I", "II", "III", "IV", "V")
plot(sample_mat_2, col=c('gray', 'gray', 'gray', 'gray','gray' ), breaks=c('25.50', '32.14', '35.24', '35.65', '62.69'),digits=5, 
      key=NULL, main="", xlab="", ylab="", axis.col=list(side=3, cex.axis=1), cex=.9)
title(main="Educational Mobility", side=1, adj=0.5, line=-18,  cex.main = 1)
mtext( "Parents' Education", side = 3, line = 2.5)
mtext( "Child's Education", side = 2, line = 2.5)

##For this, we can distinguish the diagonal element from other cells by putting an extra mark.
#So it would become a distinct character. Here I am putting ‘.’ with "25.50", so it enters as “25.50.” in the matrix.
 sample_mat_3 <- matrix(
  c(
    "35.24", "26.67", "17.14", "9.05", "11.90",
    "18.70", "35.65", "10.72", "25.50", "10.87",
    "10.92", "12.69", "25.50.", "39.64", "11.24",
    "10.88", "9.33", "3.11", "62.69", "13.99",
    "9.29", "20.14", "10.71", "27.71", "32.14"
  ),
  nrow = 5
)
 rownames(sample_mat_3) <- c("I", "II", "III", "IV", "V")
colnames(sample_mat_3) <- c("I", "II", "III", "IV", "V")
plot(sample_mat_3, col=c('gray', 'gray', 'gray', 'gray','gray' ), breaks=c('25.50.', '32.14', '35.24', '35.65', '62.69'),digits=5, 
      key=NULL, main="", xlab="", ylab="", axis.col=list(side=3, cex.axis=1), cex=.9)
title(main="Educational Mobility", side=1, adj=0.5, line=-18,  cex.main = 1)
mtext( "Parents' Education", side = 3, line = 2.5)
mtext( "Child's Education", side = 2, line = 2.5)

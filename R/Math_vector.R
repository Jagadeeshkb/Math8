#This program helps to visualize the matrix operations to a vector

vector_change_plot <- function(a,b){
plot(c(0,a[1]),c(0,a[2]),xlim=c(0,20),ylim=c(0,20))
arrows(0,0,a[1],a[2],col="red") #before matrix 
out =  t(a) %*% b
arrows(0,0,out[1],out[2],col="blue")
}
clear_plot <- function(){
  #name <- readline("Do you want to remove the plots??-Y/n \n")
  if ((name == "Y") | TRUE) try(dev.off(),silent=TRUE)
}

for (i in 1:10){
  x = as.matrix(c(1,1)) 
  y = matrix(c(1,i,0,1),nrow=2,byrow=T)
vector_change_plot(x,y)
}

#--clear Plot 


clear_plot()

for (j in 1:10){
  x = as.matrix(c(1,1)) 
  y = matrix(c(1,0,j,1),nrow=2,byrow=T)
  vector_change_plot(x,y)
}

clear_plot()

for (j in 1:10){
  x = as.matrix(c(1,1)) 
  y = matrix(c(1,j,j,1),nrow=2,byrow=T)
  vector_change_plot(x,y)
}

clear_plot()

for (j in 1:10){
  x = as.matrix(c(1,1)) 
  y = matrix(c(j,j,j,1),nrow=2,byrow=T)
  vector_change_plot(x,y)
}

clear_plot()

#svd for a vector
val= svd(matrix(c(1:10),ncol=1)) 
val$u*val$d

val1 = svd(matrix(c(1,0,0,0,1,0,0,0,3),nrow=3,byrow=T))
(val1$u %*%  diag(val1$d)) %*% t(val1$v)


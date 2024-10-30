#Script to plot data and model

growth_data <- read.csv("experiment (1).csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)}


N0 <- exp(7.037e+00)
 #initial pop 
exp(7.037e+00)
r <- 9.757e-03
  
K <- 5.996e+10
#carrying capacity
ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun = logistic_fun, colour="red") +
  
  geom_point()

  scale_y_continuous(trans='log10')

#model2
  logistic_fun <- function(t) {
    
    N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
    
    return(N)}
  
  
  N0 <- 59188937427
  
  r <- 0
  
  K <- 5.996e+10
  
  ggplot(aes(t,N), data = growth_data) +
    
    geom_function(fun = logistic_fun, colour="red") +
    
    geom_point()
  
  scale_y_continuous(trans='log10')


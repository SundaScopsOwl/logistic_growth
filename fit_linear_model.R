#Script to estimate the model parameters using a linear approximation
install.packages("dplyr")
library(dplyr)

growth_data <- read.csv("experiment (1).csv")

#Case 1. K >> N0, t is small

data_subset1 <- growth_data %>% filter(t<1900) %>% mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#Case 2. N(t) = K

data_subset2 <- growth_data %>% filter(t>2200)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)

#special sandwhich

data_subset3 <- growth_data %>% filter(2200>t>1400)

model2 <- lm(N ~ 1, data_subset3)
summary(model3)
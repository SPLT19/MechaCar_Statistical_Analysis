#Import library
library(tidyverse)
library(dbplyr)

# Deliverable 1 Linear Regression to Predict MPG
# design a linear model to predict mpg of MechaCar prototypes using several variables

# Import and read csv files as Data Frame; Keyword: read.csv()
MechaCar_mpg<- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Linear regression; Keywords: lm() , Data paramether: MechaCar_mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg)

# p-value and -rsquare value from linear regression model. Keyword; summary()
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg))


# Deliverable 2 Visualizations for the Trip Analysis
#suspension coil’s PSI continuous variable and metrics
Suspension_Coil<- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# total summary dataframe. Keyword: summarize()
total_summary<- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), STDEV_PSI=sd(PSI))

# Creating dataframe  grouping manufacturing lot by measures of central tendency
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), STDEV_PSI=sd(PSI), .groups = 'keep')



#Deliverable 3 T-Test on Suspension Coils
# t-test determining manufacturing lots and individual lots are different from population mean of 1,500 pounds per square inch
# Keyword: t.test()
t.test(Suspension_Coil$PSI, mu=1500)

# individual vs. population lots means
# Lot1 t-test
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI, mu= 1500)
# Lot2 t-test
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI, mu= 1500)
# Lot3 t-test
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI, mu= 1500)


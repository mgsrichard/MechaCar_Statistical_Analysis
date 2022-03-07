
#import dependencies
library("tidyverse")


#import MechaCar data file
MechaCar_mpg <- read.csv(file ='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

#Perform multiple linear regression
Mecha_Multiple_Regression <- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = MechaCar_mpg)
print(Mecha_Multiple_Regression)

#Use summary() to get p value and r squared value for linear regression model
Mecha_summary <- summary(Mecha_Multiple_Regression <- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = MechaCar_mpg))
print(Mecha_summary)

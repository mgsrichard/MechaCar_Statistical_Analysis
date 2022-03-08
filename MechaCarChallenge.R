
#import dependencies
library("tidyverse")

#Deliverable 1 - Linear Regression to Predict MPG

#import MechaCar data file
MechaCar_mpg <- read.csv(file ='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

#Perform multiple linear regression
Mecha_Multiple_Regression <- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = MechaCar_mpg)
print(Mecha_Multiple_Regression)

#Use summary() to get p value and r squared value for linear regression model
Mecha_summary <- summary(Mecha_Multiple_Regression <- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = MechaCar_mpg))
print(Mecha_summary)


#Deliverable 2 - Visualizations for the Trip Analysis


#import suspension coil data file
Suspension_Coil <- read.csv(file ='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)

#Create a summary of mean, median, variance, standard deviation for the PSI column in Suspension Coil data
Suspension_total_summary <- summarize(.data=Suspension_Coil,Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')
print(Suspension_total_summary)

#Create a summary by lot of mean, median, variance, standard deviation for the PSI column in Suspension Coil data
Suspension_lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')
print(Suspension_lot_summary)

#Deliverable 3 - T-tests on Suspension Coils

# t-test 1 - Is the PSI across all lots, i.e. in total, statistically different from the presumed population mean of 1,500 pounds per square inch?
#use the one sample t-test since we are testing it against a presumed population mean

t.test(Suspension_Coil$PSI, mu=1500)

#t-test 2 Is the Lot 1 PSI statistically different from the presumed population mean of 1500 psi?
#use the one sample t-test since we are testing against a presumed population mean

Suspension_Coil_Lot1 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot1')
t.test(Suspension_Coil_Lot1$PSI, mu=1500)

#t-test 3 Is the Lot 2 PSI statistically different from the presumed population mean of 1500 psi?
#use the one sample t-test since we are testing against a presumed population mean

Suspension_Coil_Lot2 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot2')
t.test(Suspension_Coil_Lot2$PSI, mu=1500)

#t-test 4 Is the Lot 3 PSI statistically different from the presumed population mean of 1500 psi?
#use the one sample t-test since we are testing against a presumed population mean
Suspension_Coil_Lot3 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot3')
t.test(Suspension_Coil_Lot3$PSI, mu=1500)

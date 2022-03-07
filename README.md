# MechaCar_Statistical_Analysis
Statisitcal analysis in R

## Linear Regression to Predict MPG



![linear regression output](https://github.com/mgsrichard/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_Multiple_Regression.png)
![linear regression summary](https://github.com/mgsrichard/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_Summary.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The variables that contributed a non-random amount of variance to the mpg values are vehicle length and ground clearance. The p-value for vehicle length was 2.6 x 10^-12 and the p-value for ground clearance was 5.21 x 10^-8. Both p-values are extremely tiny, leading to the conclusion that there is a greater than 99% probability that the null hypothesis ought to be rejected. The p-value falls well below the significance value which would be 0.05 at the most. 
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

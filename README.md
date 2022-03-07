# MechaCar_Statistical_Analysis
Statisitcal analysis in R

## Linear Regression to Predict MPG

We performed a multiple linear regression to analyze the impact that 5 independent variables have on mpg. The variables are vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD. The null and alternate hypotheses for each of the variables are:

H<sub>0</sub> - Null hypothesis: The slopes/coefficients of each variable (vehicle length, vehicle weight, spoiler angel, ground clearance, and AWD) in the multiple regression model are zero and there is thus no correlation between any of the variables and the mpg.

H<sub>a</sub> - Alternate hypothesis: The slope/coeffiecient of at least one of the variables (vehicle length, vehicle weight, spoiler angel, ground clearance, and AWD) in the multiple regression is non-zero and there is thus some degree of correlation between at least one of the variables and the mpg.

The outputs of the regression and the summary of the regression are shown below.


![linear regression output](https://github.com/mgsrichard/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_Multiple_Regression.png)
![linear regression summary](https://github.com/mgsrichard/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_Summary.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The variables that contributed a non-random amount of variance to the mpg values are vehicle length and ground clearance. The p-value for vehicle length was 2.6 x 10^-12 and the p-value for ground clearance was 5.21 x 10^-8. Both p-values are extremely tiny, leading to the conclusion that there is a greater than 99% probability that the null hypothesis ought to be rejected. The p-value falls well below the significance value which would typically be 0.05. 

Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered to be zero, since that is the null hypothesis and we have p-values that are low enough to warrant rejecting the null hypothesis. Instead, we are failing to reject the alternate hypothesis, which means we are stating that at least one of the slopes is non-zero and there is thus some correlation between mpg and at least one of the variables. 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The multiple r-squared value (the coefficient of determination) for the model is .7149, which is a relatively high r-squared value. R-squared values fall between 0 and 1. Therefore, the linear model should 71% predictive ability for the mpg.

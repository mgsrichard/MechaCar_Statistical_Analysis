# MechaCar_Statistical_Analysis
Statistical analysis in R

## Linear Regression to Predict MPG

We performed a multiple linear regression to analyze the impact that 5 independent variables have on mpg. The variables are vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD. The null hypothesis, alternate hypotheses, and significance level are the same for each variable.  They are:

  - H<sub>0</sub> - Null hypothesis: The slopes/coefficients of each variable (vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD) in the multiple regression model are zero and there is thus no correlation between any of the variables and the mpg.
  - H<sub>a</sub> - Alternate hypothesis: The slope/coefficient of at least one of the variables (vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD) in the multiple regression is non-zero and there is thus some degree of correlation between at least one of the variables and the mpg.
  - Significance level - 0.05

The outputs of the regression and the summary of the regression are shown below.


![linear regression output](https://github.com/mgsrichard/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_Multiple_Regression.png)
![linear regression summary](https://github.com/mgsrichard/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_Summary.png)

The variables that contributed a non-random amount of variance to the mpg values are vehicle length and ground clearance. The p-value for vehicle length was 2.6 x 10<sup>-12</sup> and the p-value for ground clearance was 5.21 x 10<sup>-8</sup>. Both p-values are extremely tiny, leading to the conclusion that there is a greater than 99% probability that the null hypothesis ought to be rejected. The p-value falls well below the significance value which would typically be 0.05. 

The slope of the linear model is not considered to be zero, since that is the null hypothesis and we have p-values that are low enough to warrant rejecting the null hypothesis. Instead, we are failing to reject the alternate hypothesis, which means we are stating that at least one of the slopes is non-zero and there is thus some correlation between mpg and at least one of the variables. 

The multiple r-squared value (the coefficient of determination) for the model is .7149, which is a relatively high r-squared value. R-squared values fall between 0 and 1. Therefore, the linear model should be 71% predictive ability for the mpg.

## Summary Statistics on Suspension Coils

![total summary](https://github.com/mgsrichard/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_total_summary.png) <br>
![lot summary](https://github.com/mgsrichard/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_lot_summary.png)

In total, the current manufacturing data meet the design specification that the variance of the suspension coils must not exceed 100 pounds per square inch. The total, however, is concealing what is happening on a lot by lot basis as we can see when we look at the results by lot. Lot 3 does not meet the manufacturing specifications, while lots 1 and 2 do meet it. Something is going on with lot 3 that deserves further investigation.

## T-Tests on Suspension Coils
We performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the presumed population mean of 1,500 pounds per square inch. Since we are comparing the mean of each population to a presumed population mean, I used the one sample t-test, with the presumed population mean mu=1,500. For each of the t-tests, the null hypothesis, alternate hypothesis, and significance level used were the same. They are:
  - H<sub>0</sub> - Null hypothesis: There is no statistical difference between the observed sample mean and the presumed population mean of 1,500.
  - H<sub>a</sub> - Alternate hypothesis: There is a statistical difference between the observed sample mean and the presumed population mean of 1,500.
  - Significance level - 0.05
 
 ### T-test across all manufacturing lots
![total](https://github.com/mgsrichard/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_total.png)<br>

As seen above in the testing output, the p-value of 0.06 is greater than the significance level of 0.05, therefore there is not sufficient evidence to reject the null hypothesis, and so we conclude that there is no statistical difference between the observed sample mean and the presumed population mean.

### T-test for Lot 1
![lot1](https://github.com/mgsrichard/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_lot1.png)<br>

As seen above in the testing output, the p-value of 1.0 is greater than the significance level of 0.05, therefore there is not sufficient evidence to reject the null hypothesis, and so we conclude that there is no statistical difference between the observed sample mean and the presumed population mean.

### T-test for Lot 2
![lot2](https://github.com/mgsrichard/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_lot2.png)<br>

As seen above in the testing output, the p-value of 0.60 is greater than the significance level of 0.05, therefore there is not sufficient evidence to reject the null hypothesis, and so we conclude that there is no statistical difference between the observed sample mean and the presumed population mean.

### T-test for Lot 3
![lot3](https://github.com/mgsrichard/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_lot3.png)<br>

As seen above in the testing output, the p-value of 0.04 is less than the significance level of 0.05, therefore there is sufficient evidence to reject the null hypothesis and to support the alternate hypothesis, and so we conclude that there <strong>IS</strong> a statistical difference between the observed sample mean and the presumed population mean.

### T-test summary
The total dataset, lot 1, and lot 2 have means that are statistically similar to the presumed population mean of 1,500 PSI for the suspension coils. Lot 3, however, is not statistically similar, meaning there is evidence that there is something different about that lot, and something that needs to be checked out.

On the whole, the suspension coils in the total dataset have a mean PSI that is statistically similar to the presumed population mean of 1,500. However, you can see that the 0.06 p-value for the whole population is much closer to the significance level of 0.05 than the p-value for either lot 1 (p-value = 1.0) or lot 2 (p-value = 0.6). That's because the data from lot 3 is pulling the mean of the whole population away from the presumed mean. In general, if your p-value comes in close to the significance level, it might be a good idea to look more closely at your data as we did when we tested by lot. The problem doesn't lie in lots 1 or 2, but in lot 3. Corroborating this are the results fromthe t-test on lot 3, where we can see that the summary statistics for it are different from the other 2 lots.

## Proposed Further Research: MechaCar vs. Competition

I propose to analyze how MechaCar compares to their rivals with regard to the city fuel efficiency. This would be my chief concern if I were buying a new car, as it touches on two issues that are very important to me when I buy a car, the ecological impact of my gas powered car, and the amount I will have to pay for gas. I proposes to compare MechaCar to its top 3 perceived rivals on the current market. I would examine the city fuel efficiency of these three other brands and MechaCar based on class of car.

The null and alternate hypotheses would be as follows:
  - H<sub>0</sub> - Null hypothesis: The means of the mpgs for all groups are equal.
  - H<sub>a</sub> - Alternate hypothesis: The mean of at least one of the mpgs from the 4 different cars measured is different from all other groups.
  
I would use the ANOVA test because it can be used to test the means of a single dependent variable across multiple groups, such as mpg/fuel efficiency of cars by class.

For data, I would need to identify which car brands we would like to compare MechaCar to. Then we could retrieve class and mpg for them either from the mtcars database in R, or if this seems too out of date, we could get more current data from the [2022 Fuel Economy Guide](https://fueleconomy.gov/feg/pdfs/guides/FEG2022.pdf) on the  EPA website. Our data file for the multiple regression part of this challenge contains the mpg values for MechaCar, and we would also need to obtain the class information for those same car models.






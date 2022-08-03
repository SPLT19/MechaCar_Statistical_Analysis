# MechaCar_Statistical_Analysis
MechaCar_Statistical_Analysis with R

## Overview
The following analysis was performed to review a production data for insights that could help troubleshoot issues with a manufacturing process. 
Statistical analysis included: summary statistics, multiple linear regression analysis, t-test and design of statistical analysis comparing the employer data against other manufacturers data. For the following study levels of significance where considered with p values below 0.05, considered statistically relevant.

### Tools and resources: 
csv datasets [MechaCarMpg](MechaCar_mpg.csv) [SuspensionCoil](Suspension_Coil.csv) , R, RStudio, and libraries as Tidiverse with packages, Dpylr among others.
![Tidiverse](Resources\Import Library.png)  


# Results

## Linear Regression: Relevant variables related to MPG Prediction of MechaCar prototypes

The first step consisted in using Multiple Linear Regression model to identify statistical significant variables associated to miles per gallon (mpg) for the newest AutoRUs prototype. 
 

Dataset consisted of 6 rows that included variables like vehicle length, vehicle weight, coiler angle, ground clearance, AWD and mpg. Levels of significance were considered with p values below 0.05 as statistically relevant.
Results from linear regression are as seen in the following image

![LinearRegressionVariableCoefficients](Resources\Linear regression.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

![LinearRegresionSummary](Resources\LinearRegressionSummary.png)

As seen in the Linear regression [summary](Resources\LinearRegressionSummary.png) involving multiple R-square values, statistical significance was seen in the variables vehicle length, vehicle weight and ground clearance with p values of p<0.001. Thus, these variables provide a non-random amount of variance related to mpg values in the dataset. 

A fourth variable seen with some significance was vehicle weight with p value of p< 0.1 with a p value of 0.0776. However, significance level is too low that would not provide a strong non-random amount of variance compared to the other three variables mentioned before that hold a stronger statistical value. 
However, this level of non-random variance would be important to consider depending on the level of significance. 

-	Is the slope of the linear model considered to be zero? Why or why not? 
As seen in the P-value of the linear model was 5.35e-11. This means the slope of the linear model was smaller than 0.05.  


-	Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The potency in which the model is or not effective to predict mpg of MechaCar prototypes can be seen in the R-square Value.
R-square value tells the proportion of the variance in the response variable that can be explained by the predictor variable, meaning mpg of the MechaCar prototypes. R-squared closer to 1 indicates how well response variable (vehicle length, vehicle weight, ground clearance...) can be perfectly explained by the predictor variable (mpg). This linear model showed a R-square value of 0.715, meaning the model can predict around 72 percent of mpg of MechaCar prototypes effectively.  

It is interesting to note that residual standard error showed large residual error with probably more scattered or loosely data points. Despite the model potency found to predict effectively in 72 percent, residual standard error shows an average error of 8.77. 
Residual standard error is used to measure how well a regression model fits the dataset in the way there is difference between observed values and the predicted values (residuals). Residual standard error of the following model is 8.774. Telling that the following regression model predicts the mpg of the current prototype with an average error of about 8.774. Despite its potency predicting effectively, standard error might hint to the need of improving the model to a smaller residual standard error. 

In this case despite R-squared can give an idea of the strength of association between predictor variables with the response variable, this alone does not provide a formal statistical test for the relationship. This is provided by the F-test along with the corresponding p-value. Here it was found overall that F statistics had a value of 22.07 with 5 to 44 Degrees of Freedom, and a p value of 5.35e-11. Meaning lower than 0.05 considered significant in our current analysis and as seen with the degrees high degrees of freedom, this shows a high amount of information relative to the number of properties to estimate and a high statistical power. 

In conclusion the linear model can predict in around 72 percent mpg of MechaCar prototypes effectively, however there’s space to improvement for the model expressed with the large residual standard error, that could be potentially lowered. 


## Suspension coils: Summary statistics

Following results were obtained from Suspension coils analysis. 

![SummaryAllLots](Resources\TotalSummary.png)

Next table resumes the summary per lot

![LotSummary](Resources\LotSummary.png)


Following this results the following question emerged:
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Accepted Variance for MechaCar was set to be below 100 pounds per square inch.

As seen in summary statistics results, a variance of 62.294 pounds was found, meeting the design specifications for MechaCar that stated that variance of suspension coils was not to exceed 100 pounds per square inch. 

As for the individual lot analysis variance for each lot showed that lots 1 and 2 passed the required variance below 100 pounds but not the lot 3 with a variance of 170.286 surpassing the limit per square inch.  


## T-Tests on Suspension Coils

In order to analyse if there was a significant difference with the manufacturing lots and each lots individually from the population mean of pounds per square inch, a t test was performed
Results were as shown below.

![OneSampleTTest](Resources\OneSampleTTest.png)

Population mean per square inch was of 1500 pounds. 


As seen the One Sample t-test showed a p-value of 0.06. This means that the test was not statistically significant. Mean from overall population pounds and MechCar lots didn’t had a statistical difference of 1500 pounds per square inch.  

As seen in the previous variance analysis of lots lot number 3 didn’t passed the test. Thus, an analysis per lot against the population lots was performed. 

Results are shown below: 
![lottest](Resources\lettest.png)

As seen p-values of each lot revealed that: 
    - Lot 1 had a p-value of 1
    - Lot 2 had a p-value of 0.607
    - Lot 3 had a p-value of 0.04
Meaning Lot 1 and 2 were not statistically significant against the population with a p-value higher than 0.05, whereas Lot 3 had a significant value with p value below 0.05. Lot 3 needs to be recalibrated and further measures might be needed for it to  fall under general manufacturing specifications values. There’s a manufacturing issue with Lot 3 that needs to be addressed and modified. 

## Study Design: MechaCar vs Competition


Despite the following analysis can give some insights regarding the MechaCar vehicles production and we were able to address manufacturing issues, this is far from a complete analysis regarding Mecha Car. 

Further insights could be obtained from other metrics involving this project that go from, cost-benefit, performance, like fuel efficiency in different environments like city or highways, cost for maintaining the optimal functions as well as other important parameters like safety ratings. 

- Each od this metrics:
Cost
Fuel efficiency (city and highway)
Maintenance costs
Safety ratings
involve important variables that are necessary to further develop and compare MechaCar with other available options. 

- Considering this a general null hypothesis would be if:
Performance of metrics (cost, fuel efficiency in city and highway), maintenance cost and safety rating of MechaCar compared to competitors vehicles, perform the same, meaning they are not significant different. 

- General alternative Hypothesis would be that 
Performance of metrics (cost, fuel efficiency in city and highway), maintenance cost and safety rating of MechaCar compared to competitors vehicles, perform different, meaning they are significant different. 


Once the manufacturing variables and cost variables are tackled an interesting analysis would be regarding safety ratings compared to other cars already performing and being sold.

- In this case null hypothesis would be that 
Safety ratings of MechaCar compared to competitors’ vehicles, perform the same in regards of safety ratings

- Alternative hypothesis would be that 
Safety ratings of MechaCar compared to competitors’ vehicles, perform different in regards of safety ratings, meaning they are significant different. 

Variables associated to safety ratings are for example, Fatality (accident reports), injury (persons injured), crash rates, and vehicles-miles.  

Statistical analysis would include descriptive statistics, linear regression, and Analysis of Variance (ANOVA) or the equivalent depending on if the data fall in a normal distribution or Kruskal Wallis for non-parametric data. 

Further deeper analysis is recommended and develop a efficient datasheet including different parameters that could elucidate each of this metrics and variables. 
Significant sample as well as randomized study is recommended to obtain more significant values. Samples greater than 40 are recommended, but further studies would be needed to address depending on the metric the appropriate number for an appropriate statistical appropriate sample.


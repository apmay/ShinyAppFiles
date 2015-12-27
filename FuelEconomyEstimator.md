Fuel Economy Estimator
========================================================
author: apmay
date: December 27th, 2015

Motivation
========================================================

Purchasing an automobile is often a costly expenditure. One often neglected aspect of a purchase is the fuel economy of the vehicle. Low fuel economy incurs large fuel costs over time and these may add up to amounts rivaling, or greater than, the price of the actual vehicle.

Example: A $10,000 car with 30 miles per gallon is effectively cheaper than a $6,500 car with 20 miles per gallon when, for example, they are owned for 100,000 miles and gas is priced at $3.00/gallon.

The $10,000 car ends up costing $20,000.

The $6,500 car ends up costing $21,500.

Notice that the gas costs are on the same order as the car prices.

Shiny App Basics
========================================================

The 1974 Motor Trend US magazine lists the fuel economy and 10 aspects of automobile design and performance for 32 automobiles (1973-1974 models). The Shiny app companion to this presentation uses a linear model fit to this data set. This leaves three significant predictors of fuel economy.

- Car weight (1000lb)
- Quarter mile time (sec)
- Transmission (auto/manual)

The Shiny app user specifies desired values for each of these variables using the sliders and radio buttons. After pushing "Submit" the chosen inputs are returned for verification, along with the predicted fuel economy at the chosen inputs.

Shiny App Model (Under the Hood)
========================================================

The linear model details are provided below for reference.


```r
library(datasets)
data("mtcars")
fit <- lm(mpg ~ wt + qsec + am - 1, data = mtcars)
summary(fit)$coeff
```

```
      Estimate Std. Error   t value     Pr(>|t|)
wt   -3.185455  0.4827586 -6.598442 3.128844e-07
qsec  1.599823  0.1021276 15.664944 1.091522e-15
am    4.299519  1.0241147  4.198279 2.329423e-04
```

```r
c(summary(fit)$r.squared, summary(fit)$adj.r.squared)
```

```
[1] 0.9871223 0.9857902
```

Shiny App Final Notes
========================================================

This Shiny app provides a good quantitative idea of how fuel economy of the cars in the data set varies with three of the most impactful variables: car weight, quarter mile time, and transmission type.

It is important to note that this model is built on a narrow range of cars and model years. It is probable that exact quantitative relationships have changed in the past ~40 years and thus the model may suffer a loss in accuracy when predicting fuel economy of vehicles significantly outside the range provided in the data set.

Nevertheless, it is likely that the qualitative relationships still hold. The app should therefore provide a quick and easy method to understanding what variables to consider when purchasing and evaluating costs associated with vehicles.

#General Linear Models pt. 1

The linear model is one of the strongest and interesting tools available for analysis of data. The general linear model (GLM) gives an analyst the ability to compare two numeric variables, a dependent variable (Y) and a predictor variable (X). A line generated from the GLM can be used to predict "new" data observations.

You will use the GLM technique to analyze two sets of data.

1. In 1973, a scientist and resident of NYC was interested in the effects of wind speed and temperature on ozone pollution. Data were collected from May 1, 1973 - September 30, 1973. This data is stored stored as "airquality" in R, see documentation for more information (``?airquality``). Is there a correlation between ozone levels in NYC and temperature? How about ozone and wind speed? 

                   
2. A park ranger at Yellowstone National Park became intensely interested in Old Faithful, the famous geyser. He was aware that the geyser got its name because its eruptions were easily predictable over time. However, he observed that there was some variation in the time between eruptions and the duration of the eruptions. Knowing very little about geology, he postulated that longer waits resulted in shorter eruptions due to a loss of potential energy to the surrounding rocks, pools, and nearby geysers. Using the "faithful" data in R (``?faithful``) test his hypothesis using the GLM techniques.     

For each of these questions:

1. Create a linear model and fit the line to a scatter plot of the data.
2. Run an ANOVA F-test to determine if X provides insight into interpreting Y
3. Run a t-test for the slop and intercept
4. Calculate confidence intervals for the regression parameters (easy or hard way)
5. Predict additional Y values using the predict function and plot them
6. Calculate R<sup>2</sup> for your linear model (easy or hard way)

Email to me by the end of lab.

Points: 10

<!-- Data to use: 

data(airquality)
data(faithful)
-->

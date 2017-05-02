# How Do You Predict Who Will Vote?
### By Sean Carter

##### Motivation:

The primary goal of this investigation is to understand what most strongly influences a person's tendency to vote in an American presidential election. There are many basic patterns that are well explored - for example, younger people are currently [less likely to vote](http://www.npr.org/2016/05/16/478237882/millennials-now-rival-boomers-as-a-political-force-but-will-they-actually-vote). But there are many other demographic variables out there, and some of them might serve as better indicators of voting likelihood, and even account for the effect of age.

To do this, we can explore data from the [General Social Survey (GSS)](http://gss.norc.org/), which contains both voting data and an extraordinary number of demographic variables.

----------------------------

###### How Predictive is Age?
To explore whether there are better predictive variables than age, we can build a logistic regression model for whether or not people voted, based on age. To focus on more recent data, this model is *only* based on whether a respondent voted in the 2012 election, the most recent year that the GSS has data for.

Here are the results of the regression:

![Age regression](./images/age_logit.png)

We can see from the pseudo R-squared value that this isn't a particularly accurate predictive model, but this is definitely a statistically significant result.

###### What About Religion?

There are many demographic variables that correlate with age that could serve as better predictors. For example, age correlates strongly with religious affiliation. So, we can build a model that incorporates the 3 dominant religious affiliations in the US, according to the GSS: Protestant, Catholic, and None

![Religious regression](./images/religion_logit.png)

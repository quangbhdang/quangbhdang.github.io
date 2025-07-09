---
layout: single
title: "Busines metrics for a AI/Data Science project"
categories:
   - Jekyll
tags:
   - Guide
---

As someone whom background was originally from the word of Advertising & Marketing Agency side of things. I am painfully aware of all the pain that come with miss communication between data scientist/data engineer and business team.

Countless hours of meetings and deadline hell with the business team promises one thing to the relevant stake holders while the data team was already heading in another directions. Sound familiar?

This is even more apparent as I take on more data and engineer tasks up until my transition into a full-fled CS Postgrad major in Artificial Intelligences. This is often can be attribute to the different in evaluation metrics between the business team and the data science/AI engineer team.

While business team values metrics that more closely align with business daily objective such as operational costs, sales figures, return of investment. Data science team often values model accuracy, F-1 scores, AUC ROC scores, loss or for recent generative model metrics such as BLEU scores, MMAU evaluation score are often place on the tables. 

One can argue that these metrics might not inheritely different from anothers. But to learn to connect between each metrics requires experiences, knowledge from bothsides that not easily obtain by all parties involves.

In this posts I want to share some metrics that are less commonly mention by both side but often work as a great alternative

## Low Initial ROI (Return on investment)

While obvious to the business analyst for data scientist this might be slightly be unusual. ROI is often the key consideration on whether your AI project is actuall implement. In fact, I would say that often time the only consideration if your organisation is budget consious orientated.

However, how should this metrics be modified to make sense for data science?

$$
ROI = \frac{\text{Cost of Value Generated}}{(\text{Cost of Training} + \text{Cost of Adoption})}
$$

Often time the main cost data science team tend to focus on is the cost of training. This make perfect sense considering the cost of training is often the largest cost that any business will need to take into account off. Training AI is not suprisingly very expensive, OpenAI spend roughtly 500 mil on their models.

However the other cost that is often overlook is cost of adoption. This include hardware required to actually use these AI models, cost to retrain employee to use the model, cost of upgrading the process to actuall adopt these models. Typically these cost are not very obvious and tend to rise as the model actual putting into live environment.

A neat way to help estimate this is by comparing the scale of the project to similar existing project within your organisation. While this might not be as accurate it would likely provide a decent enought reference values that would help brings relevant stake holder togethers.

Finally **Cost of Value Generatated** is the most challenging to estimate. In most business this can be estimate based on either the reduction cost in human manual operation requirements. To be able to accurately measure this you will need a deep understanding on how the project could aid help to cut down in erm of cost.

For example if your Deep Learning / AI project somehow help to cut down the cost of manual transcription by automating the process and reduce the time for admin tasks from 3 hours daily down to 1 hours. Given that each admin employees cost 25 USD per hour, and there is 10 employees this would mean the business cut down $25 * (10 * 2)= 500 USD$ per day or around 1500 USD per months (Given the typical 1-2 years lifespand of a admin process this can cut down around 18,000 USD or 36,000 USD for the project lifecycle). 

Sound like a significant cut down right? Not really consider the typical cost of developing a AI / Deep Learning solution could be around 15000-20000 USD within the first 3-4 months (sources from estimation figure from some of my developer friends) and the inference cost would add an overhead of around 20 USD per months using the latest API models ($20*12=240 USD$). The total project ROI is:

$$
ROI = \frac{18000}{(20000+240)}\approx{0.88}
$$

But the initial 4 months ROI would be:

$$
ROI = \frac{1500*4}{(20000+(20*4))}\approx{0.29}
$$

A very low ROI on initial investment for many business to actuall start investment. Many business that I am aware of would only really consider investment in if the ROI is around 0.8 or at least 1. Thus, this would explain the low willingness to invest in AI project from lower to smaller business. Often time these business does not have a large reservation of cast flow thus a project that take 3-4 month of investment with such a low return can often be on the cutting board of accountant and project managers early on.



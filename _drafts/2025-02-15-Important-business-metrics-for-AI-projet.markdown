---
title: "Business Metrics That Can Be Incorporate Into Your AI Project"
layout: single
date: 2015-02-10
comments: true
toc: true
excerpt: "The fight between business team and data science team can be contributed to different set of metrics. Here are some metrics that can be adapt to help reduce the friction between two teams."
tags: [AI, metrics, application] 
---

As someone whom background was originally from the word of Advertising & Marketing Agency side of things. I am painfully aware of all the pain that come with miss communication between data scientist/data engineer and business team.

Countless hours of meetings and deadline hell with the business team promises one thing to the relevant stake holders while the data team was already heading in another directions. Sound familiar?

This is even more apparent as I take on more data and engineer tasks up until my transition into a full-fled CS Postgrad major in Artificial Intelligences. This is often can be attribute to the different in evaluation metrics between the business team and the data science/AI engineer team.

While business team values metrics that more closely align with business daily objective such as operational costs, sales figures, return of investment. Data science team often values model accuracy, F-1 scores, AUC ROC scores, loss or for recent generative model metrics such as BLEU scores, MMAU evaluation score are often place on the tables. 

One can argue that these metrics might not inheritely different from anothers. But to learn to connect between each metrics requires experiences, knowledge from bothsides that not easily obtain by all parties involves.

In this posts I want to share some metrics that are less commonly mention by both side but often work as a great alternative bridge between each aspect. I will also propose simple rules of thumb I found usefull in bringing data science metrics closer to business metrics and vice versa. Hopefully this post will be usefull for current practicing data scientist as well as business analyst who need to work together.

## ROI (Return on investment)

While obvious to the business analyst for data scientist this might be slghtly be unusual. ROI is often the key consideration on whether your AI project is actuall implement. In fact, I would say that often time the only consideration if your organisation is budget consious orientated.

However how should this metrics be modified to make sense for data science?

$$
ROI = \frac{(\text{Cost of Training} + \text{Cost of Adoption})}{\text{Cost of Value Generated}}
$$

Often time the main cost data science team tend to focus on is the cost of training. This make perfect sense considering the cost of training is often the largest cost that any business will need to take into account off. Training AI is not suprisingly very expensive, OpenAI spend like 500 mil on their models.

However the other cost that is often overlook is cost of adoption. This include hardware required to actually use these AI models, cost to retrain employee to use the model, cost of upgrading the process to actuall adopt these models. Typically these cost are not very obvious and tend to arise as the model actual putting into live environment.

A neat way to help estimate this is by comparing the scale of the project to similar existing project within your organisation. While this might not be as accurate it would likely provide a decent enought reference values that would help brings relevant stake holder togethers.

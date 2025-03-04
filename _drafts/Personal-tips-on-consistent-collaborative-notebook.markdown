---
title: "Personal tips on consistent collaborative notebook"
layout: single
# date: 2025-04-20
comments: true
toc: true
excerpt: "Some of my personal tips on making your Jupyter Notebook more collaborative and consistent for team collaboration"
tags: [AI, tips, Jupyter] 
---

Jupyter Notebook in my humble experience are some of the best tool there is to help data scientist, AI researcher to quickly iteratable codes to help exlore their researchs.

But often in real world it is very rare that you will be doing research all by yourselfs, unless it is your Master/PhD thesis. Instead you are more likely required to work collaboratively with different researchers, or developers to help developed and publish your models.

However, as you will quickly find out like I did, Jupyter Notebook don't really promoted great coding practice by designs. There is a great talk on O'Relly by [Jel Grus]("https://www.youtube.com/watch?v=7jiPeIFXb6U") that discus this short coming of Jupyter Notebook.

While some will arques that does this really matter if my code runs, an evening of spending debugging your fellow notebook code to make it runs on your machine will make you question your sanity very quickly.

Thus, here are some of my personals tips which I collect throught online blogs, videos as well as my own experience during my post grad journey. I also offer some personal example of how this tips is applied or if I wished it would applied (if I have not done it myself).

## Tip 1: Build reusable modules as script or packages

Seem fairly obvious but you can write you python script as reusable package or script that can then be import into Jupyter Notebooks.

Often times this something you should already been doing even with the cell structure in Jupyter Notebook. However, when your are experimenting with a very large model and long coding structure you will find out why it a terrible ideas to have all your code on one notebooks.

During of my deep learning assignment, our team work collaboratively on one notebook which are share on Github. We would consistently get error as our code would cause conflict on the share notebooks on github, thus instead of spending our time on building and experimenting with our model we spend a good chunk of our time debugging.

Later down the line we then decided to build our code as a reusable package that will be import into the main script within the main notebooks. This allow us to keep the notebook clean and focus mainly on the high level while the scripts part can be modified and iterate on without corrupting the main notebooks.

The main trade off would be that the import process can lead to our notebook take slightly longer to load as well as managing dependencies required more carefull consideration as it is hidden away on scripts instead being clearly show on the notebooks.

However since we the slightly longer loading time is often not much of a big problems and the depenencies problems can be manage using a simple YAML, TXT or even shellscripts, we find the trade off worth it. 

***PROTIPS***

In certain senarior where you are unable to write your code as a seperate scripts (e.g: Your university require your to submit all code in one notebook). It a good ideas to have a dedicate section of reusable custom script or function that is reuse in your notebooks. This way you can collapse them during coding to prevent clutter in your notebooks. Depends on how many reuseable scripts you need you can either put them all under on section call "Custom Scripts" or have a dedicate subsection for each major section in your notebooks.

## Tip 2: Have scratchpad notebooks

One of the main advantage of notebook is the ability to quickly run your scripts as a cell and see the output in the same location instead of having to work with the command line. This allow for speedy iterative coding during experiments process and is a great advantage jupyter notebook have over other IDE or text editor.

However this can often lead to a clutter notebook with multiple lines of codes which might or might not cause blurry eyes, high blood pressure and sometime spontanious rage. You do not need that in this complicated life.

Instead, what I highly recommend is dedicate each user in your team a scratch pad jupyter notebook (E.g: Scratchpad_Dang.ipynb) which allow user to rapidly prototype and code on its. Once you are happy with the scripts you can always use the special cell command 

```Ipython
%%writefile myscript.py
```

Which allow your to quickly save this script to be reuse in the main clean notebook.

My general strategy at this is each person would make a copy notebook from the main notebook and iterate on it as required, use the scratch pad to develop prototype scripts and once you are happy with it save it as a script which import onto your notebook version. Debugg any problems at this points and at the next team get together have a overall review and update the main notebooks together with the teams. 

This ensure each team members can understand the overall high level of the scripts (since the copy note is based on the main notebook) but there is a flexibility level in term of allowing each members to develop their own codes.

Additionally, while this will be for more engineer side instead of data scientist. As the codes are all package nicely as a modules developer can bring them into production code much easier.

## Tip 3: Use an IDE or text editor instead of plain notebook

Yes I am being conflict here, but my preferred method of using jupyter notebook is not using it but instead within a code editor like VS Code or even VIM. This allow me to access to both the terminal as well as more level of customisation that Jupyter would not offered.

Now, I would also recommend using JupyterLab instead of Jupyter Notebooks as it seem to offer similar benefit of a code editor but with more Notebook like shortcut (which are very usefull to memorise). While this can be consider a preference I often found Jupyter Notebook lacks in many modern life improvement feature that most modern code editor bring to the tables.

Alongside of creating code you will often need to debug code as not all data scientist is a great program engineer, often more than not you will spend a good chunk of your team times debugging cell to ensure it works before adding on your own scripts. Thus any modern text editor or IDE would offer much better debugging feature than your standard Jupyter Notebooks.

## Tip 4: Only visualise on notebook during EDA not experiments.

From my personal experience while notebook visualisation capabilities is god send during your EDA it can quickly get in the way during your experienments tracking. Often time since EDA don't modify the dataset directly it make sense to directly visualise the data on the notebook to allow a holistic view of the data during later stage such as feature engineering or model buildings. But the same can't be say when it come to experiments.

During my first years, I would write custom script to quickly return visualisation of the training of my models results to observe the change in loss, metrics. This help tremendously during training process to work on the iteration of the models.

However, this rapidly become a bottle neck as my numbers of experiment explode while the project timeline remain mostly the same. Having multiples visualisation directly on the notebook become confusing and often time causing me to lose track of my results. 

This can often stem from time where I forget to note down experiments results or a bug from the custom experinment tracker scripts. Saving these manually is often not a problems but if someone breaks something we will then having to spend alot of time debugging the custom tracking function for the results.

Thus, later down the line we start to adopt more modern MLOps practices such as using a Experiment tracker like MLFlow to track and visualise our results. This result in a cleaner environments on our main notebooks and if needed we can trace back previous experiments that might have unique or interesting values.

Since these tools are often industry standard and open sources their have high reliability, usually directly integrate with popular ML/DL frameworks, large community and documentations. Which are extremly helpful if you wish to focus on the model building part instead of the debugging part.

***PROTIPS***:

You don't really need an expriments tracking (MLFLow) if you only really start with basic ML tasks. Often time, I find these tasks have a fix metrics and evaluation method thus don't need the full suite of experiment MLOps tools. It also a good ideas to build one yourself when you first start to learn the mechanism of these tools and prevent overdependant on external libraries (which is a bad programming practices that can lead to unstable code). Only when you are working on a fully experinmental models where metrics or frameworks can change and you need something that very reliable and adaptable for your case that you should use Experiments tracking frameworks.

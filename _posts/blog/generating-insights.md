---
title: Generating Insights - Analysis Mangiferin Managed Review Data
description: The Mangiferin Managed review extracted over 3500 pieces of information.  In this blog, we analyze boolean, categorical, and string labels to produce further insights from the literature.
---
In our previous [blog
post](https://blog.sysrev.com/mangiferin-managed-review/), we explored a
case study in data extraction, where we used Sysrev's machine learning
capabilities to optimize both the screening and data extraction phases
of a strategic review of the substance Mangiferin.  

This post will discuss analyses of the produced data. But first, some
quick context.  

The purpose of the strategic review was to inform a decision,
specifically whether or not Mangiferin was worth further research into
its potential use as a non-food additive.  For that reason, our
objective was to extract data from *in vivo* studies on Mangiferin.  In
the end, over 3500 labels were extracted from 292 articles.

You can see exactly which pieces of information were extracted below.

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/01/Screen-Shot-2020-01-24-at-1.36.57-PM.png" class="kg-image" alt="Label Definition for Project 21696 - Mangiferin Data Extraction" /><figcaption aria-hidden="true">Label Definition for <a href="https://sysrev.com/o/2/p/21696">Project 21696</a> - Mangiferin Data Extraction</figcaption>
</figure>

Sysrev allows three types of *labels* - or pieces of information to be
extracted - Boolean, Categorical, and String.  Shown below are the
answer counts for each boolean and categorical label from the Mangiferin
review.  In addition to providing information, each "bar" is actually a
link to the *Articles Dashboard* with a filter for that specific label
value, a useful way to sort articles for further review.

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/01/Screen-Shot-2020-01-24-at-1.39.42-PM-1.png" width="445" height="655" alt="Left: Histogram of answer counts for each boolean and categorical label. Right: Articles Dashboard will the active filter &quot;has confirmed (&quot;Organ&quot;) with value (&quot;liver&quot;) from any user" /><figcaption aria-hidden="true">Left: Histogram of answer counts for each boolean and categorical label. Right: <em>Articles Dashboard</em> will the active filter "has confirmed ("Organ") with value ("liver") from any user</figcaption>
</figure>

While boolean and categorical labels allow for quick analyses, string
labels take a bit more work.  The issue is that String labels can have
slight variations yet intend the same information.

For that reason, we recommend using categorical labels wherever possible
as it forces a "standardization" of results.  That said, there are
always situations when only String labels will work, especially early in
research when the overall scope is still being explored.  

The Mangiferin review contained 8 string labels.  Some string labels
existed to give additional context to categorical labels.  For example,
*Species* was a categorical label with preset options, whereas *Species
Detailed* was a string label.  This facilitated additional information
such as if a specific mouse strain was stated in the literature. For
quick analysis and grouping, the data can be filtered simply by "mouse,"
yet the additional information still exists should it become relevant.  

In other cases, there was simply too much variability in potential
answers to use anything other than a string label.  This was the case
with three important labels: *Disease*, *Outcomes*, and *Dose.*

*Dose* was the easiest String label to analyze as we had stipulated that
doses be given in mg/kg.  Were that not the case, we would have had to
perform unit conversions before comparing.  

The histogram below is the dose distribution, binned into 10 mg/kg
increments, for the 292 articles.  The majority of the studies focused
on doses 100 mg/kg or less.  

<figure>
<img src="https://lh6.googleusercontent.com/4nsAxnOOHxnfvDe-n_D_52CqUw6P8p0W4ACsDFs48TZAADSikR3x5e22ylzCl1K4qil9a4E9qgUGPUXm-rxd_69-Hl7QHrBJf9MF16BxHTtX9EyuXCyjR4I0te3xljYTwxqyjRB27Og" class="kg-image" alt="Dose Distribution for Project 21696" /><figcaption aria-hidden="true">Dose Distribution for <a href="https://sysrev.com/o/2/p/21696">Project 21696</a></figcaption>
</figure>

*Diseases* and *Outcomes* require more effort - again simply due to
variation in input.  All told, there were **191 unique disease
descriptions*.  ***To discover which diseases were most prevalent, we
clustered the disease descriptions using a text similarity tool built on
word embeddings whereby descriptions with similar meanings tend to get a
higher similarity score and cluster together.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/01/Screen-Shot-2020-01-24-at-2.10.08-PM.png" class="kg-image" alt="Left: 191 unique descriptions, ordered in a dendrogram based on similarity score. Right: Zoomed in" /><figcaption aria-hidden="true">Left: 191 unique descriptions, ordered in a dendrogram based on similarity score. Right: Zoomed in</figcaption>
</figure>

After clustering the diseases, we counted how often each cluster appears
in the reviewed articles.  The results give a quick glimpse into which
mangiferin uses have already been researched.  As shown below, the
"diabetes mellitus" cluster, which contained 13 unique disease
descriptions, appeared most often in the reviewed literature.

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/01/Screen-Shot-2020-01-24-at-6.43.50-PM.png" class="kg-image" alt="Left: Dendrogram of unique disease descriptions ordered by similarity. Right: Count of Disease Clusters " /><figcaption aria-hidden="true">Left: Dendrogram of unique disease descriptions ordered by similarity. Right: Count of Disease Clusters </figcaption>
</figure>

We performed an equivalent exercise for the *Outcomes.  *As one might
expect, "anti-diabetic effect" was the most common outcomes cluster –
corresponding quite well to the most common disease cluster: "diabetes
mellitus."

<figure>
<img src="https://lh5.googleusercontent.com/8vdCCY1aUw5sG5YyfircBGS2nkcXMrKVHDkoMoQE1cGO4vCmFhsrO7WWFjoAb0vqvZ9IuMWgcetr2uLeL5fE5Xq7boStXAJcfR9XowKHZE3QDzhUL4BZlYO5S2LTvOC3J9ufWukdi6Y" class="kg-image" alt="Count of Outcomes Cluster for Project 21696" /><figcaption aria-hidden="true">Count of Outcomes Cluster for <a href="https://sysrev.com/p/21696">Project 21696</a></figcaption>
</figure>

When extracted and analyzed properly, data is the greatest informer of
the modern age.  Extracting the correct data requires two things: 1)
asking the right questions, and 2) having the tools necessary to review
whichever documents contain the data.  

Sysrev is a platform specifically designed for document review and data
extraction.  Its greatest strength is its versatility, both in the types
of information which can be extracted as well as its unique ability to
integrate with any data source.  To learn more about custom
integrations, contact us at info@sysrev.com.  
  


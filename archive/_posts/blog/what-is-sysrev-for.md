---
title: What is Sysrev for? Literature Reviews and Data Curation
description: Sysrev is a powerful, collaborative platform for document review. Whether conducting a literature review or curating data from machine learning, Sysrev offers a versatile feature set to optimize even the most complex data extraction tasks. 
---
Sysrev is an intelligent, collaborative platform for document review and
data extraction? But what does that mean? What is the point of reviewing
documents and extracting data?  Generally speaking, Sysrev serves two
primary functions: Literature Reviews & Data Curation.

**Literature reviews** can be thought of as summaries of research. They
look at all the relevant publications and attempt to generalize methods
and findings, as well as identify gaps in research. Not just the domain
of academia, literature reviews are also essential pieces of regulatory
assessments and landscape analyses. The most rigorous of literature
reviews is called a [**systematic
review**](https://guides.temple.edu/c.php?g=78618&p=4178713).  
  
If you are interested in systematic reviews, our blog post "[Supporting
COVID Research](https://blog.sysrev.com/covid-rapid-review/)" details
how an international team used Sysrev (**for free!)** for three phases
of their review (Screen, Extract, Assess) when researching for *[A
Systematic Review of COVID-19 and Kidney
Transplantation](https://blog.sysrev.com/covid-rapid-review/).*

Another type of literature review is called a **narrative review**, in
which the aim of the review is to simply gain a macro-level
understanding of the subject matter. For these applications, Sysrev has
**machine-learning capabilities ** to help optimize the process.

In our narrative review of Mangiferin, we utilized Sysrev's machine
learning to save time on the screening process. After manually reviewing
206/725 articles, we used Sysrev *Inclusion Predictor Model* to screen
the remaining articles. You can learn more about this process in our
blog post "[Mangiferin Managed
Review](https://blog.sysrev.com/mangiferin-managed-review/)"

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/12/Screen-Shot-2020-12-14-at-11.03.36-AM.png" width="552" height="354" alt="Left &amp; Center: Prediction Histograms for Project 20571. Right: Filtered articles page based on Inclusion Predictor Model. Video Explainer" /><figcaption aria-hidden="true">Left &amp; Center: Prediction Histograms for <a href="https://sysrev.com/u/42/p/20571">Project 20571</a>. Right: Filtered articles page based on Inclusion Predictor Model. <a href="https://youtu.be/18QuUQH5uqQ">Video Explainer</a></figcaption>
</figure>

**Data curation** is when data is extracted for the purpose of building
a standardized dataset, often for machine learning. We actually built
Sysrev version 0.1 to help curate training data for [our own predictive
models](https://academic.oup.com/toxsci/article/165/1/198/5043469). In
the time since, we have added a number of features specifically for
**complex data extraction**.  
  
One of the biggest problems in data extraction tasks is simply not
knowing how much or what types of data are in a given document. As an
example, imagine you are interested extracting chemical toxicity testing
data from scientific publications. How does one capture the variations
between dose, species, and effect? Perhaps the salmonella responded at
10 micrograms but the e. coli responded at 15 micrograms.

If you think of document review from within a spreadsheet paradigm, then
the purpose of document review is to create a row of data per document.
However, as in the toxicity example above, there are instances where the
**data is too complex** for a single row of data.  
  
The available solutions are 1) add new columns for each set of data, 2)
use delimiters, or 3) try and reduce the data to one row. Unfortunately,
regardless of the method, there is a substantial risk of **loss or
confusion of information**. For this reason, we developed Group Labels.

**Group Labels** facilitate the extraction of customizable tables of
information from documents. [The example
below](https://sysrev.com/o/2/p/31871/article/8296525) uses a PDF of a
Toluene MSDS to showcase the feature's versatility. Here we created two
Group Labels "Health Effects" and "LD50/LC50", each of which contain a
combination of [*categorical* and *string*
labels](https://youtu.be/viekb05-86A).

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/12/Screen-Shot-2020-12-11-at-10.55.11-AM-1.png" width="1524" height="1192" alt="Screenshots from Project 31871 showcasing the extendable table functionality of Group Labels" /><figcaption aria-hidden="true">Screenshots from <a href="https://sysrev.com/o/2/p/31871">Project 31871</a> showcasing the extendable table functionality of Group Labels</figcaption>
</figure>

Like many PDFs, an MSDS contains a lot of valuable information. Also
like many PDFs, there is substantial variability from MSDS to MSDS. For
example, while the Toluene MSDS contained 5 "Potential Health Effects",
a different MSDS may have 7 or 3 or 12. By allowing users to build
extendable tables, adding as many rows as needed, Group Labels are able
to capture inter-document variations.

The second feature built specifically for complex data extraction is the
ability to integrate and systematically parse **complex data sources**
such as JSON or XML documents. These *semi-structured documents* contain
semantic prose wrapped in a consistent hierarchy. The example below uses
clinical trial data to show how Sysrev leverages the hierarchical
structure to simplify the review process.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/12/sysrev_raw-1.gif" width="1366" height="744" alt="Left: JSON from clinicaltrials.gov in its raw form on Sysrev. Right: The same trial data with only specific fields rendered. " /><figcaption aria-hidden="true">Left: JSON from clinicaltrials.gov in its raw form on Sysrev. <a href="https://sysrev.com/u/688/p/32848/article/8461342">Right</a>: The same trial data with only specific fields rendered. </figcaption>
</figure>

As you can see above, the raw JSON from clinicaltrials.gov contains many
*fields* or *elements*, each of which contains a different type of
information. While more information is generally better, the sheer
amount of information actually makes it harder for reviewers to maintain
speed and accuracy. By allowing the user to select which fields are
rendered, Sysrev makes it easier for the reviewer to identify and
extract the proper information. You can learn more about reviewing
semi-structured documents
[here](https://blog.sysrev.com/partially-structured-data-extraction/).

# An error occurred.

[Try watching this video on
www.youtube.com](https://www.youtube.com/watch?v=zjIFaYV0hwk), or enable
JavaScript if it is disabled in your browser.

See examples of Literature Reviews and Data Curation on Sysrev

Sysrev is a powerful platform built on simple, versatile tools. Our aim
is to allow ours users to review any document and extract any data. If
you have a literature review or data extraction project, or even an idea
to make Sysrev even better, please feel free to drop us a line at
info@sysrev.com.


---
title: 'Mangiferin' Managed Review - A Case Study in Data Extraction
description: Step-by-step details of a Sysrev Managed Review with a special focus on the unique machine learning features which optimized the review process.
---
In one form or another, reviewing documents and extracting data are
important processes to any modern organization.  

Admittedly, there are a variety of document types and a near-infinite
amount of data that can be extracted.  Sysrev's biggest strength is its
ability to support any review of any document.  Moreover, Sysrev's built
in [machine-learning
capabilities](https://blog.sysrev.com/machine-learning/) result in
significant time savings.  This post will give step-by-step details of a
*Managed Review* we conducted on the substance,
[mangiferin](https://en.wikipedia.org/wiki/Mangiferin).  This case study
is also available in [video
format](https://www.youtube.com/watch?v=18QuUQH5uqQ&feature=youtu.be).

**Step 1: Scope**

The first step in any review is to decide the purpose of the review.
 For the mangiferin project, our goal was to explore mangiferin as a
potential non-food additive.  Specifically, the purpose was to extract
information about *in vivo* studies that explored the biological effects
of pure mangiferin, as well as mixtures.  

**Step 2: Find & Upload Initial Documents**

Often times, users of Sysrev already have a corpus of documents to
review.  For these cases, Sysrev supports a variety of document uploads
including PDF, RIS, and Endnote XML.  For everyone else, Sysrev supports
custom integrations to databases, via which users can perform meta-data
or keyword based searches of the database and import directly into a
Sysrev Project.  Contact us about custom integrations at info

@sysrev.com

For this project, we started with a simple PubMed search for
"mangiferin".  As this search yielded just 725 articles, we decided
against narrowing our search.  

**Step 3: Screen Documents** & Train AI

For most use-cases, the next step in any review is to Screen Documents –
that is, to review the documents and decide whether or not the data
within should be *included* or *excluded* from the review.  This step
has several benefits including

1.  Familiarizes the project coordinators with the literature
2.  Standardizes '*inclusion criteria'* for all reviewers
3.  Trains Sysrev's **Inclusion Predictor** - a machine-learning based
    model which learns from the reviewers and can predict whether or not
    a document will be included in the review.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/01/Screen-Shot-2020-01-06-at-1.48.12-PM.png" class="kg-image" alt="Project 20571 - &#39;Mangiferin In Vivo Screening&#39; Overview Dashboard" /><figcaption aria-hidden="true"><a href="https://sysrev.com/u/42/p/20571">Project 20571</a> - 'Mangiferin In Vivo Screening' <em>Overview Dashboard</em></figcaption>
</figure>

For our mangiferin project, two Sysrev employees (myself and founder,
Dr. Luechtefeld) performed the initial screening.  For time
considerations, we only screened 204 of the 725 articles (51 articles
were dual-reviewed) and we let Sysrev do the rest (see below.)  

**Step 3:** Screen Documents & **Train AI**

Sysrev's **Inclusion-Predictor** can save significant time with respect
to both the *Screening* and *Data Extraction* phases of review.  As
shown below, after Screening 204 articles, Sysrev's
**Inclusion-Predictor** obtained a high confidence in its predictions
for the remaining unreviewed articles.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/01/Screen-Shot-2020-01-06-at-2.30.58-PM.png" width="1102" height="708" alt="Inclusion Prediction Histograms for Sysrev Project 20571. Left: The predicted inclusion-percentage for reviewed documents. The green bars correspond to included documents while the red bars correspond to excluded documents. Right: the same prediction histogram also showing the predicted inclusion-percentage for the remaining unreviewed documents." /><figcaption aria-hidden="true"><em>Inclusion Prediction Histograms</em> for Sysrev <a href="https://sysrev.com/u/42/p/20571">Project 20571</a>. <em>Left</em>: The predicted inclusion-percentage for <strong>reviewed</strong> documents. The green bars correspond to included documents while the red bars correspond to excluded documents. <em>Right</em>: the same prediction histogram also showing the predicted inclusion-percentage for the remaining <strong>unreviewed</strong> documents.</figcaption>
</figure>

While perhaps not rigorous enough for a true Systematic Review, it is
plenty powerful for scoping reviews or, as in our case, *strategic
reviews*.  Put into context, our goal with the mangiferin project wasn't
to learn everything learnable – it was to present evidence to a partner
about mangiferin's overall potential – directing their decision of
whether or not to further study its effects.  

For this reason, we utilized the **Inclusion-Predictor ** to great
effect.  

**Step 4: Select Documents for Data Extraction**

Once again, in a more rigorous review, we would have manually screened
all 725 articles.  However, to save time, we let Sysrev's
**Inclusion-Predictor** finish the screening.  Sysrev allows users to
filter articles by a number of attributes, one of which is the
**Inclusion Predictor*.  ***

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/01/Screen-Shot-2020-01-13-at-7.58.45-PM-1.png" width="694" height="866" alt="Sysrev Project 20571: Left: Filter Articles Dashboard for Inclusion Predictor scores &gt; 25%. Middle: Export Dashboard for the 292 articles included in the filter. Sysrev Project 21696: Right: Import Articles Dashboard showing an XML import of 292 articles" /><figcaption aria-hidden="true"><strong>Sysrev <a href="https://sysrev.com/u/42/p/20571">Project 20571</a>:</strong> Left: <em>Filter Articles Dashboard</em> for <strong>Inclusion Predictor</strong> scores &gt; 25%. Middle: <em>Export Dashboard</em> for the 292 articles included in the filter. <strong>Sysrev <a href="https://sysrev.com/o/2/p/21696">Project 21696</a>:</strong> Right: <em>Import Articles</em> <em>Dashboard</em> showing an XML import of 292 articles</figcaption>
</figure>

Not wanting to exclude valid information, we decided include any article
which the **Inclusion Predictor** said had at least a 25% chance of
being included.  Although seemingly conservative in nature, this still
drastically reduced the number of articles from 725 to 292.  To begin
the data extraction process, we simply exported the filtered articles
and imported them into a new project: '[Mangiferin In Vivo - Compensated
Data Extraction](https://sysrev.com/o/2/p/21696).'

**Step 5: Define Labels**

Sysrev defines *Labels* as any sort of information to be extracted and
they come in three varieties: boolean, categorial, and string.  For any
one project, Sysrev supports an unlimited number of *labels* – though we
would caution against too many *labels* as that can create confusion for
reviewers.  For our mangiferin project, we had 14 *labels*.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/01/Screen-Shot-2020-01-02-at-3.55.30-PM.png" class="kg-image" alt="Sysrev Project 21696 &#39;Mangiferin In Vivo - Compensated Data Extraction&#39; Label Definitions Dashboard" /><figcaption aria-hidden="true">Sysrev <a href="https://sysrev.com/o/2/p/21696">Project 21696</a> 'Mangiferin In Vivo - Compensated Data Extraction' <em>Label Definitions</em> Dashboard</figcaption>
</figure>

**Step 6: Data Extraction**

The "final" step of any review is to extract the data.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/01/Screen-Shot-2020-01-02-at-3.55.16-PM.png" width="1377" height="912" alt="Sysrev Project 21696 &#39;Mangiferin In Vivo - Compensated Data Extraction&#39;. Left: the Review Articles Dashboard. Right: a prediction histogram of the extracted data." /><figcaption aria-hidden="true">Sysrev <a href="https://sysrev.com/o/2/p/21696">Project 21696</a> 'Mangiferin In Vivo - Compensated Data Extraction'. Left: the <em>Review Articles</em> Dashboard. Right: a prediction histogram of the extracted data.</figcaption>
</figure>

Instead of performing the extraction ourselves, we decided to utilize
another unique feature of Sysrev: **Contract Reviewers***.* After a
brief QA session to make sure our *labels* were in order (18 articles
total), we recruited five (paid) reviewers to extract data from the
remaining articles  These reviewers consisted of scientists from various
biological and chemical fields.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/01/Screen-Shot-2020-01-02-at-4.03.15-PM.png" width="557" height="349" alt="Sysrev Project 21696 - Mangiferin In Vivo - Compensated Data Extraction. Left: Progress Report depicting the number of reviewed articles over time. Middle: a histogram showing inclusion/exclusion counts for each reviewer. Right: Pie chart of reviewed articles depicting the number included, excluded, conflicts, and resolutions" /><figcaption aria-hidden="true">Sysrev Project <a href="https://sysrev.com/o/2/p/21696">21696</a> - Mangiferin In Vivo - Compensated Data Extraction. Left: Progress Report depicting the number of reviewed articles over time. Middle: a histogram showing inclusion/exclusion counts for each reviewer. Right: Pie chart of reviewed articles depicting the number included, excluded, conflicts, and resolutions</figcaption>
</figure>

As we wished to move quickly (and we were asking for a fairly complex
extraction), we decided to pay reviewers $2 per article.  In less than
two weeks, each of the 292 articles had been reviewed (102 articles were
dual-reviewed).  

**Conclusion:**

In the end, the entire mangiferin project from start to finish - project
creation to extraction - took about three weeks and just a few hours of
Dr. Luechtefeld's and my time.  All told, we paid $840.40 USD to have
292 (of the original 725) articles fully reviewed - from which **over
3500 pieces of information were extracted**.  

In this way, Sysrev is a great resource for any organization conducting
a document review.  Whether the extraction is performed by internal
employees or external contractors, Sysrev has the versatility (and
machine-learning capabilities) to truly optimize the entire process.  

**Step 7: Inform Models and Automate Extraction**

The **Inclusion-Predictor ** is not the only place where Sysrev utilizes
AI.  Depending on both the extraction task and the document, we can
automate large pieces of the review process.  

Moreover, we can build powerful models trained on the extracted data -
as we did with [whichgenesmatter.com](http://whichgenesmatter.com/) and
our [Gene Hunter Project](https://blog.sysrev.com/which-genes-matter/).
 

To learn more about automating data extraction or utilizing the data
produced by reviews in an efficient and optimized way, contact us at
info@sysrev.com.


---
title: What is Sysrev?
description: Sysrev is the first open access document review platform.  It is a human-machine interface that generalizes document review.  
---
[Sysrev.com](https://sysrev.com) is a free document review platform. It
helps you create pdf, pubmed, and general academic article reviews.  

This post is deep dive.  To get started quickly, check out the
**[getting started](https://blog.sysrev.com/getting-started)** post.

Sysrev super powers data extraction projects.  "Sysrevs" involve an
article data source, tasks, and a reviewer team.  Reviewers execute
tasks on the data source.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2019/08/enterprise-sysrev-diagram-2.svg" class="kg-image" alt="The basic sysrev pipeline. A data source feeds into sysrev which manages the distribution of tasks to both humans and machines. " /><figcaption aria-hidden="true">The basic sysrev pipeline. A data source feeds into sysrev which manages the distribution of tasks to both humans and machines. </figcaption>
</figure>

Sysrev applies a few critical concepts to this process: **Audits, Open
Access**, **Human-Machine Interface**, and **Generality.**

**Audits:** Sysrev records every reviewer action and makes it accessible
with a link. This means that the results of any kind of document review
can be audited.

**Open Access:** Open access reviews allow anybody to view / download
pubic review data. This makes reviews more trustworthy and re-usable.
 Learn more at  [fair-review](https://blog.sysrev.com/fair-review/) and
[proof of review](https://blog.sysrev.com/sysrev-proof-of-review/).
There are more than 500 open access projects on sysrev.

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2019/08/image-7.png" class="kg-image" alt="All the data for every article review in the 40 reviewer NIEHS project is visible to the world at sysrev.com/p/3588. Audit exactly who reviewed which articles and what data they assigned." /><figcaption aria-hidden="true">All the data for every article review in the 40 reviewer NIEHS project is visible to the world at <a href="https://sysrev.com/p/3588/articles">sysrev.com/p/3588</a>. Audit exactly who reviewed which articles and what data they assigned.</figcaption>
</figure>

**Human-Machine Interface:** AI is making great strides in natural
language processing, image recognition, and generalized classification.
 Sysrev lets you teach a machine to perform a human task and scale that
task to greater heights. We made the site
[whichgenesmatter.com](https://whichgenesmatter.com) from annotation
data at [sysrev.com/p/3144](https://sysrev.com/p/3144).

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2019/09/image.png" class="kg-image" alt="Whichgenesmatter.com was made from open access gene annotation data generated at sysrev.com/p/3144. Write a search query and see which genes are mentioned most often in the resulting pubmed abstracts. This is just one example of Human-Machine Interfaces made possible with sysrev." /><figcaption aria-hidden="true"><a href="http://whichgenesmatter.com">Whichgenesmatter.com</a> was made from open access gene annotation data generated at <a href="https://sysrev.com/p/3144">sysrev.com/p/3144</a>. Write a search query and see which genes are mentioned most often in the resulting pubmed abstracts. This is just one example of <strong>Human-Machine Interfaces</strong> made possible with sysrev.</figcaption>
</figure>

**Generality:** Imagine a document review on a electronic health
records, histological images, patents, legal documents, tweets, or any
document collection. Sysrev enables generalized review of arbitrary data
streams.

# Enterprise

Much of what companies do involves curation of multiple data sources.
 This curation process involves aquisition of some data, review of that
data, and analytics of that data.  This can be simple (your inbox is a
data source that you review daily), or quite complex (hedge funds pull,
review, analyze and make high stakes decisions on many data streams).  

In medicine, doctors review electronic health records, researchers
review academic articles, grant writers review grants, and professors
review student assignments.

In risk assessment reviewers assess lab reports and case studies to
determine the risk associated with drugs, chemicals, products etc.

Companies that work in the biochemical fields must review regulatory
documents, chemical safety data sheets, news outlets, conference
presentations, market reports, cost reports, and so on.  All of these
review processes benefit from **formalization**, **automated
management**, and **automated data extraction**.

1.  **Formalization:** Formalizing the data extraction process involves
    formally defining what tasks are required for each entity in a data
    source.  Screening is a common example.  Reviewers are asked to mark
    entities as relevant or irrelevant.  Formalizing this process allows
    for programmatic solutions and improved quality control.  Sysrev
    enables rigorous definition of tasks, auditing, and integration of
    results with external data sources.  
2.  **Automated Management:** Assigning labels to documents seems like a
    simple task, but large teams and documents quickly make these
    projects unmanageable. Management is one of the easiest places to
    leverage value of the combination of humans and machine learning.
     At the most basic level, simply automating assignment and tracking
    completion of tasks can yield large efficiency gains.  At the more
    complex level human performane and concordance can be evaluated and
    integrated in the management process in complex ways.  
3.  **Automated Data Extraction:** Computational tools can help people
    work better with other people, but now there is a new kind of
    intelligence. Automating the process of enriching raw data sources
    can only be done when machines work together with human
    intelligence.    
      
    Sysrev already does this almost transparently during screening
    projects.  Human review is quietly prioritized to maximize the speed
    of machine learning.  This kind of hidden integration of human and
    machine intelligence lets technology help without letting it get in
    the way. Already many projects have benefited from our screening
    tools, and more automated extraction tools are on the way.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2019/08/eras_predictionhistograms.svg" class="kg-image" alt="Automated screening was the first sysrev machine learning tool. This algorithm quietly prioritizes human screening to maximize the performance of a trained screening model. Resulting models sometimes work very well! The above three models come from some of the completed ERAS Spine and Craniotomy projects. The x-axis gives the screening models probability of inclusion. Green bars are the number of articles that were actually included by a reviewer and red bars the number of articles actually excluded by a reviewer. These models work pretty well, but are not perfect." /><figcaption aria-hidden="true">Automated screening was the first sysrev machine learning tool. This algorithm quietly prioritizes human screening to maximize the performance of a trained screening model. Resulting models sometimes work very well! The above three models come from some of the completed ERAS <a href="https://sysrev.com/search?q=eras%20spine&amp;p=1&amp;type=projects">Spine</a> and <a href="https://sysrev.com/search?q=eras%20craniotomy&amp;p=1&amp;type=projects">Craniotomy</a> projects. The x-axis gives the screening models probability of inclusion. Green bars are the number of articles that were actually included by a reviewer and red bars the number of articles actually excluded by a reviewer. These models work pretty well, but are not perfect.</figcaption>
</figure>

Sysrev is now implementing custom data sources.  Early projects like the
[vitamin c cancer trials](https://sysrev.com/p/6737) leveraged manual
integration of data sources like clinicaltrials.gov.

To get started with your own project just sign up at
[sysrev.com](https://sysrev.com). Read our [getting started
post](https://blog.sysrev.com/getting-started) to learn how to create a
sysrev in just a 2-3 minutes.  If you liked this post
[subscribe](subscribe)!

Use the below bibtex to cite this post:

    @misc{Luechtefeld2019Sysrev,
      title={What is Sysrev?},
      author={Luechtefeld,Thomas},
      year={2019 (accessed <your date>)},
      url="https://blog.sysrev.com/what-is-sysrev"
    }


---
title: How does machine learning work at sysrev?
description: machine-learning
---
Sysrev automatically builds machine learning models at every stage of
 review.

In each sysrev, users can screen articles in their corpus by marking
them as an 'include' or 'exclude'.  During every sysrev, a
screening-model is silently learning how to replicate reviewer
decisions.  Screening-models can help accelerate the review process and
eventually automate reviews.  Automated reviews will be a key step in
the updateable 'living' reviews talked that will be the next frontier
for document review [\[1,2\]](#references).  

Sysrev screening models take the modeling process one step further by
using them to drive the order of document review.  The process is simple
- humans label articles, models learn from labeled examples and articles
are re-ordered to maximize their learning value.

![](/content/images/2019/09/bitmap.png)

A machine learning process prioritizes review in every sysrev.

The current performance of the document screening models can be
evaluated on the existing human labels at any time in the overview via
prediction histograms. Public reviews like the
[ERAS](https://sysrev.com/search?q=eras&p=1&type=projects) projects show
strong performance of screening models.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2019/08/image-19.png" class="kg-image" alt="Automated screening was the first sysrev machine learning tool. This algorithm quietly prioritizes human screening to maximize the performance of a trained screening model. Resulting models sometimes work very well! The above three models come from some of the completed ERAS Spine and Craniotomy projects. The x-axis gives the screening models probability of inclusion. Green bars are the number of articles that were actually included by a reviewer and red bars the number of articles actually excluded by a reviewer. These models work pretty well, but are not perfect." /><figcaption aria-hidden="true">Automated screening was the first sysrev machine learning tool. This algorithm quietly prioritizes human screening to maximize the performance of a trained screening model. Resulting models sometimes work very well! The above three models come from some of the completed ERAS <a href="https://sysrev.com/search?q=eras%20spine&amp;p=1&amp;type=projects">Spine</a> and <a href="https://sysrev.com/search?q=eras%20craniotomy&amp;p=1&amp;type=projects">Craniotomy</a> projects. The x-axis gives the screening models probability of inclusion. Green bars are the number of articles that were actually included by a reviewer and red bars the number of articles actually excluded by a reviewer. These models work pretty well, but are not perfect.</figcaption>
</figure>

# How do the screening models actually work?

This is an active area of development for sysrev.com.  Currently, sysrev
models are rebuilt whenever reviewers complete 25 articles.   The
screening models use a combination of word-embedding models and
multi-task neural networks. The stages are: 1. document featurization 2.
pre-processing 3. multitask learning.

**Document Featurization:** A word2vec and paragraph2vec model is built
from pubmed and wikipedia and other document stores. ** **These are
embedding models that transform words/paragraphs into numeric feature
vectors built from the co-occurrence of nearby words in the pubmed
corpus.  Sysrev uses the [deeplearning4j](https://deeplearning4j.org)
package for both models (see
[word2vec](https://deeplearning4j.org/docs/latest/deeplearning4j-nlp-word2vec)
and
[doc2vec](https://deeplearning4j.org/docs/latest/deeplearning4j-nlp-doc2vec)
documentation) [\[3,4\]](#references).

**Pre-processing:** The modeling container first performs a resampling
procedure to create a more balanced training set for the following
supervised learning step.  A few procedures are at use right now, but
the simplest resamples the minority class documents until they have
equal prevalence with the majority class.  Future directions involve
generating synthetic training data.

**Multitask Learning:** After resamping and featurization a multitask
feed forward neural network is built.  The outputs are the label values
assigned by reviewers. The below simple image describes the shallow,
feed-forward, multitask model built for a prostate cancer review at
[sysrev.com/p/844](https://sysrev.com/p/844).  In short, all the
documents in the review are featurized and fed through two hidden
layers, a batch normalization layer and end in many cross-entropy
softmax outputs. Currently these models only handle binary and
categorical labels.  To learn more about the benefits of multitask
learning on problems like these I strongly recommend Sebastian Ruder's
blog \[[5](#references)\].

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2019/09/multitask-learning.svg" class="kg-image" alt="A simple shallow, multitask neural network is trained whenever reviewers complete 25 article reviews. The above diagram is a truncated example for a review of natural products in prostate cancer at sysrev.com/p/844 ." /><figcaption aria-hidden="true">A simple shallow, multitask neural network is trained whenever reviewers complete 25 article reviews. The above diagram is a truncated example for a review of natural products in prostate cancer at <a href="https://sysrev.com/p/844">sysrev.com/p/844</a> .</figcaption>
</figure>

**Future Directions**

[Subscribe](/subscribe) to be notified when we complete these next
steps.  Your subscription encourages us to keep writing!

We have many new innovations coming in this year.  Among other machine
learning goals, we plan to implement: LSTM classifiers,  shared
labeling, and concordance driven review.

Sysrev label classifiers will move from shallow multitask networks to an
LSTM neural network architecture this year.

Shared labeling will allow labels to be used across sysrevs. A common
label we have seen in multiple projects is 'species'. It is possible to
automate this label, and (if shared) this label would not have to be
retrained for every new project.

Communication between human brains is notoriously difficult.  You create
a review, recruit friends, and define some tasks.  Unfortunately, each
friend brings their own biases and misunderstandings.  Sysrev's are an
excellent place to start picking apart human concordance. Our analytics
platform helps reviewers manage concordance \[[6](#references)\].  Soon
concordance will be an indispensable in every multi-person review.

## References

## 

\[1\] Pharmacovigilance -- "Living Reviews" Applied
https://blog.sysrev.com/pharmacovigilance-living-reviews/

\[2\] Out of date before it's published
https://www.natureindex.com/news-blog/living-systematic-reviews-emerging-solution-problem-superseded-research-zika-virus

\[3\] Word2Vec, Doc2vec & GloVe: Neural Word Embeddings for Natural
Language Processing

\[4\] Doc2Vec, or Paragraph Vectors, in Deeplearning4j
https://deeplearning4j.org/docs/latest/deeplearning4j-nlp-doc2vec

\[5\]Sebastian Ruder (2017). An Overview of Multi-Task Learning in Deep
Neural Networks. arXiv preprint arXiv:1706.05098.
ruder.io/multi-task/index.html#whatshouldishareinmymodel

\[6\] A New Analytics Dashboard!
https://blog.sysrev.com/user-inclusion-concordance/


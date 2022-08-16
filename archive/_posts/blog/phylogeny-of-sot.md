---
title: Phylogeny of SoT Companies
description: sot
---
The annual society of toxicology conference has 288 company booths. We
built a phylogeny of those companies. Companies are clustered by
similarity of their products and descriptions.  Example products and
companies are given for each cluster.

![Snow](/content/images/2020/02/companycluster-1.svg)

**How was this built?**  
A Sysrev.com
[Doc2Vec](https://deeplearning4j.org/docs/latest/deeplearning4j-nlp-doc2vec)
model was used to transform company descriptions into vectors
([blog.sysrev.com/machine-learning](https://blog.sysrev.com/machine-learning))
which were then compared with cosine similarity. The
**[APE](https://cran.r-project.org/web/packages/ape/ape.pdf)** R package
was used to build the phylogenies.

Scroll below for a better view of the individual companies.  

<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/02/vertPhylo-2.svg" class="kg-image" />

Contact me at tom@sysrev.com if you want access to this data.  


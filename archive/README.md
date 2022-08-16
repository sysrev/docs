# Biobricks.ai Static Documentation Page

Deploy with

```
hugo -D
aws s3 sync public s3://biobricks.ai --profile insilica
aws cloudfront create-invalidation --distribution-id E2739YSAG8CXB8 --paths /*
```

# Sysrev Docs
Documentation, tutorials and articles for [sysrev.com](https://sysrev.com).

# Documentation
Documentation is coming! Just give us a bit longer.  
<span style="color:red">**This page is just a beta test, the url and content may change very soon.**</span>

## Tutorials
**[Reviewing FDA Druglabel](articles/reviewing-fda-druglabel.html)**  
Create a living review from FDA drug labels.

## Articles
**[Reviewing FDA Druglabel](articles/reviewing-fda-druglabel.html)**  
Create a living review from FDA drug labels.

**[Prediction and pmids](https://ontox.dev/posts/project-predictions-and-pmids/)**  <small style="color:#a1013d">ontox.dev</small> <br>
Sysrev creates machine learning models for every review. Sometimes it is useful to combine mdoel predictions with article data to create new reviews

**[Sysrev to SBML](https://ontox.dev/posts/project-predictions-and-pmids/)**  <small style="color:#a1013d">ontox.dev</small> <br>
SBML is a Systems Biology Markup Language which can be represented by a set of tables. This blog post describes how to build SBML data from a sysrev.

## Blog

**[Sysrev in the classroom](_posts/blog/sysrev-in-the-classroom.html)**  
Sysrev semi-automated review is used in Johns Hopkins classrooms. 

**[Open source labels](_posts/blog/open-source-labels.html)**  
How can shared labels help reduce redundancy in review?

**[Citing Sysrev](_posts/blog/cite-sysrev.html)**  
Get the Sysrev bibtex

**[Pricing Simplified](_posts/blog/pricing-simplified.html)**  
Sysrev.com has a simple pricing scheme.




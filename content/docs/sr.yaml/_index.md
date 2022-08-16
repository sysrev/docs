---
title: "sr.yaml config"
---

sr.yaml is a file in the root directory of every SRVC. 

A minimal sr.yaml file:

```yaml
db: "sink.jsonl" # where to store review data

labels:
  include:
    type: boolean
    question: should this article be included?

flows:
  simple:
    steps:
      - run_embedded: "generator-file data/docs.jsonl"
      - run_embedded: "remove-reviewed"
      - run_embedded: "label"
        labels: [ include ]
```

**db**  
Usually `sink.jsonl`, a path to store documents, labels, and review decisions.

**labels**  
What kind of data ...

**flows**  
A named flow that can be run with `sr review <flow>`...
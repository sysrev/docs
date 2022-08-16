---
title: SRVC Getting Started
description: create your first srvc review
---

SRVC makes document review modular and open source. It provides a system for inter process communication and a configuration method for combining scripts written in python, R, clojure, or any other scriptable language.   

In SRVC, every document review is a git repo. To build your first srvc repo, [install homebrew](https://brew.sh), and:

```
brew tap insilica/srvc 
brew install srvc
```

Now you have the `sr` command line tool, try it out with 
```
sr version
```

To run your first review clone the github.com/sysrev/srvc-hello repository:
```
git clone https://github.com/sysrev/srvc-hello.git
cd srvc-hello
```

and run a simple review:
```
sr review simple
```

You should see a simple command line review asking you to identify substances in abstracts:
```
/srvc-hello# sr review simple
{
  "title": "Final report of the amended safety assessment of sodium laureth sulfate ..."
  "abstract": "Sodium laureth sulfate is a member of a group of salts of ...",
}
https://pubmed.ncbi.nlm.nih.gov/20634505/

substance
1. "sodium laureth sulfate"
2. "sodium lauryl sulfoacetate"
...
```
Next, learn about review configuration (coming soon)

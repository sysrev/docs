---
title: Sysrev Analytics Dashboard: Concordance
description: Introducing Sysrev Analytics: Concordance.  The Concordance Tool provides insight into reviewer agreement and label consistency.  
---
The Analytics Dashboard: Concordance Tool was released today.  The
Concordance Tool provides insight into reviewer agreement and label
consistency.  This post will give an overview of the Concordance Tool
with real data from the [Mangiferin Data
Extraction](https://sysrev.com/o/2/p/21696) project.  

# An error occurred.

[Try watching this video on
www.youtube.com](https://www.youtube.com/watch?v=FgxJ4zTVUn4), or enable
JavaScript if it is disabled in your browser.

Sysrev Analytics Demo Video

The Analytics Dashboard is only available to project Administrators with
a **Pro** or **Team Pro** subscription.  Contact us at info@sysrev.com
to learn more.  An interactive demo of the Concordance Tool can be found
[here](https://blog.sysrev.com/ghost/Sysrev.com/p/21696/analytics/concordance).
   
  
The Concordance Tool consists of an overall **Concordance Score** and
three widgets: Label Difficulty, User Performance, and User/User
Investigation.  The widgets operate as a work-flow, allowing
administrators to home in on potential issues.  Currently, the
Concordance Tool only provides analysis of boolean labels.  

## Concordance Score

For an article to be considered 'concordant' for a given label, every
reviewer must agree on that label.  An article is 'discordant' for a
given label if every reviewer does NOT agree.  The Concordance Score is
calculated by summing the number of concordant articles for each label
and dividing by the total number of articles with 2+ reviewers for each
label.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/05/image-24.png" class="kg-image" alt="The top of every analytics/concordance page measures aggregate label concordance. 94% concordance is considered moderately strong. Over 95% will show a different user message." /><figcaption aria-hidden="true">The top of every analytics/concordance page measures aggregate label concordance. 94% concordance is considered moderately strong. Over 95% will show a different user message.</figcaption>
</figure>

As an example, the [Mangiferin Data
Extraction](https://sysrev.com/o/2/p/21696) project has two boolean
labels: `Include` which indicates that an article should be included in
downstream analysis and `Positive Effect?` which asks whether the
reviewed paper discusses a beneficial or detrimental effect of
mangiferin.

The Mangiferin project has a Concordance Score of 94%.  To calculate
this number by hand, take the sum of concordant articles for the
`Include` and `Positive Effect` labels (106 + 66) and divide by the
number of articles that were reviewed by at least two people for each
label (116+67).  94% = 172 / 183.

The Concordance Score is meant to go give a quick snapshot of the
concordance health of your project.  Values over 95% indicate good
health, 90-95% moderate, below 90 may indicate problems in some of your
labels.  

## Step 1 - Label Difficulty

The first widget in the Concordance Tool analyzes which labels are the
most difficult for your reviewers. Labels with a large number of
discordant labels may be poorly understand by one or more of your
reviewers.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/05/image-20.png" class="kg-image" alt="Step 1 - Label Difficulty. Each bar counts the number of articles with 2+ reviewers for the given label. Articles where all reviewers agree are marked &quot;concordant&quot; and otherwise &quot;discordant&quot;." /><figcaption aria-hidden="true">Step 1 - Label Difficulty. Each bar counts the number of articles with 2+ reviewers for the given label. Articles where <strong>all</strong> reviewers agree are marked "concordant" and otherwise "discordant".</figcaption>
</figure>

For an article to be concordant for a given label, every reviewer must
agree on that label.  An article is discordant if every reviewer does
NOT agree.  For the Mangiferin project's `Include` label, there were 106
Concordant articles and 10 Discordant articles.    
  
By default, each widgets' bar charts are set to `Count`.  Click
`Percent` to view the same graph by percent concordance.  The percent
concordance is calculated by dividing the `concordant` and `discordant`
counts by the total number of articles with 2+ reviewers.

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/05/image-19.png" class="kg-image" alt="Step 1 Label Concordance with Percent Selected" /><figcaption aria-hidden="true">Step 1 Label Concordance with <code>Percent</code> Selected</figcaption>
</figure>

## Step 2 - User Performance

The User Performance widget helps determine which users best understand
a given label.  Before viewing the table you must select the label by
which to compare users.  Shown below is the widget for the Mangiferin
project's `Include` label.  Each bar represents a different user who
reviewed articles within the project.

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/05/image-14.png" class="kg-image" alt="User Performance Chart for the Include Label. For each user, the chart shows the number of concordant and discordant articles for a given label." /><figcaption aria-hidden="true">User Performance Chart for the Include Label. For each user, the chart shows the number of concordant and discordant articles for a given label.</figcaption>
</figure>

The User Performance chart shows that user *mdongying* has reviewed the
most articles for inclusion, 10 of which were discordant.  This means
that user *mdongying* disagreed on the `Include` label with at least one
reviewer on 10 articles.  If we take into account data from the Label
Difficulty widget, we can discern that *mdongying* accounts for all of
the `Include` label's discordant articles.  

It is important to keep in mind, however, that discordance is not the
full story.  The discordant articles may represent mistakes by
*mdongying* or by a different reviewer.  Discordance here simply
indicates that there is are disagreements between reviewers `Include`
label

# Step 3 - User / User Investigation

The final step in the Concordance work-flow is the User / User
Investigation widget which analyzes how reviewers compare for a given
label.  This step is particularly useful if the project has a trusted
reviewer who serves as a good benchmark. This reviewer could be a
Project Administrator or simply a reviewer with special expertise.  

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/05/image-13.png" class="kg-image" alt="Measuring Include user concordance on articles labeled by mdongying" /><figcaption aria-hidden="true">Measuring <code>Include</code> user concordance on articles labeled by <code>mdongying</code></figcaption>
</figure>

Shown above is the User / User Investigation widget for the Mangiferin
Project with the `Include` label and user *mdongying* selected*.  *Each
bar represents a user who has reviewed an article which *mdongying* also
reviewed.  For example, user *rfa.aliana* co-reviewed 58 articles wit
*mdongying* and had perfect concordance.  Meanwhile user *hjhjess*
co-reviewed 27 articles with *mdongying,* two of which were discordant.
 

In this way, the Concordance Tool provides a series of widgets which
allow project managers to closely monitor their reviewer performance and
label consistency.  The early identification of misunderstood labels or
confused reviewers is paramount to the success of any review project.
   
  
We will continue to add new features and tools to the Analytics
Dashboard based on user requests.  If you have a suggestions, please
send them to use via this [Google
Form](https://docs.google.com/forms/d/e/1FAIpQLSebmFD_5X-Dzj8SmEwT_t6T5UkNlM5Cj2n5aLseIl3bNpdO6A/viewform).
 


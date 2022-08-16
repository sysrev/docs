---
title: RSysrev - Creating a data set and importing articles to sysrev with R
description: nida-projects-to-combat-the-opioid-crisis
---
The RSysrev client can be used to create projects on sysrev.com and
upload json documents for review.  In this project, we use RSysrev to
create a review of NIH opioid crisis small business grants.  View the
final product at
[sysrev.com/p/36134](https://sysrev.com/u/139/p/36134).  
  
Start by installing `RSysrev` version 0.1:

    devtools::install_github("sysrev/RSysrev@v0.1")

Install RSysrev

**Get a sysrev token**  
To use RSysrev a pro plan on sysrev.com and a token is needed.  After
signing up for an [individual pro plan](sysrev.com/pricing) get an api
token with RSysrev:

    .token <- RSysrev::loginAPIToken()

After registering for sysrev pro, store your token in .token. The
following function calls look for a token under the .token variable.
**Never share this token**.

Never share a sysrev token or save them where others might see it.  Some
bad guys use automated scrapers to search for tokens on sites like
github.com.    
  
We recommend storing your token in an environmental variable and loading
it in your notebooks with something like
`.token <- Sys.getenv("srtoken")`.  
  
**Create a dataset**  
With a token ready, a dataset can easily be created:

    name        <- "NIDA.NIHReporter.Active"
    description <- "SBIR Opioid Crisis Grants"
    ref.url     <- 'https://projectreporter.nih.gov'

    RSysrev::datasource.createDataset(name,description,ref.url) #returns 78

Create a dataset with `RSysrev::datasource.createDataset`

Log into datasource.insilica.co with your sysrev credentials to find
your dataset.

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/09/image-4.png" class="kg-image" alt="Look up your dataset on datasource.insilica.co. The graphql query is on the left. Your id will be different than 78" /><figcaption aria-hidden="true">Look up your dataset on datasource.insilica.co. The graphql query is on the left. Your id will be different than <code>78</code></figcaption>
</figure>

Hooray! We now have a dataset where we can store documents. It can also
be imported into sysrev.com projects.    
  
**Store documents in a dataset**  
You can upload R dataframes directly to your dataset. We start with the
below spreadsheet downloaded from [NIH
Reporter](https://projectreporter.nih.gov/reporter.cfm?CFID=28760949&CFTOKEN=47365664).

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/09/image-5.png" class="kg-image" alt="Excerpt from an excel sheet describing OUD grants from NIH. Download at sysrev.com/p/36134" /><figcaption aria-hidden="true">Excerpt from an excel sheet describing OUD grants from NIH. Download at <a href="https://sysrev.com/p/36134">sysrev.com/p/36134</a></figcaption>
</figure>

To upload this dataframe to our dataset we:

    # load the data frame into R
    excelDF <- readxl::read_xlsx("./NIDA.NIHReporter.Active.Aug.24.2020.xlsx")
    RSysrev::datasource.importDataframe(
        datasource.id = 78,
        df            = excelDF,
        external.ids  = df$`Project Title`,
        filenames     = df$`Project Title`)

Import data into a dataset with `RSysrev::datasource.importDataFrame`

`RSysrev::datasource.importDataframe` imports each row from a data frame
as a json entity.  After running this function our grant data set now
has 305 entities, where each entity is a json object.    
  
Note that we chose the grant `Project Title` as an external identifier,
this makes it easy to join datasets with other data that have a shared
identifier, entities should have a unique external.id. We provided a
`filename` for each entity, which is more relevant when uploading text
files, or other file based entities, but should also be unique.  

The uploaded entities are visible on datasource.insilica.co:

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/09/image-7.png" class="kg-image" alt="After uploading entities into your data set, you can view them on datasource.insilica.co." /><figcaption aria-hidden="true">After uploading entities into your data set, you can view them on datasource.insilica.co.</figcaption>
</figure>

**Import a dataset into sysrev**  
It is easy to import datasets into any sysrev you own:

    RSysrev::sysrev.importDataset(datasource.id = 78,sysrev.id = 36134)

Import dataset 78 into [sysrev.com/p/36134](https://sysrev.com/p/36134).
You must own both the dataset and the sysrev project.

All of these grants are now visible on
[sysrev.com/p/36134/articles](https://sysrev.com/p/36134/articles). For
example:

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2020/09/image-8.png" class="kg-image" alt="A single grant entity at sysrev.com/p/36134/article/8810708." /><figcaption aria-hidden="true">A single grant entity at <a href="https://sysrev.com/p/36134/article/8810708">sysrev.com/p/36134/article/8810708</a>.</figcaption>
</figure>

With these steps, it is possible to set up a review of any text or json
type entities you are interested in.


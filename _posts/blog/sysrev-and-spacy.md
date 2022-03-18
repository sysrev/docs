---
title: How to extract genes from text with Sysrev and spaCy
description: Let's build an NER model for genes from 2000 abstracts reviewed in sysrev's Gene Hunter project. In ~5 minutes your model will identify genes in text
---
Recognizing entities in text is the first step towards machines that can
extract medical insights out of enormous document repositories like
pubmed.  

Imagine asking your computer "which therapies are most effective for my
disease?" To answer this kind of question machines can read millions of
documents, but first they must know which words are therapies and
diseases.  Models that identify entities in text are called **Named
Entity Recognition** (NER) models.

Let's build an NER model for genes from 2000 abstracts reviewed in
sysrev's [Gene Hunter project](https://sysrev.com/p/3144). In ~5 minutes
your model will identify genes in text like the below:

<figure>
<img src="https://sysrev-docs.s3.amazonaws.com/_posts/blog/content/images/2019/07/image-1.png" class="kg-image" alt="Automatically identified genes from a model trained on sysrev.com/p/3144 annotations." /><figcaption aria-hidden="true">Automatically identified genes from a model trained on <a href="https://sysrev.com/p/3144">sysrev.com/p/3144</a> annotations.</figcaption>
</figure>

This is called annotated text and we can represent it in python with a
simple list.

    ["Objectives: We investigated whether polymorphisms (SNPs) in the promoter region of TNFA, or in the autoinflammatory TNFRSF1A", 
    {entities: [(84,88,'GENE'),(117,125,'GENE'),...]}]

Each annotated text block is a python list with raw text and a
dictionary of character offsets for each annotation. Here two gene
annotations are shown at offsets 84 and 117 representing TNFA and
TNFRSF1A.

Start by installing the PySysrev package: `pip install PySysrev`.  Then
just execute the next 13 lines of code to have your very own gene NER
model.  

    import PySysrev, spacy, random
    TRAIN_DATA = PySysrev.processAnnotations(project_id=3144,label='GENE')

Getting spacy.io ready annotations from [gene
hunter](https://sysrev.com/p/3144) is a one liner. TRAIN\_DATA is a list
of annotated paragraphs. Get a pandas dataframe with
`PySysrev.getAnnotations(project_id=3144)`

    nlp = spacy.blank('en')          # create a spacy model
    nlp.meta['name'] = 'gene'        # name the model 'gene'

    ner = nlp.create_pipe('ner')     # create an NER stage
    ner.add_label('GENE')            # add the label 'GENE' to the stage

    nlp.add_pipe(ner)                # put the pipe together
    optimizer = nlp.begin_training() # get an optimizer for training the model

Set up a spacy NER model [optimizer](https://spacy.io/usage/training) in
just a few lines.

    for itn in range(30):
        random.shuffle(TRAIN_DATA)                     #shuffle examples 
        text = [item[0] for item in TRAIN_DATA]        #get training text items
        annotations = [item[1] for item in TRAIN_DATA] #get training annotations
        nlp.update(text, annotations, sgd=optimizer, drop=0.6)

Train the model! This can take a while. In larger scale examples you
probably want to use minibatching like spaCy's `util.minibatch` to
update the model in batches.

Thats it! Your model is done. Lets give it a test:

    doc = nlp("""Epigenetic Silencing of the mutL homolog 1 (MLH1) Promoter in
    Relation to the Development of Gastric Cancer (GC) and its use as a
    Biomarker for Patients with Microsatellite Instability.""")

    from spacy import displacy
    displacy.serve(doc,style="ent")

Epigenetic Silencing of the mutL homolog 1 ( <span class="mark entity"
style="background: #ddd; padding: 0.05em 0.15em; margin: 0 0.05em; line-height: 1; border-radius: 0.15em; box-decoration-break: clone; -webkit-box-decoration-break: clone">
MLH1 <span
style="font-size: 0.8em; font-weight: bold; line-height: 1; border-radius: 0.35em; text-transform: uppercase; vertical-align: middle; margin-left: 0.5rem">GENE</span>
</span> ) Promoter in Relation to the Development of Gastric Cancer (GC)
and its use as a Biomarker for Patients with Microsatellite Instability.

Our nlp model successfully identifies genes in text. You can generate
visualizations from your NER results like the above by using [spaCy
visualizers](https://spacy.io/usage/visualizers).

  

It looks like the model did a decent job on this snippet. It matched
`MLH1` but missed the full name. It also knew `GC` wasn't a gene.  

With more training this model could be further improved.  To get an
alert when the next gene hunter sysrev starts just
[Subscribe](#subscribe) to this blog.

You can get started doing annotations in a public sysrev today for free.
Learn all about it at ["Creating
Annotations"](https://github.com/sysrev/Sysrev_Documentation/wiki/Creating-Annotations).

    @misc{Luechtefeld2019simplener,
      title={How to extract genes from text with Sysrev and spaCy},
      author={Luechtefeld,Thomas},
      year={2019 (accessed <your date>)},
      url="https://blog.sysrev.com/simple-ner/"
    }


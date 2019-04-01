Analysis of National Correlates of Tourist Industry Activity
==================================================================

Completed by Noah B Johnson, in fulfillment of the senior project 
for the Data Science major at Luther College, Decorah, IA

Introduction
-------------------


Tourism is often regarded as a positive force for its perceived 
effects on economic development, modernization, and globalization 
of destination populations. Much of the analysis of this issue relies 
on a number of assumptions about the nature of 'development' and its accoutrement. 
Significant relationships are often taken out of context or extrapolated inappropriately. 
The purpose of this analysis is to identify other correlations with tourist activity to 
provide further context to relationships and demonstrate the limitations of underlying assumptions.


Report
-------------
The report can be view on the master branch build [here](https://noahbjohnson.github.io/senior-project).



Milestones
---------------------

Midterm
____________

 ☑︎ Tourism data prep
   
 ☐ Tourism exploratory analysis
 
    ☐ Dimension reduction
 
    ☐ Descriptive statistics
   
    ☐ Colinearity/Correlation matrix
   
    ☐ Clustering
   
 ☐ Tourism data report
 
 
 ☐ Economic data prep
   
 ☐ Tourism & Economic data analysis
 
    ☐ Dimension reduction
 
    ☐ Colinearity/Correlation matrix
   
    ☐ Clustering
   
    ☐ Modeling (Economic data features as response)
   
 
Final
_____________

> Repeated for each subject area

 ☐ $Subject data prep
   
 ☐ Tourism & $Subject data analysis
 
    ☐ Dimension reduction
 
    ☐ Colinearity/Correlation matrix
   
    ☐ Clustering
   
    ☐ Modeling ($Subject data features as response)
   
 ☐ Tourism and $Subject data report
 
 
> Final Report

 ☐ Complete dataset creation (all subject areas)
 
 ☐ Anomaly detection
 
 ☐ Full cluster analysis (ANN/K-NN/AP/LCA)
 
 ☐ Subject matter interaction analysis & dimension reduction
 
    ☐ (colinearity/correlation/multivariate/MDS/PCA)
   
 ☐ Dependency Modeling
 
    ☐ Association rule learning (Apriori/Eclat/FP-Growth)
   
 
 ☐ Findings
 
    ☐ Model summaries
   
    ☐ Instrumental Explanations
   
    ☐ Visualizations
   
    ☐ Written report with methodology
   
 

Project Organization
------------

    ├── LICENSE
    ├── Makefile           <- Makefile with commands like `make data` or `make train`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0-jqp-initial-data-exploration`.
    │
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
    │                         generated with `pip freeze > requirements.txt`
    │
    ├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── data           <- Scripts to download or generate data
    │   │   └── make_dataset.py
    │   │
    │   ├── features       <- Scripts to turn raw data into features for modeling
    │   │   └── build_features.py
    │   │
    │   ├── models         <- Scripts to train models and then use trained models to make
    │   │   │                 predictions
    │   │   ├── predict_model.py
    │   │   └── train_model.py
    │   │
    │   └── visualization  <- Scripts to create exploratory and results oriented visualizations
    │       └── visualize.py
    │
    └── tox.ini            <- tox file with settings for running tox; see tox.testrun.org


--------

<p><small>Project based on the <a target="_blank" href="https://drivendata.github.io/cookiecutter-data-science/">cookiecutter data science project template</a>. #cookiecutterdatascience</small></p>

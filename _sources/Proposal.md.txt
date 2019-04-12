# Analysis of National Correlates of Tourist Industry Activity
Proposal prepared by Noah B Johnson for Data Science senior project at Luther College

## Introduction
Tourism is often regarded as a positive force for its perceived effects on economic development, modernization, and globalization of destination populations. Much of the analysis of this issue relies on a number of assumptions about the nature of 'development' and its accoutrement. Significant relationships are often taken out of context or extrapolated inappropriately. The purpose of this analysis is to identify other correlations with tourist activity to provide further context to relationships and demonstrate the limitations of underlying assumptions.

## Methods
Data on tourism activity will be analyzed with data on topics of national importance. Indicators will be normalized and used for linear regression with tourism metrics as the response.

$$
y=\beta 0 +\beta 1x1 +\beta2x2 + \beta kxk\dots + \epsilon
$$

Further analysis will be done on categorizing countries using k-means clustering with and without response variables.

$$
\mathcal{U}^* =
\text{arg}\min_{\hspace{-1in}\phantom{\hat{U}}U\in\mathcal{P}}\,\max_{c_k\in\chi} 
\sum_{k=1}^C \sum_{i=1}^n
U_{k,i} ||c_k - \vec {x}_i||_d^2
$$

More advanced data mining techniques may be used to further analyze any interesting relationships identified in preliminary linear regressions and to identify complex interactions or clusters. 

To provide context and control for the factor analysis, basic relationships between traditional national economic indicators and tourism information will also be modeled and presented.

## Data Collection and Management
Data will be downloaded directly when available, or through APIs if not. Country names will be cleaned to ISO standards to assist in comparison.

The Tourism data set will be used as a master table that the other data is left joined onto. This means that countries and regions in the issue data may not be included in the analysis if there is not comparable entries on the master table. 

A final full dataset will be created including all of the issue-based data and the master table. This dataset will be used for most of the advanced data mining and model training.


## Issues & Data Sources
Below are the issues that will be analyzed, as well as sources for data that have been identified so far. Those issues without data sources will be analyzed if reliable data can be found. Each issue will be independently analyzed prior to combination for more advanced data mining.


### Tourism
> Sources that provide quantitative time-series data on tourism on a national level. Data from these sources will be used as indicators for statistical analysis.

 - [UWTO](http://www2.unwto.org/content/data), World Tourism Organization
   - United Nations agency responsible for the promotion of responsible, sustainable and universally accessible tourism.
 - [WDI](http://datatopics.worldbank.org/world-development-indicators/), The World Bank's World Development Indicators
   - The World Development Indicators is a compilation of relevant, high-quality, and internationally comparable statistics about global development and the fight against poverty. The database contains 1,600 time series indicators for 217 economies and more than 40 country groups, with data for many indicators going back more than 50 years.

### Equality
> Sources that provide quantitative time-series data on social and economic equality on a national level.

 - [WDI](http://datatopics.worldbank.org/world-development-indicators/), The World Bank's World Development Indicators
 - [WID](https://wid.world/data/), World Inequality Database
   - The World Inequality Database (WID.world) aims to provide open and convenient access to the most extensive available database on the historical evolution of the world distribution of income and wealth, both within countries and between countries.
 - [WIID](https://www.wider.unu.edu/data), World Income Inequality Database
   - The WIID collects and stores information on income inequality for developed, developing, and transition countries. The database, its documentation, as well as a data query and visualization app are available on this website.
 - [HDI](http://hdr.undp.org/en/statistics/data), United Nations Development Programme Human Development Index
   - The Human Development Report is a reliable source and an alternative perspective on critical issues for human development worldwide. Featuring the Human Development Index, every report presents agenda-setting data and analysis and calls international attention to issues and policy options that put people at the center of strategies to meet the challenges of development today - economic, social, political, and cultural.

### Labor
> Sources that provide quantitative time-series data on labor on a national level.

 - [ILO](http://www.ilo.org/empelm/what/WCMS_114240/lang--en/index.htm), International Labour Organization
   - The International Labour Organization (ILO) is devoted to promoting social justice and internationally recognized human and labour rights, pursuing its founding mission that social justice is essential to universal and lasting peace.
 - [WDI](http://datatopics.worldbank.org/world-development-indicators/), The World Bank's World Development Indicators

### Urbanization
> Sources that provide quantitative time-series data on urbanization and population distribution on a national level.

 - [UNPD](https://population.un.org/wup/Download/), United Nations Population Division
   - The Population Division was established in the earlier years of the United Nations to serve as the Secretariat of the then Population Commission, created in 1946. Over the years, the Division has played an active role in the intergovernmental dialogue on population and development, producing constantly updated demographic estimates and projections for all countries, including data essential for the monitoring of the progress in achieving the Millennium Development Goals, developing and disseminating new methodologies, leading the substantive preparations for the United Nations major conferences on population and development as well as the annual sessions of the Commission on Population and Development.

### Health
> Sources that provide quantitative time-series data on population health on a national level.

 - [GHO](https://www.who.int/gho/en/), The World Health Organization's Global Health Observatory

### Education
> Sources that provide quantitative time-series data on education and academic achievement on a national level.

 - [UIS](http://data.uis.unesco.org), UNESCO Institute for Statistics
   - The UIS Data Centre contains indicators and raw data on education, literacy, science, culture and communication. The UIS collects these data from more than 200 countries and international organizations.

### Crime
> Sources that provide quantitative time-series crime rates and statistics on a national level.

 - [UNODC](https://www.unodc.org/unodc/en/data-and-analysis/statistics.html), United Nations Office On Drugs and Crime
   - UNODC was established to assist the UN in better addressing a coordinated, comprehensive response to the interrelated issues of illicit trafficking in and abuse of drugs, crime prevention and criminal justice, international terrorism, and political corruption.

### Corruption
> Sources that provide quantitative time-series data on governmental corruption and rule-of-law on a national level.
### Trade
> Sources that provide quantitative time-series data on foreign trade on a national level.
### Industry
> Sources that provide quantitative time-series data on economic activity by industry on a national level.




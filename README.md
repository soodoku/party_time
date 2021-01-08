## Party Time: Replication Data for Affect, Not Ideology: A Social Identity Perspective on Polarization

The replication scripts have been prepared in conjunction with [Rob Lytle](https://github.com/RobLytle).

We replicate the main descriptive findings of the [paper](http://gsood.com/research/papers/AffectNotIdeology.pdf): Tables 1 and 2, and Figures 1--4.

## Data and Codebooks

1. [YG 2010 10 Nation](data/10nat/)
2. [YG 2008](data/rivers/)
3. [ANES](data/anes/)
4. [Verba](data/verba/)

## Replication Scripts

1. [ANES Time Series Trimming](scripts/01_anes_cdf_trim.R): Trims [raw ANES file](data/anes/raw/anes_timeseries_cdf_dta.zip) to a more manageable size&mdash;the file needs to be zipped, but takes too long to extract each time the code is changed.
2. [ANES Time Series Recoding](scripts/02_wrangle_cdf.R): The bulk of the recoding work for the ANES data is done here. 1. [ANES Time Series Recoding](scripts/01_anes_ts_recode.R)
3. [Figure 1](scripts/03_fig1.R)
4. [Figure 2](scripts/04_fig2.R)
5. [Figure 3](scripts/05_fig3.R)
6. [Figure 3](scripts/06_fig4.R)
7. [Table 1](scripts/07_tab1.R)

Note: Some of the scripts rely on the [goji package](https://github.com/soodoku/goji).

## Quality-of-Life Scripts

1. [Makefile](Makefile): Executes all scripts and compiles PDF.
2. [Makefile DAG](makefile-dag.R): Creates a diagram of dependencies for [`Makefile`](Makefile).

## Document

1. [Replication PDF](doc/isl-2012-replication.pdf): PDF containing replications of figures in [Affect, Not Idoelogy](http://gsood.com/research/papers/AffectNotIdeology.pdf).
2. [Replication LaTeX](doc/isl-2012-replication.tex): Code for the PDF.

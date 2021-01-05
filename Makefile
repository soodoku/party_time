
# define the `doc` and `cleandoc` phonies that allow you
# to run`make doc` and `make cleandoc` to build and 
# delete **only the pdf**, respectively.
all: dag doc figs

dag: makefile-dag.png

doc: doc/isl-2012-replication.pdf
	rm -f rplots.pdf
	
figs: figs/fig_1 figs/fig_2 figs/fig_3 figs/fig_4

cleandoc:
	rm -f doc/isl-2012-replication.pdf
	cd figs; rm -f *.png *.csv
	cd data/anes; rm -f *.csv *.rds 
#	cd data/anes/raw; rm -f *.csv *.rds #un/comment this line to prevent 01_anes_cdf_trim.R from running every time (it is slow and only necessary if you need to pull more vars).

makefile-dag.png: makefile-dag.R Makefile
	Rscript $< #creates a dag 
	

doc/isl-2012-replication.pdf: doc/isl-2012-replication.tex figs
	cd doc; pdflatex isl-2012-replication.tex
	cd doc; bibtex isl-2012-replication.tex
	cd doc; pdflatex isl-2012-replication.tex
	cd doc; pdflatex isl-2012-replication.tex
	# remove the junk files leftover
	cd doc; rm -f *.log *.synctex.gz *.out *.blg *.toc *.bak *.bbl *.aux
	
figs/fig_1: scripts/03_fig1.R data/anes/tidy-cdf.rds
	Rscript $<
#	Rscript $@

figs/fig_2: scripts/04_fig2.R data/anes/tidy-cdf.rds
	Rscript $<
	
figs/fig_3: scripts/05_fig3.R data/anes/tidy-cdf.rds
	Rscript $<

figs/fig_4: scripts/06_fig4.R 
	Rscript $<
	
data/anes/tidy-cdf.rds: data/anes/raw/anes_timeseries_cdf_dta.zip
	Rscript scripts/01_anes_cdf_trim.R 
	Rscript scripts/02_wrangle_cdf.R

fig/ext-dag.png: dag.R
	Rscript dag.R
# define the `clean` phony so that you can run `make clean` 
# (or click *More* > *Clean All* in the build tab in RStudio) 
# and clean the entire project

clean: cleandoc
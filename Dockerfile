FROM dynverse/dynwrap:bioc

LABEL version 0.1.3

RUN R -e 'devtools::install_cran("TSCAN")'

ADD . /code

ENTRYPOINT Rscript /code/run.R

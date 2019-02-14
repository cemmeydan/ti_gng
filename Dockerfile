FROM dynverse/dynwrap:r

LABEL version 0.1.8

RUN apt-get update && apt-get install -y libudunits2-dev

RUN R -e 'devtools::install_github("rcannood/gng")'

ADD . /code

ENTRYPOINT Rscript /code/run.R

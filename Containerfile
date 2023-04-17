FROM ucsb/rstudio-base:latest

LABEL maintainer="LSIT Systems <lsitops@ucsb.edu>"

USER root

RUN R -e "install.packages(c('survminer', 'dplyr', 'psych', 'grid', 'gridextra', 'dendextend', 'factoextra', 'caret', 'splines', 'survival', 'survminer'), repos = 'https://cloud.r-project.org/', Ncpus = parallel::detectCores())"

USER $NB_USER


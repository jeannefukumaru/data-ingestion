FROM r-base
ADD install_packages.R /tmp/install_packages.R
RUN Rscript /tmp/install_packages.R
ADD gap-life-exp.R /gap-life-exp.R
RUN Rscript gap-life-exp.R/gap-life-exp.R

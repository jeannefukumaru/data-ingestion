FROM python 

RUN set -e \
      && ln -sf /bin/bash /bin/sh 

RUN set -e \
      && apt-get -y update \
      && apt-get -y upgrade \
      && apt-get -y install gfortran liblapack-dev \
      && apt-get -y autoremove \
      && apt-get clean 

RUN set -e \
      && pip install -U --no-cache-dir pip numpy pystan \
      && pip install -U --no-cache-dir cython csvkit scikit-learn scipy pandas 
                                      
ENTRYPOINT ["/usr/local/bin/python"]

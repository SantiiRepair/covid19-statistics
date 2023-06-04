FROM r-base
SHELL ["/bin/bash", "-o", "pipefail", "-e", "-u", "-x", "-c"]
USER 0
RUN apt-get update && apt-get install -y r-base r-base-core r-base-dev \
    libcurl4-openssl-dev libssl-dev && \
    rm -r /var/lib/apt/lists/*

RUN R -e "install.packages(c('httr', 'jsonlite'), repos='https://cran.rstudio.com/')"
FROM gcr.io/gcer-public/googlecloudrunner:master

LABEL maintainer="JamariusTaylor"

RUN R -e 'install.packages(c("plumber"))'

RUN mkdir /main

COPY api.R /main

WORKDIR /main

EXPOSE 8080/tcp

ENTRYPOINT ["R", "-e", "pr <- plumber::plumb('api.R'); pr$run(host='0.0.0.0', port=8080)"]




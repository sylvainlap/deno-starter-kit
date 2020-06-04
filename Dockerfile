FROM debian:buster-20200514-slim

ENV DENO_DIR=/deno-dir
ENV DENO_INSTALL=/usr/local
ENV DENO_VERSION=1.0.5

RUN apt-get -qq update \
  && apt-get -qq install curl make unzip \
  && curl -fsSL https://deno.land/x/install/install.sh | sh -s v${DENO_VERSION}

WORKDIR /var/www

COPY deps.ts .
RUN deno cache deps.ts

COPY . .

EXPOSE 2337

CMD ["make", "run"]

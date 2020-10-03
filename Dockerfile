FROM debian:buster-slim

ENV DENO_DIR=/deno-dir
ENV DENO_INSTALL=/usr/local
ENV DENO_VERSION=1.4.4

RUN apt-get -qq update \
  && apt-get -qq install curl make unzip \
  && curl -fsSL https://deno.land/x/install/install.sh | sh -s v${DENO_VERSION}

# RUN useradd --uid 1993 --user-group deno \
#         && mkdir /deno-dir/ \
#         && chown deno:deno /deno-dir/

# USER deno

WORKDIR /var/www

COPY deps.ts .
RUN deno cache deps.ts

COPY . .

EXPOSE 2337

CMD ["make", "run"]

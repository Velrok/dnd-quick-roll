FROM alpine:latest
RUN wget https://github.com/candid82/joker/releases/download/v1.3.5/joker-linux-amd64.zip && unzip joker-linux-amd64.zip && mv joker /usr/bin/

WORKDIR /app

COPY src src
COPY public public

ENTRYPOINT /usr/bin/joker src/server.joke

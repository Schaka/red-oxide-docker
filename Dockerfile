FROM alpine:3.19

WORKDIR /app
ENV HOME=/config

RUN apk update && \
    apk add curl mktorrent cargo flac lame sox && \
    wget -c https://github.com/DevYukine/red_oxide/releases/download/v0.9.1/red_oxide-Linux-x86_64-musl

RUN mv red_oxide-Linux-x86_64-musl red_oxide && chmod +x red_oxide
ENV PATH="$PATH:/root/.local/bin:/app/bin"
RUN curl --proto '=https' --tlsv1.2 -sSf https://imdl.io/install.sh | sh -s -- --to /app/bin

ENTRYPOINT ["/bin/sh", "-c"]

FROM debian:9-slim

RUN apt-get update && \
apt-get install ca-certificates -y && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

ADD bin /bin
ADD https://github.com/luizalabs/object-storage-cli/releases/download/v0.0.1/objstorage-1150c70-linux-amd64 /bin/objstorage
RUN chmod +x /bin/objstorage
ENTRYPOINT ["/bin/get_slug"]

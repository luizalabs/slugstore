FROM debian:9-slim

RUN apt-get update && \
apt-get install ca-certificates -y && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

ADD bin /bin
ADD https://storage.googleapis.com/object-storage-cli/bb8e054/objstorage-bb8e054-linux-amd64 /bin/objstorage
RUN chmod +x /bin/objstorage
ENTRYPOINT ["/bin/get_slug"]

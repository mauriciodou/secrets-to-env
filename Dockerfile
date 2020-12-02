FROM alpine:3.12

RUN \
  apk update && \
  apk add bash jq

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
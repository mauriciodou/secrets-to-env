FROM alpine:3.12

RUN \
  apk update && \
  apk add bash jq && \
  apk del --purge build

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
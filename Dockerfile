FROM alpine:3.7
LABEL maintainer "Ruben Jongejan - ruben.jongejan@gmail.com"

RUN apk add --update \
    bash \
    ttyd \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["ttyd"]
CMD ["bash"]

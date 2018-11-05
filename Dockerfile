FROM alpine:3.8

ARG BUILD_DATE
ARG VCS_REF

LABEL \
	maintainer="G.J.R. Timmer <gjr.timmer@gmail.com>" \
	org.label-schema.schema-version="1.0" \
	org.label-schema.build-date=${BUILD_DATE} \
	org.label-schema.name=dockup \
	org.label-schema.vendor=timmertech.nl \
	org.label-schema.url="https://gitlab.timmertech.nl/docker/dockup" \
	org.label-schema.vcs-url="https://gitlab.timmertech.nl/docker/dockup.git" \
	org.label-schema.vcs-ref=${VCS_REF} \
	nl.timmertech.license=MIT

RUN apk upgrade --update && \
	apk add --update --no-cache curl bash tar gzip file ca-certificates && \
	apk add --no-cache --virtual .build-deps curl && \
	curl https://dl.minio.io/client/mc/release/linux-amd64/mc > /usr/bin/mc && \
	chmod +x /usr/bin/mc && apk del .build-deps

COPY rootfs/ /

ENTRYPOINT ["/init"]
CMD []

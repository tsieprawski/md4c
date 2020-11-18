FROM alpine:edge
ADD . /src
RUN apk update && \
    apk add \
        alpine-sdk \
        gcc \
        git \
        meson \
        musl-dev \
        ninja \
        && \
    cd /src && \
    meson setup \
        --wrap-mode=nofallback \
        build && \
    meson dist -C build --no-tests && \
    abuild-keygen -ain && \
    abuild -F checksum && \
    abuild -F -r && \
    cd / && \
    rm -r /src && \
    mv /root/packages/x86_64/*.apk /
    
FROM alpine:edge
COPY --from=0 /md4c-0.4.5-r0.apk /md4c.apk
COPY --from=0 /md4c-dev-0.4.5-r0.apk /md4c-dev.apk
RUN apk add --allow-untrusted /md4c.apk

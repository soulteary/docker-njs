ARG DIST_OS=alpine:3.12
ARG NGX_VER=1.19.6-alpine

FROM "nginx:$NGX_VER" AS builder

FROM "$DIST_OS"
COPY --from=builder /usr/bin/njs /usr/bin/njs
COPY --from=builder /usr/lib/libpcre.so.* \
                    /usr/lib/libedit.so.* \
                    /usr/lib/libncursesw.so.* \
                    /usr/lib/
RUN ls /usr/lib/libpcre.so.*.* | xargs -I {} ln -sf {} $(echo {} | cut -b 1-21) && \
    ls /usr/lib/libedit.so.*.* | xargs -I {} ln -sf {} $(echo {} | cut -b 1-21) && \
    ls /usr/lib/libncursesw.so.*.* | xargs -I {} ln -sf {} $(echo {} | cut -b 1-25)

ENTRYPOINT [ "njs" ]
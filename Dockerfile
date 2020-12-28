FROM caddy:2.2.1-builder-alpine AS builder

RUN xcaddy build --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.2.1-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

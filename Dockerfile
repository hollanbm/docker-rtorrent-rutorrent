ARG VERSION=latest
FROM ghcr.io/crazy-max/rtorrent-rutorrent:${VERSION}

ENV RU_DOWNLOAD_DIR=/downloads

COPY 00-change-downloads.sh /etc/cont-init.d/00-aaa-change-downloads.sh
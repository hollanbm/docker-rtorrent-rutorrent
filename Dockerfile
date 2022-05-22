ARG VERSION=latest
FROM ghcr.io/crazy-max/rtorrent-rutorrent:${VERSION}

ENV RU_DOWNLOAD_DIR=/downloads

COPY root/ /
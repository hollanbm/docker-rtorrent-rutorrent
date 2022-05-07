# forked from [crazy-max/docker-rtorrent-rutorrent](https://github.com/crazy-max/docker-rtorrent-rutorrent)

This is a simple script built ontop of his existing container, that allows you to easily remap the torrent downloads location

The parent container uses s6-overlay to bootstrap the container and setup the scripts. I take advantage of that, to create a new startup script, that should always run first.

This script uses sed to find/replace occurences of `/downloads` with the value of the environment variable `RU_DOWNLOAD_DIR`

You can find this image over on docker hub: https://hub.docker.com/r/mrbucket101/rtorrent-rutorrent

To change the downloads directory set the value of `RU_DOWNLOAD_DIR` to whatever path (ie: `/torrents`)within the container you like. Don't forget to also map this path outside the container
* no trailing slash on RU_DOWNLOAD_DIR

#!/usr/bin/with-contenv sh
if [[ "${RU_DOWNLOAD_DIR}" != "/downloads" ]]; then
    find /etc/cont-init.d/ -type f ! -name "00-change-downloads.sh" -exec sed -i -e "s#/downloads#${RU_DOWNLOAD_DIR}#g" {} \;
    find /tpls/ -type f -exec sed -i -e "s#/downloads#${RU_DOWNLOAD_DIR}#g" {} \;
fi

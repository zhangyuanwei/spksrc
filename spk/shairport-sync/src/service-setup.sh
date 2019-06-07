PATH="${SYNOPKG_PKGDEST}/bin:${PATH}"
CFG_FILE="${SYNOPKG_PKGDEST}/var/shairport-sync.conf"
SHAIRPORT_SYNC="${SYNOPKG_PKGDEST}/bin/shairport-sync"

#GROUP="sc-download"

#SERVICE_COMMAND="${SHAIRPORT_SYNC} -d ${SYNOPKG_PKGDEST}/var/ -x ${PID_FILE} -e ${LOG_FILE}"
SERVICE_COMMAND="${SHAIRPORT_SYNC} -c ${CFG_FILE}" 

service_preinst ()
{
    # if [ "${SYNOPKG_PKG_STATUS}" == "INSTALL" ]; then
    #     # If chosen, they need to exist
    #     if [ -n "${wizard_watch_dir}" -a ! -d "${wizard_watch_dir}" ]; then
    #         echo "Watch directory ${wizard_watch_dir} does not exist."
    #         exit 1
    #     fi
    #     if [ -n "${wizard_incomplete_dir}" -a ! -d "${wizard_incomplete_dir}" ]; then
    #         echo "Incomplete directory ${wizard_incomplete_dir} does not exist."
    #         exit 1
    #     fi
    # fi

    # exit 0
}

service_postinst ()
{
    # if [ "${SYNOPKG_PKG_STATUS}" == "INSTALL" ]; then
    #     # Edit the configuration according to the wizard
    #     sed -i -e "s|@download_dir@|${wizard_download_dir:=/volume1/downloads}|g" ${CFG_FILE}
    #     sed -i -e "s|@username@|${wizard_username:=admin}|g" ${CFG_FILE}
    #     sed -i -e "s|@password@|${wizard_password:=admin}|g" ${CFG_FILE}
    #     if [ -d "${wizard_watch_dir}" ]; then
    #         sed -i -e "s|@watch_dir_enabled@|true|g" ${CFG_FILE}
    #         sed -i -e "s|@watch_dir@|${wizard_watch_dir}|g" ${CFG_FILE}
    #     else
    #         sed -i -e "s|@watch_dir_enabled@|false|g" ${CFG_FILE}
    #         sed -i -e "/@watch_dir@/d" ${CFG_FILE}
    #     fi
    #     if [ -d "${wizard_incomplete_dir}" ]; then
    #         sed -i -e "s|@incomplete_dir_enabled@|true|g" ${CFG_FILE}
    #         sed -i -e "s|@incomplete_dir@|${wizard_incomplete_dir}|g" ${CFG_FILE}
    #     else
    #         sed -i -e "s|@incomplete_dir_enabled@|false|g" ${CFG_FILE}
    #         sed -i -e "/@incomplete_dir@/d" ${CFG_FILE}
    #     fi

    #     # Set permissions for optional folders
    #     if [ -d "${wizard_watch_dir}" ]; then
    #         set_syno_permissions "${wizard_watch_dir}" "${GROUP}"
    #     fi
    #     if [ -d "${wizard_incomplete_dir}" ]; then
    #         set_syno_permissions "${wizard_incomplete_dir}" "${GROUP}"
    #     fi
    # fi

    # # Discard legacy obsolete busybox user account
    # BIN=${SYNOPKG_PKGDEST}/bin
    # $BIN/busybox --install $BIN >> ${INST_LOG}
    # $BIN/delgroup "${USER}" "users" >> ${INST_LOG}
    # $BIN/deluser "${USER}" >> ${INST_LOG}
}


service_postupgrade ()
{
    # # Needed to force correct permissions, during update
    # # Extract the right paths from config file
    # if [ -r "${CFG_FILE}" ]; then
    #     DOWNLOAD_DIR=`sed -n 's/.*"download-dir"[ ]*:[ ]*"\(.*\)",/\1/p' ${CFG_FILE}`
    #     INCOMPLETE_DIR=`sed -n 's/.*"incomplete-dir"[ ]*:[ ]*"\(.*\)",/\1/p' ${CFG_FILE}`
    #     WATCHED_DIR=`sed -n 's/.*"watch-dir"[ ]*:[ ]*"\(.*\)",/\1/p' ${CFG_FILE}`

    #     # Apply permissions
    #     if [ -n "${DOWNLOAD_DIR}" ] && [ -d "${DOWNLOAD_DIR}" ]; then
    #         set_syno_permissions "${DOWNLOAD_DIR}" "${GROUP}"
    #     fi
    #     if [ -n "${INCOMPLETE_DIR}" ] && [ -d "${INCOMPLETE_DIR}" ]; then
    #         set_syno_permissions "${INCOMPLETE_DIR}" "${GROUP}"
    #     fi
    #     if [ -n "${WATCHED_DIR}" ] && [ -d "${WATCHED_DIR}" ]; then
    #         set_syno_permissions "${WATCHED_DIR}" "${GROUP}"
    #     fi
    # fi
}

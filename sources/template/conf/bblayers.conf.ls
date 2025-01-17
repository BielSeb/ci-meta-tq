POKY_BBLAYERS_CONF_VERSION = "2"

BBPATH = "${TOPDIR}"
BSPDIR := "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True)) + '/../..')}"

BBFILES ?= ""
BBLAYERS = "\
    ${BSPDIR}/sources/poky/meta \
    ${BSPDIR}/sources/poky/meta-poky \
    \
    ${BSPDIR}/sources/meta-openembedded/meta-oe \
    ${BSPDIR}/sources/meta-openembedded/meta-python \
    ${BSPDIR}/sources/meta-openembedded/meta-networking \
    \
    ${BSPDIR}/sources/meta-freescale \
    \
    ${BSPDIR}/sources/meta-tq \
    ${BSPDIR}/sources/meta-dumpling \
"

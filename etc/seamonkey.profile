# Firejail profile for seamonkey
# Description: SeaMonkey internet suite
# This file is overwritten after every install/update
# Persistent local customizations
include seamonkey.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/mozilla
noblacklist ${HOME}/.mozilla
noblacklist ${HOME}/.pki
noblacklist ${HOME}/.local/share/pki

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-programs.inc

mkdir ${HOME}/.cache/mozilla
mkdir ${HOME}/.mozilla
whitelist ${DOWNLOADS}
whitelist ${HOME}/.cache/gnome-mplayer/plugin
whitelist ${HOME}/.cache/mozilla
whitelist ${HOME}/.config/gnome-mplayer
whitelist ${HOME}/.config/pipelight-silverlight5.1
whitelist ${HOME}/.config/pipelight-widevine
whitelist ${HOME}/.keysnail.js
whitelist ${HOME}/.lastpass
whitelist ${HOME}/.mozilla
whitelist ${HOME}/.pentadactyl
whitelist ${HOME}/.pentadactylrc
whitelist ${HOME}/.pki
whitelist ${HOME}/.local/share/pki
whitelist ${HOME}/.vimperator
whitelist ${HOME}/.vimperatorrc
whitelist ${HOME}/.wine-pipelight
whitelist ${HOME}/.wine-pipelight64
whitelist ${HOME}/.zotero
whitelist ${HOME}/dwhelper
include whitelist-common.inc

caps.drop all
netfilter
nodvd
nonewprivs
noroot
notv
protocol unix,inet,inet6,netlink
seccomp
tracelog

disable-mnt
# private-etc passwd,group,hostname,hosts,localtime,nsswitch.conf,resolv.conf,gtk-2.0,pango,fonts,iceweasel,firefox,adobe,mime.types,mailcap,asound.conf,pulse,machine-id,ca-certificates,ssl,pki,crypto-policies

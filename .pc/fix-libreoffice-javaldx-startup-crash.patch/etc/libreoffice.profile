# Firejail profile for libreoffice
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/libreoffice.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.java
noblacklist /usr/local/sbin
noblacklist ${HOME}/.config/libreoffice
noblacklist ${HOME}/.cache

include /etc/firejail/disable-common.inc
# libreoffice needs it at first run
#include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

include /etc/firejail/whitelist-var-common.inc

caps.drop all
machine-id
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-dev
private-tmp

#noexec ${HOME}
noexec ${HOME}/Desktop
noexec ${HOME}/Documents
noexec ${HOME}/Downloads
noexec ${HOME}/Music
noexec ${HOME}/Pictures
noexec ${HOME}/Public
noexec ${HOME}/Templates
noexec ${HOME}/Videos
noexec ${HOME}/.local
noexec /tmp

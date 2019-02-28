# Firejail profile for virtualbox
# Description: x86 virtualization solution
# This file is overwritten after every install/update
# Persistent local customizations
include virtualbox.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.VirtualBox
noblacklist ${HOME}/.config/VirtualBox
noblacklist ${HOME}/VirtualBox VMs
# noblacklist /usr/bin/virtualbox
noblacklist /usr/lib/virtualbox
noblacklist /usr/lib64/virtualbox

include disable-common.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.config/VirtualBox
mkdir ${HOME}/VirtualBox VMs
whitelist ${HOME}/.config/VirtualBox
whitelist ${HOME}/VirtualBox VMs
whitelist ${DOWNLOADS}
whitelist ${MUSIC}
whitelist ${DESKTOP}
whitelist ${VIDEOS}
whitelist ${DOCUMENTS}
whitelist ${PICTURES}
include whitelist-common.inc
include whitelist-var-common.inc

caps.drop all
netfilter
nodvd
notv

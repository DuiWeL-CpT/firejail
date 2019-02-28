# Firejail profile for freecad
# Description: Extensible Open Source CAx program
# This file is overwritten after every install/update
# Persistent local customizations
include freecad.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/FreeCAD
noblacklist ${DOCUMENTS}

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

caps.drop all
ipc-namespace
net none
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none

private-bin freecad,freecadcmd,alternatives
private-cache
private-dev
private-tmp

noexec ${HOME}
noexec /tmp

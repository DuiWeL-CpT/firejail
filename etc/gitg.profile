# Firejail profile for gitg
# Description: Git repository viewer
# This file is overwritten after every install/update
# Persistent local customizations
include gitg.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.gitconfig
noblacklist ${HOME}/.local/share/gitg
noblacklist ${HOME}/.ssh

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

caps.drop all
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

private-bin gitg,git,ssh
private-cache
private-dev
private-tmp

# mdwe breaks diff in older versions
#memory-deny-write-execute
noexec ${HOME}
noexec /tmp

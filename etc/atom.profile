# Firejail profile for atom
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/atom.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ~/.atom
noblacklist ~/.config/Atom

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix,inet,inet6,netlink
seccomp
shell none

private-dev
private-tmp

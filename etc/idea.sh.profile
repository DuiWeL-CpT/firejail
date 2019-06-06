# Firejail profile for idea.sh
# This file is overwritten after every install/update
# Persistent local customizations
include idea.sh.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.IdeaIC*
noblacklist ${HOME}/.android
noblacklist ${HOME}/.gitconfig
noblacklist ${HOME}/.gradle
noblacklist ${HOME}/.jack-server
noblacklist ${HOME}/.jack-settings
noblacklist ${HOME}/.java
noblacklist ${HOME}/.local/share/JetBrains
noblacklist ${HOME}/.ssh
noblacklist ${HOME}/.tooling
noblacklist ${HOME}/.python-history

include disable-common.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

private-cache
private-dev
# private-tmp

noexec /tmp

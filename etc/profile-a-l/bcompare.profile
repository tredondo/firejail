# Firejail profile for Scootersoft Beyond Compare
# Description: directory compare and file compare utility
# Disables the network, which only impacts checking for updates.
# This file is overwritten after every install/update

# Persistent local customizations
include bcompare.local
# Persistent global definitions
include globals.local

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
# Allow comparing e.g. Firefox profile files
# include disable-programs.inc
# Uncommenting this breaks launch
# include disable-shell.inc
include disable-write-mnt.inc
include disable-xdg.inc

# include whitelist-common.inc
# include whitelist-runuser-common.inc
# include whitelist-usr-share-common.inc
# include whitelist-var-common.inc

#allusers
apparmor
caps.drop all
# ipc-namespace
machine-id
net none
no3d
# nodvd
nogroups
nonewprivs
noroot
# nosound
notv
nou2f
novideo
protocol unix
seccomp
# shell none
# tracelog

# disable-mnt
# private
# private-bin program
private-cache
private-dev
# see /usr/share/doc/firejail/profile.template for more common private-etc paths.
# private-etc alternatives,fonts,machine-id
# private-lib
# private-opt none
# Necessary because of the `include disable-exec.inc` line. Prevents error "Error fstat: fs.c:504 fs_remount_simple: Transport endpoint is not connected ... cannot sync with peer: unexpected EOF Peer [...] unexpectedly exited with status 1"
private-tmp

# dbus-user none
# dbus-system none

# memory-deny-write-execute
noexec ${HOME}
# read-only ${HOME}

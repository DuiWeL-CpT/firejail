#!/bin/bash
# This file is part of Firejail project
# Copyright (C) 2014-2019 Firejail Authors
# License GPL v2

export MALLOC_CHECK_=3
export MALLOC_PERTURB_=$(($RANDOM % 255 + 1))

echo "TESTING: profile conditional (test/profiles/conditional.exp)"
./conditional.exp

echo "TESTING: profile recursivity (test/profiles/profile_recursivity.exp)"
./profile_recursivity.exp

echo "TESTING: profile application name (test/profiles/profile_appname.exp)"
./profile_appname.exp

echo "TESTING: profile syntax (test/profiles/profile_syntax.exp)"
./profile_syntax.exp

echo "TESTING: profile syntax 2 (test/profiles/profile_syntax2.exp)"
./profile_syntax2.exp

echo "TESTING: ignore command (test/profiles/ignore.exp)"
./ignore.exp

echo "TESTING: profile read-only (test/profiles/profile_readonly.exp)"
./profile_readonly.exp

echo "TESTING: profile read-only links (test/profiles/profile_readonly.exp)"
./profile_followlnk.exp

echo "TESTING: profile no permissions (test/profiles/profile_noperm.exp)"
./profile_noperm.exp




echo "TESTING: default profiles installed in /etc"
PROFILES=`ls /etc/firejail/*.profile`
for PROFILE in $PROFILES
do
	echo "TESTING: $PROFILE"
	./test-profile.exp $PROFILE
done


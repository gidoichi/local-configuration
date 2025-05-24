#!/bin/sh

set -eu

PARENT="$(d=${0%/*}/; [ "_$d" = "_$0/" ] && d='./'; cd "$d"; pwd)"
cd "$PARENT"

ansible-playbook \
    --ask-become-pass \
    --diff \
    "$@" \
    playbook.yml

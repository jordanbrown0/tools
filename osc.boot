#! /bin/bash -e

myname=$0
dir=$HOME/openscad

function usage {
    echo "Usage: $myname user/repo target" >&2
    echo "target is relative to \$HOME/openscad." >&2
    exit 1
}

case $# in
2) ;;
*) usage ;;
esac

user_repo=$1
target=$2

case "$user_repo" in
*/*/*) usage ;;
*/*) ;;
*) usage ;;
esac

$HOME/bin/osc.clone "$user_repo" "$target"
cd "$HOME/openscad/$target"
$HOME/bin/osc.cmk b
$HOME/bin/osc.mk b

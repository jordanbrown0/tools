#! /bin/sh

case $# in
1)
    ;;
*)
    echo "Usage: $0 dir" >&2
    exit 1
    ;;
esac

cd $1
time make -j2

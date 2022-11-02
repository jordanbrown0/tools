#! /bin/sh

case $# in
0)
    echo "Usage: $0 dir [make args]" >&2
    exit 1
    ;;
*)
    ;;
esac

if [ -r $HOME/.make.jobs ]; then
    jobs=$(cat $HOME/.make.jobs)
else
    echo "Using only one job; set $HOME/.make.jobs."
    jobs=1
fi
cd $1
shift
set -x
time make -j$jobs "$@"

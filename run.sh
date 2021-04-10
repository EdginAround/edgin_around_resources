#!/bin/sh

function usage() {
    echo 'Commands:'
    echo ' - pack - pack the resources to a zip file'
}

function run_pack_resources() {
    ZIPFILE=edgin_around_resources.zip
    rm -f $ZIPFILE
    zip -qr $ZIPFILE effects images inventory sprites tiles
}

if (( $# > 0 )); then
    command=$1
    shift

    case $command in
        'pack')
            run_pack_resources
            ;;
        *)
            echo "Command \"$command\" unknown."
            echo
            usage
            ;;
    esac
else
    echo 'Please give a command.'
    echo
    usage
fi

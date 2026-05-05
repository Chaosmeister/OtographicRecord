#!/bin/bash

install_if_missing() {
    local cmd_name="$1"
    local pkg_name="$2"

    if ! command -v "$cmd_name" >/dev/null 2>&1; then
        if command -v apt >/dev/null 2>&1; then
            sudo apt update
            sudo apt install -y "$pkg_name"

            if ! command -v "$cmd_name" >/dev/null 2>&1; then
                exit 1
            fi
        else
            exit 1
        fi
    fi
}

install_if_missing "streamlink" "streamlink"
install_if_missing "vlc" "vlc"

url="$1"
outfile="out.ts"
i=1

while [ -e "$outfile" ]; do
    outfile="out${i}.ts"
    ((i++))
done

streamlink -a "--file-caching=5000 --sout file/ts:${outfile}" "$url" best
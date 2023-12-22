#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
# Uncomment this line to see each command for debugging (careful: this will show secrets!)
# set -o xtrace


oss_repo="$1"
oss_version="$2"
oss_home="$3"
archive=/tmp/AzureTRE.tar.gz

wget -O "$archive" "http://github.com/${oss_repo}/archive/${oss_version}.tar.gz" --progress=dot:giga

mkdir -p "$oss_home"
tar -xzf "$archive" -C "$oss_home" --strip-components=1
rm "$archive"

echo "${oss_repo}" > "$oss_home/repository.txt"
echo "${oss_version}" > "$oss_home/version.txt"

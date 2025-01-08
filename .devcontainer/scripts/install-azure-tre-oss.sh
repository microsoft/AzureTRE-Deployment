#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
# Uncomment this line to see each command for debugging (careful: this will show secrets!)
# set -o xtrace


upstream_repo_url="$1"
upstream_repo_version="$2"
upstream_home="$3"
archive=/tmp/AzureTRE.tar.gz

wget -O "$archive" "${upstream_repo_url}/archive/${upstream_repo_version}.tar.gz" --progress=dot:giga

mkdir -p "$upstream_home"
tar -xzf "$archive" -C "$upstream_home" --strip-components=1
rm "$archive"

echo "${upstream_repo_url}" > "$upstream_home/repository.txt"
echo "${upstream_repo_version}" > "$upstream_home/version.txt"

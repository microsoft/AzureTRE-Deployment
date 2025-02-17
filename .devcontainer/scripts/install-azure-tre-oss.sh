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

# Check if a fourth argument is provided (This should be a github token)
if [[ $# -eq 4 ]]
then
    TOKEN="$4"
    echo "Using Auth"
    curl -L -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $TOKEN" -H "X-GitHub-Api-Version: 2022-11-28" \
    https://api.github.com/repos/$upstream_repo_url/tarball/$upstream_repo_version --output "$archive"

else
    wget -O "$archive" "http://github.com/${oss_repo}/archive/${oss_version}.tar.gz" --progress=dot:giga
fi

mkdir -p "$upstream_home"
tar -xzf "$archive" -C "$upstream_home" --strip-components=1
rm "$archive"

echo "${upstream_repo_url}" > "$upstream_home/repository.txt"
echo "${upstream_repo_version}" > "$upstream_home/version.txt"



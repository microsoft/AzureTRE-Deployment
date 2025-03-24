#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
# Uncomment this line to see each command for debugging (careful: this will show secrets!)
# set -o xtrace


# Assign arguments to variables
upstream_repo="$1"
upstream_repo_version="$2"
upstream_home="$3"
github_token="${4:-}"
archive=/tmp/AzureTRE.tar.gz

# Check if a fourth argument is provided
if [[ -n "$github_token" ]];
then
    TOKEN="$4"
    echo "Using Auth"
    curl -L -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $TOKEN" -H "X-GitHub-Api-Version: 2022-11-28" \
    https://api.github.com/repos/"$upstream_repo"/tarball/"$upstream_repo_version" --output "$archive"

else
    wget -O "$archive" "http://github.com/${upstream_repo}/archive/${upstream_repo_version}.tar.gz" --progress=dot:giga
fi

mkdir -p "$upstream_home"
tar -xzf "$archive" -C "$upstream_home" --strip-components=1
rm "$archive"

echo "${upstream_repo}" > "$upstream_home/repository.txt"
echo "${upstream_repo_version}" > "$upstream_home/version.txt"

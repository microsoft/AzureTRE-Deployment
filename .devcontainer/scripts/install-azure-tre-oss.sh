#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
# Uncomment this line to see each command for debugging (careful: this will show secrets!)
# set -o xtrace

oss_version="$1"
oss_home="$2"
archive=/tmp/AzureTRE.tar.gz

wget -O "$archive" "http://github.com/microsoft/AzureTRE/archive/${oss_version}.tar.gz" --progress=dot:giga

mkdir -p "$oss_home"
tar -xzf "$archive" -C "$oss_home" --strip-components=1
rm "$archive"

echo "${oss_version}" > "$oss_home/version.txt"


########################################################################
############ Using this to make temp corrections to the OSS ############
########################################################################

# waiting for: https://github.com/microsoft/AzureTRE/issues/2156
# shellcheck disable=SC2016
sed -i 's,\./devops/scripts/check_dependencies.sh,${MAKEFILE_DIR}/devops/scripts/check_dependencies.sh,g' "$oss_home"/Makefile

# waiting for: https://github.com/microsoft/AzureTRE/issues/2116
sed -i 's,curl -i -X,curl -i -k -X,g' "$oss_home"/devops/scripts/migrate_state_store.sh


# shellcheck disable=SC2016
sed -i 's,\./ui,${AZURETRE_HOME}/ui,g' "$oss_home"/devops/scripts/build_deploy_ui.sh
# shellcheck disable=SC2016
sed -i 's,\./devops,${AZURETRE_HOME}/devops,g' "$oss_home"/devops/scripts/build_deploy_ui.sh

sed -i 's,masked_resource.properties,# masked_resource.properties,g' "$oss_home"/api_app/api/routes/resource_helpers.py
echo "__version__ = \"0.3.23.2\"" > "$oss_home"/api_app/_version.py


# waiting for: https://github.com/microsoft/AzureTRE/pull/2248
sed -i 's/lstrip('\''api:\/\/'\'')/replace('\''api:\/\/'\'','\'''\'')/g' "$oss_home"/api_app/api/routes/api.py

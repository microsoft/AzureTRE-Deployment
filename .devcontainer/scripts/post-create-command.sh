#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
# Uncomment this line to see each command for debugging (careful: this will show secrets!)
# set -o xtrace

#Copy sample env files
find ~/AzureTRE/devops/ -name \*.env.sample -exec cp {} devops/ \;
find ~/AzureTRE/templates/core/ -name \*.env.sample -exec cp {} templates/core/ \;

# show the AzureTRE OSS folder inside the workspace one
rm -fr AzureTRE || true
ln -s "${AZURETRE_HOME}" AzureTRE

sudo bash AzureTRE/devops/scripts/set_docker_sock_permission.sh

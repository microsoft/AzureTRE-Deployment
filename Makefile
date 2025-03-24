
SHELL:=/bin/bash

AZURETRE_HOME?="AzureTRE"

# This must come before the include statement
# Otherwise, $(lastword) will be the last included file
THIS_MAKEFILE_FULLPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
THIS_MAKEFILE_DIR := $(dir $(THIS_MAKEFILE_FULLPATH))

include $(AZURETRE_HOME)/Makefile

help: ## 💬 Custom help command that displays both the repository-specific and AzureTRE help for existing make commands.
	@grep -E '^[^#][a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-25s\033[0m %s\n", $$1, $$2}'
	@echo "AzureTRE Makefile Commands"
	@grep -E '^[^#][a-zA-Z_-]+:.*?## .*$$' $(firstword $(AZURETRE_HOME)/Makefile) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-25s\033[0m %s\n", $$1, $$2}'

# Add your make commands down here

# This is a sample make command to build user resource templates that are in this repo, versus the AzureTRE core repo
# Any "make bundle" command from the AzureTRE core repo can be pasted here by modifying the command name
#   and modifying MAKEFILE_DIR to THIS_MAKEFILE_DIR
user_resource_bundle_sample:
	$(MAKE) bundle-build bundle-publish bundle-register \
	DIR="${THIS_MAKEFILE_DIR}templates/workspace_services/${WORKSPACE_SERVICE}/user_resources/${BUNDLE}" BUNDLE_TYPE=user_resource WORKSPACE_SERVICE_NAME=tre-service-${WORKSPACE_SERVICE}

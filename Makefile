
SHELL:=/bin/bash

AZURETRE_HOME?="AzureTRE"

include $(AZURETRE_HOME)/Makefile

# Get all the help messages from the AzureTRE origin Makefile and the current Makefile
help: ## 💬 This help message :)
	@grep -E '[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-25s\033[0m %s\n", $$1, $$2}'
	@echo "AzureTRE Makefile Commands"
	@grep -E '[a-zA-Z_-]+:.*?## .*$$' $(firstword $(AZURETRE_HOME)/Makefile) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-25s\033[0m %s\n", $$1, $$2}'

# Add your make commands down here

# sample_command: ## Replace this description if you want it to be visible inside the help command
# 	@echo "This is a sample command"

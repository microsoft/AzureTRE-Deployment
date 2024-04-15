# gh auth login -w

REPO="CloudKubed/AzureTRE-Deployment"
GH_ENV="Demo001"
AAD_TENANT_ID="5b705f2e-fa01-4f0d-b5ef-54e9251b4b2f"
TRE_ID="treckd001"
ACR_NAME="acrtreckd001"
LOCATION="eastus"
TERRAFORM_STATE_CONTAINER_NAME="tfstate"

# Configure Core Secrets
gh secret set TRE_ID --env $GH_ENV --body $TRE_ID -R $REPO
gh secret set MGMT_RESOURCE_GROUP_NAME --env $GH_ENV --body "rg-${TRE_ID}mgmt" -R $REPO
gh secret set MGMT_STORAGE_ACCOUNT_NAME --env $GH_ENV --body "sta${TRE_ID}mgmt" -R $REPO
gh secret set ACR_NAME --env $GH_ENV --body $ACR_NAME -R $REPO
gh secret set AZURE_CREDENTIALS --env $GH_ENV --body "dummy" -R $REPO

#Configure Core Variables
gh variable set LOCATION --env $GH_ENV --body $LOCATION -R $REPO
gh variable set TERRAFORM_STATE_CONTAINER_NAME --env $GH_ENV --body $TERRAFORM_STATE_CONTAINER_NAME -R $REPO
gh variable set CORE_ADDRESS_SPACE --env $GH_ENV --body "10.0.0.0/22" -R $REPO
gh variable set TRE_ADDRESS_SPACE --env $GH_ENV --body "10.0.0.0/16" -R $REPO
gh variable set AZURE_ENVIRONMENT --env $GH_ENV --body "AzureCloud" -R $REPO
gh variable set CORE_APP_SERVICE_PLAN_SKU --env $GH_ENV --body "P1v2" -R $REPO
gh variable set RESOURCE_PROCESSOR_NUMBER_PROCESSES_PER_INSTANCE --env $GH_ENV --body "5" -R $REPO
gh variable set ENABLE_SWAGGER --env $GH_ENV --body "true" -R $REPO
gh variable set STATEFUL_RESOURCES_LOCKED --env $GH_ENV --body "true" -R $REPO
gh variable set KV_PURGE_PROTECTION_ENABLED --env $GH_ENV --body "true" -R $REPO

#Configure Authentication Secrets
gh secret set AAD_TENANT_ID --env $GH_ENV --body $AAD_TENANT_ID -R $REPO

gh secret set APPLICATION_ADMIN_CLIENT_ID --env $GH_ENV --body "dummy" -R $REPO
gh secret set APPLICATION_ADMIN_CLIENT_SECRET --env $GH_ENV --body "dummy" -R $REPO
gh secret set TEST_ACCOUNT_CLIENT_ID --env $GH_ENV --body "dummy" -R $REPO
gh secret set TEST_ACCOUNT_CLIENT_SECRET --env $GH_ENV --body "dummy" -R $REPO
gh secret set API_CLIENT_ID --env $GH_ENV --body "dummy" -R $REPO
gh secret set API_CLIENT_SECRET --env $GH_ENV --body "dummy" -R $REPO
gh secret set SWAGGER_UI_CLIENT_ID --env $GH_ENV --body "dummy" -R $REPO
gh secret set TEST_WORKSPACE_APP_ID --env $GH_ENV --body "dummy" -R $REPO
gh secret set TEST_APP_ID --env $GH_ENV --body "dummy" -R $REPO
gh secret set TEST_WORKSPACE_APP_SECRET --env $GH_ENV --body "dummy" -R $REPO

#Create a Teams Webhook for deployment notifications
gh secret set MS_TEAMS_WEBHOOK_URI --env $GH_ENV --body "dummy" -R $REPO

#!/bin/bash

tre_id=$(grep tre_id config.yaml|awk '{print $2}')

sa_id=$(az storage account show -g rg-${tre_id} -n stweb${tre_id} --query "id"|awk -F\" '{print $2}')
user_id=$(az account show --query "id"|awk -F\" '{print $2}')
user_email=$(az account show --query "user.name"|awk -F\" '{print $2}')

az role assignment create --role "Storage Blob Data Contributor" --assignee ${user_email} --scope ${sa_id}
az role assignment create --role "Storage Blob Data Reader" --assignee ${user_email} --scope ${sa_id}
az role assignment create --role "Storage Table Data Contributor" --assignee ${user_email} --scope ${sa_id}
az role assignment create --role "Storage Table Data Reader" --assignee ${user_email} --scope ${sa_id}
az role assignment create --role "Storage Queue Data Contributor" --assignee ${user_email} --scope ${sa_id}
az role assignment create --role "Storage Queue Data Reader" --assignee ${user_email} --scope ${sa_id}
az keyvault set-policy --name kv-${tre_id} --upn ${user_email} --certificate-permissions all
az keyvault set-policy --name kv-${tre_id} --upn ${user_email} --secret-permissions all
az keyvault set-policy --name kv-${tre_id} --upn ${user_email} --key-permissions all

sleep 60s

make letsencrypt
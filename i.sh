#!/bin/bash

# Login to Azure (Uncomment the next line if you're not already logged in or running in an environment that's not already authenticated)
# az login

# Get the list of all providers and their registration status
providers=$(az provider list --query "[].{Provider:namespace, Status:registrationState}" --output tsv)

# Loop through the providers and register each one if not already registered
while IFS=$'\t' read -r provider status; do
  if [ "$status" != "Registered" ] && [ "$status" != "Registering" ]; then
    echo "Registering $provider..."
    az provider register --namespace "$provider" --wait
  else
    echo "$provider is already registered."
  fi
done <<< "$providers"

echo "All providers have been processed."


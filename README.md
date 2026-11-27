# AzureTRE-Deployment Repo

This project is intended to assist the deployment of the Azure TRE project in real world environments. This includes deploying using a dev container from your local machine, deploying using GitHub Actions, and publishing custom templates.

See the [Azure TRE documentation](https://microsoft.github.io/AzureTRE/) which includes detailed documentation and best practices to ensure a successful deployment and to assist you with customizing your own templates using this repository.

## Contents

In this project you will find:

- Github Actions implementing AzureTRE automation, including running deployments to Azure
- Configuration specific to deployment
- Workspace template definitions
- User resource template definitions
- Devcontainer setup

### Prerequisites

To work with devcontainers you will need:

- [Visual Studio Code](https://code.visualstudio.com)
- [Remote containers extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### Upgrading to AzureTRE v0.30.0

Before redeploying an existing TRE that uses legacy Airlock storage, set `tre.enable_legacy_airlock` to `true` in `config.yaml`.
For GitHub Actions deployments, the equivalent variable is `ENABLE_LEGACY_AIRLOCK` and its default is `true`.
The new sample sets `enable_legacy_airlock` to `false` for new deployments.
Setting it to `false` on an existing TRE deletes the legacy storage accounts and their data on the next core deployment.
Migrate all workspaces to Airlock v2 before disabling legacy storage.

Keep your existing `config.yaml` when rebuilding the container.
The new sample enables workspace user management, automatic Entra group creation and automatic consent.
Review these permissions before adopting the new sample settings.

Review the other breaking changes before upgrading individual services. [AzureTRE v0.30.0 release notes](https://github.com/microsoft/AzureTRE/releases/tag/v0.30.0)

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit <https://cla.opensource.microsoft.com>.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft
trademarks or logos is subject to and must follow
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.

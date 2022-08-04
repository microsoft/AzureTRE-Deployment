# AzureTRE-Deployment Repo

This repository is an initial template to help get you started with AzureTRE deployment, setting up Github CI/CD workflows and extending AzureTRE with your custom templates.

In this project you will find:

- Github Actions implementing AzureTRE automation, including running deployments to Azure
- Configuration specific to deployment
- Workspace template definitions
- User resource template definitions
- Devcontainer setup

## Project structure and overview

//TODO: Add link here once the pr on the main repo is merged

Go to [AzureTRE Deployment documentation]() to learn more about this project structure, how it works and how to work with it.

## Local development

This project is setup to work locally with devcontainers [read more about it (here](https://code.visualstudio.com/docs/remote/containers)). It contains all the required tooling to develop your custom templates and deploy the Azure TRE. In addition it defines the AzureTRE version that will be downloaded and used in the container.

The files for the dev container are located in `/.devcontainer/` folder.

### Prerequisites

To work with devcontainers you will need:

- [Visual Studio Code](https://code.visualstudio.com)
- [Remote containers extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Upgrading AzureTRE version

To upgrade AzureTRE version go to [devcontainer.json](.devcontainer/devcontainer.json) and update the `OSS_VERSION` param to the desired version.

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

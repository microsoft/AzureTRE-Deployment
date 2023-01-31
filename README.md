# AzureTRE-Deployment Repo

The AzureTRE deployment repository is a one-stop source for deploying and managing AzureTR, designed to simplify the deployment process with its centralized repository of scripts, configurations, and templates. In addition to the pre-packaged templates, this repository allows you to add custom templates for deploying your own unique solutions on Azure. With the ability to deploy AzureTRE and custom templates, you have the flexibility to fully customize your deployment and meet the specific needs of your organization. See the [Azure TRE documentation](https://microsoft.github.io/AzureTRE/) which includes detailed documentation and best practices to ensure a successful deployment and to assist you with customizing your own templates using this repository.

## Contents

In this project you will find:

- Github Actions implementing AzureTRE automation, including running deployments to Azure
- Configuration specific to deployment
- Workspace template definitions
- User resource template definitions
- Devcontainer setup

## Local development

The AzureTRE deployment repository includes support for local development using a devcontainer. A devcontainer is a container-based development environment that provides a consistent and isolated environment for developing applications. This allows developers to work on the same configuration, ensuring compatibility and reducing the chances of compatibility issues. Read more about it [here](https://code.visualstudio.com/docs/remote/containers).

With the use of a devcontainer for local development in the AzureTRE deployment repository, developers can:

Clone the repository to their local machine.
Define the devcontainer configuration, including the required dependencies, tools, and settings.
Build and run the devcontainer.
Use the devcontainer to develop the application.
Commit changes to the repository and push to the remote repository.
This approach provides a streamlined and efficient way for developers to work on the AzureTRE deployment solution, with the added benefits of consistency, isolation, and collaboration. As part of the devcontainer setup the AzureTRE version is set up, which will be downloaded and used in the container.

The files for the dev container are located in `/.devcontainer/` folder.

### Prerequisites

To work with devcontainers you will need:

- [Visual Studio Code](https://code.visualstudio.com)
- [Remote containers extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

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

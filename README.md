# oscal-2023-workshop

Presentation materials are located in [`docs/`](./docs).

## Follow along

This workshop utilizes VSCode's workspace settings as well as the [DevContainer](https://code.visualstudio.com/docs/devcontainers/create-dev-container) standard to provide a consistent environment for all workshop participants.

To follow along, clone the repository and open the project in VS Code.

### Cloning the repository in VSCode

To clone the repository in VS Code, open the command palette (<kbd>Ctrl</kbd> <kbd>Shift</kbd> <kbd>P</kbd> on Windows/Linux, <kbd>⌘</kbd> <kbd>⇧</kbd> <kbd>P</kbd> on MacOS) and select the command `Git: Clone`.

When prompted for a repository, paste the following URL:

https://github.com/aj-stein-nist/oscal-2023-workshop.git

You will be prompted to select a folder to clone the repository to.

### Cloning the repository from the terminal

To follow along, clone the repository here:

```
git clone https://github.com/aj-stein-nist/oscal-2023-workshop.git
```

And open the repository with VS Code:

```
code oscal-2023-workshop
```

### Opening the project in the provided [DevContainer](https://code.visualstudio.com/docs/devcontainers/create-dev-container)

This workshop provides a containerized environment configured with additional tools such as the [OSCAL CLI](https://github.com/usnistgov/oscal-cli).

Be sure to install the [VSCode DevContainer extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).

This extension requires you to install [Docker Desktop](https://www.docker.com/products/docker-desktop/), [Docker Engine](https://docs.docker.com/engine/), or an alternative Docker runtime such as [Rancher Desktop](https://rancherdesktop.io/), depending on your operating system and preferences.

*Note: if you are installing Docker Engine on Linux or a WSL environment, be sure to follow [Docker's post-installation steps](https://docs.docker.com/engine/install/linux-postinstall/)*

Once installed, this project can be re-opened by VSCode in a DevContainer by opening the command pallette (<kbd>Ctrl</kbd> <kbd>Shift</kbd> <kbd>P</kbd> on Windows/Linux, <kbd>⌘</kbd> <kbd>⇧</kbd> <kbd>P</kbd> on MacOS) and selecting `Dev Containers: Reopen in Container`.

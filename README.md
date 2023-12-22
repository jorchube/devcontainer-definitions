# Minimal devcontainer definitions aimed at working with vscode flatpak and podman-remote



## Prerequisites

* **Visual Studio Code** flatpak needs the `com.visualstudio.code.tool.podman` extension.
* Set `podman-remote` as the Docker executable in **Visual Studio Code**. In the `settings.json` add:
    ```json
    "dev.containers.dockerPath": "/app/tools/podman/bin/podman-remote"
    ```
* Allow vscode to access `xdg-run/podman` in filesystem permissions.
* The `podman.socket` service needs to be running at the user level.
    * Start it with:
        ```bash
        systemctl --user start podman.socket
        ```
    * Or make it persisten between reboots:
        ```bash
        systemctl --user enable --now podman.socket
        ```
* `SELinux`'s `enforcing` policy may lead to errors accessing files in the container.

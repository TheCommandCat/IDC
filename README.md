# IDC - Instant Docker Compose

IDC is a simple tool I created to explore Bash scripting, Docker, and package creation. It's designed to streamline the process of deploying Docker Compose stacks, offering a quick and easy way to get started with your projects.

While IDC might not be the most robust or feature-rich tool, it's a fun little project that I enjoyed building.

Feel free to explore the code and learn from it.

## Features

- Automatically opens a text editor to create a `compose.yaml` file.
- Runs `docker compose up` to start the services defined in the `compose.yaml`.
- Cleans up by removing the `compose.yaml` file after use.

## Requirements

- Docker must be installed on your system.
 installing the package sould download it as a dependency if it dosent
 you can install Docker from [here](https://docs.docker.com/get-docker/).

## Installation

### Using the `.deb` Package

1. Download the latest `.deb` file from the [releases](https://github.com/TheCommandCat/idc/releases) page.

2. Install the package using `apt`:
    ```sh
    sudo apt install idc_<version>.deb
    ```

## Usage

You need to run the `idc` command as root for it to work properly. By default, the terminal code editor used is `nano`. If you prefer a different editor, you can specify it as an argument to open the temporary `compose.yaml` file there.


```sh
sudo idc [editor]
```


### Example
```sh
sudo idc #will open nano by default
sudo idc nvim
sudo idc vi
```
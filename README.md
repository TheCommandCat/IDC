# DCI - Docker Compose Instant

DCI is a simple CLI tool to create Docker Compose stacks in seconds without even the need to create a compose file manually!

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

1. Download the latest `.deb` file from the [releases](https://github.com/TheCommandCat/dci/releases) page.

2. Install the package using `apt`:
    ```sh
    sudo apt install dci_<version>.deb
    ```

## Usage

You need to run the `dci` command as root for it to work properly. By default, the terminal code editor used is `nano`. If you prefer a different editor, you can specify it as an argument to open the temporary `compose.yaml` file there.


```sh
sudo dci [editor]
```


### Example
```sh
sudo dci #will open nano by default
sudo dci nvim
sudo dci vi
```
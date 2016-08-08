# devops-docker

## System requirements

Windows 10; Docker Toolbox; Virtualbox 5.1.2
babun (or Git Bash / Cygwin / MSYS) as a shell

## Installation

* run `./config_virtualbox.sh` only once after creating boot2docker machine.
* run `./config_boot2docker.sh` **inside** boot2docker VM *as a root* only once after creating boot2docker machine either from Virtualbox GUI for boot2docker or inside `docker-machine ssh default` session. You might need `sudo -s` for acquiring root rights.
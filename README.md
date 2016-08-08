# devops-docker

## Preface

As not all Windows computers are capable of running Hyper-V supervisor and thus cannot run native Docker engine it is required to have 2 layers of proper configuration of shared folders between the Host and docker containers.

Virtualbox shared folders under Windows is [PITA](http://www.urbandictionary.com/define.php?term=pita) even without additional Docker hassle. This repository hopefully will be of use for configuring sharing folders between Windows host and docker containers.

## System requirements

Windows 10; Docker Toolbox; Virtualbox 5.1.2  
babun (or Git Bash / Cygwin / MSYS) as a shell

## Installation

* run `./config_virtualbox.sh` only once after creating boot2docker machine.
* run `./config_boot2docker.sh` **inside** boot2docker VM *as a root* only once after creating boot2docker machine either from Virtualbox GUI for boot2docker or inside `docker-machine ssh default` session. You might need `sudo -s` for acquiring root rights.
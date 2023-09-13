## FHIR Dev Container

## Introduction

This repo contains a simple devcontainer config, as well as a Dockerfile setting up an environment containing sushi and the ig publisher.
The container also contains all prerequisits needed for completing the [fsh-exercise](https://fshschool.org/courses/).

```bash
# Execute publisher
publisher -source [source] -destination [dest] (-tx [url])
```

## Setup

1. Install [docker desktop](https://docs.docker.com/desktop/)
2. Clone the FHIRDevContainer Repo
3. Install the [DevContainers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension within VSCode
4. Start the DevContainer

## Setup [FHIR Exercise](https://fshschool.org/courses/fsh-seminar)

1. Under the docker desktop settings add the **workspaces** directory as a file-sharing ressource
2. Clone the fish seminar exercise (locally or within the remote container) into **workspaces**

```bash
git clone https://github.com/FSHSchool/courses-fsh-seminar-exercise.git
```
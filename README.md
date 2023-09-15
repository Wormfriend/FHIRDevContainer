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
4. Under the docker desktop settings add the **workspaces** directory as a file-sharing ressource
5. Start the DevContainer

## Setup [FSH Seminar](https://fshschool.org/courses/fsh-seminar)

1. The fsh seminar can be found under /fsh_seminar
2. From thereon follow [the seminar](https://fshschool.org/courses/fsh-seminar/setup.html) starting from bulletpoint no 7

```bash
git clone https://github.com/FSHSchool/courses-fsh-seminar-exercise.git
```
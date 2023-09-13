# Description

This repo contains a simple devcontainer config, as well as a Dockerfile setting up an environment containing sushi and the ig publisher.

```bash
# Execute publisher
publisher -source [source] -destination [dest] (-tx [url])
```

# Setup

1. Install [docker desktop](https://docs.docker.com/desktop/)
2. Clone the FHIRDevContainer Repo
3. Under the docker desktop settigs add the fhir-exercise directory as a file-sharing ressource
4. Install the [DevContainers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension within VSCode
5. Start the DevContainer
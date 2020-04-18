VSTS Agent Docker Image
====================

This repository contains `Dockerfile` definitions for [kjsubbu/vsts-agent-infrastructure](https://github.com/kjsubbu/vsts-agent-infrastructure) Docker images.

[![Downloads from Docker Hub](https://img.shields.io/docker/pulls/kjsubbu/vsts-agent-infrastructure.svg)](https://registry.hub.docker.com/u/kjsubbu/vsts-agent-infrastructure)
[![Stars on Docker Hub](https://img.shields.io/docker/stars/kjsubbu/vsts-agent-infrastructure.svg)](https://registry.hub.docker.com/u/kjsubbu/vsts-agent-infrastructure) [![](https://images.microbadger.com/badges/image/kjsubbu/vsts-agent-infrastructure.svg)](https://microbadger.com/images/kjsubbu/vsts-agent-infrastructure "Get your own image badge on microbadger.com")


Docker image for VSTS Agent with infrastrucure tools installed

```
ENV TERRAFORM_VERSION 0.11.10
ENV PACKER_VERSION 1.3.2
ENV ANSIBLE_VERSION 2.0.0.2
```

## How to use these image
VSTS agents must be started with account connection information, which is provided through two environment variables:

- `VSTS_ACCOUNT`: the name of the Visual Studio account
- `VSTS_TOKEN`: a personal access token (PAT) for the Visual Studio account that has been given at least the **Agent Pools (read, manage)** scope.
- `VSTS_AGENT`: the name of the agent (default: `"$(hostname)"`)
- `VSTS_POOL`: the name of the agent pool (default: `"Default"`)


To run the default VSTS agent image for a specific Visual Studio account:

```
docker run \
  -e VSTS_ACCOUNT=<name> \
  -e VSTS_TOKEN=<pat> \
  -e VSTS_AGENT='$(hostname)-agent' \
  -e VSTS_POOL=mypool \
  -it kjsubbu/vsts-agent-infrastructure
```

## Notes


Other tools installed on VSTS image are listed:
[vsts agent tools](https://github.com/Microsoft/vsts-agent-docker/blob/6689c2bd45304ec56d2628f393355b52a451453e/README.md#standard-images)


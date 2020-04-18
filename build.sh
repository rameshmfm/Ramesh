#!/bin/bash
docker build -t vsts-agent-infrastructure --build-arg VCS_REF="git rev-parse --short HEAD" .
docker tag vsts-agent-infrastructure kjsubbu/vsts-agent-infrastructure 
docker push kjsubbu/vsts-agent-infrastructure 
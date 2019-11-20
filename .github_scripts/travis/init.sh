#!/bin/bash

## Note: This file should rarely change. This pulls down the latest CI script and executes it 

git subtree pull --prefix .github_scripts https://github.com/VoronDesign/GithubScripts.git master --squash -m "update"

chmod +x ${PWD}/.github_scripts/travis/ci-build.sh
${PWD}/.github_scripts/travis/ci-build.sh

#!/usr/bin/env bash
#

source scripts/VERSIONS

# 1. Clone the repositories
./scripts/clone-repos.sh

# 2. Run the transmogrifier
./scripts/run.sh

# 3. Commit, tag, and push the changes
#./scripts/commit-and-tag-repos.sh 

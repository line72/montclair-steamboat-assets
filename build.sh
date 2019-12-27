#!/usr/bin/env bash
#

source scripts/VERSIONS

# 1. Clone the repositories
# 2. Run the transmogrifier
# 3. Commit, tag, and push the changes
./scripts/clone-repos.sh && \
    ./scripts/run.sh && \
    ./scripts/commit-and-tag-repos.sh

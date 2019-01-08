#!/bin/bash

rm -rf /tmp/cache

docker run --rm -it -v ${PWD}:/workspace -v /tmp/cache:/cache \
    ltekieli/bazel \
    /bin/bash -c "cd /workspace && bazel test ... --experimental_strict_action_env --disk_cache=/cache"
docker run --rm -it -v ${PWD}:/workspace -v /tmp/cache:/cache \
    ltekieli/bazel \
    /bin/bash -c "cd /workspace && bazel test ... --experimental_strict_action_env --disk_cache=/cache"

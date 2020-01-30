#!/bin/bash

# Generates a compile_commands.json file at $(bazel info execution_root) for
# your Clang tooling needs.

set -ex

bazel build \
  --experimental_action_listener=//third_party/tools/generate_compile_commands:extract_json \
  --noshow_loading_progress \
  "$@"

pushd $(bazel info execution_root) > /dev/null
echo "[" > compile_commands.json
find -L . -name '*.compile_command.json' -exec bash -c 'cat {} && echo ,' \; >> compile_commands.json || true
sed -i '$s/,$//' compile_commands.json
echo "]" >> compile_commands.json
popd > /dev/null
echo $(bazel info execution_root)

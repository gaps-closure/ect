#!/bin/bash

[[ ! -z $1 ]] || { echo "Please provide the name of an example (see ect/examples)" >&2; exit 1; }
stack run -- \
examples/$1/llvm/orange \
examples/$1/llvm/purple \
examples/$1/llvm/refactored \
examples/$1/clemaps/orange.json \
examples/$1/clemaps/purple.json \
examples/$1/clemaps/refactored.json
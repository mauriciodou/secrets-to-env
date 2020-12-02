#!/bin/bash
function main {
  # Source the other files to gain access to their functions
  secrets=${INPUT_SECRETS}
  jq -r 'to_entries|map("\(.key)=\(.value|tostring)")|.[]' <<< "$secrets" >> $GITHUB_ENV
  echo $GITHUB_ENV
}

main "${*}"
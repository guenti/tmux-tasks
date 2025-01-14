#!/usr/bin/env bash

main() {
  local output
  output="?"

  # Make sure task is available.
  if type task >/dev/null 2>&1; then
    output=$(task count status:pending +OVERDUE or status:pending +TODAY)
  fi

  echo "$output"
}

main

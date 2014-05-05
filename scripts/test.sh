#!/bin/bash

echo "testing"
echo

echo "${#1}"
echo "${#2}"

if [ ${#1} -gt 0 ]; then
    echo "all arguments found"
fi

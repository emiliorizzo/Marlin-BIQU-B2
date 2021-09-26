#!/bin/bash

git log --author='<emiliorizzo@gmail.com>' --format="%H" --reverse | sed 's/$/^!/g' | nl -w 1 -s ' ' | xargs -I{} sh -c "git format-patch --start-number {}"

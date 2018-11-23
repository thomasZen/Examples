#!/bin/bash

set -ex
# e: exit as soon as an error appears
# x: print each command

# remove string from file inplace
sed -e '/^    key: value/d' -i "" foo.txt

# new line in output and take care of intendation, example useful for yaml file
sed -e $'s/^  foo-bar:/  foo-bar:\\\n    key: value/g' -i "" foo.txt


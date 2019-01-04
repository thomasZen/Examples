#!/bin/bash

set -ex
# e: exit as soon as an error appears
# x: print each command

# check parameter count and write usage instruction
if (( $# != 1 )); then
  echo "Usage: $0 LANGUAGE_PAIR_STRING"
  exit
fi

# reading file line by line
while read -r line; do
  echo $line
done < foo.txt

# check if file (not) exists
file_path="../foo.txt"
if [ ! -f $file_path ]; then
  echo "File $file_path does not exist!"
else
  echo "File $file_path does exist!"
fi

# looping around
for suffix in "src" "tgt"; do
  echo "praefix.middle.${suffix}"
done

# parameter expansion: https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
x="100"
pointer="x"
echo "Value of ${pointer} is ${!pointer}"
# remove longest matching prefix pattern, everything until last '/'
file_path="/Users/thomaszenkel/GitRepos/Examples/bash.sh"
file_name=${file_path##*/}
# remove shortest matching suffix pattern, everything until first '.'
name=${file_name%.*}
echo $name


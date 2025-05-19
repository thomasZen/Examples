#!/bin/bash

# File system
hostname  # name of the computer
pwd  # print current working directory
ls .  # show all files in current directory

# Documentatio
man ls  # manual page, type q to exit
ls --help  # help message, works for most commands, -h works, too.

# More file system
ls -lh .  # as above with more information (file permissions, file sizes, etc.)
ls *.sh # only list files with the ending `.sh`
echo "More file system commands"  # print something
echo "More file system commands" > a.txt  # > forwards output of command into file
mv a.txt b.txt  # move (or rename) file
rm b.txt  # remove a file
cd data/  # change directory

# Variables & Loops
location="Palmspring"
echo "Our retreat is in $location"

for i in "file system" "documentation" "loops"; do echo "Learning about $i."; done
# I have the retina lectures on this computer, let's look at all the pdf files
for i in ~/Desktop/RetinaLecture/Lecture*/*.pdf; do echo "File $i" ; done  # * matches everything
for f in ~/Desktop/RetinaLecture/Lecture*/*.pdf; do pdftotext $f ${f##*/}.txt ; done  # pdftotext converts a pdf file to text, ${f##*/} only keeps the file name
grep "retina" *.txt | wc -l  # search for the word "retina" in all files, pipe/forward the output to the command wc (word count) and count the lines (-l option)

# other helpful commands on cluster
htop  # processes running on cpu, exit with 'q' (for quit)
nvidia-smi  # for gpu monitoring
tmux  # terminal multiplexer; exit by typing 'exit' and then clicking enter, see: https://github.com/tmux/tmux/wiki/Getting-Started


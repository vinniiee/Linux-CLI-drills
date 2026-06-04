#!/bin/bash

#1. Creating the required directory structure

mkdir -p hello/one/two/three/four && mkdir -p hello/five/six/seven
echo "Created the directories structure"


tree 2>error.log
rm error.log
sleep 2


#2. Creating the required files

touch hello/one/a.txt
touch hello/one/b.txt
touch hello/five/six/c.txt
touch hello/one/two/d.txt
touch hello/one/two/three/e.txt
touch hello/five/six/seven/error.log
touch hello/one/two/three/four/access.log


echo 'Created the required files'

tree 2>error.log
rm error.log
sleep 2


#3. Delete all the files having the .log extension
find . -name "*.log" -exec rm {} \;
echo 'Removed all the files having the .log extension'

tree 2>error.log
rm error.log
sleep 2

#4. Add the following content to a.txt
# Unix is a family of multitasking, multiuser computer operating systems that derive from the original AT&T Unix, development starting in the 1970s at the Bell Labs research center by Ken Thompson, Dennis Ritchie, and others

find . -name 'a.txt' -exec sh -c 'echo "Unix is a family of multitasking, multiuser computer operating systems that derive from the original AT&T Unix, development starting in the 1970s at the Bell Labs research center by Ken Thompson, Dennis Ritchie, and others" > "$1"' _ {} \;

echo 'Added the required text to a.txt'

find . -name 'a.txt' -exec cat {} \;

tree 2>error.log
rm error.log
sleep 2

#5. Delete the directory named five

find . -name 'five' -exec rm -r {} \;
echo 'Deleted the directory named five'
tree 2>error.log
rm error.log
sleep 2

#6. Rename the one directory to uno

find . -name 'one' -exec mv {} uno \;

echo 'Renamed the one directory to uno'
tree 2>error.log
rm error.log
sleep 2

#7. Move a.txt to the two directory
find . -name 'a.txt' -exec sh -c 'mv "$1" "$(find . -name "two")" ' _ {} \; 2>error.log
rm error.log

echo 'Moved a.txt to the two directory'

tree 2>error.log
rm error.log
sleep 2


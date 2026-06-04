#!/bin/bash

#1. Creating the required directory structure

mkdir -p hello/one/two/three/four && mkdir -p hello/five/six/seven
echo "Task 1 : Created the directories structure"


#print update on shell
cd hello
tree 2>/dev/null
cd ..
sleep 2


#2. Creating the required files

touch hello/one/a.txt
touch hello/one/b.txt
touch hello/five/six/c.txt
touch hello/one/two/d.txt
touch hello/one/two/three/e.txt
touch hello/five/six/seven/error.log
touch hello/one/two/three/four/access.log


echo 'Task 2 : Created the required files'

#print update on shell

cd hello
tree 2>/dev/null
cd ..
sleep 2


#3. Delete all the files having the .log extension
find . -name "*.log" -exec rm {} \;
echo 'Task 3 : Removed all the files having the .log extension'

#print update on shell

cd hello
tree 2>/dev/null
cd ..
sleep 2

#4. Add the following content to a.txt
# Unix is a family of multitasking, multiuser computer operating systems that derive from the original AT&T Unix, development starting in the 1970s at the Bell Labs research center by Ken Thompson, Dennis Ritchie, and others

find . -name 'a.txt' -exec sh -c 'echo "Unix is a family of multitasking, multiuser computer operating systems that derive from the original AT&T Unix, development starting in the 1970s at the Bell Labs research center by Ken Thompson, Dennis Ritchie, and others" > "$1"' _ {} \;

echo 'Task 4 : Added the required text to a.txt'

find . -name 'a.txt' -exec cat {} \;

#print update on shell

cd hello
tree 2>/dev/null
cd ..
sleep 2

#5. Delete the directory named five

find . -name 'five' -exec rm -r {} \;
echo 'Task 5 : Deleted the directory named five'

#print update on shell

cd hello
tree 2>/dev/null
cd ..
sleep 2

#6. Rename the one directory to uno

find . -name 'one' -exec mv {} uno \;

echo 'Task 6 : Renamed the one directory to uno'

#print update on shell

cd hello
tree 2>/dev/null
cd ..
sleep 2

#7. Move a.txt to the two directory
find . -name 'a.txt' -exec sh -c 'mv "$1" "$(find . -name "two")" ' _ {} \; 2>/dev/null

echo 'Task 7 : Moved a.txt to the two directory'

#print update on shell

cd hello
tree 2>/dev/null
cd ..
sleep 2


#!/bin/bash

# ==================================================
# Task 1 - Create directory structure
# ==================================================

mkdir -p hello/one/two/three/four
mkdir -p hello/five/six/seven

printf "\nTask 1 : Created the directory structure\n\n"

tree hello 2>/dev/null

printf "\n#######################################\n\n"
sleep 2

# ==================================================
# Task 2 - Create required files
# ==================================================

touch hello/one/a.txt
touch hello/one/b.txt
touch hello/five/six/c.txt
touch hello/one/two/d.txt
touch hello/one/two/three/e.txt
touch hello/five/six/seven/error.log
touch hello/one/two/three/four/access.log

printf "\nTask 2 : Created the required files\n\n"

tree hello 2>/dev/null

printf "\n#######################################\n\n"
sleep 2

# ==================================================
# Task 3 - Delete all .log files
# ==================================================

find . -name "*.log" -exec rm {} \;

printf "\nTask 3 : Removed all files with .log extension\n\n"

tree hello 2>/dev/null

printf "\n#######################################\n\n"
sleep 2

# ==================================================
# Task 4 - Add content to a.txt
# ==================================================

find . -name 'a.txt' -exec sh -c '
echo "Unix is a family of multitasking, multiuser computer operating systems that derive from the original AT&T Unix, development starting in the 1970s at the Bell Labs research center by Ken Thompson, Dennis Ritchie, and others" > "$1"
' _ {} \;

printf "\nTask 4 : Added the required text to a.txt\n\n"

printf "Contents of a.txt:\n\n"

find . -name 'a.txt' -exec cat {} \;

printf "\n\n"

tree hello 2>/dev/null

printf "\n#######################################\n\n"
sleep 2

# ==================================================
# Task 5 - Delete directory 'five'
# ==================================================

rm -r hello/five

printf "\nTask 5 : Deleted the directory named five\n\n"

tree hello 2>/dev/null

printf "\n#######################################\n\n"
sleep 2

# ==================================================
# Task 6 - Rename one -> uno
# ==================================================

mv hello/one hello/uno

printf "\nTask 6 : Renamed 'one' to 'uno'\n\n"

tree hello 2>/dev/null

printf "\n#######################################\n\n"
sleep 2

# ==================================================
# Task 7 - Move a.txt into two
# ==================================================


mv hello/uno/a.txt hello/uno/two/a.txt


printf "\nTask 7 : Moved a.txt to the two directory\n\n"

tree hello 2>/dev/null

printf "\n#######################################\n\n"
sleep 2

#!/bin/bash

# Task 1 : Fetching the text from the given URL, using -s to prevent output from being printed on the shell and -L to follow redirects if there are any
curl -sL  https://raw.githubusercontent.com/bobdeng/owlreader/master/ERead/assets/books/Harry%20Potter%20and%20the%20Goblet%20of%20Fire.txt -o  hp.txt

echo "#######################################"
echo "Task 1 : Fetched text from the given URL and saved the output in hp.txt"
sleep 2


# Task 2 : Print the first three lines in the book

echo "#######################################"
echo 'Task 2 : Printing the first three lines of the text'
head -n 3 hp.txt
sleep 2


echo "#######################################"
echo 'Task 3 : Printing the last 10 lines in the book'
tail -n 10 hp.txt
sleep 2



echo "#######################################"   
echo 'Task 4 : How many times do the following words occur in the book?\n'

for word in Harry Ron Hermione Dumbledore
do
	count=$(grep -woi "$word" hp.txt | wc -l)
	echo "$word : $count"
done
sleep 2


echo "#######################################"   
echo 'Task 5 : Printing lines from 100 through 200 in the book'
sed -n '100,200p' hp.txt | less
echo 
sleep 2


echo "#######################################"   
echo 'Task 6 : Number of unique words present in the book : '
tr -cs [:alpha:] '\n' <  hp.txt | tr [:upper:] [:lower:]  | sort -u | wc -l
echo 


echo "#######################################"   
echo 'Task 7 : Browser PID & PPID'
echo "#######################################"   

ps -ax -o pid,ppid,comm | grep Safari

echo "#######################################"   
echo 'Task 8 : Kill browser'
echo "#######################################"   
pkill "Google Chrome"

echo "#######################################"   
echo 'Task 9 : Top CPU'
echo "#######################################"   
ps -Ao pid,%cpu,comm | sort -k2 -nr | head -4

echo "#######################################"   
echo 'Task 10 : Top Memory'
echo "#######################################"   
ps -Ao pid,%mem,comm | sort -k2 -nr | head -4

echo "#######################################"   
echo 'Task 11 : Start HTTP server on port 8000'
echo "#######################################"   
python3 -m http.server 8000

echo "#######################################"   
echo 'Task 12 : Stop HTTP server'
echo "#######################################"   
kill $(lsof -t -i:8000)

echo "#######################################"   
echo 'Task 13 : Start HTTP server on port 90'
echo "#######################################"   
sudo python3 -m http.server 90

echo "#######################################"   
echo 'Task 14 : All active connections'
echo "#######################################"   
lsof -i -P -n

echo "#######################################"   
echo 'Task 15 : PID on port 5432'
echo "#######################################"   
lsof -t -i:5432


echo "#######################################"   
echo 'Task 16 : Install vim, nginx and htop'
echo "#######################################"
brew install vim nginx htop

echo "#######################################"   
echo 'Task 17 : Uninstall nginx and remove its configuration files'
echo "#######################################"
brew uninstall nginx
rm -rf /opt/homebrew/etc/nginx


echo "#######################################"
echo 'Task 18 : Get the IP address of the machine'
echo "#######################################"
ipconfig getifaddr en0

echo "#######################################"
echo 'Task 19 : Get the IP address of google.com'
echo "#######################################"
nslookup google.com

echo "#######################################"
echo 'Task 20 : check if Internet is working using CLI'
echo "#######################################"
ping 8.8.8.8

echo "#######################################"
echo 'Task 21 : Where is the node and code command located?'
echo "#######################################"
which node
which code

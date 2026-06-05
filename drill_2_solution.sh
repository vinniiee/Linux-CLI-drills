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

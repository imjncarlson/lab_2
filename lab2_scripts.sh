#!/bin/bash
# Author : Jacob Carlson
# Date: 1/30/2019

# Problem 1 Code:

# This is where I accept the regular expression and the file
# name from the user using a prompt

#echo "Enter your regular expression: "
#read Theregex
#echo "Enter the file you would like to search: "
#read TheFile

# Here the regular expression is fed into the file and
# outputs and matches

#grep $Theregex $TheFile

# Problem 2 Code:
# This is where I hard coded some grep commands

FILENAME="regex_practice.txt"

# -------------------------------------------------------------------
# Count the number of phone numbers in regex_practice.txt

# For this expression I am just counting every string that
# contains a digit 0-9 and a -
REGEX1="[0-9]-"

echo "Number of Phone Numbers: "
#This is where the numbers are searched and counted
grep -c  $REGEX1 $FILENAME

# -------------------------------------------------------------------
# Count the number of emails in regex_practice.txt

# For this expression I am just counting every string that
# contains both a . and an @
REGEX2=".@"

echo "Number of Emails: "
#This is where the emails are searched and counted
grep -c $REGEX2 $FILENAME

# -------------------------------------------------------------------
# List all of the phone numbers in the "303" area code and
# store the results in "phone_results.txt"

# For this expression I am searching for all the strings
# that begin with "303-"
REGEX3="^303-"

# This is where the phone numbers are listed in the terminal
grep $REGEX3 $FILENAME
# This is where the phone numbers are stored in the txt file
grep -i $REGEX3 $FILENAME > phone_results.txt 


# -------------------------------------------------------------------
# List all of the emails from geocities.com and store the
# results in "email_results.txt"

# For this expression I just look for all strings ending
# in @geocities.com
REGEX4="@geocities.com$"

# This is where the emails are listed in the terminal
grep $REGEX4 $FILENAME
# This is where the emails are stored in the txt file
grep -i $REGEX4 $FILENAME > email_results.txt


# -------------------------------------------------------------------
# List all of the lines that match a command-line regular
# expression and store the results in "command_results.txt"

# This is where the user is prompted for the expression
echo "Enter your expression: "
read REGEX5

# List the matches
grep $REGEX5 $FILENAME
# Write the matches into a file
grep -i $REGEX5 $FILENAME > command_results.txt

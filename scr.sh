#!/bin/bash

# You have to change permission by this command [ sudo chmod +x scr.sh ]

# Comment

# Logging
#echo "--------------"

# Creating a variable
#name="Mabroor Ahmad"
#cool=true
#age=20
#height=170.87

# Creating a constant
#declare -r cool=true
#declare -r name="Mabroor Ahmad"
#declare -r age=20
#declare -r height=175.93

#a=23
#b=43

# Arithimatic operations
#let a=$((a+b))
#d=$((a-b))
#e=$((a*b))
#f=$((a/b))

# C++ style operation are supported
#let a++
#let --a
#let a+=10
#let a-=10
#let a*=10
#let a/=10

# Execute other programs in script
#python3 -c "print('From Python: ',$a+$b)"

# Cat to print multiline strings on screen
#cat<<END
#Hai how are you doing
#these are the vars i have 
#a = $a , b = $b 
#I hope you enjoy
#END

# Functions
#getDate() {
  #date
  #echo "getDate ran------"
  #return 0
#}

# Local variables in a function
#func() {
  #local a=234
  #echo "Func ran------"
  #return 2
#}

# Function with params
#pop() {
  #local elId=$1
  #local _name=$2

  ## returns back
  #echo "$elId is popped...."
  #echo "$_name is new el...."
#}

# Calling function
#func
#getDate

# Call function with params
#pop 3 'tommy'

# Catching returned value
#res=$(pop 5 'jhon')
#echo $res

# Reading user input
#read -p "Tell me something?:" someThing
#echo $someThing

# Program stops for some time 
# sleep 3

# If else statement
#read -p "Your age?" inAge
#if [ $inAge -eq 19 ]
#then
  #echo "Oooo Under 20 ha!"
#elif [ $inAge -ge 20 ]
#then
  #echo "You are the man!"
#else
  #echo "Sorry!"
#fi

# or 
#read -p 'Enter a number:' inNum
#if (( (( inNum % 2 )) == 0 )); then
  #echo "Number is even."
#else
  #echo "Number is odd"
#fi

# Strings check
# Null or empty check 
#str=""
#if [ "$str" ];then
  #echo "String is not null!"
#else
  #echo "String is null! or empty"
#fi 

# equality check
#str="Hai"
#str1="ai"
#if [ "$str" == "$str1" ];then
  #echo "Strings are equal"
#else
  #echo "Strings are not equal"
#fi

# Logical operators 
#if (( (( 4 == 4 )) && (( 5 != 4 )) ));then
  #echo "Ok are you kidding me!"
#fi

# Making a folder if it does not exists
#read -p 'Enter folder name:' fname
#if [ -d $fname ];then
  #echo "Directory already exists!"
#else
  #mkdir $fname
  #echo "Created directory $fname"
#fi

# or 

# If file does not exists create one
#if [ -f text.txt ];then
  #echo "File exists!"
#else
  #touch text.txt
  #echo "File created!"
#fi

# If file exists then delete it 
#if [ -f text.txt ];then
  #echo "Deleteing file!"
  #rm text.txt
#else 
  #echo "File already deleted!"
#fi

# Create a file and open in vim
#if [ -f text.txt ];then
  #echo "Opening existing file"
  #vim text.txt 
#else
  #echo "Creating and opening file"
  #touch text.txt && vim text.txt 
#fi

# Check the file test_file1 and test_file2
	#file1="./test_file1"
	#file2="./test_file2"

	#if [ -e "$file1" ]; then
		#echo "$file1 exists"

		#if [ -f "$file1" ]; then
			#echo "$file1 is a normal file"
		#fi

		#if [ -r "$file1" ]; then
			#echo "$file1 is readable"
		#fi

		#if [ -w "$file1" ]; then
			#echo "$file1 is writable"
		#fi

		#if [ -x "$file1" ]; then
			#echo "$file1 is executable"
		#fi

		#if [ -d "$file1" ]; then
			#echo "$file1 is a directory"
		#fi

		#if [ -L "$file1" ]; then
			#echo "$file1 is a symbolic link"
		#fi

		#if [ -p "$file1" ]; then
			#echo "$file1 is a named pipe"
		#fi

		#if [ -S "$file1" ]; then
			#echo "$file1 is a network socket"
		#fi

		#if [ -G "$file1" ]; then
			#echo "$file1 is owned by the group"
		#fi

		#if [ -O "$file1" ]; then
			#echo "$file1 is owned by the userid"
		#fi

	#fi

	#4. With extended test [[ ]] you can use Regular Expressions
	##!/bin/bash

	#read -p "Validate Date : " date

	#pat="^[0-9]{8}$"

	#if [[ $date =~ $pat ]]; then
		#echo "$date is valid"
	#else
		#echo "$date is not valid"
	#fi

	#5. # Read multiple values
	##!/bin/bash

	#read -p "Enter 2 Numbers to Sum : " num1 num2

	#sum=$((num1+num2))

	#echo "$num1 + $num2 = $sum"

	## Hide the input with the s code
	#read -sp "Enter the Secret Code" secret

	#if [ "$secret" == "password" ]; then
		#echo "Enter"
	#else
		#echo "Wrong Password"
	#fi

	#6. You can set what separates the values with IFS
	##!/bin/bash

	## Store the original value of IFS
	#OIFS="$IFS"

	## Set what separates the input values
	#IFS=","

	#read -p "Enter 2 numbers to add separated by a comma" num1 num2

	## Use the parameter expansion ${} to substitute any whitespace
	## with nothing
	#num1=${num1//[[:blank:]]/}
	#num2=${num2//[[:blank:]]/}

	#sum=$((num1+num2))

	#echo "$num1 + $num2 = $sum"

	## Reset IFS to the original value
	#IFS="$OIFS"

	## Parameter expansion allows you to do this
	#name="Derek"
	#echo "${name}'s Toy"

	## The search and replace allows this
	#samp_string="The dog climbed the tree"
	#echo "${samp_string//dog/cat}"

	## You can assign a default value if it doesn't exist
	#echo "I am ${name:-Derek}"

	## This uses the default if it doesn't exist and assigns the value
	## to the variable
	#echo "I am ${name:=Derek}"
	#echo $name

	#7. Use case to when it makes more sense then if
	##!/bin/bash

	#read -p "How old are you : " age

	## Check the value of age
	#case $age in

	## Match numbers 0 - 4
	#[0-4])
		#echo "To young for school"
		#;; # Stop checking further

	## Match only 5
	#5)
		#echo "Go to kindergarten"
		#;;

	## Check 6 - 18
	#[6-9]|1[0-8])
		#grade=$((age-5))
		#echo "Go to grade $grade"
		#;;

	## Default action
	#*)
		#echo "You are to old for school"
		#;;
	#esac # End case

	#8. Ternary Operator performs different actions based on a condition
	##!/bin/bash
	#can_vote=0
	#age=18

	#((age>=18?(can_vote=1):(can_vote=0)))
	#echo "Can Vote : $can_vote"


#IV. Parameter Expansions and Strings

	#1. Strings
	##!/bin/bash

	#rand_str="A random string"

	## Get string length
	#echo "String Length : ${#rand_str}"

	## Get string slice starting at index (0 index)
	#echo "${rand_str:2}"

	## Get string with starting and ending index
	#echo "${rand_str:2:7}"

	## Return whats left after A
	#echo "${rand_str#*A }"

#V. Looping

	#1. While Loop
	##!/bin/bash

	#num=1

	#while [ $num -le 10 ]; do
		#echo $num
		#num=$((num + 1))
	#done

	#2. Continue and Break
	##!/bin/bash

	#num=1

	#while [ $num -le 20 ]; do

		## Don't print evens
		#if (( ((num % 2)) == 0 )); then
       #num=$((num + 1))
       #continue
     #fi

     ## Jump out of the loop with break
     #if ((num >= 15)); then
       #break
     #fi

		#echo $num
		#num=$((num + 1))
	#done

	#3. Until loops until the loop is true
	##!/bin/bash

	#num=1

	#until [ $num -gt 10 ]; do
		#echo $num
		#num=$((num + 1))
	#done

	#4. Use read and a loop to output file info
	##!/bin/bash
    #while read avg rbis hrs; do

      ## printf allows you to use \n
      #printf "Avg: ${avg}\nRBIs: ${rbis}\nHRs: ${hrs}\n"

    ## Pipe data into the while loop
    #done < barry_bonds.txt

    #5. There are many for loop options. Here is the C form.
    ##!/bin/bash
    #for (( i=0; i <= 10; i=i+1 )); do
      #echo $i
    #done

    #6. We can cycle through ranges
    ##!/bin/bash
    #for i in {A..Z}; do
      #echo $i
    #done

    #7.

#VI. Arrays

	#1. Bash arrays can only have one dimension and indexes start at 0

	#2. Messing with arrays
	##!/bin/bash

	## Create an array
	#fav_nums=(3.14 2.718 .57721 4.6692)

	#echo "Pi : ${fav_nums[0]}"

	## Add value to array
	#fav_nums[4]=1.618

	#echo "GR : ${fav_nums[4]}"

	## Add group of values to array
	#fav_nums+=(1 7)

	## Output all array values
	#for i in ${fav_nums[*]}; do
		#echo $i;
	#done

	## Output indexes
	#for i in ${!fav_nums[@]}; do
		#echo $i;
	#done

	## Get number of items in array
	#echo "Array Length : ${#fav_nums[@]}"

	## Get length of array element
	#echo "Index 3 length : ${#fav_nums[3]}"

	## Sort an array
	#sorted_nums=($(for i in "${fav_nums[@]}"; do
		#echo $i;
	#done | sort))

	#for i in ${sorted_nums[*]}; do
		#echo $i;
	#done

	## Delete array element
	#unset 'sorted_nums[1]'

	## Delete Array
	#unset sorted_nums


#VII. Positional Parameters

	#1. Positional parameters are variables that can store data on the command line in variable names 0 - 9

		#a. $0 always contains the path to the executed script

		#b. You can access names past 9 by using parameter expansion like this ${10}

	#2. Add all numbers on the command line
	##!/bin/bash

	## Print the first argument
	#echo "1st Argument : $1"

	#sum=0

	## $# tells you the number of arguments
	#while [[ $# -gt 0 ]]; do

		## Get the first argument
		#num=$1
		#sum=$((sum + num))

		## shift moves the value of $2 into $1 until none are left
		## The value of $# decrements as well
		#shift
	#done

	#echo "Sum : $sum"


#echo "--------------"


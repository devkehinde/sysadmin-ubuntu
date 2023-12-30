#!/usr/bin/bash

NUM_REQUIRED_ARGS=2
num_args=$#

Do we have two arguments ?
if [ $num_args -lt NUM_REQUIRED_ARGS ]; then
echo "Not enough arguments. Call this script with ${0} <name> <number>"
exit 1
fi

# Set variables, using argument
name=$1
number=$2
echo "Your first two arguments were: $1 $3"

# for loops: iteration, string interpolation
echo "You ran this program with ${num_args} arguments. Here they are:"

# for arg in "$@"; do
# echo "$arg"
# done

# spaced() {
#     #parameters are not named; they are positional
#     echo
#     echo "############"
#     echo "$1"
#     echo "#############"
#     echo
# }

# define a function
# function javatest() {
#     #test and conditionals
#         if [[ $number -eq 99]]; then
#             spaced "You win! You guessed bthe secret number! It's amaaaaaaaaaaaaazsiiiiiiingg"
#         elif (( $number < 10)); then
#             spaced "You're a courageos one. I like that about you. Unfortunately, you must still DIEE"

#         # set a variable interactively
#         echo "Hi ${name}, to avert a horrible death, please enter the password."
#         read password

#         if [["$password" != "Java" ]]; then
#         spaced "Well, at least you're not a Java Programming sypathizer, you can go now."
#         else
#         spaced "DIIEEEEEEEEEEE! Actually, nevermind. Writing Java is enough \ of a hellish punishment. You are free to leave. Take a biscuit one \ way out."
#         fi
#     fi
# }


#################################
sudo echo "Hello"

which bash
which sudo

echo $PATH

## APPEND TO PATH
PATH=$PATH:/somepath

PATH=$PATH:/root:$PATH



#!/usr/bin/bash

# NUM_REQUIRED_ARGS=2

# Do we have two arguments ?
# if [[ $# =lt NUM_REQUIRED_ARGS ]]; then
# echo "Not enough arguments. Call this script with ./{$0} <name> <number>"
# fi

##helpers
#&& and
# || or

# echo "hi" || echo "This wont happen."
# $(ls nonexistencefile) || echo "This happens if the first thing fails"
# echo ${pwd} && echo "This ALSO happens!

# str1="a"
# str2="b"

# # Equality (= and !=) (ASCII comparison)
# if [[ "$str1" = "$str2"]]; then
# echo `${str1} is equal to ${str2}!`
# fi

# if [[ "$str1" != "$str2"]]; then
# echo `${str1} is not equal to ${str2}!`
# fi

# Not Null (-n) or Zero length (-z)
# notnully="this is something (not nothing)"
# nully=""

# if [ -n "$notnully" ]; then
# echo "This is not all nully"
# fi

# if [ -z "$nully" ]; then
# echo "nully/zeroooo (length)"
# fi

# ## INTEGERS
# int1=1
# int2=7

# # equal, not equal
# if [[ $int1 -eq $int2]]; then
# echo `${int1} is equal to ${int2}!`
# fi

# if [[ $int1 -ne $int2]]; then
# echo `${int1} is NOT equal to ${int2}!`
# fi

# ## -gt, -lt, -ge, -le

# if [[ $int1 -gt $int2]]; then
# echo `${int1} is equal to ${int2}!`
# fi

# if [[ $int1 -le $int2]]; then
# echo `${int1} is less than equal to ${int2}!`
# fi

# # string comparison operators can be used double parentheses
# if ((  $int1 == $int2)); then
# echo `${int1} is equal to ${int2}!`
# fi

##(())
# == Is Equal to
# != Is Not Equal to
# < Is Less than
# <= Is less Than or Equal to
# > Is Greater than
# >= Is Greater Than or Equal to

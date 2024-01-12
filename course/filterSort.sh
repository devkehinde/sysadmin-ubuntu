ls /bin
ls /bin | sort -r

## sorting by size
ls -lh
ls -lh | sort
ls -lh | sort -r
## not perfect for doing sort based on size

man
-t
tr #translate

ls -lh | tr -s " " " "
ls -lh | tr -s " " ","
ls -lh | tr -s " " ","
ls -lh | tr -s " " "    " #ctrl v tab

ls -lh | tr -s " " "    " #ctrl v tab
ls -lh | tr -s " " "    " | sort -r -t "    " -k 9

## incorporate cut to remove column you dont wantls -lh | tr -s " " "    " | sort -r -t "    " -k 9

ls -lh | tr -s " " "    " | sort -r -t "    " -k 9 | cut -d "   " -f 5,9

##
df -h
df -h | tr -s " " "       " | tr -s " " "    " | cut -f 5,6 -d "    " | sort -r

#############################
## GREP
man grep
man 7 regex

df -h | grep sda

cat <somefile.txt> | grep <any word>

## using regex to find 2 string
cat cal-2020.txt | grep Halloween Christmas
#above wont work

cat cal-2020.txt | grep -E "Halloween|Christmas"

df -h | egrep "sda[1,5,7]"

cat cal-2020.txt | grep "^1[0-2]"

dmesg | egrep "sda[0-9]|sda "
dmesg | egrep "sda[0-9]|sda"
dmesg | egrep "sda[0-9]|sda\]"





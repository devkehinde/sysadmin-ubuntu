ls -l <file name>

-rw-rw-r--
## the first dash (-) is the type of flle, it could be a directory, regular file, symbolic link oe any other posibilities.
rw- # is the user permission in this case it is read write.
rw- # is the group permission  assigneed to the file. in this case it is read write also.

r--  # means anyone who has access to the file can read it.

#user #group #other
u = user
g = group
o = others

# r-- to ---
chmod o-r filename.txt

#changing permission for all groups
chmod a-rwx <nameofFile.txt>
chmod a+rwx <nameofFile.txt>
- is removing permission
+ is adding permission
= overwrite anyexisting permission
chmod ug+rw <nameOfFile.txt>

## HIDDEN FILES
. infront of the file wil hide it
ls wont show it
ll will show is

ls -a will show hidden file

## clearing your history
history -c

## COPYING FILE
man cp

cp -i <filetocopy> <copydestinantion>
#if the file exist there will be a prompt to overwrite. 

cp -r #to copy recursively.

mv to move and to rename


## soft link and hard link
ls -li

th starting numeric number is called inode like and\ index
df -i

link can be categorized as shortcut in windows
ln <nameOffile> <nameOflink>
ln -s <nameOffile> <nameOflink> #soft link


## FIND AND LOCATE
find is a power powerful tool to find file based on many properties of the same file

find <path> <options>
find <path> -name myfile.txt
find / -name myfile.txt
find / -name myfile.txt 2> devnull
find / -name "myfile*" 2> devnull
find / -name myfile/* 2> devnull

locate myfile.txt
sudo updatedb


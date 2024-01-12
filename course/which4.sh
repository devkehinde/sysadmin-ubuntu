# The which command in Linux is used to locate the executable file associated with a given command. It prints the full path of the executable file(s) that would be executed if you run a particular command in the current environment.

# Here's the basic syntax:
which command_name
which ls

# The output might be something like /bin/ls, indicating that the ls command is located in the /bin directory.

# If a command is not found, which typically does not produce any output.

# Keep in mind that which searches directories listed in the PATH environment variable. If a command is in a directory not included in the PATH, which might not find it.

type <name of command>

locate <file name>

sudo apt install locate -y

locate uname

sudo updatedb

locate uname

###
echo $PATH

# whereis vim
# The whereis command in Linux is used to locate binary, source, and manual page files for a command. It is typically used to find the locations of executable files, source code, and documentation related to a particular command.

# Here are the examples you provided:
whereis uname

# This command specifically searches only for the binary executable file of vim. The -b option restricts the search to binaries.
whereis -b vim

# This command searches for the manual pages (documentation) related to the vim command. The -m option restricts the search to manual pages.
whereis -m vim

# This command searches for the source code related to the vim command. The -s option restricts the search to source files.

whereis -s vim

# It's important to note that the availability of source code and manual pages may depend on how the software package was installed on your system. Additionally, the effectiveness of the whereis command can vary between different Linux distributions and package management systems.

which vim
which vi

which uname

which -a vim

##### FIND
# The find command in Linux is a powerful utility used for searching and locating files and directories in a file system. It is capable of searching based on various criteria such as file name, file type, size, and modification time.

# Here's the basic syntax of the find command:

find starting_directory options criteria

# Find Files by Name:
find / -name <nameOfFile> #case sensitive

find ~/ -name <nameoffile> 

find / -name <nameoffile> 2> /dev/null

find / -name *.pdf 2> /dev/null

#  Find Files by Type:
find /path/to/search -type f

# Find Directories:
find /path/to/search -type d

# Find Files Larger Than a Certain Size:
find /path/to/search -size +5M

# Find Files Modified Within the Last N Days:
find /path/to/search -mtime -7

find /  -size 20M # 20G +20G +100 2> /dev/null

find ~/ .perm /g=w, o=w

#################################
# The df command in Linux is used to display information about disk space usage on file systems. When you run df without any arguments, it provides information about the disk space usage of all mounted file systems.

# Here's the basic syntax of the df command:

# df [options] [file...]
# Commonly used options with df:

# -h or --human-readable: Print sizes in human-readable format (e.g., KB, MB, GB).
# -T or --print-type: Display the file system type.
# -t or --type: Limit the display to specific file system types.
df
df -h
df -t ext4

# The whoami command in Linux is used to print the current user's username to the terminal. When you run whoami, it returns the effective user ID of the current user.

# Here's a simple example:

whoami

# The command will output the username of the user currently logged in. It's a quick way to check the identity of the user running a particular shell session.
whoami
ls kehinde
find /share -group kehinde
find /share -user kehinde
find /share -gid 2343
find /share -uid 1000

#######
sudo find /etc -name ssh
sudo find /etc -maxdepth 1 -name ssh

##############
# The grep command in Linux is a powerful tool for searching and matching patterns in text. It's commonly used to find lines in files that match a specified pattern or regular expression. Here's a basic syntax:

grep [options] pattern [file...]

# pattern: The text or regular expression you want to search for.
# file...: Optional. The file or files in which to search. If not specified, grep reads from standard input.
# Here are a few examples:

grep "search_text" file.txt

This command searches for the specified text ("search_text") in the file "file.txt".

2. Case-Insensitive Search:

grep -i "pattern" file.txt

The -i option makes the search case-insensitive.

3. Search for Whole Words:

grep -w "word" file.txt

The -w option ensures that only whole words are matched.

4. Recursive Search in Directories:

grep -r "pattern" /path/to/directory

The -r option performs a recursive search in the specified directory and its subdirectories.

5. Invert Match (Exclude Lines):

grep -v "pattern" file.txt

The -v option inverts the match, displaying lines that do not contain the specified pattern.

6. Count Number of Matches:

grep -c "pattern" file.txt

The -c option counts the number of lines that match the pattern.

7. Display Line Numbers:

grep -n "pattern" file.txt

The -n option shows line numbers along with matching lines.

# These are just a few examples, and grep has many more options and capabilities. It's a versatile command-line tool widely used for text searching and processing in Linux.

cat <nameOfFile> | grep <sometext>

grep -r "<some text>" -/
grep -r "[M,m]ina" ./ #case insensitive
grep -ri "Dracula" -/Documents
grep -ril "Dracula" -/Documents
grep -ril "Dracula" / 2> /dev/null

grep -vi "look" ./test.txt #search for file that does not include look

##HARD LINK AND SOFT LINK

In Linux, there are two types of links: hard links and soft links (symbolic links). Both types allow you to create references to files, but they behave differently in terms of how they point to the original file and how they are affected by changes.

1. Hard Links:
Definition: A hard link is an additional reference to an existing inode (data structure on the file system that stores information about a file). Multiple hard links can exist for a single inode.

Creation: You can create a hard link using the ln command:

ln original_file hard_link
File System: All hard links to a file share the same inode and point to the same data blocks on the disk.

Effect of Changes: If you modify the content of one hard link, the changes are reflected in all other hard links because they point to the same inode.

Directories: Hard links cannot be created for directories.

2. Soft Links (Symbolic Links):
Definition: A soft link (symbolic link or symlink) is a separate file that contains a path to another file or directory. It's a pointer to the target file or directory.

Creation: You can create a symbolic link using the ln command with the -s option:

ln -s target_file symbolic_link
File System: Symbolic links have their own inode and point to the path of the target file or directory.

Effect of Changes: If you modify the content of the target file, the changes are reflected in the symbolic link. However, if you move or delete the target file, the symbolic link becomes broken (dangling link).

Directories: Symbolic links can point to directories.

Summary:
Hard links are references to the same inode, sharing the same data blocks.
Soft links are separate files pointing to the path of the target file or directory.
Hard links cannot cross file systems, while symbolic links can.
If the target of a symbolic link is deleted or moved, the link becomes broken.
Choosing between hard and soft links depends on the specific use case and requirements of the task at hand.
ln dracula.txt bram-stocker-dracular.txt

## softlink
ln -s dracula.txt bram-stocker-dracular.txt

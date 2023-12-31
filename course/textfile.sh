nano <nameoftextfile>
ctrl G ## help

alt > or alt < (moving from one buffer to another)

ctrl K | ctrl U (cut and paste)

alt A (highlight)
alt ^ or alt shift ^ (copy)


## FIND AND REPLACE TEXT
ctrl W (where is?)
alt W (search)
ctrl \ (search and replace)
alt r

## vim
vi
sudo apt install vim
the first interface is the command mode to enter the type mode 
i ESC to leave

: (true command mode)
d (delete the line)

vim <filename>
i <insert mode>
ESC :wq (to quit)

:q! (undo and save)

:1
:1000
:set number

vim -/.vimrc (cim config file)

##deleting a line 
:20,30d

hjkl for navigation on vim(up, down, left, right)

y (copy)
yy 
p (paste)

dd (delete)

ZZ to quit(save and exit)

:help (help)

## search and replace in vim
##in vim it is case sensitive
##in vim 
/ <name of string>

##from the terminal
vim +/<name of string> <name of file>

##repeat search
/
or
n (next)| N(prev) (forward and backward)

// (search and replace)
## the above command sometine doesnt work for newer version of vim

:s/<stringtoreplace>/<string>
##just single line 

## for all the lines
:1,1000s/<stringtoreplace>/<string>

##reload from disk, changes will be gone (undo changes)
:e!



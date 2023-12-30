## script command
script script
script # do some stuff 
script echo "HI"
# ctrl D = end script
script exit
script rm typescript

script script myscript.log
script # do more stuff
script exit
script less myscript.log

## REAL TIME RECORDINGS

script script myscript.log --timing=time.log
script htop
script netstat -tuplin
script echo "HI again"
script exit

script less myscript.log

# script scriptreplay -s myscript.log -t time.log
script scriptreplay -s myscript.log --timing=time.log

script less time.log
script less myscript.log

# script -c runs a single command and save the command in a log

script script -c 'netstat -tuplin' netstat.log

script less netstat.log

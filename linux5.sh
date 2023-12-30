#ALIAS IN SHELL

alias lr="ls -lra"
#checking alias
alias

alias | grep lr

#new shell
nano bashrc
alias lr="ls -lra"

#unset 
unalias lr

#LINUX COMMAND YOU MUST KNOW
lsof  = list of open command

lsof | head

netstat -tuplin

ls /var/log/nginx | grep nginx
ls /var/log/nginx

lsof /var/log/nginx-access.log

2:56 Which processes have this file open?
lsof /var/log/nginx-error.log

4:49 Which files does process X have open?
lsof -p 1
lsof -p `pgrep ABC`

7:08 Where is the binary for this process?
lsof -p ABC | grep bin
lsof -p 1192 | grep bin
lsof -p 1192 | grep .so #share object
lsof -p 1192 | grep log
lsof -u kehinde



7:44 Which shared libraries is this program using? (manually upgrading software, i.e. openssl)
lsof -p PID | grep .so

8:03 Where is this thing logging to?
lsof -p ABC | grep log

8:40 Which processes still have this old library open?
lsof grep libname.so

9:45 Which files does user XYZ have open?
lsof -u XYZ
lsof -u XYZ -i # network only

10:25 Which process is listening on Port X (or using Protocol Y)?
lsof -i :80
lsof -i tcp
lsof -i udp

df -h # to see free space

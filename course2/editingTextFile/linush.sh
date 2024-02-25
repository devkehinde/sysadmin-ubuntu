VIM and NANO
vim = Vi improved.

vi is everywhere
install vim

vim has 3 main mode
1.insert mode
2.Command mode
3.last line mode

commmand mode the the default mode

enter into insert mode by pressing

[i]
[esc]
[:] lastline mode
[esc]
[i]

to quit :wq


navigate [h] [j] [k] [l]
you can also use the arrow keys.

[w] = move right one word
[b] = move back one word
[e] = end of current word

0 = move back to the begginning of the line.

$ = move to the end of the line

G = move to the end of the file.

gg = move to the beginning of the file.

dd = to delete line
dw = to delete a word

d0 = delete from where we are to the first line

d$ = delete from where we are to the end of the line

dG = will delete to the end of the file.

dgg = will delete to the beginning of the file.

u = undo
## search
/<the text you want to search>
n- next, N =previous

##find replace
:%s/cool/awesome/gc
##changing cool to awesome globally

## QUIT and SAVE
:q = quit
:q! = force quit
:w = write(save)
:wq = write then quit.

NANO

nano text.txt

crtl g = help menu
ctrl o = write/ insert changes / edit

ctrl w = find
ctrl k = cut
ctrl u = uncut

alt shift $ = to wrap a text

go to the beginning= alt \
go to the end = alt /

back = /
forward = \

ctrl \ < word you want to search> <word you want to replace with it>

you'd be prompted each time unless to type [a] for all.

## important practice
before you edit make a copy
cp /etc/ssh/sshd_config ~/

cp sshd_config sshd_config.0

vim sshd_config

diff sshd_config sshd_config.0
cp sshd_config sshd_config.1
mv sshd_config.0 sshd_config
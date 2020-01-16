# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#Path for embedded systems compilers
export PATH=$PATH:$HOME/Embedded/gcc-arm-none-eabi-5_4-2016q3/bin


# adds by Anaconda3 installer
alias condainit='export PATH="/home/Sesha/anaconda3/bin:$PATH"'

# alias for anaconda python and ipython
alias apy="/home/Sesha/anaconda3/bin/python"
alias ipy="/home/Sesha/anaconda3/bin/ipython"
alias apip="/home/Sesha/anaconda3/bin/pip"
alias jupqt="/home/Sesha/anaconda3/bin/jupyter qtconsole --ConsoleWidget.font_size=15"
# alias for conda
alias conda="/home/Sesha/anaconda3/bin/conda"


# alias for ls
alias lm="ls -ltr --block-size=M"
alias lk="ls -ltr --block-size=K"

# alias for vimx
alias vx="vimx"

# Set vi mode in the shell
set -o vi

# export TERM="xterm-256color"

#Aliases
alias barc="vx ~/.bashrc"
alias upsource="source ~/.bashrc"
alias upgrade="sudo dnf upgrade -y"

alias zotero="/home/Sesha/Zotero/Zotero_linux-x86_64/zotero"
alias courses="cd /home/Sesha/Documents/Purdue/courses/Spring2020"
alias journ="cd /home/Sesha/Documents/Journals/2020"
alias gdas="vx /home/Sesha/Documents/Journals/gdas.org"
alias hwang="cd /home/Sesha/Documents/Purdue/ProfHwang"
alias ctrlppl="vx /home/Sesha/Documents/Journals/controls_people.org"
alias convos="cd /home/Sesha/Documents/Journals/convos"
alias rsrch="cd /home/Sesha/Documents/Research"
alias whtdng="cat ~/.whtdng.txt"
alias convprbs="convos && vx problems.org"
alias anx="vx /home/Sesha/Documents/Journals/anx.txt"

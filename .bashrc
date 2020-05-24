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
alias mbd="cd /home/Sesha/Documents/Journals/MbDa && vx MbData"
alias lnc="vx /home/Sesha/Documents/Journals/lnc/lnc.txt"
alias rqt="python /home/Sesha/Documents/Journals/lnc/lnc.py"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/Sesha/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/Sesha/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/Sesha/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/Sesha/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#alias for conda activate
alias cact="conda activate"
#Alias for jupyter console when conda is not activated
alias jupqt="/home/Sesha/anaconda3/bin/jupyter qtconsole --ConsoleWidget.font_size=15"

# Run Matlab
alias matlab="bash /home/Sesha/matlab/MATLAB/2019b/bin/matlab"
alias nmat="matlab -nodesktop"

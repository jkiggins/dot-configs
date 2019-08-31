  
if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi;

fsec(){
	grep -Fxv -f $2 $1
}

proj(){
  PROJ_DIR=~/ext/projects
  cd ${PROJ_DIR}/$(ls -a -p ~/ext/projects/ | grep -e "\/" | grep $1)
}

up(){
  if [ ! -z "$1" ]; then
    for ((i=0; i<$1; i++)); do
      cd ..
    done
  else
      cd ..
  fi;
}

pup(){
  if [ ! -z "$1" ]; then
    pushd .
    up $1
  fi;
}

div(){
  for ((i = 0; i < $COLUMNS; i++)); do
    printf "-"
  done
  echo
}

docs(){
    DOC_PATH=~/user/docs
     vim -c 'set syntax=text' -M ${DOC_PATH}/$(ls -a -p $DOC_PATH | grep -v -e "\/" | grep $1)
}


pd(){
  pushd $@ > /dev/null
}

pd-(){
  popd > /dev/null
}

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# Add an "alert" alias for long running commands.  Use like so:
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias dtcd='dtc -I dtb -O dts'
alias dtcc='dtc -I dts -O dtb'
alias i3-config='vim ~/.config/i3/config'
alias essh='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'
alias essh-copy-id='ssh-copy-id -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'
alias escp='scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'
alias watson-swap='watson stop && watson start'
alias clip='xclip -selection clipboard'
alias date-fn='date +"%m-%d-%y_%H%M%S"'
alias whats-myip="host myip.opendns.com resolver1.opendns.com | grep \"has address\" | awk -F' ' '{print $4;}'"

alias alphanum='tr -dc _A-Z-a-z-0-9 < /dev/urandom | head -c $1'

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias pmc='plasmashell -ap org.kde.plasma.mediacenter --windowed'
alias nce='kde5-nm-connection-editor'
alias Data='cd /run/media/g33kyaditya/Data'
alias Entertainment='cd /run/media/g33kyaditya/Entertainment'
alias topcoder='javaws.itweb http://www.topcoder.com/contest/arena/ContestAppletProd.jnlp && disown'
# ccache
export CCACHE_DIR="/home/g33kyaditya/.ccache"
export PATH="/usr/lib/ccache:$PATH"

pu_login() { 
   curl -d "user=$1&password=$2" --dump-header headers https://securelogin.arubanetworks.com/cgi-bin/login?cmd=login 
}

restart_plasmashell() {
    kbuildsycoca5 && kquitapp5 plasmashell && kstart5 plasmashell
}

uiet_login() { 
   curl -d "username=$1&password=$2&producttype=0&mode=191&a=1442488510916" --dump-header headers http://192.168.50.10:8090/login.xml 
}

if [ -f ~/.agent.env ] ; then
    . ~/.agent.env > /dev/null
    if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
        echo "Stale agent file found. Spawning new agent… "
        eval `ssh-agent | tee ~/.agent.env`
        ssh-add
    fi 
else
    echo "Starting ssh-agent"
    eval `ssh-agent | tee ~/.agent.env`
    ssh-add
fi

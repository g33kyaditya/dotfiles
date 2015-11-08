# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias pmc='plasmashell -ap org.kde.plasma.mediacenter --windowed & disown'
alias nce='kde5-nm-connection-editor'

# ccache
export CCACHE_DIR="/home/g33kyaditya/.ccache"
export CC="ccache gcc"
export CXX="ccache g++"
export PATH="/usr/lib/ccache:$PATH"

export XDG_CONFIG_HOME=$HOME/.config

PERSONAL=$XDG_CONFIG_HOME/personal

export GOPATH=$HOME/go

source $PERSONAL/env
for i in `find -L $PERSONAL`; do
    source $i
done

tmux has-session -t all
if [ $? != 0 ]

then

source-file ~/.tmux.conf

tmux new-session -s all -n vim -d

tmux new-window -n pad -t all
tmux send-keys -t all:2 '' C-m

tmux new-window -n diary -t all
tmux send-keys -t all:3 'calcurse' C-m

tmux new-window -n todo -t all
tmux send-keys -t all:4 'tudu' C-m

tmux new-window -n talk -t all
tmux send-keys -t all:5 'finch' C-m

tmux new-window -n ask -t all
tmux send-keys -t all:6 'weechat-curses' C-m

tmux new-window -n check -t all
tmux send-keys -t all:7 'htop' C-m

tmux select-window -t all:1

fi

tmux attach -t all


















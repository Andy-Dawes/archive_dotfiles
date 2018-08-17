tmux has-session -t all
if [ $? != 0 ]

then

source-file ~/.tmux.conf


tmux new-session -s all -n pad -d

tmux new-window -n mail -t all
tmux send-keys -t all:2 'alpine' C-m

tmux new-window -n find -t all
tmux send-keys -t all:3 'ranger' C-m

tmux new-window -n read -t all
tmux send-keys -t all:4 'newsbeuter' C-m

#tmux new-window -n ask -t all
#tmux send-keys -t all:6 'weechat-curses' C-m

tmux new-window -n check -t all
tmux send-keys -t all:5 'htop' C-m

tmux select-window -t all:2

fi

tmux attach -t all

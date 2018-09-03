tmux has-session -t all
if [ $? != 0 ]

then

source-file ~/.tmux.conf

tmux new-session -s all -n pad -d


 tmux new-window -n vim -t all
 tmux send-keys -t all:2 'vim' C-m

 tmux new-window -n projects -t all
 tmux send-keys -t all:3.1 'taskell .tkl-gst-proposal.md' C-m
 tmux split-window -v -p 50 -t all
 tmux send-keys -t all:3.2 'taskell .tkl-gst-genesis.md' C-m

 tmux new-window -n find -t all
 tmux send-keys -t all:4 'ranger' C-m

 tmux new-window -n read -t all
 tmux send-keys -t all:5 'newsboat' C-m

 # tmux new-window -n talk -t all
 # tmux send-keys -t all:5 'finch' C-m
 # tmux split-window -h -p 25 -t all
 # tmux send-keys -t all:5.2 'rad' C-m

 tmux new-window -n ask -t all
 tmux send-keys -t all:6 'weechat' C-m

 tmux new-window -n check -t all
 tmux send-keys -t all:7.1 'gotop' C-m
 tmux split-window -h -p 50 -t all
 tmux send-keys -t all:7.2 'htop' C-m

 # tmux new-window -n fish -t all
 # tmux send-keys -t all:9 'asciiquarium' C-m

 tmux select-window -t all:4

fi

tmux attach -t all

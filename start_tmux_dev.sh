#!/bin/bash

tmux new-session -d -s dev

tmux new-window -n main

# -d to prevent current window from changing
tmux new-window -n src -d
tmux send-keys -t src 'cd /home/cheng/CLionProjects/' C-m

tmux new-window -d -n ipython 
tmux send-keys -t ipython 'cd /home/cheng/PycharmProjects/' C-m
tmux new-window -d -n R
tmux send-keys -t R 'cd /home/cheng/RProjects/' C-m

tmux new-window -d -n md
tmux send-keys -t md 'cd /home/cheng/Download' C-m

tmux new-window -d -n felix
tmux send-keys -t md 'cd /home/cheng/' C-m

# -d to detach any other client (which there shouldn't be,
# since you just created the session).

tmux attach-session -d -t dev

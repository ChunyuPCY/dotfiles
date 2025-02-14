> This configuration file is checked from [hendrikmi](https://www.youtube.com/watch?v=adsnH--SAww&list=PLiNR9hlcxJhAq0jzTK7O1Qev7HUCjuqnd)

# Tmux Cheat Sheet

## Key Commands

Start a new session

```shell
tmux new -s NewSession
```

Exit Session

```shell
tmux detach
```

List sessions

```shell
tmux ls
# full command
# tmux list-sessions
```

Go back into session

```shell
tmux a -t NewSession
# full command
# tmux attach -t NewSession
```

Show all available options

```shell
tmux show-options -g
```

Show all available shortcuts

```shell
tmux list-keys
```

Show all available commands

```shell
tmux list-commands
```

Start fresh

```shell
tmux kill-server && rm -rf /tmp/tmux-*
```

Enable plugins

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Essential Shortcuts

- Prefix: `Ctrl + a`
- Create new tmux window: `Prefix + c`
- Navigate to window: `Prefix + number`
- Cycle through window: `Prefix + n/p`
- See all windows: `Prefix + w`
- Rename window: `Prefix + ,`
- Rename session: `Prefix + $`
- Explore sessions: `Prefix + s`
- Save sessions: `Prefix + Ctrl + s`
- Detach: `Prefix + d`
- Restore session: `Prefix + Ctrl + r`
- Install plugins: `Prefix + I`

## Useful Snippets

Add this to your `.zshrc` to always work in a Tmux session:

```shell
# Always work in a tmux session if Tmux is installed
if which tmux 2>&1 >/dev/null; then
  if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
    tmux attach -t default || tmux new -s default; exit
  fi
fi
```

## Recommendation
- [Awesome Tmux Repo](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbUtVZmdMc2d0MTQ3N3BVRXBjZktJVGFFTFZtUXxBQ3Jtc0trbnEydHloaGVYdWFUVU1RUGZRbVRabGkwOF93S1ZGUnBHS2Job3BkQ2U5a2R3Z1ZBWElWQW9CSk5ZMVJiOGtJUkpUdXl0bThHWWxfVFhVd1dtV1FRVUU4T2hfQmNHVkZubUdfM3ByeTlDNWt4VlB1TQ&q=https%3A%2F%2Fgithub.com%2Frothgar%2Fawesome-tmux&v=TwxgIPAg7gc)
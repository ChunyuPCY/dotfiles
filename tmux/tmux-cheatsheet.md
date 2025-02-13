# Tmux Cheatsheet

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

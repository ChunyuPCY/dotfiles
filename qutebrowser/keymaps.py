import os

HOME = os.environ["HOME"]

unbind = [
    "<Ctrl-s>",
    "<Ctrl-w>",
    "d",
]

keymap = {
    "<F12>": "devtools",
    "<Ctrl-c>": "stop",
    "<Ctrl-[>": "stop",
    "<Ctrl-f>": "hint all hover",
    "<Ctrl-m>": "hint video spawn mpv {hint-url} --keep-open=yes --geometry=80%+200+200",
    "<Ctrl-y>": "hint links yank",
    "<Ctrl-g>": "jseval -q document.activeElement.blur()",
    "<Ctrl-Shift-g>": "click-element css body",
    "<Ctrl-q>": "tab-close",
    "<Ctrl-d>": "cmd-run-with-count 15 scroll down",
    "<Ctrl-u>": "cmd-run-with-count 15 scroll up",
    "<Ctrl-w>h": "devtools-focus",
    "<Ctrl-w>j": "devtools-focus",
    "<Ctrl-w>k": "devtools-focus",
    "<Ctrl-w>l": "devtools-focus",
}

# A joke really. Just using keymaps to quickly jump to new pages. Since it is
# still way quicker than qutebrowser's quickmark, why not name it really quick
# mark?
# Rules here: the lhs provided here is actually the suffix. Prefixing it with
# <Space> should open the link in a new tab whilst prefixing it with a comma
# should open the link in the current window.
really_quick_marks = {
    "gh": "https://github.com",
    "zh": "https://zhihu.com",
    # "bl": "https://bilibili.com", # qutebrowser 不支持 Html5 播放器
    "ds": "https://chat.deepseek.com",
    "yb": "https://www.youtube.com",
}

for unbind_lhs in unbind:
    config.unbind(unbind_lhs)

for lhs, rhs in keymap.items():
    config.bind(lhs, rhs)

for suffix, url in really_quick_marks.items():
    config.bind(f"<Space>{suffix}", f"open -t {url}")
    config.bind(f",{suffix}", f"open {url}")

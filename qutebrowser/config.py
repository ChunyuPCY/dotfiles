config.load_autoconfig(False)

config.source("load_theme.py")
config.source("keymaps.py")

import os

old_path = os.environ["PATH"]
os.environ["PATH"] = f"/opt/homebrew/bin:{old_path}"

c.fonts.default_size = "14pt"

c.content.headers.accept_language = "zh-CN;q=0.9,en-US,en;q=0.8"
c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
c.content.javascript.clipboard = "access-paste"
c.content.blocking.whitelist = []

c.hints.padding = {"bottom": 1, "left": 5, "right": 3, "top": 1}
c.hints.chars = "asdfghjklzxcvbnm"
c.hints.border = "none"
c.hints.selectors["all"].extend([".qutebrowser-custom-hint"])
c.hints.selectors["video"] = ["video"]

c.scrolling.bar = "always"
c.scrolling.smooth = True

c.statusbar.padding = {"bottom": 2, "left": 0, "right": 5, "top": 2}
c.statusbar.widgets = ["search_match", "text:|", "url", "text:|", "scroll"]

c.tabs.padding = {"bottom": 5, "left": 10, "right": 10, "top": 5}

# c.url.default_page = "https://www.baidu.com"
# c.url.searchengines = {"DEFAULT": "https://www.baidu.com/search?q={}"}
# c.url.start_pages = "https://www.baidu.com"

aliases = {
    "source": "config-source",
}

for alias in aliases:
    c.aliases[alias] = aliases[alias]

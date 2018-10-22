tap 'caskroom/cask'
tap 'caskroom/fonts'
tap 'caskroom/versions'
tap 'sgeb/mutt'
tap 'eqnxio/equinox'
tap 'johanhaleby/kubetail'

#
# override old, shitty, or missing system defaults
#


brew 'bash'
brew 'git'
# TODO: had to /usr/local/Cellar/python3/3.6.4_2/bin/pip3 install neovim jedi
brew 'vim', args: ['with-override-system-vi', 'with-python3']
brew 'zsh'
# brew 'fish'

brew 'findutils', args: ['with-default-names']
brew 'gnu-sed', args: ['with-default-names']
brew 'grep', args: ['with-default-names']
# brew 'libtool', args: ['with-default-names']
brew 'openssl'
brew 'readline'
brew 'ncdu'

# brew 'newsboat'
# brew 'irssi'
# brew 'sgeb/mutt/mutt', args: ['with-trash-patch', 'with-sidebar-patch', 'with-gmail-server-search-patch', 'with-gmail-labels-patch', 'with-forwref-patch']
brew 'nmap'
brew 'urlview'
brew 'watch'
brew 'wget'


#
# convenience cli utilities
#

# better tui diff
brew 'icdiff'

# cat with syntax highlighting
brew 'ccat'

# symlink farm manager for dotfiles
brew 'stow'

# jump between common dirs/files
brew 'z'

# better find
brew 'fd'

# corrects previous shell command
brew 'thefuck'

# csv processor
brew 'miller'

# json processor
brew 'jq'

# cli tool for previewing css selector output
brew 'https://raw.githubusercontent.com/EricChiang/pup/master/pup.rb'

# pretty list dirs
brew 'tree'

# pretty ls
brew 'exa'

# Terminal alternative
cask 'kitty'

brew 'peco'

# self-described swiss army knife for mac
brew 'm-cli'

# log file navigator
brew 'lnav'

# (select &) pipe output from cli commands to clipboard
brew 'yank'


#
# vim plugin support
#


# for vim search
brew 'ack'

# for vim tagbar plugin
brew 'ctags'

# code searching tool
brew 'the_silver_searcher'

# GH flavored markdown preview
brew 'grip'
# lint english prose
brew 'proselint'
brew 'redpen'

#
# programming languages (env + dep management, linting)
#


# brew 'glide'
# brew 'rustup-init'
brew 'pyenv-virtualenv'
# cask 'r-app'
# cask 'rstudio'
brew 'shellcheck'


#
# datastores and GUIs for them
#


brew 'mysql', restart_service: true
brew 'postgresql', restart_service: true
brew 'redis', restart_service: true
brew 'sqlite'

# cask 'psequel'
# cask 'sequel-pro'
# cask 'sqlitebrowser'


#
# security, privacy, and authentication
#


brew 'gpg'
cask 'keepassxc'
# cask 'keybase'
# cask 'nordvpn'


#
# other dev tools
#

# better man pages
brew 'tldr'
# per dir env var loader
brew 'direnv'
brew 'grv'
# brew 'graphviz'
# brew 'neofetch'
# brew 'qcachegrind'
# brew 'equinox/release-tool'
# brew 'kubernetes-helm'
# brew 'kubernetes-cli'
# brew 'kubetail', args: ['with-short-names']
# brew 'socat' # for k8s, kid
cask 'docker'
cask 'font-hack'
# favorite font; use the nerd font for devicon/glyph support
cask 'font-hack-nerd-font'
cask 'sourcetree'
# brew 'heroku'
brew 'tmux'
# cask 'dash'
# cask 'filezilla'
# cask 'google-cloud-sdk'
# cask 'ngrok'
cask 'postman'
# cask 'vagrant-manager'
# cask 'virtualbox'
# cask 'xquartz'


#
# lifeblood aka productivity and required apps
#

# hide menubar items
cask 'vanilla'
cask 'dropbox'
cask 'bettertouchtool'
cask 'caffeine'
cask 'disk-inventory-x'
cask 'flux'
cask 'flycut'
cask 'google-chrome'
# cask 'google-drive'
# cask 'slack'
cask 'the-unarchiver'
# appstore 417375580 'BetterSnapTool'
# set default apps for file types
brew 'duti'


#
# entertainment
#

# brew 'transmission'
# cask 'calibre'
# cask 'gimp'
# cask 'origin'
# cask 'plex-media-server'
# cask 'spotify'
# cask 'steam'
# cask 'vlc'

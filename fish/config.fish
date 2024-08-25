if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set -x GTK_IM_MODULE fcitx
set -x QT_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx

pyenv init - | source

set -x SUDO_EDITOR (which kak)

set -x MOZ_ENABLE_WAYLAND 1
set -x MOZ_DISABLE_RDD_SANDBOX 0

# Set KWIN device
set -x KWIN_DRM_DEVICES = /dev/dri/card1

# ASDF
source ~/.asdf/asdf.fish

thefuck --alias | source

zoxide init fish --cmd cd | source

alias z "source ~/scripts/goto-most-recent-dir"

function j
    cd (jump $argv 2> /dev/null)
end

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/jake/.opam/opam-init/init.fish' && source '/home/jake/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration

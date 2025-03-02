if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set -x GTK_IM_MODULE fcitx
set -x QT_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx

set -x VISUAL (which kak)
set -x SUDO_EDITOR (which kak)

set -x MOZ_ENABLE_WAYLAND 1
set -x MOZ_DISABLE_RDD_SANDBOX 0

# Set KWIN device
set -x KWIN_DRM_DEVICES = /dev/dri/card1

# ASDF
source ~/.asdf/asdf.fish

# thefuck --alias | source

alias kk "kak-session"

set -x FZF_DEFAULT_OPTS '--bind ctrl-d:page-down,ctrl-u:page-up'
set -x ESCDELAY 0

function j
    cd (jump $argv)
    if [ $status = 0 ]
        mark most-recent 1> /dev/null
    end
end

function jk
    j
    if [ $status = 0 ]
			kk
    end
end

function jj
    j most-recent
end

function x
    xargs -I{}
end

set -x DEBUGINFOD_URLS "~/debug-info"
set -x DEBUGINFOD_URLS "https://debuginfod.archlinux.org"

set -x EDITOR kak



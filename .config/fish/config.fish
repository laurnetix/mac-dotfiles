if status is-interactive
    # Commands to run in interactive sessions can go here
end

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

starship init fish | source

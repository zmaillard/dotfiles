if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings
    starship init fish | source
end

alias vi="nvim"
alias vim="nvim"
alias python="python3"


if test -d ~/.local/bin
  set -gx PATH $HOME/.local/bin $PATH
end

if test -d ~/.asdf
  source ~/.asdf/asdf.fish
end

direnv hook fish | source

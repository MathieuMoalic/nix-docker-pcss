stty -ixon # allows ctrl + q and s 
autoload -U edit-command-line
zle -N edit-command-line

bindkey -rp ''
bindkey " " magic-space
bindkey "!" self-insert
bindkey "!-~" self-insert
bindkey -R "\""-"~" self-insert
bindkey -R "\M-^@"-"\M-^?" self-insert

bindkey '^W' history-substring-search-up
bindkey '^S' history-substring-search-down

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^A" backward-char
bindkey "^Q" backward-word
bindkey "^D" forward-char
bindkey "^E" forward-word

bindkey "^H" backward-kill-word # this is backspace
bindkey "^?" backward-delete-char
bindkey "^[[3;5~" kill-word
bindkey "^[[3~" delete-char

bindkey "^K" clear-screen
bindkey "^M" accept-line # this is enter
bindkey "^R" edit-command-line
bindkey "^I" expand-or-complete # this is tab
bindkey "^U" kill-whole-line
bindkey "^O" which-command
bindkey "^Z" undo
bindkey "^P" push-line
bindkey '^X' sudo-command-line
bindkey "^[[200~" bracketed-paste

bindkey -s "^L" 'l^M'
bindkey -s "^B" 'br^M'
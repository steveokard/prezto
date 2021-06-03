##Set VI MODE
bindkey -v
bindkey '^r' history-incremental-search-backward
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
# Also fix annoying vi backspace
bindkey '^?' backward-delete-char
bindkey '^[b' vi-backward-blank-word
bindkey '^[w' vi-forward-blank-word

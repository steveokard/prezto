GENCOMPL_FPATH=$HOME/.cache/zsh-completion-generator
GENCOMPL_PY=python3
if [ ! -d "$GENCOMPL_FPATH" ]; then
    mkdir -p $GENCOMPL_FPATH
fi
fpath=($GENCOMPL_FPATH $fpath)
zstyle :plugin:zsh-completion-generator programs fzf

source $ZPREZTODIR/contrib/completion-gen/external/zsh-completion-generator.plugin.zsh

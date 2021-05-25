#
# Loads prompt themes.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Load and execute the prompt theming system.
autoload -Uz promptinit && promptinit

# Load the prompt theme.
zstyle -a ':prezto:module:prompt' theme 'prompt_argv'
if [[ "$TERM" == (dumb|linux|*bsd*) ]] || (( $#prompt_argv < 1 )); then
  prompt 'off'
elif [[ "$prompt_argv[1]" == 'powerlevel9k' ]] ; then
  <<EOW
WARNING: Prezto does not support 'powerlevel9k' anymore as it has
         been deprecated and is not supported by its author.
         Consider migrating to 'powerlevel10k' instead by setting:
         zstyle ':prezto:module:prompt' theme 'powerlevel10k'
         in ${${ZDOTDIR:-$HOME}/#$HOME/~}/.zpreztorc.
         Switching to prezto default prompt 'sorin'..."
EOW
  prompt 'sorin'
else
  prompt "$prompt_argv[@]"
fi
unset prompt_argv

#Prompt Customizations
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs )
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode root_indicator background_jobs context)
POWERLEVEL9K_VI_INSERT_MODE_STRING="MODE"

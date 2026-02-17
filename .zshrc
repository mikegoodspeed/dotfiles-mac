# https://github.com/zsh-users/zsh

# history
HISTFILE=~/.zsh_history
HISTSIZE=500000
SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY       # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY     # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY          # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS       # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS   # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS      # Do not display a previously found event.
setopt HIST_IGNORE_SPACE      # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS      # Do not write a duplicate event to the history file.
setopt HIST_VERIFY            # Do not execute immediately upon history expansion.
setopt HIST_BEEP              # Beep when accessing non-existent history.

# bindings
bindkey -e						  # use emacs keymap
bindkey "\e[H" beginning-of-line  # home
bindkey "\e[F" end-of-line        # end
bindkey "\e[1;5C" forward-word    # ctrl+right
bindkey "\e[1;5D" backward-word   # ctrl+left

# keep PATH stable across repeated initializations
typeset -U path PATH

# homebrew (Apple Silicon only)
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# load optional local config files only when present
for file in ~/.zplugrc ~/.aliases ~/.secrets; do
  [[ -r "$file" ]] && source "$file"
done

# # Make Zsh default
echo "changing shell"
sudo chsh $USER -s /usr/bin/zsh
echo "shell changed"

SCRIPT_FOLDER="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

FOLDER="${ZDOTDIR:-$HOME}/.zprezto" 
if [ ! -d "$FOLDER" ] ; then
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "$FOLDER"
fi

# Zshrc config
rm -f ~/.zshrc
ln -s ${SCRIPT_FOLDER}/../config/zsh/zshrc ~/.zshrc

rm -f ~/.zpreztorc
ln -s ${SCRIPT_FOLDER}/../config/zsh/zpreztorc ~/.zpreztorc

rm -f ~/.p10k.zsh
ln -s ${SCRIPT_FOLDER}/../config/zsh/p10k.zsh ~/.p10k.zsh



# [WARNING]: Console output during zsh initialization detected.

# When using Powerlevel10k with instant prompt, console output during zsh
# initialization may indicate issues.

# You can:

#   - Recommended: Change ~/.zshrc so that it does not perform console I/O
#     after the instant prompt preamble. See the link below for details.

#     * You will not see this error message again.
#     * Zsh will start quickly and prompt will update smoothly.

#   - Suppress this warning either by running p10k configure or by manually
#     defining the following parameter:

#       typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

#     * You will not see this error message again.
#     * Zsh will start quickly but prompt will jump down after initialization.

#   - Disable instant prompt either by running p10k configure or by manually
#     defining the following parameter:

#       typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

#     * You will not see this error message again.
#     * Zsh will start slowly.

#   - Do nothing.

#     * You will see this error message every time you start zsh.
#     * Zsh will start quickly but prompt will jump down after initialization.

# For details, see:
# https://github.com/romkatv/powerlevel10k/blob/master/README.md#instant-prompt

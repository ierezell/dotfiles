sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# Install nvim plugins
nvim +'PlugInstall' +qall
nvim +'CocInstall -sync coc-pyright' +qall

# Enable AutoLogin 
# echo "Enabling autologin"
# sudo mkdir -p /etc/systemd/system/getty@tty1.service.d/
# sudo rm -f /etc/systemd/system/getty@tty1.service.d/override.conf
# sudo bash -c 'echo "[Service]" > /etc/systemd/system/getty@tty1.service.d/override.conf'
# sudo bash -c 'echo "ExecStart=-/usr/bin/agetty --autologin ${USER} --noclear %I $TERM" >> /etc/systemd/system/getty@tty1.service.d/override.conf'
# echo "Autologin enabled"

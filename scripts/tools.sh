sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git /usr/share/zsh/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-history-substring-search.git  /usr/share/zsh/plugins/zsh-history-substring-search
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git  /usr/share/zsh/plugins/zsh-syntax-highlighting
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git  /usr/share/zsh/plugins/zsh-syntax-highlighting
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /usr/share/zsh-theme-powerlevel10k

cp ../config/nvim/* ~/.config/nvim
cp ../config/sway ~/.config/sway
cp ../config/ranger ~/.config/ranger
cp ../config/waybar ~/.config/waybar
cp ../config/cmus ~/.config/cmus
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh

curl -fLo ~/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

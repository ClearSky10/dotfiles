sudo pacman -S --noconfirm --needed git ranger kitty zsh zsh-theme-powerlevel10k zsh-syntax-highlighting zsh-history-substring-search zsh-autosuggestions neovim python-pynvim yarn base-devel

#sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git /usr/share/zsh/plugins/zsh-autosuggestions
#sudo git clone https://github.com/zsh-users/zsh-history-substring-search.git  /usr/share/zsh/plugins/zsh-history-substring-search
#sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git  /usr/share/zsh/plugins/zsh-syntax-highlighting
#sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /usr/share/zsh-theme-powerlevel10k

cp -r config/nvim ~/.config/nvim
cp -r config/sway ~/.config/sway
cp -r config/ranger ~/.config/ranger
cp -r config/waybar ~/.config/waybar
cp -r config/cmus ~/.config/cmus
cp -r scripts/.zshrc ~/.zshrc
cp -r scripts/.p10k.zsh ~/.p10k.zsh

curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

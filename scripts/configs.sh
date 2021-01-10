cp -r config/nvim ~/.config/nvim
cp -r config/sway ~/.config/sway
cp -r config/ranger ~/.config/ranger
cp -r config/waybar ~/.config/waybar
cp -r config/cmus ~/.config/cmus
cp -r config/foot ~/.config/foot
cp -r config/neomutt ~/.config/neomutt
cp -r scripts/.zshrc ~/.zshrc
cp -r scripts/.p10k.zsh ~/.p10k.zsh

curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

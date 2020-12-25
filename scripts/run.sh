sudo pacman -S --noconfirm --needed git ranger zsh zsh-theme-powerlevel10k zsh-syntax-highlighting zsh-history-substring-search zsh-autosuggestions neovim python-pynvim yarn base-devel


git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

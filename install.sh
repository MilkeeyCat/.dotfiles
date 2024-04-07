STOW_FOLDERS="alacritty,htop,i3,misc,nvim,picom,scripts,tmux,zsh"

for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "stow $folder"
    stow -vR $folder
done

if [ -f ~/.zshrc ] && [ ! -L ~/.zshrc ]
then
    echo "Backing up existing ~/.zshrc to ~/.zshrc.bak"
    mv ~/.zshrc ~/.zshrc.bak
fi
if [ -L ~/.zshrc ]
then
    echo "Already have ~/.zshrc symlink, we're good"
else
    echo "Creating symlink ~/.zshrc, which points to ~/.fuhrysteverc/home/.zshrc"
    ln -s ~/.fuhrysteverc/home/.zshrc ~/.zshrc
fi

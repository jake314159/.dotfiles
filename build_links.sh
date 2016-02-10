
DIR=`dirname "$(readlink -f "$0")"`

rm ~/.bash_aliases
rm ~/.bashrc
rm ~/.pythonrc
rm ~/.gitconfig
rm ~/.gitignore_global
rm ~/.vimrc

echo "DIR IS $DIR"

ln -s "$DIR/.bash_aliases" ~/.bash_aliases
ln -s "$DIR/.bashrc" ~/.bashrc
ln -s "$DIR/.pythonrc" ~/.pythonrc
ln -s "$DIR/.gitconfig" ~/.gitconfig
ln -s "$DIR/.gitignore_global" ~/.gitignore_global
ln -s "$DIR/.vimrc" ~/.vimrc

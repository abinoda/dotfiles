DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR
for i in $(ls | grep -v '\.sh' | grep -v '\.md')
do
  echo "Linking $i"
  ln -sfn $DIR/$i ~/.$i
done

# Clear plugins
rm -rf ~/.vim/bundle/

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install plugins
vim +PluginInstall +qall
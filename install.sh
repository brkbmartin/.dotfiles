# INSTALL SCRIPT

git clone --bare https://github.com/brkbmartin/.dotfiles.git $HOME/.dotfiles
function dotfiles {
  /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .dotfiles-backup
dotfiles checkout
if [ $? = 0 ]; then
  echo "Checked out dotfiles...";
  else
    echo "Backing up pre-existing dot files...";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
dotfiles checkout
dotfiles config status.showUntrackedFiles no

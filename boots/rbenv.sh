#! /bin/sh

RBENV_GIT_URL="https://github.com/sstephenson/rbenv.git"
RBENV_INSTALL_DIR="$HOME/.rbenv"

if [ -d "$HOME/.rbenv" ]; then
  rm -rf "$HOME/.rbenv"
fi

git clone $RBENV_GIT_URL "$HOME/.rbenv"
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
exec $SHELL -l
type rbenv

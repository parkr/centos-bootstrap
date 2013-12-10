#! /bin/sh

RBENV_GIT_URL="https://github.com/sstephenson/rbenv.git"
RBENV_INSTALL_DIR="$HOME/.rbenv"
RBENV_VERSION="v0.4.0"

if [ -z "$(which git)" ]; then
  echo "Install git first: ./bootstrap git"
  exit 1
fi

if [ -d "$RBENV_INSTALL_DIR" ]; then
  rm -rf "$RBENV_INSTALL_DIR"
fi

git clone $RBENV_GIT_URL "$RBENV_INSTALL_DIR"
cd $RBENV_INSTALL_DIR
git checkout $RBENV_VERSION

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

exec $SHELL -l
type rbenv

echo "It's recommended that you install ruby-install now. :)"

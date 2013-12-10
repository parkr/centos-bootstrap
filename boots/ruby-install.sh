#! /bin/sh

$RB_BUILD_GIT_URL="https://github.com/sstephenson/ruby-build.git"
$RB_BUILD_INSTALL_DIR="~/.rbenv/plugins/ruby-build"
$RB_BUILD_VERSION="v20131206"

git clone $RB_BUILD_GIT_URL $RB_BUILD_INSTALL_DIR
cd $RB_BUILD_INSTALL_DIR
git checkout $RB_BUILD_VERSION

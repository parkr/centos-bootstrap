#! /bin/sh

if [ -z "$(which gem)" ]; then
  echo "Whoops, looks like you need to install Ruby first."
  echo "We generally suggest that you use something like rbenv or rvm, either"
  echo "of which can be installed using this utility."
  exit 1
fi

gem install bundler rake rails mysql2 sqlite3 passenger

echo "If you want to use MySQL, run './bootstrap mysql'."
echo "If you want to use PostgreSQL, run './bootstrap postgresql'."

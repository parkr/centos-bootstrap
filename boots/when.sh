#! /bin/bash

if [ -d "when" ]; then
  rm -rf when
fi

git clone git://github.com/apgwoz/when.git
cd when

sudo make install PREFIX=/usr

cd ..
rm -rf when

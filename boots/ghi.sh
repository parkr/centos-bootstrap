#! /bin/bash

curl -s https://raw.github.com/stephencelis/ghi/master/ghi > ghi
chmod 755 ghi
sudo mv ghi /usr/local/bin

echo "ghi installed into /usr/local/bin"

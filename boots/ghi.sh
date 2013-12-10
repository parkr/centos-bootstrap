#! /bin/bash

set -e

curl -s "https://raw.github.com/stephencelis/ghi/0.9.0.201304025/ghi" -o ghi
chmod 755 ghi
sudo mv ghi /usr/local/bin

echo "ghi installed into /usr/local/bin"

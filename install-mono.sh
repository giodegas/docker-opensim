#!/bin/sh
curl -s http://download.mono-project.com/sources/mono/mono-3.6.0.tar.bz2 \
    | tar -xjv --directory=/tmp

cd /tmp/mono-3.6.0
./configure --prefix=/usr/local
make
make install
cd /tmp
rm -rf /tmp/mono-3.6.0

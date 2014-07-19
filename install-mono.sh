#!/bin/sh
curl -s http://download.mono-project.com/sources/mono/mono-3.4.0.tar.bz2 \
    | tar -xjv --directory=/tmp

# https://bugzilla.xamarin.com/show_bug.cgi?id=18690
curl -so /tmp/mono-3.4.0/mcs/tools/xbuild/targets/Microsoft.Portable.Common.targets https://raw.githubusercontent.com/mono/mono/mono-3.4.0-branch/mcs/tools/xbuild/targets/Microsoft.Portable.Common.targets

cd /tmp/mono-3.4.0
./configure --prefix=/usr/local
make
make install
cd /tmp
rm -rf /tmp/mono-3.4.0

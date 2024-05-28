ZT_VERSION=1.14.0
ZT_BIN_ARCHIVE=zerotier_x86_64_$ZT_VERSION.tar.gz

if cat /proc/cpuinfo | grep -q 'ARMv8'; then
  ZT_BIN_ARCHIVE=zerotier_aarch64_$ZT_VERSION.tar.gz
fi

wget https://github.com/crystalidea/zerotier-linux-binaries/releases/download/$ZT_VERSION/$ZT_BIN_ARCHIVE
tar -xvvf $ZT_BIN_ARCHIVE
rm $ZT_BIN_ARCHIVE

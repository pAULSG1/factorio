#!/bin/sh -x

set -e

[ ! -z "$VERSION" ] || VERSION="0.16.8"

echo Downloading Factorio v$VERSION
curl -sSL https://www.factorio.com/get-download/$VERSION/headless/linux64 -o /tmp/factorio_headless_x64_$VERSION.tar.xz && \
tar xf /tmp/factorio_headless_x64_$VERSION.tar.xz --directory /opt
chmod ugo=rwx /opt/factorio
rm /tmp/factorio_headless_x64_$VERSION.tar.xz
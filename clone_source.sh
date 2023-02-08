#!/bin/bash

git clone "https://github.com/immortalwrt/immortalwrt.git" --branch "openwrt-21.02" --single-branch "immortalwrt"
pushd "immortalwrt"; ./scripts/feeds update -a; ./scripts/feeds install -a; popd

patch immortalwrt/package/base-files/files/bin/config_generate config_generate.patch
patch immortalwrt/package/base-files/files/etc/shadow shadow.patch
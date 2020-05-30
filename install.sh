#! /bin/bash

HCLOUD_VERSION=1.16.2
TMP_DIR=$(mktemp -d)

cd $TMP_DIR
curl -Lo hcloud-linux-amd64.tar.gz https://github.com/hetznercloud/cli/releases/download/v$HCLOUD_VERSION/hcloud-linux-amd64.tar.gz
tar -xzvf hcloud-linux-amd64.tar.gz
mv hcloud /usr/bin/
#! /bin/bash

HCLOUD_VERSION=1.16.2
HCLOUD_FIP_SYNC_VERSION=latest
TMP_DIR=$(mktemp -d)

# get hcloud if it does not exist
if ! [ -x "$(command -v hcloud)" ]; then
    cd $TMP_DIR
    curl -Lo hcloud-linux-amd64.tar.gz https://github.com/hetznercloud/cli/releases/download/v$HCLOUD_VERSION/hcloud-linux-amd64.tar.gz
    tar -xzvf hcloud-linux-amd64.tar.gz
    mv hcloud /usr/bin/
fi

if ! [ -x "$(command -v hcloud-fip-sync)" ]; then
    cd $TMP_DIR
    curl -Lo hcloud-fip-sync.tar.gz https://github.com/phbergsmann/hcloud-fip-sync/releases/download/$HCLOUD_FIP_SYNC_VERSION/hcloud-fip-sync.tar.gz
    tar -xzvf hcloud-fip-sync.tar.gz
    mv hcloud-fip-sync /usr/bin/
fi
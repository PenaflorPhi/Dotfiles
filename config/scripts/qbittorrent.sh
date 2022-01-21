#!/bin/bash
if mountpoint -q "/Storage"; then
    qbittorrent
else
    sudo mount /dev/sdb1 /Storage
    qbittorrent
fi


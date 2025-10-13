#!/bin/bash

sudo parted /dev/sda -- mklabel msdos

sudo parted /dev/sda -- mkpart primary 1MiB 100%

sudo mkfs.ext4 -L nixos /dev/sda1

sudo mount /dev/sda1 /mnt

sudo mkdir -p /mnt/etc/nixos

sudo curl -o /mnt/etc/nixos/configuration.nix "https://raw.githubusercontent.com/BleSSSeDDD/nixos-config-blessseddd/refs/heads/main/configuration.nix"

sudo nixos-generate-config --root /mnt

sudo nixos-install

echo "Dont forget to remove LiveCD from VirtualBox!"

Configuration file for VirtualBox NixOS machine

Installation: 

create VM in VirtualBox using minimalistic iso from official site: https://nixos.org/download

sudo parted /dev/sda -- mklabel msdos

sudo parted /dev/sda -- mkpart primary 1MiB 100%

sudo mkfs.ext4 -L nixos /dev/sda1

sudo mount /dev/sda1 /mnt

sudo mkdir -p /mnt/etc/nixos

sudo curl -o /mnt/etc/nixos/configuration.nix "https://raw.githubusercontent.com/BleSSSeDDD/nixos-config-blessseddd/refs/heads/main/configuration.nix"

sudo nixos-generate-config --root /mnt

sudo nixos-install

#dont forget to remove LiveCD from VirtualBox

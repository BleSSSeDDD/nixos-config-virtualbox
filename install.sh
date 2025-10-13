set -e 
echo "Starting NixOS installation..."
sudo parted /dev/sda -- mklabel msdos || { echo "Partitioning failed"; exit 1; }
sudo parted /dev/sda -- mkpart primary 1MiB 100% || { echo "Partition creation failed"; exit 1; }
sudo mkfs.ext4 -L nixos /dev/sda1 || { echo "Filesystem creation failed"; exit 1; }
sudo mount /dev/sda1 /mnt || { echo "Mount failed"; exit 1; }
sudo mkdir -p /mnt/etc/nixos || { echo "Directory creation failed"; exit 1; }
sudo curl -o /mnt/etc/nixos/configuration.nix "https://raw.githubusercontent.com/BleSSSeDDD/nixos-config-blessseddd/refs/heads/main/configuration.nix" || { echo "Config download failed"; exit 1; }
sudo nixos-generate-config --root /mnt || { echo "Config generation failed"; exit 1; }
sudo nixos-install || { echo "Installation failed"; exit 1; }
echo "Installation completed successfully!"
echo "Dont forget to remove LiveCD from VirtualBox!"

{ config, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];

  system.stateVersion = "25.05";

  boot.loader.grub = {
    enable = true;
    device = "nodev";
    useOSProber = true;
  };

  networking.hostName = "nixos-vm";
  networking.networkmanager.enable = true;

  users.users.nixos = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" ];
    initialPassword = "12345678";
  };

  security.sudo.wheelNeedsPassword = false;

  virtualisation.virtualbox.guest.enable = true;

  hardware.opengl.enable = true;

  services.xserver = {
    enable = true;
    displayManager = {
      sddm.enable = true;
      autoLogin = {
        enable = true;
        user = "nixos";
      };
      defaultSession = "plasma";
    };
    desktopManager.plasma5.enable = true;
  };

  sound.enable = true;

  environment.systemPackages = with pkgs; [
    vim wget curl git htop
    file pciutils usbutils
  ];
}

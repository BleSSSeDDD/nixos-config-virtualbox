{ config, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];
  system.stateVersion = "25.05";

  boot.loader.systemd-boot.enable = true;
  networking.hostName = "nixos-dev";
  networking.networkmanager.enable = true;

  users.users.dev = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
    initialPassword = "12345678";
  };

  environment.systemPackages = with pkgs; [
    inetutils iproute2 bind dnsutils
    vim wget curl git htop tree
    file pciutils usbutils
  ];

  # VirtualBox Guest Additions
  virtualisation.virtualbox.guest.enable = true;

  services.xserver = {
    enable = true;
    displayManager = {
      lightdm.enable = true;
      autoLogin = {
        enable = true;
        user = "dev";
      };
      defaultSession = "plasma";
    };
    desktopManager = {
      plasma5.enable = true;
    };
    videoDrivers = [ "virtualbox" ];
  };

  hardware.opengl.enable = true;
}

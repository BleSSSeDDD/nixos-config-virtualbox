{ config, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];
  system.stateVersion = "25.05"; 

  boot.loader.grub = {
    enable = true;
    device = "nodev";
    useOSProber = true;
  };

  boot.initrd.checkJournalingFS = false;
  virtualisation.virtualbox.guest.enable = true;
  
  services.xserver.enable = false;
  
  services.displayManager = {
    sddm.enable = true;
    defaultSession = "plasmawayland";
  };
  
  services.desktopManager.plasma6.enable = true;  # Plasma 6 с нативным Wayland

  programs.plasma.enable = true;
  security.polkit.enable = true;

  networking.hostName = "nixos-dev";
  networking.networkmanager.enable = true;

  users.users.dev = {
    isNormalUser = true;
    description = "Developer";
    extraGroups = [ "networkmanager" "wheel" "video" "input" ];
    initialPassword = "12345678";
  };

  security.sudo.wheelNeedsPassword = false;

  environment.systemPackages = with pkgs; [
    inetutils iproute2 bind dnsutils
    vim wget curl git htop tree
    file pciutils usbutils
  ];

  hardware.opengl = {
    enable = true;
    driSupport = true;
  };

  sound.enable = true;
  hardware.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    audio.enable = true;
    pulse.enable = true;
    alsa.enable = true;
  };

  services.printing.enable = true;
  services.bluetooth.enable = true;
  programs.bash.enable = true;
}

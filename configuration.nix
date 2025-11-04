{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./programs/git.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  services.xserver.videoDrivers = [ "amdgpu" ];

  networking.hostName = "ruzenhome"; 
  networking.networkmanager.enable = true;  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  time.timeZone = "Asia/Almaty";
  networking.hostId = "d837fa34";
  environment.variables.EDITOR = "nvim";

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    useXkbConfig = true; 
  };

  services.xserver.displayManager.setupCommands = ''xrandr --output DP-2 --rate 165'';

  services.xserver.enable = true;
  services.xserver.xkb.layout = "us,ru";
  services.xserver.xkb.variant = "dvorak,";
  services.xserver.xkb.options = "grp:caps_toggle";

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  users.users.ruzen42 = {
     isNormalUser = true;
     extraGroups = [ "wheel" ]; 
     packages = with pkgs; [
       neovim
       tree
       github-cli 
       fastfetch
       firefox
       alacritty
       rofi
       flameshot 
       jetbrains.rider
       btop
       telegram-desktop
       picom
       feh
       dotnet-sdk_9
     ];
     shell = pkgs.zsh;
  };

  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    vim 
    wget
    git
  ];
  
  services.xserver.windowManager.xmonad = {
    enable = true;
    enableContribAndExtras = true;
    ghcArgs = [
      "-hidir /tmp" 
      "-odir /tmp" 
    ];
  };

  services.openssh.enable = true;

  system.copySystemConfiguration = false; # RISK

  nixpkgs.config.allowUnfree = true; 
  system.stateVersion = "25.05"; 
}



{ config, lib, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  time.timeZone = "Asia/Almaty";

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "FiraCode";
    useXkbConfig = true; 
  };

  programs.zsh.enable = true;

  system.copySystemConfiguration = false; # RISK
  system.stateVersion = "25.05"; 

  nixpkgs.config.allowUnfree = true; 

}

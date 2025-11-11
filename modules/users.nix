{ config, lib, pkgs, ... }:

{
  users.users.ruzen42 = {
     isNormalUser = true;
     extraGroups = [ "wheel" "docker" ]; 
     packages = with pkgs; [
       tree
       zip 
       unzip
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
       noto-fonts
       noto-fonts-cjk-sans
       noto-fonts-emoji
       liberation_ttf
       fira-code
       fira-code-symbols
       mplus-outline-fonts.githubRelease
       dina-font
       proggyfonts       
       dotnet-sdk_9
       thunderbird
       haskellPackages.stack
       xfce.thunar-bare
       qt5.qtquickcontrols2 
       qt5.qtgraphicaleffects 
       qt5.qtgraphicaleffects 
       qt5.qtsvg
     ];
     shell = pkgs.zsh;
  };
}

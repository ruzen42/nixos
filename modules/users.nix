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
       steam-run
       protonup-ng
       telegram-desktop
       gsettings-desktop-schemas
       picom
       feh 
       vesktop
       calibre
       noto-fonts
       noto-fonts-cjk-sans
       noto-fonts-color-emoji
       liberation_ttf
       fira-code
       fira-code-symbols
       mplus-outline-fonts.githubRelease
       dina-font
       proggyfonts       
       dotnet-sdk_10
       thunderbird
       libreoffice-qt
       haskellPackages.stack
       xfce.thunar-bare
       qt5.qtquickcontrols2 
       qt5.qtgraphicaleffects 
       qt5.qtgraphicaleffects 
       qt5.qtsvg
       haskellPackages.haskell-language-server
     ];
     shell = pkgs.zsh;
  };
}

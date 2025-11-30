{ config, lib, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "amdgpu" ];
  services.displayManager.sddm = {
    enable = true;
    theme = "${pkgs.sddm-chili-theme}/share/sddm/themes/chili";
  };

  services.xserver.enable = true;
  services.xserver.xkb.layout = "us,ru";
  services.xserver.xkb.variant = "dvorak,";
  services.xserver.xkb.options = "grp:caps_toggle";
  services.xserver.windowManager.xmonad = {
    enable = true;
    enableContribAndExtras = true;
    ghcArgs = [
      "-hidir /tmp" 
      "-odir /tmp" 
    ];
  };

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    wireplumber.enable = true;
  };  

  services.openssh.enable = true;
}

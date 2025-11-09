{ config, lib, pkgs, ... }:

{
  environment.variables.EDITOR = "nvim";

  environment.sessionVariables = {
	  WLR_NO_HARDWARE_CURSORS = "1";
	  STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };

  environment.systemPackages = with pkgs; [
    neovim
    wget
    git
    openal
    steam-run
    protonup
  ];
}

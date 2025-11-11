{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./programs/git.nix
      ./modules/boot.nix
      ./modules/services.nix
      ./modules/networking.nix
      ./modules/environment.nix
      ./modules/users.nix
      ./modules/other.nix
      ./modules/programs.nix
      ./modules/gui.nix
    ];
}


{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./modules/sddm.nix 
      ./hardware-configuration.nix
      ./programs/git.nix
      ./modules/boot.nix
      ./modules/services.nix
      ./modules/networking.nix
      ./modules/environment.nix
      ./modules/users.nix
      ./modules/other.nix
      ./modules/programs.nix
    ];
}


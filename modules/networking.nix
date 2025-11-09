{ config, lib, pkgs, ... }:

{
  networking.hostName = "ruzenhome"; 
  networking.networkmanager.enable = true;  
  networking.hostId = "d837fa34";
}

{ config, lib, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "nebula";
  home.homeDirectory = "/home/nebula";
  home.stateVersion = "26.05";
   
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;  

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    fastfetch
    starship
    htop
    vlc
    libreoffice-fresh
    gimp
    tree
    discord
    zsh
    zsh-autosuggestions
    zsh-autocomplete
  ];
 
programs.starship = {
  enable = true;
};
         
   imports = [
   /modules/shell/fastfetch.nix
   /modules/shell/zsh.nix
   /modules/shell/ghostty.nix
      
  ]; 


}


{ pkgs, lib, configs, ... }: {
  
services.displayManager.sddm.enable = true;
  services.xserver.enable = true;

  programs.hyprland = {
    # Install the packages from nixpkgs
    enable = true;
    # Whether to enable XWayland
    xwayland.enable = true;
  };
   environment.systemPackages = with pkgs; [
    ghostty
     hyprpolkitagent
     xdg-desktop-portal-hyprland
     dconf
     kdePackages.dolphin
     kdePackages.ark
     mako
     rofi
     bibata-cursors
     hyprpaper
     waypaper
     waybar
     kdePackages.qt6ct
     qt5.qtwayland
     qt6.qtwayland
     brightnessctl
     playerctl
     nwg-look
     gnome-themes-extra
  ];
}

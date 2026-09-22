{ pkgs, lib, configs, ... }: {
  
   environment.systemPackages = with pkgs; [
    pipewire
    wireplumber
    pavucontrol
  ];
}

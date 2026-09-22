{
  description = "nebula flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.nebula-thinkpad = nixpkgs.lib.nixosSystem {
	modules = [ ./configuration.nix ];
      };
      homeConfigurations.nebula = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = { inherit inputs; };
      modules = [ ./home.nix ];
    };
  };
}

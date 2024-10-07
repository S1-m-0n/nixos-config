{

  description = "My first flake!";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";  # could be shortned to "nixpkgs/nixos-24.05"

    unstable.url = "nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, unstable, ... } @ input:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      # pkgs = nixpkgs.legacyPackages.${system};
      # pkgs-unstable = nixpkgs.legacyPackages.${system};
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {

        inherit system;  # system = "x86_64-linux";

	specialArgs = {
	  inherit input;
	};

	modules = [ 
	  ./hosts/vm/configuration.nix
	];
      };
    };
  };

}

{

  description = "My first flake!";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";  # could be shortned to "nixpkgs/nixos-24.05"

    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, ... } @ input:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      # pkgs = nixpkgs.legacyPackages.${system};
      # unstable = nixpkgs.legacyPackages.${system};
      commonArgs = { inherit system; config.allowUnfree = true; };
      pkgs = import nixpkgs commonArgs;
      unstable = import nixpkgs-unstable commonArgs;
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {

        # inherit system;  # system = "x86_64-linux";
	inherit pkgs;

	specialArgs = {
	  # inherit input;
	  # inherit pkgs;
	  inherit unstable;
	};

	modules = [ 
	  ./hosts/vm/configuration.nix
	];
      };
    };
  };

}

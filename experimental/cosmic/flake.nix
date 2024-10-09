{

  description = "Cosmic desktop flake";

  inputs = {
    nixkpgs.follows = "nixos-cosmic/nixpkgs";

    nixos-cosmic.url = "github:lilyinstarlight/nixos-cosmic";
  };

  outputs = { self, nixpkgs, nixos-cosmic, ... } @ input:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {

	modules = [ 
	  {
	    nix.settings = {
	      substituters = [ "https://cosmic.cachix.org/ " ];
	      trusted-public-keys = [ "cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMdRel02smYzA85dPE=" ];
	    };
	  }
	  nixos-cosmic.nixosModules.default
	  ./configuration.nix
	];
      };
    };
  };

}

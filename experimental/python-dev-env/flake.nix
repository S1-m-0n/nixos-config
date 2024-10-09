{

  description = "A python development environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs, ...} @ input:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  in {
    devShells.${system}.default = pkgs.mkShell {

      packages = with pkgs; ([
        
        python312
  
      ]) ++ (with pkgs.python312Packages; [

        numpy
	torch

      ]);

      shellHook = ''
        exec zsh
      '';

    };
    
  };

}

# nixosModules/filen-io/default.nix
# home-manager module for filen-io appImage

{ pkgs, ... } :

let

  # derivation of filen-desktop repository
  # filen = pkgs.stdenv.mkDerivation rec {
  filen = pkgs.buildNpmPackage rec {

    pname = "filen.io";
    version = "0.1.29";

    src = pkgs.fetchFromGitHub {
      owner = "FilenCloudDienste";
      repo = "filen-desktop";
      rev = "v0.1.29";
      sha256 = "sha256-+pIHXiNQg881Pir03DQU45ZGvuIJr4WPW0qxxLSl+Ho=";
    };

    npmDepsHash = "sha256-sfdSdN6dfFYJFGGTZ+j3hMR/ryOKN0ETH1S7m3pE8dQ=";

    makeCacheWritable = true;

    # buildInputs = with pkgs; [
    #   npm
    # ];

    # build the actual project
    # buildPhase = ''
    #   npm install
    #   npm run bild:"linux"
    # '';

    # npmBuildFlags = [ 
    #   "build:linux"
    # ];

    # https://discourse.nixos.org/t/node2nix-issues/10762
    buildInputs = with pkgs; [
      libuuid   # canvas
    ];

    npmBuildScript = "build:linux";

    # how to handle install?
    # installPhase = ''
    #   npm run bild:"linux"
    # '';

  };
in {

  home.packages = with pkgs; [
    filen
  ];

}


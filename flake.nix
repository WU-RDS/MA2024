{
  description = "Dev env for MA";

  inputs = {
    nixpkgs.url = "github:rstats-on-nix/nixpkgs/2025-08-25";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    allSystems = [
      "x86_64-linux"
      "aarch64-darwin"
    ];

    forAllSystems = f:
      nixpkgs.lib.genAttrs allSystems (
        system:
          f {
            pkgs = import nixpkgs {inherit system;};
          }
      );
  in {
    devShells = forAllSystems (
      {pkgs}: {
        default = pkgs.mkShell {
          packages = with pkgs; [
            (rWrapper.override
              {
                packages =
                  import ./r-packages.nix {inherit pkgs;};
              })
          ];
        };
      }
    );
  };
  nixConfig = {
    extra-substituters = [
      "https://rstats-on-nix.cachix.org"
      "https://rde.cachix.org"
    ];
    extra-trusted-public-keys = [
      "rstats-on-nix.cachix.org-1:vdiiVgocg6WeJrODIqdprZRUrhi1JzhBnXv7aWI6+F0="
      "rde.cachix.org-1:yRxQYM+69N/dVER6HNWRjsjytZnJVXLS/+t/LI9d1D4="
    ];
  };
}

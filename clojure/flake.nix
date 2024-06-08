{
  description = "A clj-nix flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    clj-nix.url = "github:jlesquembre/clj-nix";
  };

  outputs = { self, nixpkgs, flake-utils, clj-nix }:
    flake-utils.lib.eachDefaultSystem (system: 
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        packages = {
          default = clj-nix.lib.mkCljApp {
            pkgs = nixpkgs.legacyPackages.${system};
            modules = [
              {
                projectSrc = ./.;
                name = "me.lafuente/cljdemo";
                main-ns = "hello.core";
                nativeImage.enable = true;
              }
            ];
          };

        };

        devShell = pkgs.mkShell {
          packages = with pkgs; [
            jq
            clojure
            graalvm-ce
            diffutils
          ];

        };
      }
  );
}
{
  description = "Repositório do Grupo de Estudos de Software Foundations";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?rev=b4fd387395d0124d936cfcde67ad08206b229b91";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        core-coq = [
          pkgs.coq_8_16
          pkgs.coqPackages_8_16.coqide
          pkgs.coqPackages_8_16.coq-lsp
          pkgs.gnumake
        ];
      in
      {
        devShells = rec {
          default = logical-foundations;
          logical-foundations = pkgs.mkShell {
            # Development tools
            packages = core-coq;
          };
        };
      });
}
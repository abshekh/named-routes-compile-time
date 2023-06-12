{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs =
    inputs@{ nixpkgs, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = nixpkgs.lib.systems.flakeExposed;
      perSystem = { system, pkgs, devShells, ... }:
        let
          overlay = final: prev: {
            named-routes-compile-time = final.callCabal2nix "named-routes-compile-time" ./. { };
          };
          myHaskellPackages = pkgs.haskell.packages.ghc927.extend overlay;
        in
        {
          packages.default = myHaskellPackages.named-routes-compile-time;
          devShells = {
            default = myHaskellPackages.shellFor {
              packages = p: [
                p.named-routes-compile-time
              ];
              buildInputs = with myHaskellPackages; [
                cabal-install
                ghcid
                haskell-language-server
                hindent
              ];
            };
          };
        };
    };
}

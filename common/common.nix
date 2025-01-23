{lib,config, pkgs, inputs, ... }:

{
    imports =
    [
      ./services.nix
      ./users.nix
      ./defaults.nix
      ./packages.nix
      ./steam.nix
    ];
}
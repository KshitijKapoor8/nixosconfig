{
  config,
  pkgs,
  inputs,
  ...
}: let
in {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./remaps.nix
    ./options.nix
    ./plugins
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
  };
}

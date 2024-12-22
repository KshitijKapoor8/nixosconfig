{
  config,
  pkgs,
  ...
}: let
in {
  programs.kitty = {
    enable = true;
  };
}

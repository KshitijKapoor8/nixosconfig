{
  config,
  pkgs,
  inputs,
  ...
}: let
in {
  programs.wezterm = {
    enable = true;
    package = inputs.wezterm-flake.packages.${pkgs.system}.default;
    enableZshIntegration = true;
    enableBashIntegration = true;
  };
}

{
  pkgs,
  config,
  ...
}: {
  imports = [
    ./hyprland.nix
    ./rofi.nix
  ];
}

{
  pkgs,
  config,
  ...
}: {
  imports = [
    ./ags
    ./hyprland.nix
    ./hyprpanel.nix
    ./rofi
    ./waybar
  ];
}

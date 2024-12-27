{
  pkgs,
  config,
  ...
}: {
  imports = [
    ./hyprland.nix
    # ./hyprpanel.nix
    ./rofi.nix
  ];
}

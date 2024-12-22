{
  pkgs,
  config,
  ...
}: {
  imports = [
    ./wezterm.nix
    ./kitty.nix
  ];
}

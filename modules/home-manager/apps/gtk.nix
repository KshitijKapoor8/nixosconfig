{
  pkgs,
  config,
  lib,
  ...
}: {
  gtk = {
    enable = true;

    cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
    };

    theme = {
      package = lib.mkForce pkgs.adw-gtk3;
      name = "adw-gtk3";
    };
  };
}

{
  pkgs,
  inputs,
  lib,
  ...
}:
{
  imports = [ inputs.hyprpanel.homeManagerModules.hyprpanel ];
  
  programs.hyprpanel = {
    enable = true;
    systemd.enable = true;
    hyprland.enable = true;
    overwrite.enable = true;
    theme = "catppuccin_mocha";

    layout = {
      "bar.layouts" = {
        "0" = {
          left = [ "dashboard" "workspaces" "windowtitle"];
          middle = [ "clock" ];
          right = [ "media" "volume" "bluetooth" "notifications" ];
        };
        "1" = {};
      };
    };

    # settings = {
    #   bar.launcher.autoDetectIcon = true;
    #   bar.workspaces.show_icons = true;
    #
    #   menus = {
    #     clock = {
    #       time = {
    #         military = true;
    #         hideSeconds = true;
    #       };
    #       weather.unit = "metric";
    #     };
    #     dashboard = {
    #       directories.enabled = false;
    #       powermenu = {
    #         avatar.image = "../../../paddington.png";
    #         avatar.name = "Paddington";
    #       };
    #       shortcuts = {
    #         left.shortcut1 = {
    #           command = "firefox";
    #           icon = "󰈹";
    #           tooltip = "Launch Firefox";
    #         };
    #       };
    #     };
    #   };
    #
    #   theme = {
    #     bar.transparent = false;
    #     font = {
    #       name = "CaskaydiaCove NF";
    #       size = "16px";
    #     };
    #   };
    # };
  };
}

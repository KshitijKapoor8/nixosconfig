{
  config,
  lib,
  pkgs,
  inputs,
  ...
}: let
in {

  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;

    plugins = [ 
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.borders-plus-plus
    ];
    
    settings = {
      "$mainMod" = "SUPER";
      "$terminal" = "wezterm";
      "$menu" = ''rofi -show combi -combi-modi "window,drun,run,ssh" -modi combi'';

      monitor = [
        "DP-3, 3440x1440@180, 0x0, 1"
        "HDMI-A-1, 1920x1080@60, 760x1440, 1"
      ];

      input = {
          kb_layout = "us";

          follow_mouse = 1;

          sensitivity = 0; # -1.0 - 1.0, 0 means no modification.

          touchpad = {
              natural_scroll = false;
          };
      };

      exec-once = [
        "hyprpanel"
      ];

      animations = {
        enabled = true;

        bezier = [
          "easeOutQuint,0.23,1,0.32,1"
          "easeInOutCubic,0.65,0.05,0.36,1"
          "linear,0,0,1,1"
          "almostLinear,0.5,0.5,0.75,1.0"
          "quick,0.15,0,0.1,1"
        ];

        animation = [
          "global, 1, 10, default"
          "border, 1, 5.39, easeOutQuint"
          "windows, 1, 4.79, easeOutQuint"
          "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
          "windowsOut, 1, 1.49, linear, popin 87%"
          "fadeIn, 1, 1.73, almostLinear"
          "fadeOut, 1, 1.46, almostLinear"
          "fade, 1, 3.03, quick"
          "layers, 1, 3.81, easeOutQuint"
          "layersIn, 1, 4, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
          "fadeLayersIn, 1, 1.79, almostLinear"
          "fadeLayersOut, 1, 1.39, almostLinear"
          "workspaces, 1, 1.94, almostLinear, fade"
          "workspacesIn, 1, 1.21, almostLinear, fade"
          "workspacesOut, 1, 1.94, almostLinear, fade"
        ];

      };

      bind = [
        "$mainMod, t, exec, $terminal"
        "$mainMod, q, exec, kitty"
        "$mainMod, SPACE, exec, $menu"
        "$mainMod, m, exit"
        "ALT, h, movefocus, l"
        "ALT, l, movefocus, r"
        "ALT, j, movefocus, d"
        "ALT, k, movefocus, u"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 20;

        border_size = 2;
      };
    };
  };
}

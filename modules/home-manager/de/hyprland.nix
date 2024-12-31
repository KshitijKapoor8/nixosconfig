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
      "$terminal" = "ghostty";
      "$browser" = "firefox";
      "$menu" = ''rofi -show drun'';

      monitor = [
        "DP-3, 3440x1440@180, 0x0, 1"
        "HDMI-A-1, 1920x1080@60, 760x1440, 1"
      ];

      windowrulev2 = [
        "opacity,0.5,title:(?i)\\bzen\\b"
      ];

      workspace = [
        "1, monitor:DP-3"
        "2, monitor:HDMI-A-1"
        "3, monitor:DP-3"
        "4, monitor:HDMI-A-1"
        "5, monitor:DP-3"
        "6, monitor:HDMI-A-1"
        "7, monitor:DP-3"
        "8, monitor:HDMI-A-1"
      ];

      decoration = {
        rounding = 20;
        blur = { xray = true; };
      };

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
        # app start shortcuts
        "$mainMod, t, exec, $terminal"
        "$mainMod, b, exec, $browser"
        "$mainMod, SPACE, exec, $menu"
        "$mainMod SHIFT, m, exit"

        # WINDOWS
        # vim motions
        "ALT, h, movefocus, l"
        "ALT, l, movefocus, r"
        "ALT, j, movefocus, d"
        "ALT, k, movefocus, u"
        # resize windows
        "ALT SHIFT, l, resizeactive, 25 0"
        "ALT SHIFT, h, resizeactive, -25 0"
        "ALT SHIFT, k, resizeactive, 0 -25"
        "ALT SHIFT, j, resizeactive, 0 25"
        # cmd tab implementation
        "$mainMod, Tab, cyclenext"
        "$mainMod, Tab, bringactivetotop"
        # window control
        "$mainMod, f, togglefloating"
        "$mainMod SHIFT, f, fullscreen"
        # kill active window
        "$mainMod, q, killactive"

        # WORKSPACES
        "ALT, 1, workspace, 1"
        "ALT, 2, workspace, 2"
        "ALT, 3, workspace, 3"
        "ALT, 4, workspace, 4"
        "ALT, 5, workspace, 5"
        "ALT, 6, workspace, 6"
        "ALT, 7, workspace, 7"
        "ALT, 8, workspace, 8"

        "ALT SHIFT, 1, movetoworkspace, 1"
        "ALT SHIFT, 2, movetoworkspace, 2"
        "ALT SHIFT, 3, movetoworkspace, 3"
        "ALT SHIFT, 4, movetoworkspace, 4"
        "ALT SHIFT, 5, movetoworkspace, 5"
        "ALT SHIFT, 6, movetoworkspace, 6"
        "ALT SHIFT, 7, movetoworkspace, 7"
        "ALT SHIFT, 8, movetoworkspace, 8"

        "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
        "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
        "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
        "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
        "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
        "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
        "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
        "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
        "$mainMod, h, movetoworkspacesilent, h"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      general = {
        gaps_in = 7;
        gaps_out = 25;

        border_size = 2;
      };
    };
  };
}

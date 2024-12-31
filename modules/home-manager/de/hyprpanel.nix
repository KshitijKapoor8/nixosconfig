# *.nix
{ inputs, ... }:
{
  imports = [ inputs.hyprpanel.homeManagerModules.hyprpanel ];
  
  programs.hyprpanel = {
    enable = true;
    systemd.enable = true;
    hyprland.enable = true;
    overwrite.enable = true;

    layout = {
      "bar.layouts" = {
        "0" = {
          left = [ "dashboard" "workspaces" "windowtitle" ];
          middle = [ "media" ];
          right = [ "clock" "cpu" "cputemp" "ram" "volume" "notifications" ];
        };
        "1" = {
          left = ["dashboard" "workspaces" "windowtitle"];
          middle = ["media"];
          right = ["clock" "cpu" "cputemp" "ram" "volume" "notifications" ];
        };
      };
    };


    settings = {
      bar = {
        launcher.autoDetectIcon = true;
        workspaces = {
          workspaces = 8;
          show_icons = false;
          show_numbered = true;
          "numbered_active_indicator" = "highlight"; 
        };
        customModules.cpuTemp.sensor = "temp1_input";
        customModules.ram.labelType = "used/total";
      };

      menus.dashboard.powermenu.avatar.image = "/home/shim/dotfiles/nixos/mascot.png";
      menus.dashboard.powermenu.avatar.name = "Paddington";

      menus.clock = {
        time = {
          military = true;
          hideSeconds = true;
        };
        weather.unit = "metric";
      };

      menus.dashboard.directories.enabled = false;

      theme.notification.scaling = 90;

      theme.bar = {
        border_radius = "30em";
        buttons.radius =  "30em";
        margin_sides = "1.6em";
        opacity = 100;
        floating = true;
        scaling = 70;
        transparent = false;
        menus = {
          menu = {
            battery.scaling = 65;
            bluetooth.scaling = 65;
            clock.scaling = 65;
            dashboard.confirmation_scaling =  60;
            dashboard.scaling = 60;
            media.scaling = 65;
            network.scaling = 65;
            notifications.scaling = 65;
            volume.scaling = 65;
          };
        };
      };

      theme.font = {
        name = "Unifont";
        size = "1.2rem";
      };
    };
  };
}

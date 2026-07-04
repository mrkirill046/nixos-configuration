{ config, pkgs, inputs, lib, ... }: 

let
  pointer = config.home.pointerCursor;
in 
{
  # FUCKING SHIT NIRI-FLAKE DOESN'T SUPPORT FUCKING recent-windows PARAMETER BLYAT
  home.file.".config/niri/config.kdl".text = ''
    include "extra.kdl"
    include "nix-generated.kdl"
  '';

  home.file.".config/niri/extra.kdl".text = ''
    recent-windows {
      off
    }
  '';

  xdg.configFile.niri-config.target = lib.mkForce "niri/nix-generated.kdl";

  programs.niri = {
    settings = {
      hotkey-overlay = {
        skip-at-startup = true;
      };

      input = {
        keyboard = {
          numlock = true;

          xkb = {
            layout = "us,ru";
            options = "grp:win_space_toggle";
          };
        };
      };

      environment = {
        CLUTTER_BACKEND = "wayland";
        GDK_BACKEND = "wayland,x11";
        MOZ_ENABLE_WAYLAND = "1";
        NIXOS_OZONE_WL = "1";
        QT_QPA_PLATFORM = "wayland;xcb";
        QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
        SDL_VIDEODRIVER = "wayland";

        XCURSOR_THEME = pointer.name;
        XCURSOR_SIZE = toString pointer.size;
      };

      spawn-at-startup = [
        {command = ["wl-paste" "--watch" "cliphist" "store"];}
        {command = ["wl-paste" "--type text" "--watch" "cliphist" "store"];}
        {command = ["noctalia"];}
        {command = [
            "mpvpaper" "--layer" "background"  "-o" 
            "--loop --no-audio --hwdec=auto --fullscreen --video-sync=display-resample --gpu-context=x11egl" 
            "eDP-1" "/home/mrkir/Videos/Wallpapers/wallpaper-1080p.mp4"
          ];
        }
        {command = ["sh" "-c" "sleep 5 && discord --start-minimized"];}
        {command = ["steam" "-silent"];}
        {command = ["AyuGram" "-startintray"];}
        {command = ["gtk-launch" "arch-koala-clash"];}
        {command = ["nautilus" "--gapplication-service"];}
      ];

      outputs = {
        "eDP-1" = {
          scale = 1.0;
          position = {
            x = 0;
            y = 0;
          };
        };
      };

      cursor = {
        size = pointer.size;
        theme = pointer.name;
      };
    };
  };
}

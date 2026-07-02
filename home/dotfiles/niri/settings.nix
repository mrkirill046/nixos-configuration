{ config, pkgs, inputs, ... }: 

let
  pointer = config.home.pointerCursor;
in 
{
  programs.niri = {
    settings = {
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

        XCURSOR_THEME = "material-cursors";
        XCURSOR_SIZE = "24";
      };

      spawn-at-startup = [
        {command = ["wl-paste" "--watch" "cliphist" "store"];}
        {command = ["wl-paste" "--type text" "--watch" "cliphist" "store"];}
        {command = [
            "mpvpaper" "--layer" "background"  "-o" 
            "--loop --no-audio --hwdec=auto --fullscreen --video-sync=display-resample --gpu-context=x11egl" 
            "eDP-1" "/home/mrkir/Videos/Wallpapers/wallpaper-1080p.mp4"
          ];
        }
        {command = ["discord" "--start-minimized"];}
        {command = ["steam" "-silent"];}
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
        size = 24;
        theme = "${pointer.name}";
      };
    };
  };
}
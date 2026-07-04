{
  programs.niri.settings.spawn-at-startup = [
    {
      command = [
        "wl-paste"
        "--watch"
        "cliphist"
        "store"
      ];
    }
    {
      command = [
        "wl-paste"
        "--type text"
        "--watch"
        "cliphist"
        "store"
      ];
    }
    { command = [ "noctalia" ]; }
    {
      command = [
        "dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
      ];
    }
    {
      command = [
        "mpvpaper"
        "--layer"
        "background"
        "-o"
        "--loop --no-audio --hwdec=auto --fullscreen --video-sync=display-resample --gpu-context=x11egl"
        "eDP-1"
        "/home/mrkir/Videos/Wallpapers/wallpaper-1080p.mp4"
      ];
    }
    {
      command = [
        "sh"
        "-c"
        "sleep 5 && discord --start-minimized"
      ];
    }
    {
      command = [
        "steam"
        "-silent"
      ];
    }
    {
      command = [
        "AyuGram"
        "-startintray"
      ];
    }
    {
      command = [
        "gtk-launch"
        "arch-koala-clash"
      ];
    }
    {
      command = [
        "nautilus"
        "--gapplication-service"
      ];
    }
  ];
}

{ config, ... }:

{
  programs.noctalia.settings.plugins = {
    enabled = [
      "noctalia/mpvpaper"
    ];

    settings.

    source = [
      {
        name = "official";
        kind = "git";
        location = "https://github.com/noctalia-dev/official-plugins";
      }
      {
        name = "community";
        kind = "git";
        location = "https://github.com/noctalia-dev/community-plugins";
      }
    ];
  };

  programs.noctalia.settings.plugin_settings = {
    "noctalia/mpvpaper" = {
      video_directory = "${config.home.homeDirectory}/Videos/Wallpapers";
      mpv_options = "--video-sync=display-resample --gpu-context=x11egl";
    };
  };
}

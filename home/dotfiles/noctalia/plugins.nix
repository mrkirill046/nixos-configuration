{ config, ... }:

{
  programs.noctalia.settings.plugins = {
    enabled = [
      "noctalia/mpvpaper"
      "noctalia/translator"
      "noctalia/kaomoji"
      "noctalia/notes"
      "noctalia/timer"
      "8bury/mini-docker"
      "avivbintangaringga/nix-monitor"
      "nightwatch75/todo"
      "rxtsel/portctl"
      "radimous/prismlauncher-instances"
      "kenn/keybind-cheatsheet"
    ];

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
    "radimous/prismlauncher-instances" = {
      prism_path = "${config.home.homeDirectory}/.local/share/ElyPrismLauncher";
      launcher_exec_command = "pineconemc";
    };
  };
}

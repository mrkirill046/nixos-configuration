{
  programs.noctalia = {
    enable = true;

    settings = {
      wallpaper.enabled = false;

      theme = {
        mode = "dark";
        source = "custom";
        custom_palette = "raiden-theme"; 

        templates = {
          enable_builtin_templates = true;
          enable_community_templates = true;

          builtin_ids = [
            "cava"
            "niri"
            "btop"
            "gtk3"
            "gtk4"
            "kcolorscheme"
            "qt"
            "alacritty"
            "starship"
          ];

          community_ids = [
            "discord"
            "vscode"
            "obsidian"
          ];
        };
      };

      dock = {
        enabled = true;

        active_monitor_only = true;
        show_instance_count = true;
        show_dots = false;

        main_axis_padding = 0;
        cross_axis_padding = 0;
        item_spacing = 0;
        margin_edge = 4;
        radius = 80;
        background_opacity = 0.5;

        pinned = [
          "librewolf"
          "discord"
          "com.ayugram.desktop"
        ];
      };

      shell = {
        panel = {
          launcher_position = "bottom_center";
        };

        launcher = {
          session_search = true;
        };
      };
    };
  };
}
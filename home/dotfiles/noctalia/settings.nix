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
          ];
        };
      };
    };
  };
}
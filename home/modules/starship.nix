{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      palette = "noctalia";

      add_newline = false;

      command_timeout = 1300;
      scan_timeout = 50;

      format = "$username$hostname$directory$os$git_branch$git_status\n$character";

      directory = {
        truncation_length = 0;
        truncate_to_repo = false;

        style = "bold mauve";
      };

      git_branch = {
        style = "bold lavender";
      };

      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
      };

      os = {
        disabled = false;

        symbols = {
          NixOS = " ";
        };

        style = "bold blue";
        format = "[$symbol]($style) ";
      };

      username = {
        show_always = true;

        style_user = "bold green";
        style_root = "bold red";

        format = "[$user]($style)";
      };

      hostname = {
        ssh_only = false;

        style = "bold yellow";

        format = "[@$hostname]($style) ";
      };

      palettes.noctalia = {
        # Standard colors
        blue = "#f4b7b9";
        red = "#ffb4ab";
        green = "#dfb8f6";
        yellow = "#d2c1d8";
        cyan = "#d2c1d8";
        magenta = "#dfb8f6";
        white = "#e9e0e8";
        black = "#4b454d";

        # Extended palette
        rosewater = "#d2c1d8";
        flamingo = "#ffb4ab";
        pink = "#dfb8f6";
        mauve = "#dfb8f6";
        maroon = "#ffb4ab";
        peach = "#d2c1d8";
        teal = "#d2c1d8";
        sky = "#d2c1d8";
        sapphire = "#f4b7b9";
        lavender = "#dfb8f6";

        # Text shades
        text = "#e9e0e8";
        subtext1 = "#e9e0e8";
        subtext0 = "#978e98";

        # Surface shades
        overlay2 = "#978e98";
        overlay1 = "#978e98";
        overlay0 = "#4b454d";
        surface2 = "#4b454d";
        surface1 = "#4b454d";
        surface0 = "#161217";
        base = "#161217";
        mantle = "#161217";
        crust = "#161217";
      };
    };
  };
}

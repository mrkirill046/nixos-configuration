{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      add_newline = false;

      command_timeout = 1300;
      scan_timeout = 50;

      format = "$username$hostname$directory$os$git_branch$git_status\n$character";

      directory = {
        truncation_length = 0;
        truncate_to_repo = false;
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

        style_root = "bold red";
        format = "[$user]($style)";
      };

      hostname = {
        ssh_only = false;
        format = "[@$hostname]($style) ";
      };
    };
  };
}

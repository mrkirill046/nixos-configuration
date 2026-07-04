{ config, ... }:

{
  xdg.configFile."fastfetch/logo/Nix.png" = {
    source = ../../assets/Nix.png;
  };

  programs.fastfetch = {
    enable = true;

    settings = {
      logo = {
        source = "${config.home.homeDirectory}/.config/fastfetch/logo/Nix.png";
        height = 20;
      };

      display = {
        separator = " : ";
      };

      modules = [
        {
          type = "os";
          key = "   System";
          format = "{3}";
          keyColor = "blue";
        }
        {
          type = "custom";
          format = "┌─────────────────────────────────────────────┐";
        }
        {
          type = "chassis";
          key = "   Chassis";
          format = "{1} {2} {3}";
        }
        {
          type = "kernel";
          key = "   Kernel";
          format = "{1} {2}";
          keyColor = "red";
        }
        {
          type = "packages";
          key = "  󰏖 Packages";
          keyColor = "green";
        }
        {
          type = "display";
          key = "  󰍹 Display";
          format = "{1}x{2} @ {3}Hz [{7}]";
          keyColor = "green";
        }
        {
          type = "terminal";
          key = "   Terminal";
          keyColor = "yellow";
        }
        {
          type = "wm";
          key = "   WM";
          format = "{2}";
          keyColor = "yellow";
        }
        {
          type = "custom";
          format = "└─────────────────────────────────────────────┘";
        }
        {
          type = "title";
          key = "  󱐋󱐋";
          format = "{6} {7} {8}";
        }
        {
          type = "custom";
          format = "┌─────────────────────────────────────────────┐";
        }
        {
          type = "cpu";
          key = "   CPU";
          format = "{1} @ {7}";
          keyColor = "blue";
        }
        {
          type = "gpu";
          key = "  󰾲 GPU";
          format = "{1} {2}";
          keyColor = "blue";
        }
        {
          type = "memory";
          key = "   Memory";
          keyColor = "magenta";

          percent = {
            green = 30;
            yellow = 70;
          };
        }
        {
          type = "swap";
          key = "  󰯍 Swap";
          keyColor = "cyan";

          percent = {
            green = 30;
            yellow = 70;
          };
        }
        {
          type = "disk";
          key = "  󰋊 Disk";
          folders = "/";

          percent = {
            green = 30;
            yellow = 70;
          };
        }
        {
          type = "uptime";
          key = "   Uptime";
          keyColor = "red";
        }
        {
          type = "custom";
          format = "└─────────────────────────────────────────────┘";
        }
        {
          type = "colors";
          paddingLeft = 2;
          symbol = "circle";
        }

        "break"
      ];
    };
  };
}

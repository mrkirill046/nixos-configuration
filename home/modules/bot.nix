{ config, pkgs, ... }:

let
  path = config.home.homeDirectory;
in
{
  systemd.user.services.kazuha7777Bot = {
    Unit = {
      Description = "Kazuha7777 Telegram Bot";
      After = [ "network.target" ];
    };

    Install = {
      WantedBy = [ "default.target" ];
    };

    Service = {
      WorkingDirectory = "${path}/Documents/Python/kazuha7777Bot";

      ExecStart = "${pkgs.uv}/bin/uv run --project ${path}/Documents/Python/kazuha7777Bot --script ${path}/Documents/Python/kazuha7777Bot/bot.py";

      Restart = "always";
      RestartSec = 10;

      Environment = [
        "WAYLAND_DISPLAY=wayland-1"
      ];

      StandardOutput = "journal";
      StandardError = "journal";
    };
  };
}

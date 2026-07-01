{ config, pkgs, ... }: 

{
  services.xserver.enable = true;

  systemd.user.services.xwayland-satellite = {
    description = "Xwayland satellite";

    wantedBy = [
      "graphical-session.target"
    ];

    serviceConfig = {
      ExecStart = "${pkgs.xwayland-satellite}/bin/xwayland-satellite";
      Restart = "on-failure";
    };
  };
}
{ pkgs, ... }:

{
  systemd.user.services.polkit-gnome = {
    description = "Polkit agent";

    wantedBy = [
      "graphical-session.target"
    ];

    serviceConfig = {
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
    };
  };
}

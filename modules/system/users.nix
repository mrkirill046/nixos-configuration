{ pkgs, ... }:

{
  users.users.mrkir = {
    isNormalUser = true;

    description = "Kirill";

    extraGroups = [
      "wheel"
      "networkmanager"
      "docker"
    ];

    shell = pkgs.fish;
  };
}

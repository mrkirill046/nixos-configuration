{ pkgs, ... }:

{
  users.users.mrkir = {
    isNormalUser = true;

    description = "Kirill";

    extraGroups = [
      "wheel"
      "networkmanager"
    ];

    shell = pkgs.fish;
  };
}
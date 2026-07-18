{ inputs, pkgs, ... }:

{
  environment.systemPackages = [
    (import inputs.creamlinux-installer { inherit pkgs; })
  ];

  programs.gamemode = {
    enable = true;
    enableRenice = true;
  };
}

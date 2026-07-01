{
  imports = [
    ./modules/packages.nix
    ./modules/desktop.nix
  ];

  home.username = "mrkir";
  home.homeDirectory = "/home/mrkir";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
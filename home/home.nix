{
  imports = [
    ./modules/packages.nix
    ./modules/desktop.nix
  ];

  home.username = "mrkir";
  home.homeDirectory = "/home/mrkir";

  programs.home-manager.enable = true;
}
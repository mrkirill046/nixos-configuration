{ inputs, pkgs, ... }:

{
  imports = [
    inputs.niri.homeModules.config
    inputs.noctalia.homeModules.default

    ./modules/packages.nix
    ./modules/desktop.nix
    ./modules/environment.nix
    ./modules/xdg.nix

    ./programs/vscode.nix
    ./programs/ghostty.nix
    ./programs/nixcord.nix
    ./programs/yazi.nix
    ./programs/mpv.nix

    ./dotfiles/noctalia/default.nix
    ./dotfiles/niri/default.nix
  ];

  home.username = "mrkir";
  home.homeDirectory = "/home/mrkir";

  home.stateVersion = "26.05";

  home.pointerCursor = {
    name = "material_cursors";
    package = pkgs.material-cursors;
    size = 32;

    gtk.enable = true;
    x11.enable = true;
  };

  programs.home-manager.enable = true;
}

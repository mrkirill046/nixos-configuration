{ pkgs, ... }:

{
  home.packages = with pkgs; [
    steam
    librewolf
    chromium
    btop
    ayugram-desktop
    vscode

    adwaita-icon-theme
    hicolor-icon-theme
  ];
}
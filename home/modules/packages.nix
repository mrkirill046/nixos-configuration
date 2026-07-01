{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    steam
    librewolf
    chromium
    btop
    ayugram-desktop
    vscode
  ];
}
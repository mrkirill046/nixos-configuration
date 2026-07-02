{ pkgs, ... }:

{
  home.packages = with pkgs; [
    steam
    librewolf
    chromium
    vscode

    # Clipboard
    wl-clipboard
    cliphist

    # Screenshot
    grim
    slurp

    # Desktop
    mpvpaper
    mako
    waybar
    hyprlock

    # GUI
    gnome-control-center
    networkmanagerapplet
    blueman

    # Tools
    ripgrep
    fd
    bat
    eza
    jq
    unzip
    zip
    curl
    wget

    # Themes
    adwaita-icon-theme
    hicolor-icon-theme
  ];
}
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Browsers / Internet
    librewolf
    chromium
    discord

    # Dev / IDE
    vscode

    # Gaming
    steam

    # Mods / tweaks
    betterdiscord-installer

    # Clipboard / productivity
    wl-clipboard
    cliphist

    # Screenshots / screen tools
    grim
    slurp

    # Media / wallpapers
    mpvpaper

    # Notifications
    mako

    # Lock screen
    hyprlock

    # GUI system tools
    gnome-control-center
    networkmanagerapplet
    blueman

    # Bluetooth stack (user tools)
    bluez

    # CLI tools
    ripgrep
    fd
    bat
    eza
    jq
    unzip
    zip
    curl
    wget

    # Icons / themes
    adwaita-icon-theme
    hicolor-icon-theme
  ];
}
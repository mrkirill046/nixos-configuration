{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Browsers / Internet
    librewolf
    chromium
    ayugram-desktop

    # Dev / IDE / Tools
    vscode
    unityhub
    obsidian
    jetbrains.webstorm
    jetbrains.pycharm
    jetbrains.rider
    jetbrains.rust-rover
    jetbrains.datagrip

    # Gaming
    steam

    # Mods / tweaks
    gamemode

    # Clipboard / productivity
    wl-clipboard
    cliphist

    # Media / wallpapers
    mpvpaper

    # GUI system tools
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
    btop
    cava

    # Icons / themes
    adwaita-icon-theme
    hicolor-icon-theme
  ];
}
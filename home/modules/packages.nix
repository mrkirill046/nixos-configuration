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

    # Screenshots / screen tools
    grim
    slurp

    # Media / wallpapers
    mpvpaper

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
    btop
    cava

    # Icons / themes
    adwaita-icon-theme
    hicolor-icon-theme
  ];
}
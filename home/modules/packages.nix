{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Browsers / Internet
    librewolf
    tor-browser
    chromium
    ayugram-desktop

    # Dev / IDE / Tools
    vscode
    unityhub
    obsidian
    nixfmt
    nixd
    jetbrains.webstorm
    jetbrains.pycharm
    jetbrains.rider
    jetbrains.rust-rover
    jetbrains.datagrip
    libnotify

    # Gaming
    steam
    steam-run

    # Mods / tweaks
    gamemode
    mangohud
    goverlay
    vkbasalt

    # Clipboard / productivity
    wl-clipboard
    cliphist

    # Media / wallpapers
    mpvpaper

    # GUI system tools
    networkmanagerapplet
    blueman
    mission-center

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
    dust
    duf

    # Icons / themes
    adwaita-icon-theme
    hicolor-icon-theme
  ];
}

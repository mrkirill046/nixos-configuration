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
    wl-clip-persist
    cliphist

    # Media / wallpapers
    mpvpaper
    easyeffects
    pavucontrol

    # GUI system tools
    networkmanagerapplet
    blueman
    mission-center
    scrcpy

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
    dex

    # Icons / themes
    adwaita-icon-theme
    hicolor-icon-theme

    (makeDesktopItem {
      name = "dex";
      desktopName = "Dex Launcher";
      exec = "dex %f";
      terminal = false;
      mimeTypes = [ "application/x-desktop" ];
    })
  ];
}

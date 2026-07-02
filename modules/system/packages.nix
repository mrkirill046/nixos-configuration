{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Desktop / GUI base
    alacritty
    fuzzel
    nautilus

    # Filesystem / compatibility
    distrobox
    ntfs3g
    gvfs
    glib
    dconf
    xdg-utils
    gtk3
    shared-mime-info
    libxshmfence

    # File previews / GUI utilities
    ffmpegthumbnailer
    file-roller
    loupe

    # Wayland / X11 bridge
    xwayland-satellite

    # Boot / system tools
    os-prober
    plymouth
    efibootmgr

    # Login manager / themes
    material-cursors

    # Fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    jetbrains-mono
    nerd-fonts.jetbrains-mono

    # Security / auth
    polkit
    polkit_gnome
    gnome-keyring
    libsecret

    # Shell / dev tools
    fish
    openssh
    git
    tree
  ];
}
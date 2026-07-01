{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty
    fuzzel
    distrobox
    xwayland-satellite
    nautilus
    ntfs3g
    os-prober
    plymouth

    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji

    jetbrains-mono
    nerd-fonts.jetbrains-mono

    gvfs
    glib
    dconf
    xdg-utils
    shared-mime-info
    ffmpegthumbnailer
    file-roller
    loupe
    polkit_gnome
    efibootmgr

    fish
    openssh
    git
    tree
    polkit
    gnome-keyring
    libsecret
  ];
}
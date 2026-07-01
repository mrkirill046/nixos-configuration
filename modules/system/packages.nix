{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty
    fuzzel
    distrobox
    xwayland-satellite
    nautilus
    ntfs3g

    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji

    jetbrains-mono
    nerd-fonts.jetbrains-mono

    fish
    tree
    polkit
    gnome-keyring
    libsecret
  ];
}
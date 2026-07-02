{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/system/boot.nix
    ../../modules/system/networking.nix
    ../../modules/system/locale.nix
    ../../modules/system/users.nix
    ../../modules/system/packages.nix
    ../../modules/system/security.nix
    ../../modules/system/state.nix
    ../../modules/system/environment.nix

    ../../modules/desktop/graphics.nix
    ../../modules/desktop/sddm.nix

    ../../modules/virtualisation/podman.nix

    ../../modules/programs/fish.nix
    ../../modules/programs/direnv.nix

    ../../modules/services/keyring.nix
    ../../modules/services/xwayland.nix
    ../../modules/services/bluetooth.nix
    ../../modules/services/gnome.nix
    ../../modules/services/polkit.nix
    ../../modules/services/pipewire.nix
  ];

  programs.niri.enable = true;
}
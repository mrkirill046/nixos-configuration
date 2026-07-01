{
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  security.polkit.enable = true;

  security.pam.services.greetd.enableGnomeKeyring = true;
}
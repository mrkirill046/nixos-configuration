{
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  security.sudo.extraRules = [
    {
      users = [ "mrkir" ];
      commands = [
        {
          command = "/run/current-system/sw/bin/podman";
          options = [ "NOPASSWD" ];
        }
      ];
    }
  ];

  security.polkit.enable = true;

  security.pam.services.greetd.enableGnomeKeyring = true;
}
{ pkgs, inputs, ... }:

let
  spicePkgs = inputs.spicetify.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  imports = [
    inputs.spicetify.homeManagerModules.default
  ];

  programs.spicetify = {
    enable = true;

    theme = spicePkgs.themes.comfy;

    enabledExtensions = with spicePkgs.extensions; [
      adblockify
      shuffle
      volumePercentage
      hidePodcasts
    ];
  };
}

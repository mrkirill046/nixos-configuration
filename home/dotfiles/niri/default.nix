{ inputs, ... }:

{
  imports = [
    ./binds.nix
    ./rules.nix
    ./settings.nix
    ./layout.nix
  ];
}
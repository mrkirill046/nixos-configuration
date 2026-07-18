{ inputs, pkgs, ... }:

{
  environment.systemPackages = [
    (import inputs.creamlinux-installer { inherit pkgs; })
  ];
}

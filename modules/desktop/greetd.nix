{ pkgs, inputs, ... }:

let
  noctalia-greeter = inputs.noctalia-greeter.packages.${pkgs.stdenv.hostPlatform.system}.default;
in
{
  imports = [
    inputs.noctalia-greeter.nixosModules.default
  ];

  services.greetd = {
    enable = true;

    settings = {
      default_session = {
        command = "${noctalia-greeter}/bin/noctalia-greeter-session -- --user mrkir --session niri";
        user = "greeter";
      };
    };
  };

  programs.noctalia-greeter = {
    enable = true;

    greeter-args = "";

    settings = {
      cursor = {
        theme = "material_cursors";
        size = 24;
        path = "${pkgs.material-cursors}/share/icons";
      };
    };
  };
}

{ pkgs, ... }:

{
  services.greetd = {
    enable = true;

    settings.default_session = {
      command = "numlockx on && ${pkgs.tuigreet}/bin/tuigreet --time --remember --cmd niri-session";
      user = "greeter";
    };
  };
}

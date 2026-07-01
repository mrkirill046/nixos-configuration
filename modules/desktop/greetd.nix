{ pkgs, ... }:

{
  services.greetd = {
    enable = true;

    settings.default_session = {
      command = ''${pkgs.tuigreet}/bin/tuigreet --time --remember --cmd "numlockx on && niri-session"'';
      user = "greeter";
    };
  };
}
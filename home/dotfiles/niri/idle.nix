{
  services.hypridle = {
    enable = true;

    settings = {
      listener = [
        {
          timeout = 900;
          on-timeout = "noctalia msg brightness-set 10";
          on-resume = "noctalia msg brightness-set 100";
        }
        {
          timeout = 1800;
          on-timeout = "niri msg action power-off-monitors";
          on-resume = "niri msg action power-on-monitors";
        }
      ];
    };
  };
}

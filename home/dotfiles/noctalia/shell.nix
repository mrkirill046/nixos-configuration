{ config, ... }:

{
  programs.noctalia.settings.shell = {
    lang = "en";
    font_family = "TeX Gyre Heros";

    avatar_path = "${config.home.homeDirectory}/Pictures/Avatars/kazuha.jpg";

    time_format = "{:%I:%M %p}";
    date_format = "%A, %d %B";

    corner_radius_scale = 2;

    panel = {
      launcher_position = "bottom_center";

      open_near_click_control_center = true;
    };

    launcher = {
      session_search = true;
    };

    screenshot = {
      directory = "${config.home.homeDirectory}/Pictures/Screenshots";
    };

    screen_corners.enabled = true;
  };
}

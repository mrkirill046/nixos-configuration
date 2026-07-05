{ pkgs, config, ... }:

{
  gtk = {
    enable = true;

    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };

    iconTheme = {
      name = "Adwaita";
      package = pkgs.gnome-themes-extra;
    };

    cursorTheme = {
      name = "material-cursors";
      package = pkgs.material-cursors;
      size = 24;
    };

    gtk3.bookmarks = [
      "file://${config.home.homeDirectory}/Downloads"
      "file://${config.home.homeDirectory}/Documents"
      "file://${config.home.homeDirectory}/Pictures"
      "file://${config.home.homeDirectory}/Videos"
      "file://${config.home.homeDirectory}/Music"
    ];

    gtk3.extraCss = builtins.readFile ../../assets/gtk/3/noctalia.css;
    gtk4.extraCss = builtins.readFile ../../assets/gtk/4/noctalia.css;
  };

  qt = {
    enable = true;

    style = {
      name = "adwaita-dark";
    };
  };
}

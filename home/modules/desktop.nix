{ pkgs, ... }:

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

    gtk3.extraConfig.gtk-application-prefer-dark-theme = 1;
    gtk4.extraConfig.gtk-application-prefer-dark-theme = 1;
  };

  qt = {
    enable = true;
    
    style = {
      name = "adwaita-dark";
    };
  };
}
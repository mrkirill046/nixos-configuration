{ pkgs, ... }:

{
  xdg.portal = {
    enable = true;

    config.common.default = [ "gtk" ];

    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  xdg.mimeApps = {
    enable = true;

    defaultApplications = {
      "text/html" = [ "librewolf.desktop" ];
      "x-scheme-handler/http" = [ "librewolf.desktop" ];
      "x-scheme-handler/https" = [ "librewolf.desktop" ];
      "x-scheme-handler/about" = [ "librewolf.desktop" ];
      "application/xhtml+xml" = [ "librewolf.desktop" ];

      "image/jpeg" = [ "org.gnome.Loupe.desktop" ];
      "image/png" = [ "org.gnome.Loupe.desktop" ];
      "image/gif" = [ "org.gnome.Loupe.desktop" ];
      "image/webp" = [ "org.gnome.Loupe.desktop" ];
      "image/svg+xml" = [ "org.gnome.Loupe.desktop" ];
      "image/bmp" = [ "org.gnome.Loupe.desktop" ];
      "image/tiff" = [ "org.gnome.Loupe.desktop" ];

      "video/mp4" = [ "mpv.desktop" ];
      "video/x-matroska" = [ "mpv.desktop" ];
      "video/webm" = [ "mpv.desktop" ];
      "video/quicktime" = [ "mpv.desktop" ];
      "video/x-msvideo" = [ "mpv.desktop" ];

      "text/plain" = [ "org.gnome.TextEditor.desktop" ];
      "text/markdown" = [ "org.gnome.TextEditor.desktop" ];
      "text/x-nix" = [ "org.gnome.TextEditor.desktop" ];
      "application/json" = [ "org.gnome.TextEditor.desktop" ];
      "application/toml" = [ "org.gnome.TextEditor.desktop" ];
      "application/yaml" = [ "org.gnome.TextEditor.desktop" ];
      "text/x-shellscript" = [ "org.gnome.TextEditor.desktop" ];
      "application/x-zerosize" = [ "org.gnome.TextEditor.desktop" ];

      "audio/mpeg" = [ "io.bassi.Amberol.desktop" ];
      "audio/ogg" = [ "io.bassi.Amberol.desktop" ];
      "audio/wav" = [ "io.bassi.Amberol.desktop" ];
      "audio/x-flac" = [ "io.bassi.Amberol.desktop" ];
    };
  };

  xdg.userDirs = {
    enable = true;
    createDirectories = true;

    download = "$HOME/Downloads";
    documents = "$HOME/Documents";
    pictures = "$HOME/Pictures";
    videos = "$HOME/Videos";
    music = "$HOME/Music";
    desktop = "$HOME/Desktop";
  };
}

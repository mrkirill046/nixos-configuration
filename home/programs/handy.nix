{ config, ... }:

{
  home.file.".local/share/icons/hicolor/scalable/apps/handy.svg".source =
    ../../assets/icons/handy.svg;

  home.file.".local/share/applications/handy.desktop".text = ''
    [Desktop Entry]
    Type=Application
    Name=Handy
    Comment=The free and open source app for speech to text (AppImage)
    Exec=${config.home.homeDirectory}/Applications/Handy_amd64.AppImage
    Icon=handy
    Terminal=false
    Categories=Utilities;
  '';
}

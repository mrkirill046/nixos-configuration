{ config, ... }:

{
  home.file.".local/share/icons/hicolor/scalable/apps/pineconemc.svg".source =
    ../../assets/pineconemc.svg;

  home.file.".local/share/applications/pineconemc.desktop".text = ''
    [Desktop Entry]
    Type=Application
    Name=PineconeMC
    Comment=Minecraft Launcher (AppImage)
    Exec=${config.home.homeDirectory}/Applications/PineconeMC-Linux-x86_64.AppImage
    Icon=pineconemc
    Terminal=false
    Categories=Game;
  '';
}

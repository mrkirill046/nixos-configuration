{ pkgs, config, ... }:

{
  home.file.".vscode/extensions/mrkir.raiden-theme" = {
    source = ../../assets/vscode/raiden-theme;
    recursive = true;
  };

  programs.vscode = {
    enable = true;
    
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        ms-python.python
        ms-dotnettools.csharp
        rust-lang.rust-analyzer
        bradlc.vscode-tailwindcss
        esbenp.prettier-vscode
        dbaeumer.vscode-eslint
        eamodio.gitlens
        arrterian.nix-env-selector
        jnoortheen.nix-ide
        mkhl.direnv
      ];

      userSettings = {
        "workbench.colorTheme" = "Raiden Theme";
      };
    };
  };
}

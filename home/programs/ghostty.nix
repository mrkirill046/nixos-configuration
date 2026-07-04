{
  programs.ghostty = {
    enable = true;

    settings = {
      confirm-close-surface = false;

      keybind = [
        "performable:ctrl+c=copy_to_clipboard"
        "ctrl+v=paste_from_clipboard"
      ];

      window-padding-x = 12;
      window-padding-y = 12;

      font-family = "JetBrains Mono";
      font-size = 14;

      window-decoration = true;
    };
  };
}

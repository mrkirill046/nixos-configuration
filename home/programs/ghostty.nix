{
  programs.ghostty = {
    enable = true;

    settings = {
      confirm-close-surface = false;

      keybind = [
        "performable:ctrl+c=copy_to_clipboard"
        "ctrl+v=paste_from_clipboard"
      ];
    };
  };
}
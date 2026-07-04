{
  programs.fish = {
    enable = true;

    shellAbbrs = {
      ls = "lsd";
      ll = "lsd -l";
      la = "lsd -la";
      tree = "lsd --tree";

      cat = "bat";
      find = "fd";
      grep = "rg";

      du = "dust";
      df = "duf";
    };

    interactiveShellInit = ''
      set fish_greeting
    '';
  };
}

{
  xdg.configFile."nvim/init.lua".source = ../../assets/nvim/init.lua;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
}

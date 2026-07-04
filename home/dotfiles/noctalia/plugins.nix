{
  programs.noctalia.settings.plugins = {
    enabled = [
      "noctalia/screen_recorder"
    ];

    source = [
      {
        name = "official";
        kind = "git";
        location = "https://github.com/noctalia-dev/official-plugins";
      }
      {
        name = "community";
        kind = "git";
        location = "https://github.com/noctalia-dev/community-plugins";
      }
    ];
  };
}

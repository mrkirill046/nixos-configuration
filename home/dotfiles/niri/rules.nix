{
  programs.niri.settings = {
    window-rules = [
      {
        clip-to-geometry = true;

        geometry-corner-radius =
          let
            radius = 16.0;
          in
          {
            bottom-left = radius;
            bottom-right = radius;
            top-left = radius;
            top-right = radius;
          };
      }
      {
        matches = [
          {
            app-id = "com.mitchellh.ghostty.yazi";
          }
        ];

        open-floating = false;

        default-column-width.proportion = 1.0;
      }
    ];
  };
}

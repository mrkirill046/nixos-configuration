{
  programs.yazi = {
    enable = true;

    settings = {
      manager = {
        ratio = [
          1
          2
          5
        ];
        sort_by = "name";
        sort_sensitive = false;
        sort_reverse = false;
        sort_dir_first = true;
        show_hidden = true;
      };

      opener = {
        edit = [
          {
            run = "\${EDITOR:-nano} \"$@\"";
            block = true;
            for = "unix";
          }
        ];
        play = [
          {
            run = "mpv \"$@\"";
            orphan = true;
            for = "unix";
          }
        ];
        show = [
          {
            run = "loupe \"$@\"";
            orphan = true;
            for = "unix";
          }
        ];
      };

      open = {
        rules = [
          {
            url = ".*\\.json$";
            use = "edit";
          }
          {
            mime = "text/*";
            use = "edit";
          }
          {
            mime = "image/*";
            use = "show";
          }
          {
            mime = "video/*";
            use = "play";
          }
        ];
      };

      preview = {
        max_width = 1920;
        max_height = 1080;
        image_filter = "triangle";
        image_quality = 75;
      };
    };
  };
}

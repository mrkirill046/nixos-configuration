{
  programs.niri.settings = {
    window-rules = [
      {
        clip-to-geometry = true;
        draw-border-with-background = false;

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

        opacity = 0.95;
      }
      {
        matches = [ { is-floating = true; } ];
        shadow.enable = true;
      }
      {
        matches = [ { app-id = "^steam_app_[0-9]+$"; } ];
        open-fullscreen = true;
      }
      {
        matches = [
          { app-id = "com.mitchellh.ghostty.yazi"; }
        ];

        open-floating = false;
        open-maximized = true;
      }
      {
        matches = [
          {
            app-id = "steam";
            title = "^notificationtoasts_\\d+_desktop$";
          }
        ];

        open-floating = true;
        open-focused = false;

        default-floating-position = {
          relative-to = "bottom-right";

          x = 10;
          y = -70;
        };
      }
      {
        matches = [ { app-id = "com.ayugram.desktop"; } ];
        block-out-from = "screencast";
      }
      {
        matches = [
          { app-id = "librewolf"; }
          { app-id = "Tor Browser"; }
          { app-id = "chromium-browser"; }
          { app-id = "obsidian"; }
        ];

        open-maximized = true;
      }
      {
        matches = [
          { title = "Picture-in-Picture"; }
        ];

        open-floating = true;

        default-floating-position = {
          x = 32;
          y = 32;

          relative-to = "bottom-right";
        };

        default-column-width.fixed = 480;
        default-window-height.fixed = 270;
      }
      {
        matches = [ { app-id = "dialog"; } ];
        open-floating = true;
      }
      {
        matches = [ { app-id = "popup"; } ];
        open-floating = true;
      }
      {
        matches = [ { app-id = "task_dialog"; } ];
        open-floating = true;
      }
      {
        matches = [ { app-id = "gcr-prompter"; } ];
        open-floating = true;
      }
      {
        matches = [ { app-id = "file-roller"; } ];
        open-floating = true;
      }
      {
        matches = [ { app-id = "org.gnome.FileRoller"; } ];
        open-floating = true;
      }
      {
        matches = [ { app-id = "nm-connection-editor"; } ];
        open-floating = true;
      }
      {
        matches = [ { app-id = "blueman-manager"; } ];
        open-floating = true;
      }
      {
        matches = [ { app-id = "xdg-desktop-portal-gtk"; } ];

        open-floating = true;

        default-column-width.fixed = 800;
        default-window-height.fixed = 600;
      }
      {
        matches = [ { title = "Progress"; } ];
        open-floating = true;
      }
      {
        matches = [ { title = "File Operations"; } ];
        open-floating = true;
      }
      {
        matches = [ { title = "Copying"; } ];
        open-floating = true;
      }
      {
        matches = [ { title = "Moving"; } ];
        open-floating = true;
      }
      {
        matches = [ { title = "Properties"; } ];
        open-floating = true;
      }
      {
        matches = [ { title = "file progress"; } ];
        open-floating = true;
      }
      {
        matches = [ { title = "Confirm"; } ];
        open-floating = true;
      }
      {
        matches = [ { title = "Authentication Required"; } ];
        open-floating = true;
      }
      {
        matches = [ { title = "Notice"; } ];
        open-floating = true;
      }
      {
        matches = [ { title = "Warning"; } ];
        open-floating = true;
      }
      {
        matches = [ { title = "Error"; } ];
        open-floating = true;
      }
      {
        matches = [
          {
            app-id = "org.gnome.Nautilus";
            title = "^.*(File Upload|Choose Files|Open folder|Enter name of file to save to).*$";
          }
        ];

        open-floating = true;

        default-column-width.fixed = 800;
        default-window-height.fixed = 600;
      }
    ];
  };
}

{ config, pkgs, ... }:

{
  programs.niri.settings.binds =
    with config.lib.niri.actions;

    let
      fullscreen-screenshot = spawn "sh" "-c" "noctalia msg screenshot-fullscreen";
      terminal = spawn "${pkgs.ghostty}/bin/ghostty";
    in
    {
      ### Noctalia shell
      # Audio
      "XF86AudioRaiseVolume" = {
        hotkey-overlay.title = "Increase volume";
        action = spawn "sh" "-c" "noctalia msg volume-up";
      };
      "XF86AudioLowerVolume" = {
        hotkey-overlay.title = "Decrease volume";
        action = spawn "sh" "-c" "noctalia msg volume-down";
      };

      "XF86AudioMute" = {
        hotkey-overlay.title = "Mute volume";
        action = spawn "sh" "-c" "noctalia msg volume-mute";
      };

      # Brightness
      "XF86MonBrightnessUp" = {
        hotkey-overlay.title = "Increase brightness";
        action = spawn "sh" "-c" "noctalia msg brightness-up";
      };
      "XF86MonBrightnessDown" = {
        hotkey-overlay.title = "Decrease brightness";
        action = spawn "sh" "-c" "noctalia msg brightness-down";
      };

      # Media
      "XF86AudioPlay" = {
        hotkey-overlay.title = "Play media";
        action = spawn "sh" "-c" "noctalia msg media play";
      };
      "XF86AudioStop" = {
        hotkey-overlay.title = "Stop media";
        action = spawn "sh" "-c" "noctalia msg media stop";
      };

      "XF86AudioPrev" = {
        hotkey-overlay.title = "Previous media";
        action = spawn "sh" "-c" "noctalia msg media previous";
      };
      "XF86AudioNext" = {
        hotkey-overlay.title = "Next media";
        action = spawn "sh" "-c" "noctalia msg media next";
      };

      # Noctalia core
      "Mod+I" = {
        hotkey-overlay.title = "Toggle settings";
        action = spawn "sh" "-c" "noctalia msg settings-toggle";
      };
      "Ctrl+Space" = {
        hotkey-overlay.title = "Toggle launcher";
        action = spawn "sh" "-c" "noctalia msg panel-toggle launcher";
      };
      "Mod+U" = {
        hotkey-overlay.title = "Toggle control center";
        action = spawn "sh" "-c" "noctalia msg panel-toggle control-center";
      };

      "Mod+Shift+R" = {
        hotkey-overlay.title = "Reload Noctalia";
        action = spawn "sh" "-c" "noctalia msg config-reload";
      };

      # Session
      "Mod+L" = {
        hotkey-overlay.title = "Lock the screen";
        action = spawn "sh" "-c" "noctalia msg session lock";
      };

      "Ctrl+Alt+Delete" = {
        hotkey-overlay.title = "Show session menu";
        action = spawn "sh" "-c" "noctalia msg panel-open session";
      };

      # Noctalia panels
      "Mod+V" = {
        hotkey-overlay.title = "Show clipboard panel";
        action = spawn "sh" "-c" "noctalia msg panel-toggle clipboard";
      };

      "Mod+Shift+W" = {
        hotkey-overlay.title = "Show video wallpaper panel";
        action = spawn "sh" "-c" "noctalia msg panel-toggle noctalia/mpvpaper:picker";
      };

      # Window management
      "Mod+Tab" = {
        hotkey-overlay.title = "Show window switcher";
        action = spawn "sh" "-c" "noctalia msg window-switcher";
      };

      # Screenshot
      "Mod+Shift+S" = {
        hotkey-overlay.title = "Take area screenshot";
        action = spawn "sh" "-c" "noctalia msg screenshot-region";
      };
      "Print" = {
        hotkey-overlay.title = "Take fullscreen screenshot";
        action = fullscreen-screenshot;
      };
      "Win+Shift+P" = {
        hotkey-overlay.title = "Take fullscreen screenshot";
        action = fullscreen-screenshot;
      };

      ### Apps
      "Mod+Return" = {
        hotkey-overlay.title = "Open terminal";
        action = terminal;
      };
      "Mod+T" = {
        hotkey-overlay.title = "Open terminal";
        action = terminal;
      };

      "Mod+E" = {
        hotkey-overlay.title = "Open file manager";
        action = spawn "${pkgs.nautilus}/bin/nautilus";
      };
      "Mod+Shift+E" = {
        hotkey-overlay.title = "Open another file manager";
        action = spawn "${pkgs.ghostty}/bin/ghostty" "--class=com.mitchellh.ghostty.yazi" "-e" "yazi";
      };

      "Mod+B" = {
        hotkey-overlay.title = "Open browser";
        action = spawn "${pkgs.librewolf}/bin/librewolf";
      };

      "Mod+C" = {
        hotkey-overlay.title = "Open code editor";
        action = spawn "${pkgs.vscode}/bin/code";
      };

      "Ctrl+Shift+Escape" = {
        hotkey-overlay.title = "Open mission center";
        action = spawn "${pkgs.mission-center}/bin/missioncenter";
      };

      ### Other
      "Mod+Slash".action = {
        show-hotkey-overlay = [ ];
      };

      "F11".action = {
        fullscreen-window = { };
      };

      "Mod+Q".action = close-window;
      "Mod+S".action = switch-preset-column-width;
      "Mod+F".action = maximize-column;

      "Mod+1".action = set-column-width "25%";
      "Mod+2".action = set-column-width "50%";
      "Mod+3".action = set-column-width "75%";
      "Mod+4".action = set-column-width "100%";
      # "Mod+Shift+F".action = fullscreen-window;
      "Mod+Shift+F".action = expand-column-to-available-width;
      # "Mod+V".action = toggle-window-floating;
      "Mod+W".action = toggle-column-tabbed-display;

      "Mod+Comma".action = consume-window-into-column;
      "Mod+Period".action = expel-window-from-column;
      # "Mod+C".action = center-visible-columns;
      "Alt+Tab".action = switch-focus-between-floating-and-tiling;

      "Mod+Minus".action = set-column-width "-10%";
      "Mod+Equal".action = set-column-width "+10%";
      "Mod+Shift+Minus".action = set-window-height "-10%";
      "Mod+Shift+Equal".action = set-window-height "+10%";

      "Mod+H".action = focus-column-left;
      # "Mod+L".action = focus-column-right;
      "Mod+J".action = focus-window-or-workspace-down;
      "Mod+K".action = focus-window-or-workspace-up;
      "Mod+Left".action = focus-column-left;
      "Mod+Right".action = focus-column-right;
      "Mod+Down".action = focus-workspace-down;
      "Mod+Up".action = focus-workspace-up;

      "Mod+Shift+H".action = move-column-left;
      "Mod+Shift+L".action = move-column-right;
      "Mod+Shift+K".action = move-column-to-workspace-up;
      "Mod+Shift+J".action = move-column-to-workspace-down;

      "Mod+Shift+Ctrl+J".action = move-column-to-monitor-down;
      "Mod+Shift+Ctrl+K".action = move-column-to-monitor-up;
    };
}

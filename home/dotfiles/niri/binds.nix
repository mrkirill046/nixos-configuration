{ config,pkgs, ... }: 

{
  programs.niri.settings.binds = with config.lib.niri.actions; 
  
  let
    set-volume = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@";
    brillo = spawn "${pkgs.brillo}/bin/brillo" "-q" "-u" "300000";
    playerctl = spawn "${pkgs.playerctl}/bin/playerctl";
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

    # Noctalia core
    "Mod+I" = {
      hotkey-overlay.title = "Toggle settings";
      action = spawn "sh" "-c" "noctalia msg settings-toggle";
    };
    "Mod+D"= {
      hotkey-overlay.title = "Toggle launcher";
      action = spawn "sh" "-c" "noctalia msg panel-toggle launcher";
    };
    "Mod+U"= {
      hotkey-overlay.title = "Toggle control center";
      action = spawn "sh" "-c" "noctalia msg panel-toggle control-center";
    };

    ### Other
    "XF86AudioPlay".action = playerctl "play-pause";
    "XF86AudioStop".action = playerctl "pause";
    "XF86AudioPrev".action = playerctl "previous";
    "XF86AudioNext".action = playerctl "next";
    
    "Print".action.screenshot-screen = {write-to-disk = true;};
    "Mod+Shift+S".action.screenshot = {show-pointer = false;};
    "Mod+Return".action = spawn "${pkgs.ghostty}/bin/ghostty";
    "Ctrl+Alt+L".action = spawn "sh -c pgrep hyprlock || hyprlock";

    "Mod+Slash".action = { show-hotkey-overlay = [ ]; };

    "Mod+Q".action = close-window;
    "Mod+S".action = switch-preset-column-width;
    "Mod+F".action = maximize-column;

    "Mod+1".action = set-column-width "25%";
    "Mod+2".action = set-column-width "50%";
    "Mod+3".action = set-column-width "75%";
    "Mod+4".action = set-column-width "100%";
    # "Mod+Shift+F".action = fullscreen-window;
    "Mod+Shift+F".action = expand-column-to-available-width;
    "Mod+V".action = toggle-window-floating;
    "Mod+W".action = toggle-column-tabbed-display;

    "Mod+Comma".action = consume-window-into-column;
    "Mod+Period".action = expel-window-from-column;
    "Mod+C".action = center-visible-columns;
    "Mod+Tab".action = switch-focus-between-floating-and-tiling;

    "Mod+Minus".action = set-column-width "-10%";
    "Mod+Equal".action = set-column-width "+10%";
    "Mod+Shift+Minus".action = set-window-height "-10%";
    "Mod+Shift+Equal".action = set-window-height "+10%";

    "Ctrl+Alt+Delete".action = quit;

    "Mod+H".action = focus-column-left;
    "Mod+L".action = focus-column-right;
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
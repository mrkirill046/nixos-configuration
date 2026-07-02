{
  xdg.configFile."noctalia/palettes/raiden-theme.json".text = builtins.toJSON {
    dark = {
      mPrimary = "#dfb8f6";
      mOnPrimary = "#412356";
      mSecondary = "#d2c1d8";
      mOnSecondary = "#382c3e";
      mTertiary = "#f4b7b9";
      mOnTertiary = "#4c2528";
      mError = "#ffb4ab";
      mOnError = "#690005";
      mSurface = "#161217";
      mOnSurface = "#e9e0e8";
      mSurfaceVariant = "#221e24";
      mOnSurfaceVariant = "#cdc3ce";
      mOutline = "#4b454d";
      mShadow = "#000000";
      mHover = "#f4b7b9";
      mOnHover = "#4c2528";

      terminal = {
        normal = {
          black = "#4b454d";
          red = "#ffb4ab";
          green = "#dfb8f6";
          yellow = "#d2c1d8";
          blue = "#f4b7b9";
          magenta = "#dfb8f6";
          cyan = "#d2c1d8";
          white = "#e9e0e8";
        };

        bright = {
          black = "#978e98";
          red = "#ffb4ab";
          green = "#dfb8f6";
          yellow = "#d2c1d8";
          blue = "#f4b7b9";
          magenta = "#dfb8f6";
          cyan = "#d2c1d8";
          white = "#e9e0e8";
        };

        foreground = "#e9e0e8";
        background = "#161217";
        cursor = "#e9e0e8";
        cursorText = "#161217";
        selectionFg = "#cdc3ce";
        selectionBg = "#4b454d";
      };
    };

    light = {
      mPrimary = "#725188";
      mOnPrimary = "#ffffff";
      mSecondary = "#675a6e";
      mOnSecondary = "#ffffff";
      mTertiary = "#815154";
      mOnTertiary = "#ffffff";
      mError = "#ba1a1a";
      mOnError = "#ffffff";
      mSurface = "#fff7fd";
      mOnSurface = "#1e1a20";
      mSurfaceVariant = "#f4ebf3";
      mOnSurfaceVariant = "#4b454d";
      mOutline = "#cdc3ce";
      mShadow = "#000000";
      mHover = "#815154";
      mOnHover = "#ffffff";

      terminal = {
        normal = {
          black = "#eadfea";
          red = "#ba1a1a";
          green = "#725188";
          yellow = "#675a6e";
          blue = "#815154";
          magenta = "#dfb8f6";
          cyan = "#d2c1d8";
          white = "#1e1a20";
        };

        bright = {
          black = "#7c747e";
          red = "#ba1a1a";
          green = "#725188";
          yellow = "#675a6e";
          blue = "#815154";
          magenta = "#dfb8f6";
          cyan = "#d2c1d8";
          white = "#1e1a20";
        };

        foreground = "#1e1a20";
        background = "#fff7fd";
        cursor = "#1e1a20";
        cursorText = "#fff7fd";
        selectionFg = "#4b454d";
        selectionBg = "#eadfea";
      };
    };
  };
}
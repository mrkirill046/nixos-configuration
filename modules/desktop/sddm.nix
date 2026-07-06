{ pkgs, ... }:

let
  sddm-astronaut =
    (pkgs.sddm-astronaut.override {
      embeddedTheme = "astronaut";

      themeConfig = {
        FontSize = "10";
        FormPosition = "left";

        HourFormat = "hh:mm AP";
        DateFormat = "MMMM, d";

        HeaderTextColor = "#e9e0e8";
        DateTextColor = "#e9e0e8";
        TimeTextColor = "#e9e0e8";

        FormBackgroundColor = "#221e24";
        BackgroundColor = "#161217";
        DimBackgroundColor = "#161217";

        LoginFieldBackgroundColor = "#221e24";
        PasswordFieldBackgroundColor = "#221e24";
        LoginFieldTextColor = "#e9e0e8";
        PasswordFieldTextColor = "#e9e0e8";
        UserIconColor = "#dfb8f6";
        PasswordIconColor = "#dfb8f6";

        PlaceholderTextColor = "#b8adb8";
        WarningColor = "#ffb4ab";

        LoginButtonTextColor = "#412356";
        LoginButtonBackgroundColor = "#dfb8f6";

        SystemButtonsIconsColor = "#e9e0e8";
        SessionButtonTextColor = "#e9e0e8";
        VirtualKeyboardButtonTextColor = "#e9e0e8";

        DropdownTextColor = "#412356";
        DropdownSelectedBackgroundColor = "#dfb8f6";
        DropdownBackgroundColor = "#221e24";

        HighlightTextColor = "#412356";
        HighlightBackgroundColor = "#dfb8f6";
        HighlightBorderColor = "transparent";

        HoverUserIconColor = "#e9e0e8";
        HoverPasswordIconColor = "#e9e0e8";
        HoverSystemButtonsIconsColor = "#dfb8f6";
        HoverSessionButtonTextColor = "#dfb8f6";
        HoverVirtualKeyboardButtonTextColor = "#dfb8f6";

        HeaderText = "Hello, Kirill!";
        Background = "Backgrounds/my-custom-background.mp4";
      };
    }).overrideAttrs
      (oldAttrs: {
        installPhase = oldAttrs.installPhase + ''
          chmod u+w $out/share/sddm/themes/sddm-astronaut-theme/Backgrounds/
          cp ${../../assets/wallpapers/wallpaper-1080p.mp4} \
            $out/share/sddm/themes/sddm-astronaut-theme/Backgrounds/my-custom-background.mp4
        '';
      });
in
{
  environment.systemPackages = [ sddm-astronaut ];

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;

    package = pkgs.kdePackages.sddm;

    extraPackages = with pkgs; [
      kdePackages.qtmultimedia
    ];

    theme = "sddm-astronaut-theme";
  };
}

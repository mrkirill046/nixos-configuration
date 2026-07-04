{ inputs, config, ... }:

{
  imports = [
    inputs.nixcord.homeModules.nixcord
  ];

  home.file.".config/Equicord/settings/quickCss.css".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/Equicord/themes/noctalia-material.theme.css";

  programs.nixcord = {
    enable = true;

    discord.equicord.enable = true;

    config = {
      useQuickCss = true;
      frameless = true;

      plugins = {
        openInApp.enable = true;

        betterFolders.enable = true;
        betterGifPicker.enable = true;

        callTimer.enable = true;
        clearUrls.enable = true;

        fakeNitro.enable = true;
        favoriteEmojiFirst.enable = true;
        fixImagesQuality.enable = true;
        fixSpotifyEmbeds.enable = true;

        imageZoom.enable = true;
        messageClickActions.enable = true;

        noReplyMention.enable = true;

        platformIndicators.enable = true;

        readAllNotificationsButton.enable = true;

        relationshipNotifier.enable = true;

        serverInfo.enable = true;
        showConnections.enable = true;
        showHiddenChannels.enable = true;

        silentTyping.enable = true;
        typingIndicator.enable = true;

        viewIcons.enable = true;
        voiceDownload.enable = true;

        webKeybinds.enable = true;
      };
    };
  };
}

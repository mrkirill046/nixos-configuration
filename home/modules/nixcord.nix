{ inputs, ... }:

{
  imports = [ 
    inputs.nixcord.homeModules.nixcord
  ];

  programs.nixcord = {
    enable = true;
    
    discord.equicord.enable = true;

    config = {
      useQuickCss = true;
      frameless = true;

      themeLinks = [
        "https://capnkitten.github.io/Material-Discord/Material-Discord.theme.css"
        "https://mwittrien.github.io/BetterDiscordAddons/Themes/EmojiReplace/EmojiReplace.theme.css"
      ];

      plugins = {
        betterFolders.enable = true;
        betterGifPicker.enable = true;

        callTimer.enable = true;
        ClearURLs.enable = true;

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
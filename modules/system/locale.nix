{
  time.timeZone = "Europe/Moscow";
  
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.supportedLocales = [
    "en_US.UTF-8/UTF-8"
    "ru_RU.UTF-8/UTF-8"
  ];

  services.xserver.xkb = {
    layout = "us,ru";
    options = "grp:alt_shift_toggle,compose:ralt,ctrl:nocaps";
  };
}
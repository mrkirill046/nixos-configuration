{ pkgs, ... }:

{
  boot.consoleLogLevel = 0;
  boot.initrd.verbose = false;

  boot.loader.efi.canTouchEfiVariables = true;

  boot.loader.grub = {
    enable = true;
    device = "nodev";
    efiSupport = true;
    useOSProber = true; 
    configurationLimit = 5; 

    theme = "${pkgs.sleek-grub-theme}";
  };

  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernelParams = [
    "console=quiet"
    "quiet"
    "splash"
    "boot.shell_on_fail"
    "loglevel=3"
    "rd.systemd.show_status=false"
    "rd.udev.log_level=3"
    "udev.log_priority=3"
  ];

  boot.kernelModules = [
    "tun"
  ];

  boot.plymouth = {
    enable = true;
    theme = "bgrt"; 
  };
}
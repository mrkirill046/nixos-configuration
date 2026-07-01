{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ 
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = { 
    device = "/dev/disk/by-uuid/35e2c148-077e-4458-a50e-ec28bdda9897";
    fsType = "ext4";
  };

  fileSystems."/boot" = { 
    device = "/dev/disk/by-uuid/6847-D3B5";
    fsType = "vfat";
    options = [ "fmask=0077" "dmask=0077" ];
  };

  swapDevices =[ 
    { 
      device = "/dev/disk/by-uuid/76f66afa-03e3-4cef-a38d-ea78176414ed"; 
    }
  ];

  fileSystems."/mnt/storage" = {
    device = "/dev/disk/by-uuid/B656B71356B6D2FB";
    fsType = "ntfs3";
    
    options = [ 
      "nofail"                 
      "x-systemd.automount"    
      "uid=1000"               
      "gid=100"                
      "dmask=007"              
      "fmask=117"              
      "iocharset=utf8"        
    ];
  };

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}

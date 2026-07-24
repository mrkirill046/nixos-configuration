{
  networking = {
    networkmanager.enable = true;

    hostName = "laptop";

    firewall = {
      allowedTCPPorts = [ 53317, 7897 ];
      allowedUDPPorts = [ 53317, 7897 ];

      allowedTCPPortRanges = [
        {
          from = 1714;
          to = 1764;
        }
      ];

      allowedUDPPortRanges = [
        {
          from = 1714;
          to = 1764;
        }
      ];
    };
  };
}

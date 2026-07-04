{ pkgs, ... }:

{
  programs.mpv = {
    enable = true;

    scripts = [ pkgs.mpvScripts.modernx ];

    config = {
      osc = "no";
      border = "yes";

      autofit-large = "85%x85%";
      geometry = "75%x75%";

      gpu-context = "wayland";
    };
  };
}

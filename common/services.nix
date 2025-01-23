{lib,config, pkgs, inputs, ... }:

{
    services = {
        xserver ={
            enable = true;
            xkb.layout = "us";
            xkb.variant = "";
            displayManager.gdm.enable = true;
            desktopManager.gnome.enable = true;
            videoDrivers = ["nvidia"];
        };

        avahi = {
            enable = true;
            hostName = "insaneduck-nixos";
            nssmdns4 = true;
            publish = {
              enable = true;
              addresses = true;
              domain = true;
              hinfo = true;
              userServices = true;
              workstation = true;
            };
        };

        printing.enable = true;

        pipewire = {
            enable = true;
            alsa.enable = true;
            alsa.support32Bit = true;
            pulse.enable = true;
        };

        resolved = {
          enable = true;
          dnssec = "true";
          domains = [ "~." ];
          fallbackDns = [ "1.1.1.1#one.one.one.one" "1.0.0.1#one.one.one.one" ];
          extraConfig = ''
            DNSOverTLS=yes
          '';
        };
      };
}
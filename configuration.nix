{lib,config, pkgs, inputs, ... }:

{
  imports =
    [
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./common/common.nix
      <home-manager/nixos>
      ##./home/home.nix
      ./gnome/gnome.nix
    ];
  # nix.settings.experimental-features = [ "nix-command" "flakes" ];
  # Bootloader.
  boot.loader = {
    systemd-boot.enable = true;
    systemd-boot.consoleMode= "max";
    systemd-boot.configurationLimit=5;
    efi.canTouchEfiVariables = true;
  };

  system.autoUpgrade = {
      enable = true;
      dates = "02:00";
      randomizedDelaySec = "45min";
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

  time = {
    hardwareClockInLocalTime = true;
    timeZone = "Asia/Kolkata";
  };

  # networking
  networking = {
    hostName = "insaneduck-nixos";
    nameservers = [ "1.1.1.1#one.one.one.one" "1.0.0.1#one.one.one.one" ];
    enableIPv6 = false;
    networkmanager.enable = true;
    firewall.allowedTCPPortRanges = [
        { from = 2999; to = 3001; }
        { from = 8000; to = 9000; }
        { from = 1714; to = 1764; }
    ];
  };

  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  # Make sure opengl is enabled
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  hardware.nvidia = {
    modesetting.enable = true;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    prime = {
        sync.enable = true;
        intelBusId = "PCI:0:2:0";
        nvidiaBusId = "PCI:1:0:0";
    };
  };
  services.pulseaudio.enable = false;

  specialisation = {
    external-display.configuration = {
      system.nixos.tags = [ "external-display" ];
      hardware.nvidia = {
        prime.offload.enable = lib.mkForce false;
        powerManagement.enable = lib.mkForce false;
      };
    };
  };

  # sound.enable = true;
  security.rtkit.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  virtualisation.libvirtd.enable = true;
  # Allow unfree packages
  nixpkgs.config = {
     allowUnfree = true;
  };

  networking.networkmanager.wifi.powersave=false;

  
}

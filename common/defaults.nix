{lib,config, pkgs, inputs, ... }:

{
    xdg.mime.defaultApplications = {
        "application/pdf" = "firefox.desktop";
        "inode/directory" = "org.gnome.Nautilus.desktop";
        "video/mp4" = "vlc.desktop";
    };
}
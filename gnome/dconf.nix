# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/TextEditor" = {
      show-line-numbers = true;
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "Pardus" ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.Loupe.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      enable-hot-corners = false;
      font-antialiasing = "rgba";
      show-battery-percentage = true;
    };

    "org/gnome/desktop/peripherals/mouse" = {
      speed = -2.7755575615628914e-17;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      old-files-age = mkUint32 30;
      recent-files-max-age = -1;
    };

    "org/gnome/desktop/screensaver" = {
      lock-enabled = false;
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 60;
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/gnome-system-monitor" = {
      show-dependencies = false;
      show-whose-processes = "user";
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/mutter" = {
      edge-tiling = true;
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      idle-dim = false;
      power-button-action = "interactive";
      power-saver-profile-on-low-battery = false;
      sleep-inactive-ac-timeout = 7200;
      sleep-inactive-ac-type = "nothing";
      sleep-inactive-battery-timeout = 7200;
      sleep-inactive-battery-type = "nothing";
    };

    "org/gnome/shell" = {
      command-history = [ "r" ];
      disable-user-extensions = false;
      disabled-extensions = [ "light-style@gnome-shell-extensions.gcampax.github.com" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" "clipboard-indicator@tudmotu.com" "system-monitor@gnome-shell-extensions.gcampax.github.com" "unite@hardpixel.eu" "apps-menu@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "gsconnect@andyholmes.github.io" "dash-to-panel@jderose9.github.com" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "firefox.desktop" "idea-ultimate.desktop" "steam.desktop" "org.gnome.Console.desktop" "kitty.desktop" "org.godotengine.Godot4.desktop" ];
      welcome-dialog-last-shown-version = "46.2";
    };

    "org/gnome/shell/extensions/dash-to-panel" = {
      animate-appicon-hover-animation-extent = {
        RIPPLE = 4;
        PLANK = 4;
        SIMPLE = 1;
      };
      appicon-margin = 0;
      appicon-padding = 8;
      appicon-style = "NORMAL";
      available-monitors = [ 0 ];
      dot-color-dominant = false;
      dot-color-override = false;
      dot-color-unfocused-different = false;
      dot-position = "BOTTOM";
      dot-size = 3;
      dot-style-unfocused = "METRO";
      focus-highlight-dominant = true;
      group-apps = true;
      group-apps-label-font-size = 16;
      group-apps-label-font-weight = "bolder";
      group-apps-label-max-width = 130;
      group-apps-underline-unfocused = true;
      group-apps-use-launchers = false;
      hide-overview-on-startup = true;
      hot-keys = true;
      hotkeys-overlay-combo = "TEMPORARILY";
      leave-timeout = 200;
      leftbox-padding = -1;
      middle-click-action = "LAUNCH";
      overview-click-to-exit = true;
      panel-anchors = ''
        {"0":"MIDDLE","1":"MIDDLE"}
      '';
      panel-element-positions = ''
        {"0":[{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":false,"position":"stackedTL"},{"element":"dateMenu","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"centered"},{"element":"showAppsButton","visible":true,"position":"centered"},{"element":"taskbar","visible":true,"position":"centered"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":false,"position":"stackedBR"}],"1":[{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":false,"position":"stackedTL"},{"element":"dateMenu","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"centered"},{"element":"showAppsButton","visible":true,"position":"centered"},{"element":"taskbar","visible":true,"position":"centered"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":false,"position":"stackedBR"}]}
      '';
      panel-lengths = ''
        {"0":100,"1":100}
      '';
      panel-sizes = ''
        {"0":48,"1":48}
      '';
      preview-custom-opacity = 0;
      preview-use-custom-opacity = true;
      primary-monitor = 0;
      shift-click-action = "MINIMIZE";
      shift-middle-click-action = "LAUNCH";
      show-apps-icon-file = "";
      show-favorites-all-monitors = true;
      show-showdesktop-hover = true;
      show-window-previews-timeout = 0;
      status-icon-padding = -1;
      stockgs-keep-dash = false;
      stockgs-keep-top-panel = false;
      trans-panel-opacity = 1.0;
      trans-use-custom-bg = false;
      trans-use-custom-gradient = false;
      trans-use-custom-opacity = false;
      tray-padding = -1;
      window-preview-animation-time = 200;
      window-preview-hide-immediate-click = true;
      window-preview-padding = 4;
      window-preview-show-title = false;
      window-preview-title-position = "TOP";
    };

    "org/gnome/shell/extensions/unite" = {
      enable-titlebar-actions = true;
      use-activities-text = false;
    };

    "org/gnome/shell/world-clocks" = {
      locations = [];
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      sidebar-width = 242;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 859 703 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 157;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 664 242 ];
      window-size = mkTuple [ 1231 902 ];
    };

  };
}

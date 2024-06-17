sudo nix-channel --update
sudo cp packages.nix /etc/nixos/packages.nix
sudo cp configuration.nix /etc/nixos/configuration.nix
sudo cp gnome.nix /etc/nixos/gnome.nix
sudo nixos-rebuild switch --upgrade

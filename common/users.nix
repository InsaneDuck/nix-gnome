{lib,config, pkgs, inputs, ... }:

{
   # Define a user account. Don't forget to set a password with ‘passwd’.
   users.users.siva = {
     isNormalUser = true;
     description = "Siva";
     extraGroups = [ "networkmanager" "wheel" ];
   };
}
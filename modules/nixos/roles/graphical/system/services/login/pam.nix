{
  lib,
  config,
  ...
}: let
  inherit (lib) mkIf;
in {
  config = mkIf config.my.modules.graphical {
    # unlock GPG keyring on login
    security.pam.services = let
      gnupg = {
        enable = true;
        noAutostart = true;
        storeOnly = true;
      };
    in {
      login = {
        enableGnomeKeyring = true;
        inherit gnupg;
      };

      greetd = {
        enableGnomeKeyring = true;
        inherit gnupg;
      };
    };
  };
}

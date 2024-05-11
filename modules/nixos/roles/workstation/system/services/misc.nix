{
  lib,
  config,
  ...
}: let
  inherit (lib) mkIf;
in {
  config = mkIf config.my.profiles.workstation.enable {
    services = {
      # enable GVfs, a userspace virtual filesystem.
      gvfs.enable = true;

      # storage daemon required for udiskie auto-mount
      udisks2.enable = !config.boot.isContainer;

      # disable chrony in favor if systemd-timesyncd
      timesyncd.enable = lib.mkDefault true;
      chrony.enable = lib.mkDefault false;
    };
  };
}

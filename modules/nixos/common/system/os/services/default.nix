{...}: {
  imports = [
    ./fstrim.nix
    ./logrotate.nix
    ./ntpd.nix
    ./thermald.nix
    ./zram.nix
  ];
}

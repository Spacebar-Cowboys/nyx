_: {
  #  config = mkIf config.my.modules.microvm {
  #    nix = {
  #      settings.trusted-users = ["admin"];
  #      package = pkgs.nixUnstable;
  #      keep-outputs = true;
  #      keep-derivations = true;
  #      extra-experimental-features = [
  #        "nix-command"
  #        "flakes"
  #      ];
  #    };
  #  };
}

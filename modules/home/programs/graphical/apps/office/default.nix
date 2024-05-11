{
  osConfig,
  pkgs,
  lib,
  ...
}: let
  inherit (lib) mkIf;
  inherit (osConfig) my;

  sys = my.system;
  prg = sys.programs;
in {
  config = mkIf prg.libreoffice.enable {
    home.packages = with pkgs; [
      libreoffice-qt
      hyphen # text hyphenation library
      hunspell
      hunspellDicts.en_US-large
    ];
  };
}

{lib, ...}: let
  inherit (lib) mkEnableOption;
  #  sys = config.my.system;
  #  cfg = sys.services;
  #  # mkEnableOption is the same as mkEnableOption but with the default value being equal to cfg.monitoring.enable
  #  mkEnableOption' = desc: mkEnableOption "${desc}" // {default = cfg.monitoring.enable;};
in {
  options.my.system = {
    # monitoring tools
    monitoring = {
      enable = mkEnableOption "system monitoring stack";
      prometheus.enable = mkEnableOption "Prometheus monitoring service";
    };
  };
}

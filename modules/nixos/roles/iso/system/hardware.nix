{
  lib,
  config,
  ...
}: {
  config = {
    # provide all hardware drivers, including proprietary ones
    hardware = {
      enableRedistributableFirmware = true;
    };
  };
}

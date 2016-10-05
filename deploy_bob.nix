{
  network.description = "build";

  bob = { config, pkgs, ... }:
  {
    deployment = {
      targetEnv = "libvirtd";
      libvirtd.headless = true;
      libvirtd.vcpu = 6;
      libvirtd.memorySize =16384;
      libvirtd.baseImageSize = 750;
    };


    require = [ ./defs/build.nix ];
  };
}

{config, pkgs, ... }:{
  imports = [
  ../includes/all.nix
  ../templates/buildserver.nix
  #FIXME: This does not work as expected
  ] ;
}

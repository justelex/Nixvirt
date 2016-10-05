{ config, pkgs, ... }: {

  environment.systemPackages =  with pkgs;[
  systemd
  jenkins
  vim
  wget
  git
  bash
  ];

  services.jenkins.enable = true;
  users.extraUsers.jenkins.extraGroups = [ "users" ];
  systemd.services.jenkins.serviceConfig.TimeoutStartSec = "6min";
  networking.firewall.allowedTCPPorts = [ 8080 ];
}

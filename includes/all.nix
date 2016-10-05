{config,pkgs, ...}:
let
secrets = (import ../secrets);
in
{
  users.motd = "Keine Lokalen Aenderungen. Aenderungen nur im Deployscript!!!!!!!!!!!!!!!";
  users.extraUsers.root.password = secrets.rootPWD;
  environment.systemPackages =  with pkgs; [
  pkgconfig
  traceroute
  wget
  git
  vim
  tcpdump
  iptraf
  ];
}

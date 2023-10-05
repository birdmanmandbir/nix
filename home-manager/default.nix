{
  pkgs,
  username,
  ...
}: {
  imports = [
    ./cli
    # ./gui.nix
    # ./desktop
  ];

  home.stateVersion = "23.05";
  home.username = "${username}";
  home.homeDirectory = "/home/${username}";
}

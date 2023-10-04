{
  pkgs,
  username,
  ...
}: {
  imports = [
    ./cli.nix
    # ./gui.nix
    ./zsh.nix
  ];

  home.stateVersion = "23.05";
  home.username = "${username}";
  home.homeDirectory = "/home/${username}";
}

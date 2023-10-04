{
  pkgs,
  username,
  ...
}: {
  wsl = {
    enable = true;
    defaultUser = "${username}";
    # 创建软件的桌面快捷方式
    # startMenuLaunchers = true;
  };
  nix.settings.trusted-users = [ "${username}" ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "wsl-nix";

  environment.systemPackages = with pkgs; [
    tree
    wsl-open
    # nix-bash-completions
    curl
    wget
    git
    vim
  ];

  # zsh
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  time.timeZone = "Asia/Shanghai";
  # 将默认编辑器设置为 vim
  environment.variables.EDITOR = "hx";  

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It's perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?
}

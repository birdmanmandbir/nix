{ config, pkgs, ... }: {
  home.file.".config/helix/config.toml".source = ./config/helix.toml;
  home.packages = with pkgs; [
    neofetch
    nnn # terminal file manager

    # archives
    zip
    xz
    unzip
    p7zip

    # trash-cli
    # proxychains-ng

    # utils
    ripgrep # recursively searches directories for a regex pattern
    jq # A lightweight and flexible command-line JSON processor
    yq-go # yaml processer https://github.com/mikefarah/yq
    eza # A modern replacement for ‘ls’
    bat # A modern replacement for ‘cat’
    fzf # A command-line fuzzy finder

    # networking tools
    mtr # A network diagnostic tool
    iperf3
    dnsutils  # `dig` + `nslookup`
    ldns # replacement of `dig`, it provide the command `drill`
    aria2 # A lightweight multi-protocol & multi-source command-line download utility
    socat # replacement of openbsd-netcat
    nmap # A utility for network discovery and security auditing
    ipcalc  # it is a calculator for the IPv4/v6 addresses

    # misc
    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

    # productivity
    hugo # static site generator
    glow # markdown previewer in terminal
    zellij # window manager

    btop  # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring

    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files

    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb

    # editors
    helix
  ];

  programs.helix = {
    enable = true;
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
  };

  home.shellAliases = {
    cat = "bat";
    ls = "eza";
    ll = "eza -l";
    vi = "hx";
    # ps = "${pkgs.procs}/bin/procs";
  };

  # home.file = {
  #   ".proxychains/proxychains.conf".source = ../dotfiles/proxychains.conf;
  # };

  # xdg.configFile = {
  #   "mpv".source = ../dotfiles/mpv;
  #   "alacritty/alacritty.yml".source = ../dotfiles/alacritty.yml;
  # };

  # git 相关配置
  programs.git = {
    enable = true;
    userName = "birdmanmandbir";
    userEmail = "bn0010100@gmail.com";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

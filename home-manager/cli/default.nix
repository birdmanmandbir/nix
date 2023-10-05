{ pkgs, ... }: {
  imports = [
    ./zsh
    ./dev.nix
  ];
  home.file."../config/helix/config.toml".source = ./config/helix.toml;
  home.packages = with pkgs; [
    nnn # terminal file manager

    # Archives
    zip
    xz
    unzip
    p7zip

    # trash-cli
    # proxychains-ng

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
    file
    which
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
    zellij # window manager

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

    # charm
    mods
    gum
    slides
    nap
    typer
    glow # markdown previewer in terminal
    vhs
    skate

    # Utilities
    bat # cat alternative

    bottom # top alternative
    btop  # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring

    du-dust # du alternative
    duf # df alternative
    eza # ls alternative
    fd # find alternative
    fx # json viewer
    fzf # fazzy finder
    ghq # git repository manager
    httpie # http client
    imagemagick # image manipulation
    jq # json parser
    yq-go # yaml processer https://github.com/mikefarah/yq
    killall # process killer
    lazydocker # docker tui
    lazygit # git tui
    nurl # generate nix fetcher
    procs # ps alternative
    ripgrep # grep alternative
    silicon # code to image
    speedtest-cli # speedtest
    tokei # analyze code statistics
    yazi # file manager

    # Rice
    cava
    neofetch
    nitch
    pfetch
    tty-clock

    # Joke
    cowsay
    figlet
    lolcat
    pingu
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
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  # GitHub CLI
  programs.gh = {
    enable = true;
    extensions = with pkgs; [gh-markdown-preview];
    settings = {
      editor = "hx";
      git_protocol = "https";
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

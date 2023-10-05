{
  # Enable aliases to be sudo’ed
  sudo = "sudo ";

  # Confirm before execute
  rm = "rm -i";
  cp = "cp -i";

  # Core
  cat = "bat";
  grep = "rg";
  vi = "hx";
  ping = "pingu";
  ls = "eza --icons --classify";
  la = "eza --all --icons --classify";
  ll = "eza --long --all --git --icons";
  tree = "eza --icons --classify --tree";

  # cd
  cdg = "cd $(git rev-parse --show-toplevel)"; # cd to git root directory
  cdtemp = "cd $(mktemp -d)"; # cd to a temp directory

  gcd = "cd $(ghq root)/$(ghq list | fzf)"; # cd to a git repository managed by ghq

  lgit = "lazygit";

  # Nix
  flake = "nix flake";

  # Docker
  dci = "docker run --rm -it";

  # Clipboard
  clip = "xclip -selection clipboard";

  # Nix
  update = "sudo nixos-rebuild switch --flake $HOME/.config/nix#nixos";
}

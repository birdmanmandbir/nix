{ pkgs, ... }: {
  imports = [./starship.nix];
  # https://rycee.gitlab.io/home-manager/options.html#opt-programs.zsh.enable
  programs.zsh = {
    enable = true;
    autocd = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    dotDir = ".config/zsh";
    shellAliases = import ./alias.nix;
    # histSize = 10000;
    # histFile = "${config.xdg.dataHome}/zsh/history";
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" "extract"];
      theme = "ys";
    };
    initExtra =
      # bash
      ''
        export EDITOR="nvim"

        function mkcd() {
            mkdir -p "$1" && cd "$1"
        }

        # Fuzzy find history
        function fzf-select-history(){
            BUFFER=$(history -n -r 1 | fzf --query "$LBUFFER")
            CURSOR=$#BUFFER
            zle reset-prompt
        }
        zle -N fzf-select-history
        bindkey '^R' fzf-select-history

        # cd to the repository managed by ghq
        function __ghq-cd() {
          cd $(ghq root)/$(ghq list | fzf)
          zle clear-screen
        }
        zle -N __ghq-cd
        bindkey '^G' __ghq-cd

        # Move cursor to the beginning of the line
        bindkey '^A' beginning-of-line
      '';
  };
}

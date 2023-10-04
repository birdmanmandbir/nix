## File Structure
- configuration.nix: for init nix without flake
- flake.nix: index nix config
- home.nix: home-manager template from @ryan4yin
- proxy.sh: use in root (wsl)

## TODOS

### important
- [ ] gh client + ssh
- [ ] git public key
- [ ] devbox
- [ ] charm mods envs (maybe with nix secret?)

### list
- [ ] config lsp language servers for helix
- [ ] fonts
- [ ] theme
- [ ] fcitx
- [ ] use nix to download notes/codes with git (post install hook, run once when finish?)
- [ ] http env proxy?
- [ ] how to know which tool is in nixos repository/home.pkgs, like gum/glow/cue?
- [ ] more git command line tool?
- [ ] english word card for programer based on cue? but need a new name for nix
- [ ] ssh remote desktop?
- [ ] add charm card tool to nixpkgs?

### finish
- [x] use zsh as default shell
- [x] alias
- [x] nix + charm

## Problems

### $NIX_PATH not found
```bash
nix-channel --add https://mirrors.ustc.edu.cn/nix-channels/nixos-23.05 nixos
nix-channel --add https://mirrors.ustc.edu.cn/nix-channels/nixpkgs-unstable nixpkgs
nix-channel --update

sudo nixos-rebuild switch
```

## Commands
```bash
# collect garbages
sudo nix-collect-garbage -d
```

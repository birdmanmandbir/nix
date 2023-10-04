## File Structure
- configuration.nix: for init nix without flake
- flake.nix: index nix config
- home.nix: home-manager template from @ryan4yin
- proxy.sh: use in root (wsl)

## TODOS
- [ ] use zsh as default shell
- [ ] config lsp language servers for helix
- [ ] fonts
- [ ] theme
- [ ] fcitx
- [ ] devbox
- [ ] git public key
- [x] alias
- [ ] use nix to download notes/codes with git (post install hook, run once when finish?)
- [ ] nix + charm
- [ ] 

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

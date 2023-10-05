{pkgs, ...}: {
	home.packages = with pkgs; [
		xsel
    ripgrep
    lazygit

    # Bash
    nodePackages.bash-language-server

    # C/C++
    clang-tools

    # CUE
    cuelsp

    # Docker
    nodePackages.dockerfile-language-server-nodejs

    # Go
    gopls

    # GraphQL
    nodePackages.graphql-language-service-cli

    # HTML/CSS
    nodePackages.vscode-langservers-extracted

    # JavaScript/TypeScript
    nodePackages.prettier
    nodePackages.typescript-language-server
    nodePackages.svelte-language-server
    nodePackages."@tailwindcss/language-server"

    # Nix
    alejandra
    nil

    # Prisma
    nodePackages."@prisma/language-server"

    # Protocol Buffers
    buf-language-server

    # Python
    black
    pyright

    # Rust
    rust-analyzer

    # Shell
    shellcheck
    shfmt

    # Terraform
    terraform-ls

    # TOML
    taplo

    # Typst
    typst-lsp

    # Zig
    zls
	];
}


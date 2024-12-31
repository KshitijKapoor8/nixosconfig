{
  config,
  pkgs,
  inputs,
  ...
}: let
in {
  imports = [
    ./conform.nix
    ./extra.nix
    ./lsp.nix
    ./noice.nix
    ./notify.nix
    ./oil.nix
    ./telescope.nix
    ./treesitter.nix
    # ./themes.nix
  ];

  programs.nixvim = {
    plugins = {
      lz-n.enable = true;

      render-markdown.enable = true;

      marks = {
        enable = true;
        defaultMappings = true;
      };

      neogit.enable = true;
      
      # nvim-jdtls.enable = true;

      zen-mode = {
        enable = true;
        settings = {
        };
      };

      web-devicons.enable = true;

      treesitter-context = {
        enable = true;
        settings = { max_lines = 5; };
      };

      transparent = {
        enable = true;
      };

      # neodev = {
      #   enabled = true;
      # };
    };
  };
}

{
  config,
  pkgs,
  inputs,
  ...
}: let
in {
  imports = [
    ./telescope.nix
    ./treesitter.nix
    ./themes.nix
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

      # neodev = {
      #   enabled = true;
      # };
    };
  };
}

{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = [
      pkgs.vimPlugins.lsp-zero-nvim
      pkgs.vimPlugins.nvim-lspconfig
      pkgs.vimPlugins.mason-nvim
      pkgs.vimPlugins.mason-lspconfig-nvim
      pkgs.vimPlugins.nvim-cmp
      pkgs.vimPlugins.cmp-nvim-lsp
      pkgs.vimPlugins.luasnip
      pkgs.vimPlugins.friendly-snippets
      pkgs.vimPlugins.cmp-buffer
      pkgs.vimPlugins.cmp-path
      pkgs.vimPlugins.cmp-cmdline
      pkgs.vimPlugins.cmp_luasnip
    ];
  };
}

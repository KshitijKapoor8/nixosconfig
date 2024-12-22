{
  config,
  pkgs,
  inputs,
  ...
}: let
in {
  programs.nixvim = {
    colorschemes.rose-pine = {
      enable = true;
      lazyLoad.enable = true;
      settings = { 
        variant = "moon";
      };
    };
  };
}

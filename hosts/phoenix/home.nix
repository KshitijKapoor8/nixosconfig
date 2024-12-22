{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ../../modules/home-manager/shells
    ../../modules/home-manager/terminals
    ../../modules/home-manager/editors
  ];

  # Shared Home Manager options
  home.username = "shim";
  home.homeDirectory = "/home/shim";
  home.stateVersion = "24.11"; # Match your NixOS state version

  programs.home-manager.enable = true;

  # xdg.configFile.nvim.source = ../../modules/home-manager/shells/nvimconfig;

  # Host-specific user configuration
  home.packages = with pkgs; [
    bat
    btop
    git
    fzf
    zoxide
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-completions
  ];
}

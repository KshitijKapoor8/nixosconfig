{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ../../modules/home-manager/shells
    ../../modules/home-manager/terminals
  ];

  # Shared Home Manager options
  home.username = "shim";
  home.homeDirectory = "/home/shim";
  home.stateVersion = "24.11"; # Match your NixOS state version

  programs.home-manager.enable = true;

  # Host-specific user configuration
  home.packages = with pkgs; [
    git
    neovim
    bat
    fzf
    zoxide
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-completions
  ];
}

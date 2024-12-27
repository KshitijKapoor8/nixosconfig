{
  config,
  pkgs,
  ...
}: let
  aliases = {
    ll = "ls -l";
    ".." = "cd ..";
    "hi" = "echo hi";
    "cf" = "sudo ~/dotfiles/nixos/nixos-rebuild.sh";
    vim = "nvim";
    c = "clear";
    sp = "spotify_player";
    z = "__zoxide_z";
    rb = "sudo nixos-rebuild switch --flake ~/dotfiles/nixos#paddington";
  };
in {
  programs.bash = {
    enable = false;
    shellAliases = aliases;
  };
  programs.zsh = {
    enable = true;
    shellAliases = aliases;

    antidote = {
      enable = true;
      plugins = [
        "zsh-users/zsh-syntax-highlighting"
        "zsh-users/zsh-autosuggestions"
        "zsh-users/zsh-completions"
        "Aloxaf/fzf-tab"
      ];
    };

    # Zsh history settings
    history = {
      path = "/home/shim/.zsh_history";
      size = 5000;
    };

    initExtra = ''
      # Enable Zsh options
      setopt APPENDHISTORY
      setopt SHAREHISTORY
      setopt HIST_IGNORE_SPACE
      setopt HIST_IGNORE_ALL_DUPS
      setopt HIST_SAVE_NO_DUPS
      setopt HIST_IGNORE_DUPS
      setopt HIST_FIND_NO_DUPS

      # Keybindings
      bindkey -e
      bindkey '^p' history-search-backward
      bindkey '^n' history-search-forward
      bindkey '^[w' kill-region

      eval "$(fzf --zsh)"

      eval "$(zoxide init zsh)"
    '';
  };
  programs.oh-my-posh = {
    enable = true;

    settings = builtins.fromTOML (builtins.unsafeDiscardStringContext (builtins.readFile (./zen.toml)));
  };
}

{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    ags.url = "github:Aylur/ags";

    ghostty.url = "github:ghostty-org/ghostty";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };
    hyprpanel = {
      url = "github:jas-singhfsu/hyprpanel";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

    wezterm = {
      url = "github:wez/wezterm/main?dir=nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: 
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
    };
    lib = nixpkgs.lib;
  in {
    nixosConfigurations = {
      paddington = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs system; };
        modules = [
          ./hosts/paddington/configuration.nix
          inputs.stylix.nixosModules.stylix
        ];
      };
    };

    # homeConfigurations = {
    #   shim = home-manager.lib.homeManagerConfiguration {
    #     inherit pkgs;
    #     extraSpecialArgs = {inherit inputs;};
    #     modules = [
    #      ./hosts/phoenix/home.nix
    #    ];
    #   };
    # };
  };
}

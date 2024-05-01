{
  description = "Marcus' Nix packages collection";
  inputs = {
    alacritty = {
      url = "github:marcuswhybrow/alacritty";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    alarm = {
      url = "github:marcuswhybrow/alarm";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    anne-sway = { 
      url = "github:whybrow/anne-sway"; 
      inputs = {
        nixpkgs.follows = "nixpkgs";
        rofi.follows = "rofi";
        volume.follows = "volume";
        brightness.follows = "brightness";
        waybar.follows = "waybar";
      };
    };
    anne-fish = { 
      url = "github:whybrow/anne-fish"; 
      inputs = {
        nixpkgs.follows = "nixpkgs";
        sway.follows = "anne-sway";
        starship.follows = "starship";
      };
    };
    brightness = {
      url = "github:marcuswhybrow/brightness";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    dunst = {
      url = "github:marcuswhybrow/dunst";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    fish = {
      url = "github:marcuswhybrow/fish";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };
    flake-updates = {
      url = "github:marcuswhybrow/flake-updates";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    git = {
      url = "github:marcuswhybrow/git";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        neovim.follows = "neovim";
      };
    };
    hyprland = {
      url = "github:marcuswhybrow/hyprland";
      inputs = {
        alacritty.follows = "alacritty";
        brightness.follows = "brightness";
        logout.follows = "logout";
        nixpkgs.follows = "nixpkgs";
        private.follows = "private";
        rofi.follows = "rofi";
        volume.follows = "volume";
        waybar.follows = "waybar";
      };
    };
    logout= {
      url = "github:marcuswhybrow/logout";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        rofi.follows = "rofi";
      };
    };
    neovim = {
      url = "github:marcuswhybrow/neovim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    networking = {
      url = "github:marcuswhybrow/networking";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        rofi.follows = "rofi";
      };
    };
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    private = {
      url = "github:marcuswhybrow/private";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        alacritty.follows = "alacritty";
      };
    };
    starship = {
      url = "github:marcuswhybrow/starship";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    sway = {
      url = "github:marcuswhybrow/sway";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        alacritty.follows = "alacritty";
        private.follows = "private";
        logout.follows = "logout";
        rofi.follows = "rofi";
        volume.follows = "volume";
        brightness.follows = "brightness";
        waybar.follows = "waybar";
      };
    };
    tmux = {
      url = "github:marcuswhybrow/tmux";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        fish.follows = "fish";
      };
    };
    rofi = {
      url = "github:marcuswhybrow/rofi";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    volume = {
      url = "github:marcuswhybrow/volume";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    waybar = {
      url = "github:marcuswhybrow/waybar";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs: {
    packages.x86_64-linux = {
      alacritty = inputs.alacritty.packages.x86_64-linux.alacritty;
      alarm = inputs.alarm.packages.x86_64-linux.alarm;
      anne-sway = inputs.anne-sway.packages.x86_64-linux.sway;
      anne-fish = inputs.anne-fish.packages.x86_64-linux.fish;
      brightness = inputs.brightness.packages.x86_64-linux.brightness;
      dunst = inputs.dunst.packages.x86_64-linux.dunst;
      fish = inputs.fish.packages.x86_64-linux.fish;
      git = inputs.git.packages.x86_64-linux.git;
      hyprland = inputs.hyprland.packages.x86_64-linux.hyprland;
      hyprland-fish-auto-login = inputs.hyprland.packages.x86_64-linux.fish-auto-login;
      logout = inputs.logout.packages.x86_64-linux.logout;
      neovim = inputs.neovim.packages.x86_64-linux.nvim;
      neovim-no-lsp = inputs.neovim.packages.x86_64-linux.nvim-no-lsp;
      networking = inputs.networking.packages.x86_64-linux.networking;
      flake-updates = inputs.flake-updates.packages.x86_64-linux.flake-updates;
      private = inputs.private.packages.x86_64-linux.private;
      starship = inputs.starship.packages.x86_64-linux.starship;
      sway = inputs.sway.packages.x86_64-linux.sway;
      tmux = inputs.tmux.packages.x86_64-linux.tmux;
      rofi = inputs.rofi.packages.x86_64-linux.rofi;
      volume = inputs.volume.packages.x86_64-linux.volume;
      waybar = inputs.waybar.packages.x86_64-linux.waybar;
    };
  };
}

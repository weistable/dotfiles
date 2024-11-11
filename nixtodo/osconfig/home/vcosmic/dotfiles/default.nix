{inputs, ...}: {
  imports = [
    ./bat.nix
  ];

  #home.file.".config/nvim" = {
  xdg.configFile = {
    "nvim" = {
      source = "${inputs.dotfiles}/nvim";
    };
    "hypr" = {
      source = "${inputs.dotfiles}/hypr";
      recursive = true;
    };
    "waybar" = {
      source = "${inputs.dotfiles}/waybar";
    };
    "wlogout" = {
      source = "${inputs.dotfiles}/wlogout";
      recursive = true;
    };
    "wallpapers" = {
      source = "${inputs.dotfiles}/wallpapers";
    };
  };
}

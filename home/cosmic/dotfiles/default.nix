{inputs, ...}: {
  imports = [
    ./bat.nix
  ];

  #home.file = {
  xdg.configFile = {
    "nvim" = {
      source = "${inputs.dotfiles}/nvim";
      recursive = true;
    };

    #".config/waybar" = {
    #  source = ./test;
    #};

  };
}

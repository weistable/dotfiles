{pkgs, ...}: {
  imports = [
    ./fonts.nix
    ./wayland.nix
    ./hyprland.nix
  ];

  home.packages = with pkgs; [
    daed
    v2raya
  ];
}

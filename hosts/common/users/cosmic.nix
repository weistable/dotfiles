{
  config,
  pkgs,
  inputs,
  ...
}: {
  users.users.cosmic = {
   # initialHashedPassword = "$y$j9T$4Jg1cEdlqBrSSuPzMAQyu/$KDHPnK7aJnEw9MToNRaPGpLdtcEzWQTCcEeyq0kJMx9";
    isNormalUser = true;
    description = "cosmic";
    extraGroups = [
      "wheel"
      "networkmanager"
      "libvirtd"
      "flatpak"
      "audio"
      "video"
      "plugdev"
      "input"
      "kvm"
      "qemu-libvirtd"
    ];
    # video2:openssh.authorizedKey

    packages = [ inputs.home-manager.packages.${pkgs.system}.default ];
  
  };
  
  home-manager.users.cosmic = import ../../../home/cosmic/${config.networking.hostName}.nix;

}

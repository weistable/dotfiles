{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.features.desktop.firefox;
  #nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz"){
  #  inherit pkgs;
  #};
in {
  options.features.desktop.firefox.enable =
    mkEnableOption "install additional firefox for desktop apps";

  config = mkIf cfg.enable {
    #home.packages = with pkgs;     ];
    programs.firefox = {
      enable = true;
      package = pkgs.firefox;
      #languagePacks = [ "en-US" "zh-SG" ];
      profiles.default = {
        #extensions = with pkgs.nur.repos.rycee.firefox-addons; [
	#  ublock-origin
	#  tridactyl
	#  tampermonkey
	#  immersive-translate
	#];
	isDefault = true;

	search = {
          default = "Bing";
	  #engines = [ "Bing" "Google" "DuckDuckGo" ];
	};
      };
    };
  };
}

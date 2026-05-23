{ pkgs, ... }:
let
    vivaldi-8 = (pkgs.vivaldi.override {
      proprietaryCodecs = true;
      enableWidevine = true;
    }).overrideAttrs (old: rec {
      version = "8.0.4033.28";
      src = pkgs.fetchurl {
        url = "https://downloads.vivaldi.com/stable/vivaldi-stable_${version}-1_amd64.deb";
        hash = "sha256-l6XzArL+2tdfVGkBNv+RaziER7KArBR+u8CuS1unBcU=";
      };
    });
  in
  {
    home.packages = [ vivaldi-8 ];
  }

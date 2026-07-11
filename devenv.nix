{
  pkgs,
  lib,
  config,
  ...
}:
{
  # https://devenv.sh/languages/
  languages.java = {
    enable = true;
    jdk.package = pkgs.openjdk21;
  };

  # See full reference at https://devenv.sh/reference/options/
}

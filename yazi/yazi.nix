{ ... }:
{
  # noctalia.yazi flavor is deployed under ~/.config/yazi/flavors/ by a
  # third-party service, so flavors are not declared here.
  programs.yazi = {
    enable = true;
    shellWrapperName = "y";
    theme.flavor = {
      dark  = "noctalia";
      light = "noctalia";
    };
  };
}

{ pkgs, ... }: {
  programs.ghostty = {
    enable = true;
    package = if pkgs.stdenv.isDarwin then pkgs.ghostty-bin else pkgs.ghostty;

    # Enable for whichever shell you plan to use!
    enableZshIntegration = true;

    settings = {
      theme = "dracula";
      background-opacity = "0.95";
    };
  };
}

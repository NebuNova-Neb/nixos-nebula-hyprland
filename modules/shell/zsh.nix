{config,lib, pkgs, ...}: {

  programs.zsh = {
  enable = true;
  enableCompletion = true;
  autosuggestion.enable = true;
  syntaxHighlighting.enable = true;
  initContent = ''
  fastfetch
  '';
    shellAliases = {
      ll = "ls -lah";
      nrs = "sudo nixos-rebuild switch";
      hrs = "home-manager switch";
    };
    history.size = 10000;
    history.path = "$HOME/.zsh_history";
    
  };
  
}

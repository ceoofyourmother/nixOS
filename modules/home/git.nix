{ pkgs, ... }: 
{
  programs.git = {
    enable = true;
    
    userName = "ceoofyourmother";
    userEmail = "joaovitor@gmail.com";
    
    extraConfig = { 
      init.defaultBranch = "main";
      credential.helper = "store";
    };
  };

  # home.packages = [ pkgs.gh pkgs.git-lfs ];
}

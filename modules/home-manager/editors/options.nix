{
  programs.nixvim = {
    globals = {
      # Disable useless providers
      loaded_ruby_provider = 0; # Ruby
      loaded_perl_provider = 0; # Perl
      loaded_python_provider = 0; # Python 2
    };

    opts = {
      guicursor = "";
      nu = true;
      relativenumber = true;

      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      expandtab = true;

      smartindent = true;
      smartcase = true;

      wrap = false;
      
      swapfile = false;
      backup = false;
      # TODO: UNDO DIR AND FILE

      hlsearch = false;
      incsearch = false;
      
      termguicolors = true;
      scrolloff = 20;
      signcolumn = "yes";

      updatetime = 50;
      conceallevel = 2;
    };
  };
}

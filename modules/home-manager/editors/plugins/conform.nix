{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    
    settings = {
      lsp_format = "fallback";

      formatters_by_ft = {
        lua = [ "stylua" ];
        python = [ "pyright" ];
        svelte = { 
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        astro = { 
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        javascript = { 
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        typescript = { 
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        javascriptreact= { 
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        typescriptreact = { 
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        json = { 
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        graphql = { 
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        java = [ "google-java-format" ];
        kotlin = [ "ktlint" ];
        markdown = { 
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        erb = [ "htmlbeautifier" ];
        html = [ "htmlbeautifier" ];
        bash = [ "beautysh" ];
        proto = [ "buf" ];
        rust = [ "rustfmt" ];
        yaml = [ "yamlfix" ];
        toml = [ "taplo" ];
        css = { 
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        scss = { 
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        sh = [ "shellcheck" ];
        go = [ "gofmt" ];
        golang = [ "gofmt" ];
        cpp = [ "prettier" "prettierd" ];
      };
    };
  };
}

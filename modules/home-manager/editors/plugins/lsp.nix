{
  programs.nixvim.extraConfigLua = ''
    local lsp = require("lsp-zero")

    lsp.on_attach(function(client, bufnr)
      local opts = { buffer = bufnr, remap = false }

      vim.keymap.set("n", "gr", vim.lsp.buf.references, vim.tbl_extend("force", opts, { desc = "LSP Goto Reference" }))
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "LSP Goto Definition" }))
      vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "LSP Hover" }))
      vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, vim.tbl_extend("force", opts, { desc = "LSP Workspace Symbol" }))
      vim.keymap.set("n", "<leader>vl", vim.diagnostic.setloclist, vim.tbl_extend("force", opts, { desc = "LSP Show Diagnostics" }))
      vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, vim.tbl_extend("force", opts, { desc = "LSP Show Float Diagnostics" }))
      vim.keymap.set("n", "[d", vim.diagnostic.goto_next, vim.tbl_extend("force", opts, { desc = "Next Diagnostic" }))
      vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, vim.tbl_extend("force", opts, { desc = "Previous Diagnostic" }))
      vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "LSP Code Action" }))
      vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, vim.tbl_extend("force", opts, { desc = "LSP References" }))
      vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "LSP Rename" }))
      vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, vim.tbl_extend("force", opts, { desc = "LSP Signature Help" }))
    end)

    lsp.preset("recommended")
    require("mason").setup({})
    require("mason-lspconfig").setup({
      ensure_installed = {
        "eslint",
        "rust_analyzer",
        "kotlin_language_server",
        "jdtls",
        "lua_ls",
        "jsonls",
        "html",
        "elixirls",
        "tailwindcss",
        "tflint",
        "pylsp",
        "dockerls",
        "bashls",
        "marksman",
        "cucumber_language_server",
        "gopls",
        "astro",
      },
      handlers = {
        lsp.default_setup,
        lua_ls = function()
          local lua_opts = lsp.nvim_lua_ls()
          require("lspconfig").lua_ls.setup(lua_opts)
        end,
      },
    })

    local cmp_action = require("lsp-zero").cmp_action()
    local cmp = require("cmp")
    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "luasnip", keyword_length = 2 },
        { name = "buffer", keyword_length = 3 },
        { name = "path" },
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-f>"] = cmp_action.luasnip_jump_forward(),
        ["<C-b>"] = cmp_action.luasnip_jump_backward(),
        ["<Tab>"] = cmp_action.luasnip_supertab(),
        ["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
      }),
    })
  '';
}

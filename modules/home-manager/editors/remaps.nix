{
  config,
  lib,
  ...
}: {
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    keymaps = [
      # Oil
      {
        mode = "n";
        key = "-";
        action = "<CMD>Oil --float<CR>";
        options = { desc = "Open parent directory"; };
      }

      # Telescope
      {
        mode = "n";
        key = "<leader>ps";
        action = "<cmd>Telescope live_grep<CR>";
        options = { desc = "live_grep"; };
      }

      # Neotest
      {
        mode = "n";
        key = "<leader>t";
        action = "<cmd>lua require('neotest').run.run()<CR>";
        options = { desc = "Run Test"; };
      }
      {
        mode = "n";
        key = "<leader>tf";
        action = "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>";
        options = { desc = "Run Test File"; };
      }
      {
        mode = "n";
        key = "<leader>td";
        action = "<cmd>lua require('neotest').run.run(vim.fn.getcwd())<CR>";
        options = { desc = "Run Current Test Directory"; };
      }
      {
        mode = "n";
        key = "<leader>tp";
        action = "<cmd>lua require('neotest').output_panel.toggle()<CR>";
        options = { desc = "Toggle Test Output Panel"; };
      }
      {
        mode = "n";
        key = "<leader>tl";
        action = "<cmd>lua require('neotest').run.run_last()<CR>";
        options = { desc = "Run Last Test"; };
      }
      {
        mode = "n";
        key = "<leader>ts";
        action = "<cmd>lua require('neotest').summary.toggle()<CR>";
        options = { desc = "Toggle Test Summary"; };
      }

      # DAP (Debug Adapter Protocol)
      {
        mode = "n";
        key = "<leader>dt";
        action = "<cmd>DapContinue<CR>";
        options = { desc = "Start Debugging"; };
      }
      {
        mode = "n";
        key = "<leader>dso";
        action = "<cmd>DapStepOver<CR>";
        options = { desc = "Step Over"; };
      }
      {
        mode = "n";
        key = "<leader>dsi";
        action = "<cmd>DapStepInto<CR>";
        options = { desc = "Step Into"; };
      }
      {
        mode = "n";
        key = "<leader>dsu";
        action = "<cmd>DapStepOut<CR>";
        options = { desc = "Step Out"; };
      }
      {
        mode = "n";
        key = "<leader>dst";
        action = "<cmd>DapTerminate<CR>";
        options = { desc = "Stop Debugger"; };
      }
      {
        mode = "n";
        key = "<leader>b";
        action = "<cmd>lua require'dap'.toggle_breakpoint()<CR>";
        options = { desc = "Toggle Breakpoint"; };
      }
      {
        mode = "n";
        key = "<leader>B";
        action = "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>";
        options = { desc = "Toggle Breakpoint Condition"; };
      }
      {
        mode = "n";
        key = "<leader>dr";
        action = "<cmd>lua require'dapui'.float_element('repl', { width = 100, height = 40, enter = true })<CR>";
        options = { desc = "Show DAP REPL"; };
      }
      {
        mode = "n";
        key = "<leader>do";
        action = "<cmd>lua require'dapui'.toggle()<CR>";
        options = { desc = "Toggle DAP UI"; };
      }

      # Obsidian
      {
        mode = "n";
        key = "<leader>oc";
        action = "<cmd>lua require('obsidian').util.toggle_checkbox()<CR>";
        options = { desc = "Toggle Checkbox"; };
      }
      {
        mode = "n";
        key = "<leader>ot";
        action = "<cmd>ObsidianTemplate<CR>";
        options = { desc = "Insert Obsidian Template"; };
      }
      {
        mode = "n";
        key = "<leader>oo";
        action = "<cmd>ObsidianOpen<CR>";
        options = { desc = "Open in Obsidian App"; };
      }
      {
        mode = "n";
        key = "<leader>on";
        action = "<cmd>ObsidianNew<CR>";
        options = { desc = "Create New Note"; };
      }
      {
        mode = "n";
        key = "<leader>os";
        action = "<cmd>ObsidianSearch<CR>";
        options = { desc = "Search Obsidian"; };
      }

      # Noice
      {
        mode = "n";
        key = "<leader>nd";
        action = "<cmd>NoiceDismiss<CR>";
        options = { desc = "Dismiss Noice Message"; };
      }

      # Zoxide
      {
        mode = "n";
        key = "<leader>Z";
        action = "<cmd>Zi<CR>";
        options = { desc = "Open Zoxide"; };
      }

      # Other config
      {
        mode = "n";
        key = "<leader>y";
        action = ''"+y'';
        options = { desc = "Yank to system clipboard"; };
      }
      {
        mode = "v";
        key = "<leader>y";
        action = ''"+y'';
        options = { desc = "Yank to system clipboard (visual mode)"; };
      }

      # Splits
      {
        mode = "n";
        key = "<leader>h";
        action = "<cmd>vsplit<CR>";
        options = { desc = "Split vertically"; };
      }
      {
        mode = "n";
        key = "<leader>v";
        action = "<cmd>hsplit<CR>";
        options = { desc = "Split horizontally"; };
      }
      {
        mode = "n";
        key = "<C-S-Down>";
        action = ":resize +2<CR>";
        options = { desc = "Resize Horizontal Split Down"; };
      }
      {
        mode = "n";
        key = "<C-S-Up>";
        action = ":resize -2<CR>";
        options = { desc = "Resize Horizontal Split Up"; };
      }
      {
        mode = "n";
        key = "<C-Left>";
        action = ":vertical resize -2<CR>";
        options = { desc = "Resize Vertical Split Down"; };
      }
      {
        mode = "n";
        key = "<C-Right>";
        action = ":vertical resize +2<CR>";
        options = { desc = "Resize Vertical Split Up"; };
      }
    ];
  };
}


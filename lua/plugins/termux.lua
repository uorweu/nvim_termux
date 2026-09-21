return {
  -- 1. Can thiệp vào danh sách cài đặt tự động của Mason
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        opts.ensure_installed = vim.tbl_filter(function(tool)
          return tool ~= "lua_ls" and tool ~= "stylua"
        end, opts.ensure_installed)
      end
    end,
  },
  -- 2. Ngăn lspconfig tìm lua_ls trong thư mục của Mason
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          mason = false, -- Buộc hệ thống sử dụng lua-language-server của Termux
        },
      },
    },
  },
}

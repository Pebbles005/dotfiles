local M = {
  filetype = {
    html = {
      require("formatter.filetypes.html").prettier
    },
    css = {
      require("formatter.filetypes.css").prettier

    },
    svelte = {
      require("formatter.filetypes.svelte").prettier

    },
    javascript = {
      require("formatter.filetypes.javascript").prettier
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock"
})

return M

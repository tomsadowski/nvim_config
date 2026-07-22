-- TREESITTER ----------------------------------------------------

vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
  pattern = {'*.CPP', '*.H', '*.cpp', '*.cc', '*.h'},
  callback = function(args)
    vim.treesitter.start(args.buf, 'cpp')
  end
})
  vim.api.nvim_create_autocmd( 'FileType', { pattern = 'cpp',
    callback = function(args)
        vim.treesitter.start(args.buf, 'cpp')
    end
  })
  vim.api.nvim_create_autocmd( 'FileType', { pattern = 'rust',
    callback = function(args)
        vim.treesitter.start(args.buf, 'rust')
    end
  })
  vim.api.nvim_create_autocmd( 'FileType', { pattern = 'c',
    callback = function(args)
        vim.treesitter.start(args.buf, 'c')
    end
  })
  vim.api.nvim_create_autocmd( 'FileType', { pattern = 'python',
    callback = function(args)
        vim.treesitter.start(args.buf, 'python')
    end
  })
  vim.api.nvim_create_autocmd( 'FileType', { pattern = 'sh',
    callback = function(args)
        vim.treesitter.start(args.buf, 'bash')
    end
  })
  vim.api.nvim_create_autocmd( 'FileType', { pattern = 'cs',
    callback = function(args)
        vim.treesitter.start(args.buf, 'c_sharp')
    end
  })

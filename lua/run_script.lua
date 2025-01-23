local M = {}

M.run = function()
  local filetype = vim.bo.filetype
  local filepath = vim.fn.expand '%:p'

  if filetype == 'cpp' then
    -- Run the C++ build and executable
    vim.cmd ':sp | terminal ~/.config/nvim/scripts/run_make.sh'
  elseif filetype == 'python' then
    -- Run the Python file
    vim.cmd(':sp | terminal python3 ' .. filepath)
  else
    -- Unsupported file type
    print('Unsupported file type: ' .. filetype)
  end
end

return M

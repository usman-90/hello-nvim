local M = {}

function M.say_hello()
  if vim and vim.notify then
    vim.notify("👋 Hello from your plugin!", vim.log.levels.INFO)
  else
    print("👋 Hello from your plugin!")
  end
end

return M


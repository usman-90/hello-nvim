" Fallback for Vim and compatibility layer
if has('nvim')
  lua << EOF
  vim.api.nvim_create_user_command("Hello", function()
    require("hello").say_hello()
  end, {})
EOF
else
  command! Hello lua require("hello").say_hello()
endif


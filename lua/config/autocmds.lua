vim.api.nvim_create_user_command("Ibd", "bd | bn", {})
vim.api.nvim_create_user_command("NewClangFmtFile", "%!clang-format -style=Google -dump-config > .clang-format", {})
vim.api.nvim_create_user_command("ClangFmt", "%!clang-format", {})

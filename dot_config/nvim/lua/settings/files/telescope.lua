-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {defaults = {mappings = {i = {['<C-u>'] = false, ['<C-d>'] = false}}}}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
-- Load the telescope file browser extension
pcall(require("telescope").load_extension, "file_browser")

-- Telescope live_grep in git root
-- Function to find the git root directory based on the current buffer's path
function telescope_find_git_root()
    -- Use the current buffer's path as the starting point for the git search
    local current_file = vim.api.nvim_buf_get_name(0)
    local current_dir
    local cwd = vim.fn.getcwd()
    -- If the buffer is not associated with a file, return nil
    if current_file == '' then
        current_dir = cwd
    else
        -- Extract the directory from the current file's path
        current_dir = vim.fn.fnamemodify(current_file, ':h')
    end

    -- Find the Git root directory from the current file's path
    local git_root = vim.fn.systemlist('git -C ' .. vim.fn.escape(current_dir, ' ') .. ' rev-parse --show-toplevel')[1]
    if vim.v.shell_error ~= 0 then
        print 'Not a git repository. Searching on current working directory'
        return cwd
    end
    return git_root
end

-- Custom live_grep function to search in git root
function telescope_live_grep_git_root()
    local git_root = telescope_find_git_root()
    if git_root then
        require('telescope.builtin').live_grep {search_dirs = {git_root}}
    end
end

function telescope_live_grep_open_files()
    require('telescope.builtin').live_grep {grep_open_files = true, prompt_title = 'Live Grep in Open Files'}
end

function telescope_fuzzy_find_in_current_buffer()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(
        require('telescope.themes').get_dropdown {winblend = 10, previewer = false})
end
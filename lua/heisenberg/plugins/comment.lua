return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup{
            padding = true,
            toggler = {
                line = 'gcc',
                block = 'gcb',
            },
            opleader = {
                line = 'gc',
                block = 'gb'
            },
        }
    end,
}

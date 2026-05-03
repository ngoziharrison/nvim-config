return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-bibtex.nvim',
  },
  config = function()
    require('telescope').setup({
      extensions = {
        bibtex = {
          context = true,
          context_fallback = true,
          -- Define the autocite format
          custom_formats = {
            {
              id = 'autocite',
              cite_marker = '\\autocite{%s}',
            },
          },
          -- Set it as the default
          format = 'autocite',
        },
      },
    })

    require('telescope').load_extension('bibtex')
    
  end
}

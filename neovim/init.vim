:set number
:set relativenumber
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set scrolloff=5
:set foldmethod=syntax


" Plugins
call plug#begin()

" A fuzzy file finder
Plug 'kien/ctrlp.vim'
" Comment/Uncomment tool
Plug 'scrooloose/nerdcommenter'
" Switch to the begining and the end of a block by pressing %
Plug 'tmhedberg/matchit'
" A Tree-like side bar for better navigation
Plug 'scrooloose/nerdtree'
" A cool status bar
Plug 'vim-airline/vim-airline'
" Airline themes
Plug 'vim-airline/vim-airline-themes'
" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'
" Intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Git integration
Plug 'tpope/vim-fugitive'
" Auto-close braces and scopes
Plug 'jiangmiao/auto-pairs'
" Tagbar for code navigation
Plug 'preservim/tagbar'
" Dev icons
Plug 'ryanoasis/vim-devicons'

Plug 'neovim/nvim-lspconfig'
Plug 'simrat39/rust-tools.nvim'

Plug 'machakann/vim-highlightedyank'
" Go to git root
Plug 'airblade/vim-rooter'
" Fuzzyfind
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Autocomplete
Plug 'ncm2/ncm2'
" Themes
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" Debugging
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'

Plug 'vim-test/vim-test'

if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

filetype plugin indent on


" Keybindings
let mapleader = "\<Space>"
nmap <leader>F :Files<CR>
imap jj <ESC>
map <C-n> :NERDTreeToggle<CR>
" Code action on <leader>a
vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <F8> :TagbarToggle<CR>

" Format action on <leader>f
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Goto definition
nmap <silent> gd <Plug>(coc-definition)
" Open definition in a split window
nmap <silent> vd :vsp<CR><Plug>(coc-definition)<C-W>L

let NERDTreeShowHidden=1 " Show hidden files in NerdTree buffer.

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>

" nmap <silent> <C-f><C-f> zC<CR>
" nmap <silent> <C-f><C-c> zc<CR>
" nmap <silent> <C-f><C-o> zO<CR>

" Theme
syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

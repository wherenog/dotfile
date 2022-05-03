syntax enable
set encoding=UTF-8
set number
set noshowmode
set noshowcmd
set norelativenumber
set wildmenu
set ignorecase
set scrolloff=7
set autoindent
set lazyredraw
set tabstop=4
set shiftwidth=4
set expandtab
set cul
set wrap

let mapleader = "\<space>"

" remember where you edit when you last leave
autocmd BufReadPost * normal! g`"

noremap j gj
noremap k gk

noremap S :w<cr>
noremap Q :q<cr>
noremap <leader>R :source $HOME/.config/nvim/init.vim<cr>

" noremap <leader>si :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <leader>sj :set splitbelow<CR>:split<CR>
" noremap <leader>sj :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <leader>sl :set splitright<CR>:vsplit<CR>

noremap <leader>k <C-w>k
noremap <leader>j <C-w>j
noremap <leader>h <C-w>h
noremap <leader>l <C-w>l

noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

noremap <leader>al :tabe<CR>
noremap <leader>aL :tab split<CR>
" Move around tabs with tn and ti
noremap E :-tabnext<CR>
noremap R :+tabnext<CR>

" vim-plug
call plug#begin('~/.config/nvim/plugged/')
Plug 'dag/vim-fish'
Plug 'jiangmiao/auto-pairs'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ZSaberLv0/ZFVimIM'
Plug 'ZSaberLv0/ZFVimJob'
Plug 'qdzhang/ZFVimIM_xiaohe'
Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'idxuanjun/bx_vimim_dict'
call plug#end()

" commentary comment and uncomment
noremap <leader>/ :Commentary<CR>

" fzf
noremap <leader>ff :Files! ~/<CR>
noremap <leader>fc :Files! ./<CR>
noremap <silent><leader>fo :History!<CR>

" colorizer auto enable
autocmd BufEnter,BufLeave * ColorHighlight

" true color and color theme
if (has("termguicolors"))
    set termguicolors
endif

"colorscheme 
set background=dark
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'medium'
" colorscheme nord
colorscheme gruvbox-material
" colorscheme shades_of_purple
" colorscheme gruvbox

" lightline config
set laststatus=2
set showtabline=2

" lightline
let g:lightline = {}
" let g:lightline.colorscheme = 'nord'
let g:lightline.colorscheme = 'gruvbox_material'
" let g:lightline.colorscheme = 'shades_of_purple'

" coc config
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

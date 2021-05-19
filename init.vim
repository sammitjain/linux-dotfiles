syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set incsearch
set nowrap
set splitright
set expandtab
set scrolloff=8

" Source plugin configuration
source $HOME/.config/nvim/plug-config/polyglot.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/themes/airline.vim

" Share clipboard between system and nvim 
set clipboard+=unnamedplus

" Set theme for nvim
if &term =~ '256color'
    set t_ut=
endif

colorscheme gruvbox
let g:airline_theme='base16_gruvbox_dark_hard'

" Set line numbers on
set number
set relativenumber

" Better color support
set termguicolors

" 80 Char boundary
highlight ColorColumn ctermbg=234
let &colorcolumn = "80,120"

" Keyboard shortcuts
" Toggle hlsearch
nnoremap ,<space> :nohlsearch<CR>

" Moving stuff up and down visually
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Set <space> as Leader key and configure leader shortcuts
let mapleader=" "
map <leader><tab> :bnext<CR>
map <leader>f :FZF<CR>
map <leader>r :Rg<CR>
nmap cp :let @+ = expand("%:p")<CR>

" Configure commentstring for my filetypes
autocmd FileType octave setlocal commentstring=%\ %s

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>

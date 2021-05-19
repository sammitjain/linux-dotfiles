" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    
    " File Explorer
    " Plug 'scrooloose/NERDTree'
    
    " Auto pairs for '(' '[' '{'   
    Plug 'jiangmiao/auto-pairs'

    " Theme plugin
    Plug 'morhetz/gruvbox'
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    
    " Startify for a fancy startup screen
    " Plug 'mhinz/vim-startify'

    " Coc - Conquerer of Completion
    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() }} 
  
    "  Fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
   
    " Not sure what this does
    " Plug 'airblade/vim-rooter'  
    
    " Airline - Status line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " MATLAB 
    "Plug 'daeyun/vim-matlab'

    " Surround text objects with snippets
    Plug 'tpope/vim-surround'

    " Allow more commands to be repeat-friendly
    Plug 'tpope/vim-repeat'

    " Easier comments
    Plug 'tpope/vim-commentary'

    " Indents as text objects
    Plug 'michaeljsmith/vim-indent-object'
call plug#end()

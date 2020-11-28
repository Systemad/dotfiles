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
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Vim fugitive
    Plug 'tpope/vim-fugitive'

    " Purple theme
    Plug 'shapeoflambda/dark-purple.vim'
    Plug 'itchyny/lightline.vim'

    " Our our intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Syntac highlight for C/C++
    Plug 'jackguo380/vim-lsp-cxx-highlight'

    "  Syntax checking
    Plug 'vim-syntastic/syntastic'

    " Clang formatting
    Plug 'rhysd/vim-clang-format'

call plug#end()

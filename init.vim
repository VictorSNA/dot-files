" visual config

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'preservim/nerdcommenter'
Plug 'numkil/ag.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'morhetz/gruvbox'
Plug 'ntpeters/vim-better-whitespace'
call plug#end()

nmap <C-P> :FZF<CR>
set number
set clipboard+=unnamedplus

syntax on
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
let &colorcolumn=join(range(81, 81),",")
" Navigation in neovim terminal
:tnoremap <ESC> <C-\><C-n>
:nnoremap <leader>n :NERDTreeToggle<CR>

"colorscheme gruvbox
"colorscheme boa
"colorscheme Benokai
"colorscheme tony_light
colorscheme Atelier_ForestLight
set background=light
set runtimepath^=~/.vim/bundle/ag

" BG Transparente
hi Normal guibg=NONE ctermbg=NONE

" Fill space with dots
set list
set listchars=space:·

set expandtab shiftwidth=2 softtabstop=2 tabstop=2 smarttab
set nowrap


" find whitespaces lol
let g:better_whitespace_ctermcolor='orange'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" open nvim config with :Source
command Source vnew ~/.config/nvim/init.vim


set hidden
colo desert
filetype indent plugin on
syntax on

set number
set autoindent

set wildmenu
set showcmd
set hlsearch

" Indentation options
set shiftwidth=4
set softtabstop=4
set expandtab

" Hide banner on netrw
let g:netrw_banner = 0

let g:airline_powerline_fonts = 1

map <Leader>vp :VimuxPromptCommand<CR>

" Use <c-space> to trigger completion
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <slient><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() 
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

if filereadable(expand("~/.vimrc.plug"))
  source ~/.vimrc.plug
endif

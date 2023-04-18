" Turn syntax highlighting on 
filetype on
filetype plugin on
filetype indent on
syntax on

" Add numbers to each line on the left-hand side
"
 set number
" Highlight cursor line underneath the cursor horizontally
" Hightlight cursor line underneath the cursor vertically
"
set cursorline
set cursorcolumn

" Enable autocompletion menu after pressing TAB
"
set wildmenu

" Make wildmenu behavie like Bash completion 

set wildmode=list:longest

"Wildmenu ignore files"
"
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')


Plug 'lervag/vimtex'
Plug 'tpope/vim-dispatch'
Plug 'SirVer/ultisnips'


call plug#end()

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']          " using Vim

" }}}
"


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.
inoremap jk <esc>
inoremap kj <esc>
let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops
"
" }}}
" 



" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}

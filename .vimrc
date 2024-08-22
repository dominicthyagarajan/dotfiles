filetype on
filetype plugin on
filetype indent on
syntax on
set hidden
set encoding=utf-8
" Add numbers to each line on the left-hand side
 set number
" Highlight cursor line underneath the cursor horizontally
" Highlight  cursor line underneath the cursor vertically
" Change the highlight for matchparenthesisis in tex files
autocmd filetype tex highlight MatchParen ctermbg=lightyellow ctermfg=black
set cursorline
set cursorcolumn
" Enable autocompletion menu after pressing TAB
set hls
set ic
set wildmenu
" color scheme
" Make wildmenu behaviour like Bash completion 
set wildmode=list:longest
set spelllang=en_us,en_au
set spell
" highlight color for spelling 
 hi SpellBad ctermfg=255  ctermbg =160 
 hi SpellRare ctermfg=255 ctermbg = 001
 hi SpellLocal ctermfg=255 ctermbg = 001
"Wildmenu ignore files"
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
" PLUGINS ----------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
	let g:airline#extensions#tabline#enabled = 1
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/goyo.vim'
Plug 'KeitaNakamura/tex-conceal.vim'
    	set conceallevel=1
    	let g:tex_conceal='abdmg'
    	hi Conceal ctermbg=none
	Plug 'jalvesaq/zotcite', {'branch': 'vim'}
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'tpope/vim-dispatch'
Plug 'SirVer/ultisnips'
	let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/plugged/vim-snippets/UltiSnips', $HOME.'/.vim/mysnippets']          " using Vim
	let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
	let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
	let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops

Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
	" set to 1, nvim will open the preview window after entering the markdown buffer
	" default: 0
	let g:mkdp_auto_start = 0
	" set to 1, the nvim will auto close current preview window when change
	" from markdown buffer to another buffer
	" default: 1
	let g:mkdp_auto_close = 1
	" set to 1, the vim will refresh markdown when save the buffer or
	" leave from insert mode, default 0 is auto refresh markdown as you edit or
	" move the cursor
	" default: 0
	let g:mkdp_refresh_slow = 0
	" set to 1, the MarkdownPreview command can be use for all files,
	" by default it can be use in markdown file
	" default: 0
	let g:mkdp_command_for_global = 0
	" set to 1, preview server available to others in your network
	" by default, the server listens on localhost (127.0.0.1)
	" default: 0
	let g:mkdp_open_to_the_world = 0
	" use custom IP to open preview page
	" useful when you work in remote vim and preview on local browser
	" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
	" default empty
	let g:mkdp_open_ip = ''
	" specify browser to open preview page
	" for path with space
	" valid: `/path/with\ space/xxx`
	" invalid: `/path/with\\ space/xxx`
	" default: ''
	let g:mkdp_browser = ''
	" set to 1, echo preview page url in command line when open preview page
	" default is 0
	let g:mkdp_echo_preview_url = 0
	" a custom vim function name to open preview page
	" this function will receive url as param
	" default is empty
	let g:mkdp_browserfunc = ''
	" options for markdown render
	" mkit: markdown-it options for render
	" katex: katex options for math
	" uml: markdown-it-plantuml options
	" maid: mermaid options
	" disable_sync_scroll: if disable sync scroll, default 0
	" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
	"   middle: mean the cursor position alway show at the middle of the preview page
	"   top: mean the vim top viewport alway show at the top of the preview page
	"   relative: mean the cursor position alway show at the relative positon of the preview page
	" hide_yaml_meta: if hide yaml metadata, default is 1
	" sequence_diagrams: js-sequence-diagrams options
	" content_editable: if enable content editable for preview page, default: v:false
	" disable_filename: if disable filename header for preview page, default: 0
	let g:mkdp_preview_options = {
	    \ 'mkit': {},
	    \ 'katex': {},
	    \ 'uml': {},
	    \ 'maid': {},
	    \ 'disable_sync_scroll': 0,
	    \ 'sync_scroll_type': 'middle',
	    \ 'hide_yaml_meta': 1,
	    \ 'sequence_diagrams': {},
	    \ 'flowchart_diagrams': {},
	    \ 'content_editable': v:false,
	    \ 'disable_filename': 0,
	    \ 'toc': {}
	    \ }
	let g:markdown_folding = 1 
	" use a custom markdown style must be absolute path
	" like '/Users/username/markdown.css' or expand('~/markdown.css')
	let g:mkdp_markdown_css = ''
	" use a custom highlight style must absolute path
	" like '/Users/username/highlight.css' or expand('~/highlight.css')
	let g:mkdp_highlight_css = ''
	" use a custom port to start server or empty for random
	let g:mkdp_port = ''
	" preview page title
	" ${name} will be replace with the file name
	let g:mkdp_page_title = '「${name}」'
	" recognized filetypes
	" these filetypes will have MarkdownPreview... commands
	let g:mkdp_filetypes = ['markdown']
	" set default theme (dark or light)
	" By default the theme is define according to the preferences of the system
	let g:mkdp_theme = 'dark'
Plug 'conornewton/vim-pandoc-markdown-preview'
    	let g:tex_flavor='pdflatex'
    	let g:vimtex_view_method='atril'
    	let g:vimtex_quickfix_mode=1
	let g:md_args= "--filter pandoc-crossref -F ~/.vim/plugged/zotcite/python3/zotref.py --citeproc --template /usr/share/pandoc/data/templates/eisvogel.latex"
"	let g:md_args= "--filter pandoc-crossref -F ~/.vim/plugged/zotcite/python3/zotref.py --citeproc "
Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()
" }}}
" MAPPINGS ----------------------------------------------------{{
" Mappings code goes here.
inoremap jk <esc>
inoremap kj <esc>
nnoremap <Leader>b :buffers<CR>:buffer<Space>
" }}}
" VIMSCRIPT ---------------------------------------------------{{
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" More Vimscripts code goes here.
"Twiddle case using the tilde in visually selected text
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv
"

" }}}
" STATUS LINE -------------------------------------------------{{
" Status bar code goes here.
" }}}

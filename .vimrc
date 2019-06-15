colo desert
set nocompatible
set number
set incsearch
set ruler
set wrapscan
syntax enable
set backspace=indent,eol,start
set showcmd
set autoindent
set cmdheight=2
set cursorline
set softtabstop=4
set shiftwidth=4
set noexpandtab
set mouse=
set ignorecase smartcase

let g:winManagerWindowLayout = 'FileExplorer|TagList'
let g:winManagerWidth=35
let g:defaultExplorer=1

highlight WhitespaceEOL  ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/


map wm :WMToggle<cr>
map wf :FirstExplorerWindow<cr>
map wb :BottomExplorerWindow<cr>
let g:persistentBehaviour=0
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplSplitBelow=0

if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	"set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb
endif

nnoremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>

" s: Find this C symbol
nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>

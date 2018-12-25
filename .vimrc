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

set mouse=

let g:winManagerWindowLayout = 'FileExplorer|TagList'
let g:winManagerWidth=35
let g:defaultExplorer=1

map wm :WMToggle<cr> 
map wf   :FirstExplorerWindow<cr> 
map wb  :BottomExplorerWindow<cr> 

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplSplitBelow=0

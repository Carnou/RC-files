" Turn on line numbering
set nu
" Turn on autoindent
set ai
" Show matching parenthesis
set showmatch
" Shift moves for characters
set sw=4
" tabstops are 8 characters
set ts=8
" Turn all tabs into spaces
set expandtab
" Doesn't do much in this case.  Sets tab key to move 8 characters over
set softtabstop=8
" Always leave three lines on top and bottom
set scrolloff=3
" Ideal for python code.  foldmethod lets you "close" blocks of code.  Basing it on indent is great for python
set foldmethod=indent
" But, start by not folding anything.  This means you CAN fold, but you don't have to unfold
set nofoldenable
" New windows come up on the right
set splitright
" Search terms are highlighted
set hlsearch
" Auto-write when you switch buffers, e.g. with tags
set aw

" wildmenu turns on tab completion when possible.  The next two lines let me use ctrl-j instead of the down arrow to go deeper inside a subdirectory during tab completion.
set wildmenu
let &wildcharm = &wildchar
cnoremap <C-j> <DOWN>

" faster loading of very large files
if !exists("my_auto_commands_loaded")
  let my_auto_commands_loaded = 1
  let g:LargeFile = 1024 * 1024 * 512
  augroup LargeFile
"    autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=Filetype | endif
    autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload undolevels=-1 | else | set eventignore-=Filetype | endif
    augroup END
endif

" continue editing on the line you left off
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" always turn on the status bar
set laststatus=2

" OMG!  Make undo survive exiting the editor!
set undodir=~/.vim/undodir
set undofile


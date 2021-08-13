set t_Co=256

set encoding=UTF-8

set shell=/bin/zsh

execute pathogen#infect()

syntax on

filetype plugin indent on

colorscheme medic_chalk

set nocompatible

filetype on

filetype plugin on

filetype indent on

syntax on

set number

set cursorline

set cursorcolumn

set undodir=~/.vim/.undo//

set backupdir=~/.vim/.backup//

set directory=~/.vim/.swp//

" Don’t add empty newlines at the end of files
set binary

set noeol

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

set background=dark

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif
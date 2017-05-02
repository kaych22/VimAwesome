"Nice to have
syntax on
filetype plugin indent on

"show statusbar
set laststatus=2

execute pathogen#infect()

" for nerd tree config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" to autoload nerd tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" to open nerd tree using ctrl+n
map <C-n> :NERDTreeToggle<CR>

" vim-color solarized molokai colorscheme
syntax enable
set background=dark
colorscheme molokai
let g:rehash256 = 1

" vim airline config
let g:airline#extensions#tabline#enabled = 1

" tagbar
nmap <F8> :TagbarToggle<CR>

" easy motion
map <Leader> <Plug>(easymotion-prefix)

" vim-airline themes
let g:airline_theme='<theme>'
let g:airline_theme='simple'

" ack-vim
if executable('ag')
	  let g:ackprg = 'ag --vimgrep'
  endif
"The quickfix results window is augmented with these convenience mappings:
"
"?    a quick summary of these keys, repeat to close
"o    to open (same as Enter)
"O    to open and close the quickfix window
"go   to preview file, keeping focus on the results
"t    to open in new tab
"T    to open in new tab, keeping focus on the results
"h    to open in horizontal split
"H    to open in horizontal split, keeping focus on the results
"v    to open in vertical split
"gv   to open in vertical split, keeping focus on the results
"q    to close the quickfix window
"--------for ack-me shortcuts

" vim-workspace
let g:workspace_autosave_always = 1

" nerd tree tabs
let g:nerdtree_tabs_open_on_console_startup=1

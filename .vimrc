" Load plugins from ~/.vim/bundle
call pathogen#infect()

set autoindent
set cursorline
set hlsearch
set ignorecase
set ttyfast
set fileformat=unix
set laststatus=2
set mouse=a
set noswapfile
set nowrap
set number
set scrolloff=4
set timeoutlen=100

" Tab settings
set ts=4
set noexpandtab

" Force 256 colors
set t_Co=256

" mac_classic.vim
" https://github.com/nelstrom/vim-mac-classic-theme
if $TERM == "xterm"
  colorscheme mac_classic
endif

" Don't remove tabs from empty lines
inoremap <CR> <CR>x<BS>

" Disable brackets highlighting
au VimEnter * NoMatchParen

" Force tabs for Makefile
au FileType make setlocal noet

" Save files using ctrl-s
" Requires 'stty stop undef' inside your .bashrc file
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
imap <c-s> <Esc><c-s>

" Set EmmetExpandAbbr keybind
imap <c-e> <c-y>,

" Enable NERDTree
map <C-n> :call g:Toggle()<CR>
au BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | quit | endif
function! g:Toggle()
  if (winnr("$") != 1 || exists("b:NERDTreeType"))
    :NERDTreeToggle
  else
    :NERDTree
  endif
endfunction

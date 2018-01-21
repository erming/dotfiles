set autoindent
set cursorline
set fileformat=unix
set hlsearch
set ignorecase
set laststatus=2
set noswapfile
set nowrap
set number
set scrolloff=4
set timeoutlen=100
set ttyfast

" Set tab settings
set ts=4
set noexpandtab

" Enable 256 colors
set t_Co=256

" Disable brackets highlighting
au VimEnter * NoMatchParen

" Save files using ctrl-s
" Requires 'stty stop undef' inside your .bashrc
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

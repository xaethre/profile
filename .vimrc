if isdirectory("/home/rijndael/Cloud/Backup/Linux/vim/backup/")
	set backup
	set backupdir=/home/rijndael/Cloud/Backup/Linux/vim/backup
endif

colorscheme modokai
syntax enable
nnoremap <CR> :noh<CR>
nnoremap <S-Q> <esc>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

set number
set wrap
set linebreak
set smarttab
set smartindent
set showmatch
set hlsearch
set incsearch
set ignorecase
set tabstop=4
set expandtab
set cursorline
set cursorcolumn
set shiftwidth=4
set backspace=indent,eol,start
set ruler
set syn=sh
set encoding=utf-8
set t_Co=256
set wildmenu
set list
set listchars=tab:\ \ ,eol:¬
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\\«ZXCVBNM<>

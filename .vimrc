" VIM Configuration File
" Description: Optimized for C/C++, https://gist.github.com/rocarvaj/2513367
" =========== Start Neobundle configs ==========
" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"" My Bundles here:
"
"NeoBundle 'rust-lang/rust.vim'
"
NeoBundle 'majutsushi/tagbar'
NeoBundle 'Valoric/YouCompleteMe'
NeoBundle 'bfrg/vim-cpp-modern'
NeoBundle 'wincent/command-t'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'dkprice/vim-easygrep'
NeoBundle 'jistr/vim-nerdtree-tabs'


"
call neobundle#end()
"
"" Required:
filetype plugin indent on
"
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"" =========== End Neobundle configs ==========
" Bindings concrete for itcshub
nnoremap <F5> :!cd /home/fort/Programming/itcshub/build && cmake ../itcshub && make<CR>
map <F4> <F5> :!/home/fort/Programming/itcshub/build/cfg_ctrl_test <CR>
map <F6> <F5> :!cd /home/fort/Programming/itcshub/build && ./hub_test<CR>
nnoremap <F12> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
nnoremap <F1> ::let @/=""<CR>
nnoremap <F7> :YcmCompleter FixIt<CR>

"" =========== My settings ==========
""" Some settings for YCM
" Disable global config for YCM
let g:ycm_confirm_extra_conf = 0
" Bindings
nnoremap <F9> :tab YcmCompleter GoTo<CR>
" Disable autopreview
set completeopt-=preview
let g:ecm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" Disable highlighting
let g:ycm_enable_diagnostic_highlighting = 0
" Where open new file after GoTo
let g:ycm_goto_buffer_command = 'split-or-existing-window'

""" Some settings for Tagbar
nmap <F2> :TagbarOpenAutoClose<CR>

""" Some settings for NerdTree
let NERDTreeShowHidden=0
let g:nerdtree_tabs_open_on_console_startup=0
map <C-n> :NERDTreeTabsToggle <CR>

" Automatically change the current directry
set autochdir

set modeline
" turn syntax highlighting on
set t_Co=256
syntax on

" set UTF-8 encoding like default
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Tab moving
noremap <A-Left>  :-tabmove<cr>
noremap <A-Right> :+tabmove<cr>

" disable vi compatibility
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" disable default vim behavior about copy-past
xnoremap p pgv"@=v:register.'y'<cr>"
" Backspace on
set backspace=indent,eol,start
" configure tabwidth and insert spaces instead of tabs
set tabstop=5 		" tab width is 4 spaces
set shiftwidth=5	" indent also with spaces
set expandtab 		" expand tabs to spaces
" wrap lines at 120 chars
set textwidth=120
" use colorscheme
colorscheme desert
" CTAGS
set tags=~/Programming/itcshub/itcshub/tags

" numbers of lines
set number
" highlight matching braces
set showmatch
" intellegent comments
set comments=sl:/*,mb:\ *,elx:\ */
" fix autocomment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" не выгружать буфер когда переключаешься на другой
set hidden
" show unfinished command in statusbar
set showcmd
" autoreread changed files 
set autoread
" use dialog exchange error messages
set confirm
" mouse on
set mouse=a
" wrap word
set linebreak
" show more file information
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P

" search highlighting
set hlsearch
" go to searching word
set incsearch
" ignore case
set ignorecase
" disable autocomment on new line
set formatoptions-=cro
" light on
set list
set listchars=tab:>-,trail:·,precedes:⇠,extends:⇢
" use system buffer
set clipboard=unnamed
set clipboard=unnamedplus

"================= coding =============
set wildmenu
set wcm=<Tab>
menu Encoding.koi8-r :e ++enc=koi8-r ++ff=unix<CR>
menu Encoding.windows-1251 :e ++enc=cp1251 ++ff=dos<CR>
menu Encoding.cp866 :e ++enc=cp866 ++ff=dos<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>
menu Encoding.koi8-u :e ++enc=koi8-u ++ff=unix<CR>
map <F8> :emenu Encoding.<TAB>

"================= git menu =============
set wildmenu
set wcm=<Tab>
menu Git.Add :!git add .<CR>
menu Git.Commit :!git commit <CR>
menu Git.Push :!git push<CR>
map <F10> :emenu Git.<TAB>

"================= locale =============
set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

let s:vim_plug_dir=expand($HOME.'/.vim/autoload')
if !filereadable(s:vim_plug_dir.'/plug.vim')
    execute '!wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -P '.s:vim_plug_dir
    let s:install_plug=1
endif

call plug#begin('~/.vim/plugged')

"Plugin Group: Color Scheme {
Plug 'nanotech/jellybeans.vim'
Plug 'twerth/ir_black'
"}

"Plugin Group: Status Bar{
"Plugin: lightline.vim {
Plug 'itchyny/lightline.vim'

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'component': {
      \ }
      \ }
"}

"Plugin: vim-airline {
"Plug 'bling/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"let g:airline_theme='wombat'
"}
"}

"Plugin Group: Search{
"Plugin: unite.vim {
"Plug 'Shougo/unite.vim'
"silent! nmap <silent> <Leader>be :Unite -here buffer<CR>
"nmap <silent> <C-p> :Unite -start-insert -here file_rec<CR>
"}

"Plugin: ctrlp.vim {
"Plug 'ctrlpvim/ctrlp.vim'
"silent! nmap <silent> <Leader>b :CtrlPBuffer<CR>
"if executable('ag')
  "set grepprg=ag\ --nogroup\ --nocolor
  "let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  "let g:ctrlp_use_caching = 0
"endif
"}

"Plugin: fzf {
"Plug 'junegunn/fzf'
"nmap <silent> <C-p> :FZF<CR>
"}

"Plugin: LeaderF {
Plug 'Yggdroot/LeaderF'
let g:Lf_ShortcutF = '<C-P>'
"}

"}

"Plugin Group: Autocomplete{
"Plugin: YouCompleteMe {
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang'}
let g:ycm_confirm_extra_conf=0
nmap <silent> <C-]> :YcmCompleter GoTo<CR>
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_error_symbol = '❎'
let g:ycm_warning_symbol = '⚠️'
let g:ycm_style_error_symbol = '💡'
let g:ycm_style_warning_symbol = '💡'
"}

"Plugin: neocomplete {
"Plug 'Shougo/neocomplete.vim'
"let g:neocomplete#enable_at_startup=1
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"
"}

"Plugin: clang_complete {
"Plug 'Rip-Rip/clang_complete'
"}
"}

"Plugin Group: C++{
"Plugin: vim-clang-format{
"Plug 'rhysd/vim-clang-format'
"let g:clang_format#command = 'clang-format-3.9'
"let g:clang_format#auto_formatexpr=1
"}

"Plugin: Clighter8 {
Plug 'bbchung/clighter8'
nmap <silent> <Leader>r :ClRenameCursor<CR>

let g:clighter8_highlight_whitelist = ['clighter8EnumConstantDecl', 'clighter8MacroInstantiation', 'clighter8Constructor', 'clighter8Destructor']
let g:clighter8_libclang_path='/usr/lib/x86_64-linux-gnu/libclang-3.9.so.1'
if &diff == 1
    let g:clighter8_autostart = 0
endif

augroup vimrc
au FileType c,cpp set formatexpr=ClFormat()
augroup end
"let g:clang_format_path='clang-format'
nmap <silent><C-\>s :GtagsCursor<CR>
nmap <silent><C-\>r :execute("Gtags -r ".expand('<cword>'))<CR>
nmap <silent><C-\>d :execute("Gtags ".expand('<cword>'))<CR>

let g:Gtags_Auto_Update = 0
"}

"Plugin: a.vim {
Plug 'a.vim'
"}

"Plugin: Conque-GDB {
"Plug 'Conque-GDB'
"}
"}

"Plugin Group: Linter{
"Plugin: validator.vim {
Plug 'maralla/validator.vim'
let g:validator_auto_open_quickfix = 0
let g:validator_ignore = ['cpp, c']
let g:validator_error_symbol = '❎'
let g:validator_warning_symbol = '⚠️'
let g:validator_style_error_symbol = '💡'
let g:validator_style_warning_symbol = '💡'
"}

"Plugin: syntastic {
"Plug 'scrooloose/syntastic'
"let g:syntastic_cursor_columns = 0
"let g:syntastic_loc_list_height=5
"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_enable_signs = 1
"let g:syntastic_python_checkers = ['pylint', 'pyflakes', 'pep8']
"let g:syntastic_mode_map = {'passive_filetypes': ['python'] }
"let g:syntastic_error_symbol = '❎'
"let g:syntastic_warning_symbol = '⚠️'
"let g:syntastic_style_error_symbol = '💡'
"let g:syntastic_style_warning_symbol = '💡'
"let g:syntastic_vim_checkers = ['vint']
"}

"Plugin: neomake {
"Plug 'benekastah/neomake'
"let g:neomake_error_sign = { 'text': '🚫', 'texthl': 'SyntasticErrorSign'}
"let g:neomake_warning_sign = { 'text': '⚠️', 'texthl': 'SyntasticWarningSign'}
"}
"}

"Plugin Group: Explorer{
"Plugin: tagbar {
"Plug 'majutsushi/tagbar'
"let g:tagbar_left = 1
"let g:tagbar_width = 28
"nmap <silent> <F2> :TagbarToggle<CR>
"}

"Plugin: bufexplorer {
Plug 'jlanzarotta/bufexplorer'
"}

"Plugin: nerdtree {
"Plug 'scrooloose/nerdtree'
"}
" }

"Plugin Group: Edit{
"Plugin: nerdcommenter {
Plug 'scrooloose/nerdcommenter'
"}

"Plugin: ultisnips {
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = '<Leader><tab>'
"}

"Plugin: vim-snippets {
Plug 'honza/vim-snippets'
"}

"Plugin: delimitMate {
"Plug 'Raimondi/delimitMate'
"let delimitMate_expand_cr=1
"}

"Plugin: auto-pairs {
Plug 'jiangmiao/auto-pairs'
"}
"}

"Plugin: vim-fugitive {
"Plug 'tpope/vim-fugitive'
"}

"Plugin: CSApprox {
"Plug 'CSApprox'
"}

"Plugin: asyncrun.vim {
"Plug 'skywind3000/asyncrun.vim'
"}

call plug#end()

if exists('s:install_plug')
    PlugInstall
endif

"General vim settings {
colorscheme clighter8
syntax on

"set lazyredraw
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
endif
if !&diff
    set cursorline
endif
set title
set novisualbell
set mouse=a
set laststatus=2
set number
set softtabstop=4
set tabstop=4
set shiftwidth=4
set scrolloff=4
set sidescrolloff=1
set incsearch
set hlsearch
set ignorecase
set smartcase
set pumheight=12
set previewheight=4
set foldlevelstart=20
set tabpagemax=100
set wildmode=longest,full
set wildmenu
set completeopt=longest,menuone
set grepprg=grep\ -nH\ $*
set sessionoptions=buffers,curdir,folds,winsize,options
set encoding=utf-8
set fileencodings=utf-8,big5,gb2312,utf-16
set fileformat=unix
set updatetime=700
set undofile
set backspace=2
set termguicolors
set nosol
set expandtab

let &undodir=$HOME.'/.vim/undo'
if !isdirectory(&undodir)
    call mkdir(&undodir, 'p')
endif

command! W silent execute "w !sudo > /dev/null tee %"
vmap * y/<C-r>"<CR>
vmap # y?<C-r>"<CR>

augroup vimrc
au VimLeave * if &diff == 0 | silent! mksession! .session | endif

au FileType sh,c,cpp,objc,objcpp,python,vim setlocal tw=0 expandtab fdm=syntax
au FileType python setlocal ts=4 formatprg=autopep8\ -aa\ -
au FileType tex,help,markdown setlocal tw=78 cc=78 formatprg=
augroup END
"}

" vim:foldmarker={,}:foldlevel=0:foldmethod=marker:

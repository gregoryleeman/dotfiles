set rtp-=~/.vim/after 
set rtp+=~/.vim/after
set formatoptions=o
setl comments=b:#

" theme
set background=dark
colorscheme solarized

" plugins
call plug#begin('~/.vim/plugged')
Plug 'godlygeek/tabular'
Plug 'pangloss/vim-javascript'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-tagprefix'
Plug 'ncm2/ncm2-ultisnips'
Plug 'SirVer/ultisnips'
Plug 'jpalardy/vim-slime'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

set listchars+=space:.
set number
au TermOpen * setlocal nonumber
set sw=4 ts=4 sts=4 autoindent noexpandtab
set modeline
set backspace=eol,start,indent
set whichwrap+=<,>,h,l 
set breakindentopt=shift:3,min:40,sbr
set breakindent
set linebreak 
set ignorecase
set smartcase
set hlsearch
set incsearch
set mat=2
set cursorline
set visualbell
set colorcolumn=80
set splitbelow
set splitright
set spelllang=en_gb
set spellfile=~/.vim/spell/en.utf-8.add
function! FoldText()
	return repeat(" ", indent(v:foldstart)) . trim(getline(v:foldstart))[0:-1] . " +" . repeat(" ", winwidth(0))
endfunction
set foldlevel=0
set foldenable
set foldtext=FoldText()
set foldmethod=marker
set foldopen-=block
set completeopt=noinsert,menuone,noselect
set shortmess+=c

" global variables
let g:netrw_liststyle = 4
let g:netrw_banner = 0
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.2"}

let g:lightline = {
	\	'colorscheme': 'solarized',
	\	'inactive': {
	\		'left': [ ['filename'] ],
	\		'right': []
	\	}
	\ }

nnoremap <expr> x ((foldclosed('.')==-1)?('x'):('zo0x'))
nnoremap <Down> <C-\><C-n><C-W><C-J>
nnoremap <Up> <C-\><C-n><C-W><C-K>
nnoremap <Right> <C-\><C-n><C-W><C-L>
nnoremap <Left> <C-\><C-n><C-W><C-H>
" nnoremap <C-W><C-Left> <C-W>>
" nnoremap <C-W><C-Right> <C-W><
" nnoremap <C-W><C-Down> <C-W>+
" nnoremap <C-W><C-Up> <C-W>-
" nnoremap <C-Left> <C-W>>
" nnoremap <C-Right> <C-W><
" nnoremap <C-Down> <C-W>+
" nnoremap <C-Up> <C-W>-

tnoremap <Esc> <C-\><C-n>
nnoremap <Esc> <Esc>:noh<cr>

" nnoremap zO zCzO

syntax on

autocmd BufEnter * call ncm2#enable_for_buffer()

let g:vimwiki_list = [{
			\'path': '~/Dropbox/wiki',
			\'index': 'index',
			\'syntax': 'markdown',
			\'ext': 'md'
			\}]
let g:vimwiki_folding = 'custom'
let g:vimwiki_conceal_onechar_markers = 0

let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<c-o>"

inoremap <expr> <down> pumvisible() ? "\<c-n>" : "\<down>"
inoremap <expr> <up> pumvisible() ? "\<c-p>" : "\<up>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.vim/snips']

augroup CursorLineOnlyInActiveWindow
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END

nmap <backspace> :e %:h<CR>
" nmap <S-backspace> :e %:h<CR>

map sa <Nop>
map sb <Nop>
map sc <Nop>
map sd <Nop>
map se <Nop>
map sf <Nop>
map sg <Nop>
map sh <Nop>
map si <Nop>
map sj <Nop>
map sk <Nop>
map sl <Nop>
map sm <Nop>
map sn <Nop>
map so <Nop>
map sp <Nop>
map sq <Nop>
map sr <Nop>
map ss <Nop>
map st <Nop>
map su <Nop>
map sv <Nop>
map sw <Nop>
map sx <Nop>
map sy <Nop>
map sz <Nop>
map s1 <Nop>
map s2 <Nop>
map s3 <Nop>
map s4 <Nop>
map s5 <Nop>
map s6 <Nop>
map s7 <Nop>
map s8 <Nop>
map s9 <Nop>
map s0 <Nop>
map s! <Nop>
map s@ <Nop>
map s£ <Nop>
map s$ <Nop>
map s% <Nop>
map s^ <Nop>
map s& <Nop>
map s* <Nop>
map s( <Nop>
map s) <Nop>

let g:indent_guides_auto_colors = 0
" let g:indent_guides_enable_on_vim_startup = 1

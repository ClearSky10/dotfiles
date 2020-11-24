set clipboard=unnamedplus
set number
set termguicolors
set acd 
set title
set ignorecase
set smartcase
filetype plugin on
syntax enable
let g:python3_host_prog = '/bin/python'
set autoindent noexpandtab tabstop=4 shiftwidth=4
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ\:,
			\фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
let mapleader=";"
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
nnoremap <silent> <leader>ec :e $MYVIMRC<CR>
nnoremap <silent> <leader>ss :so $MYVIMRC<CR>
nnoremap <silent> <Space> :NERDTreeToggle<CR>
nnoremap <silent> <leader>se :setlocal spell spelllang=en_us<CR>
nnoremap <silent> <leader>sr :setlocal spell spelllang=ru<CR>
nnoremap <silent> <leader>sn :setlocal nospell<CR>
nnoremap <silent> <leader>t :tabe<CR>
nnoremap <silent> <leader>h :tabp<CR>
nnoremap <silent> <leader>l :tabn<CR>
nnoremap <leader>p :call CocAction('format')<CR>
nnoremap <C-S> :w<CR>
nnoremap <leader>u :so %<CR>
inoremap <C-S> <C-O>:w<CR>
nmap <C-_> <Plug>NERDCommenterToggle
nmap <leader>n <Plug>(coc-diagnostic-next)
imap <C-_> <C-O><Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle
noremap  <CR> gf<CR>
noremap k gk
noremap j gj
noremap л gk
noremap о gj
inoremap ;; <Esc>
call plug#begin()
Plug 'scrooloose/nerdtree'
"Plug 'jiangmiao/auto-pairs'
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
Plug 'francoiscabrol/ranger.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim'
Plug 'junk-e/identity.vim'
"Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'numirias/semshi'
Plug 'ChaosRV/vim-nemuri-color'
Plug 'tpope/vim-surround'
Plug 'vimoutliner/vimoutliner' 
Plug 'elzr/vim-json'
call plug#end()
colo nemuri
let g:UltiSnipsExpandTrigger="<tab>"
let g:coc_global_extensions = ['coc-python', 'coc-css', 'coc-prettier', 'coc-json']
let g:airline_theme='behelit'

" wiki settings
set concealcursor=n
let g:vimwiki_folding='expr:quick'
let g:vimwiki_hl_headers=1
let wiki1 = {'syntax': 'markdown', 'ext': '.md', 'links_space_char': '_'}
let wiki1.path = '~/wiki'
let wiki1.name = 'wiki'
let g:vimwiki_list = [wiki1]
let g:vimwiki_url_maxsave = 0
set foldlevel=2
au BufRead *.otl            set foldlevel=0
au BufRead *.otl            set foldcolumn=0

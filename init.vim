let mapleader=" "                                
syntax on                                
set nu                                
set norelativenumber                                
set wrap                                
set showcmd                                
set wildmenu                                
set hlsearch                                
set incsearch                                
set ignorecase                                
set smartcase                                
                                
"========== 分屏快捷                                
map sl :set splitright<CR>:vsplit<CR>                                
map sj :set nosplitright<CR>:vsplit<CR>                                
map sk :set splitbelow<CR>:split<CR>                                
map si :set nosplitbelow<CR>:split<CR>                                
map tn :tabe<CR>                                
map tj :-tabnext<CR>                                
map tl :+tabnext<CR>                                
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map W :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
exec "nohlsearch"
                                

call plug#begin('~/.local/share/nvim/plugged')
Plug 'tmhedberg/SimpylFold'
Plug 'machakann/vim-highlightedyank'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs' 
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'neomake/neomake'
call plug#end()


" 1.
" === deoplete 自动补全； 
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" 2.
" === NERDTree
map tt :NERDTreeToggle<CR>
map <LEADER>l <C-w>l                                
map <LEADER>j <C-w>h                                
map <LEADER>i <C-w>k                                
map <LEADER>k <C-w>j     

" 3.
" === 函数跳转 
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" 4.
" === 代码检查 
let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)


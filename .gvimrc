" ==================================================================
" .gvimrc for Lance Alligood (lalligood@gmail.com)
" ==================================================================

" ==================================================================
" PERSONAL SETTINGS
" ==================================================================

" Enable syntax highlighting
syntax on
" Set font & color scheme
set guifont=LiberationMono\ 10
colorscheme vividchalk
" Set window size to 80 columns x 50 lines
set columns=80 lines=50
" Turn on smart indent feature
set smartindent
" Set indent to 4 spaces
set shiftwidth=4 tabstop=4 softtabstop=4
" Turn on line numbers & relative numbers
set number relativenumber
" Turn on word wrap
set lbr
" Highlight search strings
set hlsearch
" Enable spell check
set spell spelllang=en_us
" Enable ruler in bottom-right corner
set ruler
" Disable backup files
set nobackup
" Disable swapfile
set noswapfile
" Disable menu & toolbar at top
set guioptions-=m
set guioptions-=T
" Set Blowfish for encryption algorithm
set cm=blowfish

" ==================================================================
" FILE SYNTAX HIGHLIGHTING
" ==================================================================

" Enable syntax highlighting for any Arduino sketch files
" arduino.vim needs to reside in ~/.vim/syntax/
au BufNewFile,BufRead *.pde setf arduino
au BufNewFile,BufRead *.ino setf arduino

" ==================================================================
" PERSONAL KEYMAPPINGS
" ==================================================================

" Enable <Tab> as leader
let mapleader = "\<Tab>"
" Close window
nnoremap K :q<CR>
" Turn diff off
nnoremap <leader>D :diffoff!<CR>
" Turn off search result highlights
nnoremap <silent> <leader><space> :noh<CR>:call clearmatches()<CR>
" Move search results into the middle of the screen
nnoremap n nzzzv
nnoremap N Nzzzv
" Enable/disable ability to paste with/without leading spaces
set pastetoggle=<F3>
" Clean any trailing whitespace
nnoremap <leader>ww mz:%s/\s\+$//<CR>:let @/=''<CR>z
" Place each open file into its own tab
nnoremap <leader>tt :tab ball<CR>
" Open a new tab
nnoremap <leader>nt :tabnew<CR>
" Close window/tab
nnoremap <leader>qq :close<CR>
" Jump to next tab
nnoremap <leader>l gt
" Jump to previous tab
nnoremap <leader>h :tabp<CR>
" Turn spell check On or Off
noremap <F4> <Esc>:set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>
" Go to next misspelled word
nnoremap <F5> <Esc>]s
" Go to previous misspelled word
nnoremap <F6> <Esc>[s
" Display correct spelling suggestions
nnoremap <F7> <Esc>z=
" Jump to next file in buffer
nnoremap <leader>j :bn<CR>
" Jump to previous file in buffer
nnoremap <leader>k :bp<CR>
" Make menu & toolbar appear/disappear
map <silent> <C-F2> :if &guioptions =~# 'T' <Bar>
	\set guioptions-=T <Bar>
	\set guioptions-=m <bar>
    \else <Bar>
	\set guioptions+=T <Bar>
	\set guioptions+=m <Bar>
    \endif<CR>
" This changes default behavior of arrow keys for easier navigation with
" long lines (paragraphs)
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
" Faster splits
nnoremap <leader>v <C-w>v
nnoremap <leader>s <C-w>s
" Faster navigation between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

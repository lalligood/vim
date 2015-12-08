" ==================================================================
" .gvimrc for Lance Alligood (lalligood@gmail.com)
" ==================================================================

" ==================================================================
" PERSONAL SETTINGS
" ==================================================================

" Enable syntax highlighting
syntax on
" Set font & color scheme
set guifont=Hack\ 10
colorscheme vividchalk
" Set window size to 80 columns x 50 lines
set columns=85 lines=50
" Turn on smart indent feature
set smartindent
" Set indent to 4 spaces
set shiftwidth=4
" DO NOT UNCOMMENT THE FOLLOWING LINE UNLESS YOU WANT TO USE TABS INSTEAD OF
" SPACES FOR INDENTS!!!
"set tabstop=4
" Alter backspace behavior to treat indent spaces like tabs
set softtabstop=4
" Change tabs into spaces
set expandtab
" Turn on line numbers
set number
" Turn on visual word wrap at the end of a word...
set wrap linebreak
" ...but disable wrapping onto a new line
set formatoptions-=t
" Highlight column 80, useful when using large windows
set colorcolumn=80
" Highlight the current line
set cursorline
" Highlight search strings
set hlsearch
" Enable spelling dictionary locale
set spelllang=en_us
" Enable ruler in bottom-right corner
set ruler
" Disable backup files
set nobackup
" Disable swapfile
set noswapfile
" Disable/hide menu & toolbar at top of window
set guioptions-=m
set guioptions-=T
" Set Blowfish for encryption algorithm
set cm=blowfish
" Enable folding & load/save folds
set foldenable
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" ==================================================================
" FILE SYNTAX HIGHLIGHTING
" ==================================================================

" Arduino sketch files - requires arduino.vim
au BufNewFile,BufRead *.pde setf arduino
au BufNewFile,BufRead *.ino setf arduino
" Linux configuration files
au BufNewFile,BufRead *.conf setf dosini
" SQL files - requires sql.vim
au BufNewFile,BufRead *.sql setf sql

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
" Remove any trailing whitespace
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
" Turn relativenumber on or off
nnoremap <silent> <F1> <Esc>:set relativenumber!<CR><Bar>:echo "Relative numbering: " . strpart("OffOn", 3 * &relativenumber, 3)<CR>
" Enable/disable ability to paste with/without leading spaces
nnoremap <F3> <Esc>:set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode
" Turn spell check On or Off
nnoremap <F4> <Esc>:set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>
" Go to previous misspelled word
nnoremap <F5> <Esc>[s
" Go to next misspelled word
nnoremap <F6> <Esc>]s
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

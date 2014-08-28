" ==================================================================
" .vimrc for Lance Alligood (lalligood@gmail.com)
" ================================================================== 

" ==================================================================
" PERSONAL SETTINGS
" ==================================================================

" Enable syntax highlighting
syntax on
" Set color scheme
colorscheme colorful256
" Turn on smart indent feature
set smartindent
" Set indent to 4 spaces
set shiftwidth=4 tabstop=4 softtabstop=4
" Turn on line numbers
set number
" Turn on word wrap
set lbr
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
" Set Blowfish for encryption algorithm
set cm=blowfish

" ==================================================================
" FILE SYNTAX HIGHLIGHTING
" ==================================================================

" Arduino sketch files - arduino.vim needs to reside in ~/.vim/syntax/
au BufNewFile,BufRead *.pde setf arduino
au BufNewFile,BufRead *.ino setf arduino
" Linux configuration files
au BufNewFile,BufRead *.conf setf dosini

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
" Turn ability to paste with or without leading tabs/spaces
set pastetoggle=<F3>
" Clean any trailing whitespace
nnoremap <leader>ww mz:%s/\s\+$//<CR>:let @/=''<CR>z
" Turn spell check On or Off
nnoremap <F4> <Esc>:set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>
" Turn relativenumber on or off
nnoremap <F1> :set relativenumber!<CR><Bar>:echo "Relative numbering: " . strpart("OffOn", 3 * &relativenumber, 3)<CR>
" Go to next misspelled word
noremap <F5> <Esc>]s
" Go to previous misspelled word
noremap <F6> <Esc>[s
" Display correct spelling suggestions
noremap <F7> <Esc>z=
" Jump to next file in buffer
noremap <leader>j :bn<CR>
" Jump to previous file in buffer
map <leader>k :bp<CR>
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

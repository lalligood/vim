" ==================================================================
" .gvimrc for Lance Alligood (lalligood@gmail.com)
" ================================================================== 

" ==================================================================
" PERSONAL SETTINGS
" ==================================================================

" enable syntax highlighting
syntax on
" set font & color scheme
set guifont=LiberationMono\ 10
colorscheme vividchalk
" set window size to 80 columns wide x 50 lines
set columns=80 lines=50 
" turn on smart indent feature
set smartindent
" set indent to 4 spaces
set shiftwidth=4 tabstop=4 softtabstop=4
" turn on line numbers
set number
" turn on word wrap
set lbr
" highlight search strings
set hlsearch
" enable spell check
set spell spelllang=en_us
" enable ruler in bottom-right corner
set ruler
" disable creation/saving of backups
set nobackup
" disable menu & toolbar at top
set guioptions=m
" Set Blowfish for encryption algorithm
set cm=blowfish
" Enable syntax highlighting for any Arduino sketch files
" arduino.vim needs to reside in ~/.vim/syntax/
au BufNewFile,BufRead *.pde setf arduino

" ==================================================================
" PERSONAL KEYMAPPINGS
" ==================================================================

" enable/disable ability to paste with/without leading spaces
set pastetoggle=<F3>
" <Ctrl>+<Shift>+T to place each open file into its own tab
map <C-S-t> <Esc>:tab ball<CR>
" <Ctrl>+T to open a new tab
map <C-t> <Esc>:tabnew<CR>
" <Ctrl>+<F4> to close window/tab
map <C-F4> <Esc>:close<CR>
" <Ctrl>+<Tab> to go to next tab
map <C-Tab> <Esc>gt
" <Ctrl>+<Shift>+<Tab> to go to previous tab
map <C-S-Tab> <Esc>:tabp<CR>
" Turn spell check On or Off
map <F4> <Esc>:set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>
" Go to next misspelled word
map <F5> <Esc>]s
" Go to previous misspelled word
map <F6> <Esc>[s
" Display correct spelling suggestions
map <F7> <Esc>z=
" Jump to next file in buffer
map <A-n> <Esc>:bn<CR>
" Jump to previous file in buffer
map <A-p> <Esc>:bp<CR>
" Allows you to make menu & toolbar appear/disappear
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
" Jump between split windows with <Ctrl>+<Alt>+H/J/K/L
nnoremap <C-S-j> <C-W><C-J>
nnoremap <C-S-k> <C-W><C-K>
nnoremap <C-S-l> <C-W><C-L>
nnoremap <C-S-h> <C-W><C-H>

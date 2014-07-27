" ==================================================================
" .vimrc for Lance Alligood
" ================================================================== 

" ==================================================================
" PERSONAL SETTINGS
" ==================================================================

" enable syntax highlighting
syntax on
" set color scheme
colorscheme colorful256
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
" Set Blowfish for encryption algorithm
set cm=blowfish
" Enable syntax highlighting for any Arduino sketch files
" arduino.vim needs to reside in ~/.vim/syntax/
au BufNewFile,BufRead *.pde setf arduino
au BufNewFile,BufRead *.ino setf arduino

" ==================================================================
" PERSONAL KEYMAPPINGS
" ==================================================================

" Turn ability to paste with or without leading tabs/spaces
set pastetoggle=<F3>
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
" This changes default behavior of arrow keys for easier navigation with
" long lines (paragraphs)
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

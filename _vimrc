" ==================================================================
" File:         $HOME/.vimrc  (sourced by ~USER/.gvimrc)
" Version:	1.4.1
" Updated:	January 24, 2013
" Purpose:      *Personal* Setup file for Vim)
" Author:       Lance Alligood (lalligood@gmail.com)
" ================================================================== 

" ==================================================================
" PERSONAL SETTINGS
" ==================================================================

" turn on smart indent feature
set smartindent
" set indent to 2 pixels
set shiftwidth=2
" turn on line numbers
set number
" turn on word wrap
set lbr
" turn off case sensitive searches
set ignorecase
" enable spell check
set spell spelllang=en_us
" turn off syntax highlighting
syntax off
" highlight search strings
set hlsearch
" make sure that the ruler showing row,column is visible in bottom-right corner
set ruler

" ==================================================================
" PERSONAL KEYMAPPINGS
" ==================================================================

" Turn spell check On or Off
map <F4> :set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>
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
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

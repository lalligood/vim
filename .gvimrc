" ==================================================================
" File:         $HOME/_gvimrc  (sourced by ~USER/.gvimrc)
" Version:	1.6.7
" Updated:	November 28, 2013
" Purpose:      *Personal* Setup file for GVim -
"               the GUI version of the editor Vim (Vi IMproved)
" Intended OS:	Ubuntu or Windows
" Author:       Lance Alligood (lalligood@gmail.com) 
" Website:      <URL:http://cdspoolrocket.info/>
" ================================================================== 

" Enable formatting for any Arduino sketch files
au BufNewFile,BufRead *.pde setf arduino

" ==================================================================
" PERSONAL SETTINGS
" ==================================================================

" set font
if has("gui_gtk2")
      set guifont=LiberationMono\ 10
  elseif has("gui_win32")
      set guifont=Lucida_Console:h9
  end
"set guifont=Terminal:h9
" or Lucida Console with a height of 9 pixels
"set guifont=Lucida_Console:h9
" turn on smart indent feature
set smartindent
" set indent to 2 pixels
set shiftwidth=2
" set window to 100 columns/chars wide & 50 lines tall
set columns=100 lines=50 
" turn on line numbers
set number
" turn on word wrap
set lbr
" turn off case sensitive searches
set ignorecase
" however, if you sometimes want to look for capitalized words,
" you will need
set smartcase
" highlight search strings
set hlsearch
" enable spell check
set spell spelllang=en_us
" enable & set to color scheme of choice
syntax on
colorscheme manxome
" disable creation/saving of backups
set nobackup
" turn off GUI toolbar at the top of the window
set guioptions=m

" ==================================================================
" GENERAL VIM PERSONAL KEYMAPPINGS
" ==================================================================

" <Ctrl>+<Alt>+T to place each open file into its own tab
map <C-S-t> <Esc>:tab ball<CR>
" <Ctrl> + T to open a new tab
map <C-t> <Esc>:tabnew<CR>
" <Ctrl>+<F4> to close window/tab
map <C-F4> <Esc>:close<CR>
" <Ctrl>+<Tab> to go to next tab
map <C-Tab> <Esc>gt
" <Ctrl>+<Shift>+<Tab> to go to previous tab
map <C-S-Tab> <Esc>:tabp<CR>
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
" This changes default behavior of arrow keys for easier navigation with
" long lines (paragraphs)
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk


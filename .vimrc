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
set shiftwidth=4
" Alter backspace behavior to treat indent spaces like tabs
set softtabstop=4
" Change tabs into spaces
set expandtab
" Turn on line numbers
set number
" Enable relative numbers for normal mode, disable in insert mode
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END
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
" Set Blowfish for encryption algorithm
set cm=blowfish
" Enable folding & load/save folds
set foldenable
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview
" Make tabs, trailing whitespace, & non-breaking spaces visible
set listchars=tab:>-,trail:.,nbsp:~
set list

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
" Python script files
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set encoding=utf-8

" ==================================================================
" PERSONAL KEYMAPPINGS
" ==================================================================

" Enable <Tab> as leader (Default leader is '\')
"let mapleader = "\<Tab>"
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

" ==================================================================
" DEVELOPMENT SPECIFIC SETTINGS
" ==================================================================

" Execute queries from within vim? Sure, why not!
" dbext plugin: https://github.com/vim-scripts/dbext.vim
" http://jonathansacramento.com/posts/20160122-improve-postgresql-workflow-vim-dbext.html
"let g:dbext_default_profile_LOCAL = 'type=PGSQL:host=localhost:port=5432:dbname=lunch:user=postgres'
"let g:dbext_default_profile_PROD = 'type=PGSQL:host=fs-bu:port=5432:dbname=nntpdw:user=lance'
"let g:dbext_default_profile_DEV = 'type=PGSQL:host=host-hwm-db2:port=5432:dbname=dw_prod:user=lance'
"let g:dbext_default_profile = 'PROD'
" Insert mode text expansion shortcuts as inspired by
" https://8thlight.com/blog/jerome-goodrich/2017/01/17/Vim-and-TDD.html
" SQL-centric
iabbrev sqls SELECT<CR><CR>FROM <CR>WHERE <CR>--GROUP BY <CR>--ORDER BY <CR>--LIMIT <CR>;<ESC>6ki
iabbrev sqlu UPDATE<CR>    SET <CR>WHERE <CR>RETURNING *;<ESC>3kA
au FileType sql :iabbrev ij INNER JOIN  ON<ESC>3hi
au FileType sql :iabbrev loj LEFT OUTER JOIN  ON<ESC>3hi
" bash-centric
iabbrev newsh #!/bin/bash<CR><CR>#
au FileType sh :iabbrev newf ()<CR># Function <CR>{<CR><CR>}<CR><ESC>5kI
" python-centric
iabbrev newpy #!/usr/bin/env python3<CR><CR>'''<CR>'''<CR><CR>__status__ = ''<CR>__version__ = ''<CR>__maintainer__ = 'Lance Alligood'<CR>__email__ = 'lance.alligood@omicronmedia.com'<CR><CR>

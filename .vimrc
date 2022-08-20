syntax on
set termguicolors

let g:onedark_termcolors=256
" ligthline config.

" airline config.
let g:airline_extensions = ['branch']
function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
  let g:airline_section_b = airline#section#create_left(['ffenc', 'hunks'])
  let g:airline_section_c = airline#section#create(['%F'])
  let g:airline_section_x = airline#section#create(['filetype', '  |  ', '%P'])
  let g:airline_section_y = airline#section#create(['ascii:%b', ' ', 'hex:%B'])
  let g:airline_section_z = airline#section#create_right(['%l/%L', '%c'])
endfunction
autocmd VimEnter * call AirlineInit()

" color scheme.
colorscheme angr
" active mouse
set mouse-=a
" Active number line
set number
" invisible chars
set listchars=tab:→\ ,eol:¶,nbsp:·,trail:•,extends:⟩,precedes:⟨
" set list

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" Enable type file detection
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on 
" Load an indent file for the detected file type.
filetype indent on

" Highlight cursor line underneath the cursor horizontally.
"set cursorline
" Highlight cursor line underneath the cursor vertically.
"set cursorcolumn
" Set shift.

set shiftwidth=4
" Set tab.
set tabstop=4
" Use space characters instead of tabs.
set expandtab

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')

  Plug 'preservim/nerdtree'
  Plug 'itchyny/lightline.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
"set statusline=

" Status line left side.
"set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
"set statusline+=%=

" Status line right side.
"set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
"set laststatus=2

" }}}

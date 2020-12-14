call plug#begin('~/.vim/plugged')

Plug 'godlygeek/tabular'
" Tabular is useful line up text.

" Plug 'plasticboy/vim-markdown'
" " Syntax highlighting, matching rules 

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" Preview on browser with synchronised 

Plug 'scrooloose/nerdtree'
" file navigation in left side.

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" fuzzy search. 

Plug 'jiangmiao/auto-pairs'
" for parenthesis pairs complete

Plug 'tpope/vim-commentary'
" shortcut for comment out 

" Plug 'othree/yajs.vim'
" " JS syntax 

" Plug 'mxw/vim-jsx'
" " JSX syntax

Plug 'sheerun/vim-polyglot'
" syntax for all language. 

" Plug 'mhartington/oceanic-next'
" Color, theme from sublime 


" Linting
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'css',
    \ 'json',
    \ 'markdown',
    \ 'python',
    \ 'html', ] }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set number
set relativenumber

let g:mkdp_markdown_css = '/home/neva/.config/nvim/githubmd.css'

" set 
" changethe tab space 
 
set ignorecase
" search without case sensetive.

set mouse=a
" make vim mouse aware all modes.

command! W write
" avoid to mistake entering by :W 

let g:mkdp_refresh_slow=1
" 0 is real time, every typing can be seen in browser 

autocmd Filetype markdown normal zr

map <C-n> :NERDTreeToggle<CR>
" nerdtree hot key 

map ,, :FZF<CR>
" shortcut for FZF<enter> 

imap jj <Esc>
" easy quiting insert mode 

" Prettier
" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

syntax on


" key complete coc 

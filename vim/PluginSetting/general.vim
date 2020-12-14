set number
set relativenumber

let g:mkdp_markdown_css = '/home/neva/.config/nvim/githubmd.css'
 
set ignorecase
" search without case sensetive.

set mouse=a
" make vim mouse aware all modes.

command! W write
" avoid to mistake entering by :W 

let g:mkdp_refresh_slow=1
" 0 is real time, every typing can be seen in browser 

autocmd Filetype markdown normal zr zr

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

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)


set tabstop=2
set shiftwidth=2
set expandtab
set linebreak


" undo permanately 
set undodir=~/.vim/undodir
set undofile

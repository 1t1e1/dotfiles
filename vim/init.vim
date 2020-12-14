if exists('g:vscode')
  " VS extension
  source ~/.config/nvim/PluginSetting/general.vim

else
  call plug#begin('~/.vim/plugged')
  Plug 'maxmellon/vim-jsx-pretty'       
  " JSX syntax

  Plug 'godlygeek/tabular'
  " Tabular is useful line up text.

  Plug 'plasticboy/vim-markdown'
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

  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'

  Plug 'othree/yajs.vim'
  " " JS syntax 

  Plug 'mxw/vim-jsx'
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

  " Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'mzlogin/vim-markdown-toc'

  " automatic table of content "
  Plug 'ncm2/ncm2-ultisnips'
  Plug 'SirVer/ultisnips'
  "
  " assuming you're using vim-plug: https://github.com/junegunn/vim-plug
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'

  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()

  " IMPORTANT: :help Ncm2PopupOpen for more information
  set completeopt=noinsert,menuone,noselect

  " NOTE: you need to install completion sources to get completions. Check
  " our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
  Plug 'ncm2/ncm2-bufword'
  Plug 'ncm2/ncm2-path'

  Plug 'ncm2/ncm2-jedi', {'for': 'python'}
  Plug 'ncm2/ncm2-tern', {'do': 'npm install', 'for': ['javascript', 'vue']}

  call plug#end()

  source ~/.config/nvim/PluginSetting/autocomp.vim
  source ~/.config/nvim/PluginSetting/general.vim
  source ~/.config/nvim/PluginSetting/prettier.vim
endif

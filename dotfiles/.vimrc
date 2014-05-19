
" Use two space tabs
set ai
set autoindent
set expandtab tabstop=2 softtabstop=2 shiftwidth=2
set number numberwidth=2
set showmatch
set incsearch
set hlsearch

set statusline=%t\ %{fugitive#statusline()}\ %h%m%r%y%=%c,%l/%L\ %P

"set virtualedit=all

set guioptions-=T

let mapleader = ","
let loaded_matchparen = 1

set wildmenu
set wildmode=list:longest
set autoread

set ignorecase
set smartcase

set ruler
set backspace=indent,eol,start
set guicursor=a:blinkon0
set nocursorline
filetype plugin indent on
set wildignore=vendor/**,development/**,coverage/**,doc/*
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Guardfile,config.ru} set ft=ruby

au BufRead,BufNewFile {*.md,*.txt,*.asc} set wrap linebreak nolist tw=72
au BufRead,BufNewFile {*.md,*.txt,*.asc} setlocal spell spelllang=en_us
au BufRead,BufNewFile {*.yml} set wrap linebreak nolist tw=72 filetype=text
au BufRead,BufNewFile {*.yml} setlocal spell spelllang=en_us

set colorcolumn=80

map <Leader>1 :tabn 1<CR>
map <Leader>2 :tabn 2<CR>
map <Leader>3 :tabn 3<CR>
map <Leader>4 :tabn 4<CR>
map <Leader>5 :tabn 5<CR>
map <Leader>6 :tabn 6<CR>
map <Leader>7 :tabn 7<CR>
map <Leader>8 :tabn 8<CR>
map <Leader>9 :tabn 9<CR>

map! <D-1> <C-O>:tabn 1<CR>
map! <D-2> <C-O>:tabn 2<CR>
map! <D-3> <C-O>:tabn 3<CR>
map! <D-4> <C-O>:tabn 4<CR>
map! <D-5> <C-O>:tabn 5<CR>
map! <D-6> <C-O>:tabn 6<CR>
map! <D-7> <C-O>:tabn 7<CR>
map! <D-8> <C-O>:tabn 8<CR>
map! <D-9> <C-O>:tabn 9<CR>

map <Leader>, :NERDTreeToggle<CR>


map <Leader>T <Plug>RubyTestRun
map <Leader>F <Plug>RubyTestFileRun
map <Leader>t :CtrlP<CR>
imap jf <ESC>
map! ,e <ESC>f>a
map ,e f>
map <C-q> :q<CR>
map <F5> :CtrlPClearAllCaches<CR>
map <F4> :TlistToggle<CR>
map <Leader><F4> :TlistUpdate<CR>
map <Leader><F5> :source ~/.vimrc<CR>
map <C-/> ://<CR>

function! RSpecFile()
  execute("!clear && rvm use rx && bundle exec spring rspec " . expand("%p"))
endfunction

map <leader>R :call RSpecFile() <CR>
command! RSpecFile call RSpecFile()

function! RSpecCurrent()
    execute("!clear && rvm use rx && bundle exec spring rspec " . expand("%p") . ":" . line("."))
endfunction
map <leader>r :call RSpecCurrent() <CR>
command! RSpecCurrent call RSpecCurrent()
map <C-y> "*y
vmap <C-y> "*y
map <C-Y> "*Y

map <C-p> "*p

let g:ctrlp_map = '<c-t>'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/doc/*  " MacOSX/Linux

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn|doc$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_working_path_mode ='ra'

nnoremap Y y$
map <Leader>I gg=G``<cr>

set wildmenu
set wildmode=list:longest
autocmd VimEnter * wincmd p
set background=dark
colorscheme all_hallows_eve

function! ToggleBackground () 
  if &background=='dark'
    set background=light
  else
    set background=dark
  endif
endfunction

map <Leader><F2> :call ToggleBackground() <CR>

autocmd BufWinLeave * call clearmatches()

call pathogen#infect()

if exists(":Tabularize")
  nmap <Leader>as :Tabularize /\s\S\+<CR>
  vmap <Leader>as :Tabularize /\s\S\+<CR>
  nmap <Leader>a= :Tabularize /=><CR>
  vmap <Leader>a= :Tabularize /=><CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
  nmap <Leader>a\ :Tabularize /\|<CR>
  vmap <Leader>a\ :Tabularize /\|<CR>
endif

map ,<C-b> :ConqueTermSplit bash<CR>

au BufNewFile,BufRead *.thor set filetype=ruby

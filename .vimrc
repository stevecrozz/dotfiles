execute pathogen#infect()

filetype plugin indent on

syntax on
" colorscheme solarized
set t_Co=256
set background=dark

set expandtab
set tabstop=2
set shiftwidth=2
set list
set number
set ruler
set nowrap
set encoding=utf-8
set backspace=indent,eol,start

" turd files
set backupdir=~/.vimbackup " where to put backup files
set directory=~/.tmp       " where to put swap files
set nobackup
set noswapfile
let g:netrw_dirhistmax = 0

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" ignores
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*
set wildignore+=*/tmp/*
set wildignore+=*.swp,*~,._*

" buffergator
let g:buffergator_show_full_directory_path = 0

" airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1

" printer settings (for hardcopy)
set pdev=HP-Photosmart-C7200-series

" go-vim
" let g:go_auto_type_info = 1
" let g:go_fmt_command = "goimports"
" let g:go_highlight_types = 1
let g:go_metalinter_autosave = 1

" Fuck ex mode
nnoremap Q <nop>

" easymotion
map <Leader> <Plug>(easymotion-prefix)

" Search for selected text, forwards or backwards.
" vnoremap <silent> * :<C-U>
"   \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
"   \gvy/<C-R><C-R>=substitute(
"   \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
"   \gV:call setreg('"', old_reg, old_regtype)<CR>
" vnoremap <silent> # :<C-U>
"   \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
"   \gvy?<C-R><C-R>=substitute(
"   \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
"   \gV:call setreg('"', old_reg, old_regtype)<CR>

" <cr> should not only clear highlighted search, but flash the current
" " cursor location.
" :nnoremap <CR> :nohlsearch<CR>:set cul cuc<cr>:sleep 50m<cr>:set nocul nocuc<cr>/<BS>
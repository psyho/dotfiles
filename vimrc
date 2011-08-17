"==========================================================
"
" Psyho's .vimrc
"
" heavily inspired by Peepcode screencast, Sickill 
" and Derek Wyatt
"
"==========================================================

set nocompatible                  " Must come first because it changes other options.

" setup Vundle
set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

"----------------------------------------------------------
" PLUGINS
"----------------------------------------------------------

" FuzzyFinder - finally I can go to a class or method like in RubyMine
Bundle 'L9'
Bundle 'FuzzyFinder'

" javascript indentation in vim sucks
Bundle 'Better-Javascript-Indentation'

" CSS
Bundle 'Better-CSS-Syntax-for-Vim'

" JSON.vim - JSON syntax highlighting
Bundle 'JSON.vim'

" LustyJuggler - switch between buffers easier
Bundle 'LustyJuggler'

" NerdCommenter - comment blocks of code
Bundle 'The-NERD-Commenter'

" NerdTree - displays a neat file explorer window
Bundle 'The-NERD-tree'

" ack - use ack to search through files
Bundle 'ack.vim'

" Buffer navigation plugin
Bundle 'buftabs'

" command-T - file opener/finder
Bundle 'Command-T'

" csapprox - make gvim colorschemes work in console
Bundle 'CSApprox'

" highlight colors
Bundle 'colorizer'

" d.vim - syntax highliting for D programming language
Bundle 'd.vim'

" delimitMate - autoclosing of (", etc. that does not clash with endwise
Bundle 'delimitMate.vim'

" greplace.vim - plugin that allows search and replace across all of the project files
Bundle 'greplace.vim'

" jslint .js files automatically
Bundle 'jslint.vim'

" syntastic - plugin for displaying syntax errors
Bundle 'Syntastic'

" Linting for Python code
Bundle 'pyflakes.vim'

" vim-endwise - wisely add 'end' in ruby
Bundle 'endwise.vim'

" vim-fugitive - vim-git integration
Bundle 'fugitive.vim'

" vim-git - a couple more basic commands to work with git
Bundle 'tpope/vim-git'

" vim-markdown - syntax highlighting for markdown
Bundle 'Markdown'

" vim-matchit - better pair matching for the % command
Bundle 'matchit.zip'

" vim-ragtag - enables some keyboard shortcuts for working with HTML, ERB, etc.
Bundle 'ragtag.vim'

" vim-rake - :Rake, :A, :R like in rails.vim, but without rails
Bundle 'tpope/vim-rake'

" vim-rails - awesome vim-rails integration
Bundle 'rails.vim'

" vim-repeat - repeat comnmands from plugins using .
Bundle 'repeat.vim'

" vim-ruby - ruby integration
Bundle 'ruby.vim'

" vim-ruby-refactoring - automatic refactorings for ruby
Bundle 'ecomba/vim-ruby-refactoring'

" A nice color scheme
Bundle 'Solarized'

" cuztomizable tab completion, continued is the newer version
Bundle 'SuperTab-continued.'

" vim-surround - surrounding text with braces, quotes, html tags...
Bundle 'surround.vim'

" vim-textobj - dependency of rubyblock
Bundle 'textobj-user'

" vim-textobj-rubyblock - allow selecting blocks in ruby as text objects
Bundle 'textobj-rubyblock'

" Display a tree structure with current file tags
Bundle 'Tagbar'

" vim-unimpaired - some useful mappings, for example to swap code lines
Bundle 'unimpaired.vim'

" vim-zoomwin - when maximizing the window it is possible to un-maximize it
Bundle 'ZoomWin'

" zencoding-vim - plugin for expanding css-like syntax to html
Bundle 'ZenCoding.vim'

"----------------------------------------------------------

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set encoding=utf-8                " Default encoding

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set cursorline                    " Highlight the current line

set history=1000                  " remember more commands and search history
set undolevels=1000               " use many muchos levels of undo

set virtualedit=block             " allow the cursor to go into invalid places only in visual block mode

" Display tabs and trailing spaces
set list
set listchars=tab:»\ ,trail:·,nbsp:·

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set splitbelow splitright         " Splitting behavior

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=/tmp                " Keep swap files in one location

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs
set shiftround                    " use multiple of shiftwidth when indenting with '<' and '>'
set laststatus=2                  " Show the status line all the time

set confirm                       " confirm on quit, etc.
set autoread                      " automatically read changes from disk

set diffopt+=iwhite               " ignore whitespace in vimdiff

" Folding settings
set foldmethod=indent             " indent based on syntax
set foldnestmax=3                 " deepest fold is 3 levels
set foldlevel=3
set nofoldenable                  " dont fold by default

set matchpairs+=<:>               " add < and > to the chars thac can be navigated with %

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" change the mapleader from \ to ,
let mapleader=","

" semicolon instead of a colon for commands
nnoremap ; :

" j and k will navigate correctly in the wrapped lines
nnoremap j gj
nnoremap k gk

" map .md files fo markdown
au BufNewFile,BufRead *.md set filetype=markdown

" automatically strip trailing whitespace for some file types
autocmd FileType c,cpp,java,php,javascript,html,ruby autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

au! BufRead,BufNewFile *.json setfiletype json
autocmd FileType json set equalprg=json_reformat

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" NERDTree
let g:NERDChristmasTree = 1
let g:NERDTreeMapOpenSplit = "s"
let g:NERDTreeMapOpenVSplit = "v"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_disabled_filetypes = ['eruby']

" zencoding-vim
let g:user_zen_expandabbr_key = '<c-e>' 
let g:use_zen_complete_tag = 1

map <silent> <F2> <ESC>:NERDTreeToggle<CR>

nmap <silent> <leader>ft :FufTag<cr>
nmap <silent> <leader>fb :FufBuffer<cr>

" a key mapping for running tests
nmap <silent> <leader>r :Rake<cr>
nmap <silent> <leader>rs :Rake spec<cr>

" regenarate tags and reload the list of files used by Command-T plugin
nmap <silent> <leader>g :CommandT<cr>
nmap <silent> <leader>G :CommandTFlush<cr>:Rtags<cr>

" ignore gems bundled in the project directory
set wildignore+=vendor/gems,vendor/bundle

cmap w!! w !sudo tee % >/dev/null " w!! lets you save files that you would have to use sudo vim to open

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=ces$

" some plugin was overriding the redo command
nmap <silent> <c-r> :redo<cr>

" map ,c to colorizer
nmap ,c <Plug>Colorizer

" buftabs shortcuts
nmap <F10> :bprev<cr>
nmap <F11> :bnext<cr>

" use omni-completion in supertab
let g:SuperTabDefaultCompletionType = "context"

" solarized settings
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"

" Colors for console
if !has("gui_running")
  set t_Co=256
endif

" Scheme
colorscheme solarized

" Tagbar
nnoremap <F3> :TagbarToggle<CR>

" set some different setting for the diff mode
if &diff
  colorscheme fu_patched " different scheme
  set nonumber " no line numbers
endif

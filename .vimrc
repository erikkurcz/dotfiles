" Look
set ruler				        " always show cursor position
set number				        " show line numbers on side
set background=dark		    	" because im not a psychopath
syntax on				        " syntax highlighting
filetype plugin indent on		" recognize and highlight per language
set display+=lastline			" try to show last line of paragraph
set scrolloff=7				    " keep 7 lines above/below cursor

set t_Co=256				    " 256 color terminal
colorscheme koehler			    " looks nice

" light shading on present line
hi Cursorline cterm=NONE ctermbg=234 ctermfg=NONE
set matchpairs+=<:>			    " for C++ templates 

" Usage
set expandtab			        " tabs to spaces sorry Richard Hendricks
set tabstop=4				    " indent using 4 spaces
set shiftwidth=4			    " more spacing...
set autoindent			        " for newlines
set smartindent 		        " hand in hand with above
set backspace=indent,eol,start	" backspacing over indents, end of line, insertion stars
set noerrorbells visualbell t_vb= " no beeping, no flashing
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro " do not autocomment next line after initial comment on first line of new files
set wrap			            " wrap lines
set linebreak			        " don't wrap in the middle of a line because it's annoying
set wildignore+=.pyc,.o,.out 	" ignore these
au BufNewfile * start		    " for new files, default to insert mode
au Bufnewfile,BufRead *.md,*.tex setlocal spell " spellcheck markdown and tex files
" use just ; instead of : for commands like :w -> which now becomes just ;w
nnoremap ; : 

" moving down a line on wrapped lines goes down a row, not to the next line
nnoremap j gj
nnoremap k gk

" clear search highlihgt using ./ instead of :nohl
nmap <silent> ./ :nohlsearch<CR>

" Mappings
" Close braces when typing first one
autocmd FileType c inoremap { {<Esc>o}<Esc>ko
autocmd FileType cpp inoremap { {<Esc>o}<Esc>ko
autocmd FileType rust inoremap { {<Esc>o}<Esc>ko

" Directional movement among split windows. Read as 'Map <C-j> to work as if typing <C-W>j
map <C-j> <C-W>j 
map <C-k> <C-W>k 
map <C-l> <C-W>l 
map <C-h> <C-W>h 

" Other operations among split windows
" Switch left and right
map <C-i> <C-W>i

" ctags 
map tt <C-]>
map T <C-t>

" Search
set ignorecase			    	" ignore case while searching
set hlsearch					" highlight all matches
set smartcase					" automatically go case-sensitive if there is a capital letter
set incsearch                   " autocomplete searches as you type

" prevent request to hit enter when opening vim ugh
set shortmess=at

" persistent undo in between sessions
set undofile

" always show next match in middle of screen
nnoremap n nzz
nnoremap N Nzz


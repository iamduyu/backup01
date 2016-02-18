
" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on


"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

if has('gui_running')
else
    " Use visual bell instead of beeping when doing something wrong
    set visualbell

    " And reset the terminal code for the visual bell. If visualbell is set, and
    " this line is also included, vim will neither flash nor beep. If visualbell
    " is unset, this does nothing.
    set t_vb=

    " Enable use of the mouse for all modes
    set mouse=a
   
    " fast tty, because we are in mintty(xterm2)
    set ttyfast

    " easy selection, reporing selected text when mouse selecting
    set ttymouse=xterm2

endif

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=4
set tabstop=4


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprevious<CR>

if has("gui_running") 
    :colorscheme desert
    :set guifont=Source\ Code\ Pro
else
    :colorscheme desert
    " disable some plugin 
    let g:pathogen_disabled = []
    call add(g:pathogen_disabled, 'vim-airline')
    " call add(g:pathogen_disabled, 'autocomplpop')
    execute pathogen#infect()
endif


" color terminal definitions
hi Normal ctermfg=white ctermbg=237
hi SpecialKey	ctermfg=darkgreen
hi NonText	cterm=bold ctermfg=darkblue
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi Search	cterm=bold,reverse ctermfg=white ctermbg=237
hi MoreMsg	ctermfg=darkgreen
hi ModeMsg	cterm=NONE ctermfg=brown
hi LineNr	ctermfg=3
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse ctermfg=230 
hi StatusLineNC cterm=reverse

" split bar color
set fillchars-=vert:\|
hi VertSplit	cterm=bold ctermbg=237 ctermfg=237

hi Title	ctermfg=5
" 228=Khaki
hi Visual	cterm=reverse ctermfg=64 ctermbg=228  
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
hi Folded	ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	ctermfg=darkgrey ctermbg=NONE
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1
hi Comment	ctermfg=darkcyan
hi Constant	ctermfg=brown
hi Special	ctermfg=5
hi Identifier	ctermfg=6
hi Statement	ctermfg=3
hi PreProc	ctermfg=5
hi Type		ctermfg=2
hi Underlined	cterm=underline ctermfg=5
hi Ignore	cterm=bold ctermfg=7
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1
hi TabLineFill cterm=reverse ctermfg=247
hi TabLineSel cterm=standout ctermbg=237  ctermfg=white
hi TabLine  cterm=reverse ctermfg=247 ctermbg=238

" title string
" boolean option could only be set with the no prefix
:set title

" cursor style in diff mode

if has("gui_running") 
else
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"
endif

" cursor color
"echo -ne '\e]12;#00FF00\a' # green cursor
" cursor blink
"echo -ne "\e[2 q" # non blinking block cursor
"

" net rw settings

" open file in new tab
let g:netrw_browse_split=3

" tree style listing
let g:netrw_liststyle=3

" enable mouse in netrw
let g:netrw_mousemaps= 0

" cabbrev
" always open help in tab instead of window
cabbrev help tab help

" let g:solarized_termcolors=256
" set background=dark
" colorscheme solarized

" active omni complete, the internal complete for vim
" set omnifunc=syntaxcomplete#Complete
"

" highlighting
hi MatchParen ctermbg=black guibg=lightblue cterm=bold ctermfg=black
let loaded_matchparen = 1

" omnifunc intgreted java autocomplpop
if has("autocmd") 
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete 
endif 

nnoremap ,w :tabnext<CR>
nnoremap ,b :tabprev<CR>


nnoremap <C-Down> :tabclose<CR>
" disable highlight matching
" hi MatchParen cterm=bold ctermbg=black ctermfg=black
" let loaded_matchparen = 1
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" open tags in new tab with ctrl+arrow up
nnoremap <C-Up> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>


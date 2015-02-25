" Modeline and Notes ------------------- {{{
"
"   vim: set ft=vim ts=2 sw=2 tw=80 foldmethod=marker :
"   Updated: Wed 25 Feb 2015 21:34:43 CET by bart@buckland
"
"   This .vimrc is largely inspired by the vimrc found in the GitHub
"   repository of Steve Francia's Vim Distribution (spf13-vim)(spf13-vim/.vimrc)
"   Thank you Steve Francia for the great work.
"
"   Of course I've also picked up pieces from other people, but can't remember
"   all of you.
" }}}
" Basics ------------------------------- {{{
    " Drop compatibility with vi
    set nocompatible                     " Must be the FIRST line

    behave xterm                         " Mouse behaves like X Window

    " Security measure
    " set modelines=0

    " Enable modelines
    set modeline

    " Needed before Vundle
    set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

    " Seems the leader mapping should be before all Vundle
    let mapleader=','
    let g:mapleader=','
    let localleader='\'
    " }}}
" Bundles + Bundle Setup --------------- {{{
    filetype off                         " Required, set to on later

    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " Let Vundle manage Vundle (Required)
    Bundle 'gmarik/vundle'

    """"" A
    " Abolish (Easy search and replace) See ~/.vim/after/plugin/abolish.vim
    Bundle 'tpope/vim-abolish.git'
    " Ack (Search in files)
    Bundle 'mileszs/ack.vim'
    " Airline (Statusline)
    Bundle 'bling/vim-airline'

    """"" B
    " Bufferline (Displays on Airline)
    Bundle 'bling/vim-bufferline'

    """"" C
    " CSS3-Syntax (Adds css3 syntax support)
    Bundle 'hail2u/vim-css3-syntax'
    " Coffee-Script (CoffeeScript support)
    Bundle 'kchmck/vim-coffee-script'
    " Adds color support for css files
    Bundle 'gorodinskiy/vim-coloresque'
    " Comment stuff out
    Bundle 'tpope/vim-commentary'

    """"" D
    " Auto-completion for quotes, parens, brackets, etc.
    Bundle 'Raimondi/delimitMate'

    """"" E
    " EasyMotion <Leader><Leader>w, <L><L>gE, <L><L>t
    Bundle 'Lokaltog/vim-easymotion'
    " Editor Config, reads the editorconfig file to set the editor
    " settings.
    Bundle 'editorconfig/editorconfig-vim'

    """"" F
    " Fugitive (Git)
    Bundle 'tpope/vim-fugitive'

    """"" G
    " greplace (Replace across files/buffers)
    Bundle 'vim-scripts/greplace.vim'

    """"" H
    " HTML-AutoCloseTag (Automatically close HTML tags)
    Bundle 'amirh/HTML-AutoCloseTag'

    """"" I
    " Indent Guides (Show indents with some colour)
    Bundle 'nathanaelkane/vim-indent-guides'

    """"" J
    " Javascript (Syntax and indent plugin)
    Bundle 'pangloss/vim-javascript'
    " JSON support
    Bundle 'elzr/vim-json'
    " JST/EJS syntax
    Bundle 'briancollins/vim-jst'

    """"" K

    """"" L
    " LaTeX (vim-LaTeX)
    Bundle 'jcf/vim-latex'

    """"" M
    " Markdown
    Bundle 'tpope/vim-markdown'
    " Matchit (extended % matching for HTML, LaTeX, and many other languages)
    Bundle 'matchit.zip'
    " Molokai Colourscheme
    Bundle 'tomasr/molokai'
    " Multiple cursors
    Bundle 'terryma/vim-multiple-cursors'

    """"" N
    " NerdTree (File explorer)
    Bundle 'scrooloose/nerdtree'
    " neomru (recently used files)
    Bundle 'Shougo/neomru.vim'
    " NERDTree and tabs together in Vim
    Bundle 'jistr/vim-nerdtree-tabs'
    " Nim support
    Bundle 'zah/nimrod.vim'

    """"" O
    " Highlight replace matches
    Bundle 'osyo-manga/vim-over'

    """"" P
    " PHP-namespace (PHP support)
    Bundle 'arnaud-lb/vim-php-namespace'
    " PIV (PHP support)
    Bundle 'spf13/PIV'

    """"" Q

    """"" R
    " Repeat.vim (Allow to repeat plugin actions)
    Bundle 'tpope/vim-repeat'
    " Restore views
    Bundle 'vim-scripts/restore_view.vim'

    """"" S
    " Session management
    Bundle 'vim-scripts/sessionman.vim'
    " Signify (Show changes in files compared to the last commit via vim its
    " sign column)
    Bundle 'mhinz/vim-signify'
    " Snippets
    Bundle 'honza/vim-snippets'
    " Solarized Colorscheme
    Bundle 'altercation/vim-colors-solarized'
    " surround: quoting/parenthesizing made simple
    Bundle 'tpope/vim-surround'
    " Syntastic (Syntax checking)
    Bundle 'scrooloose/syntastic'

    """" T
    " Tabluar (Aligning text)
    Bundle 'godlygeek/tabular'
    " Tagbar (Tags)
    Bundle 'majutsushi/tagbar'
    " TLib
    Bundle 'tomtom/tlib_vim'

    """"" U
    " UltiSnips (Snippets)
    Bundle 'SirVer/ultisnips'
    " UndoTree (Visualize undo-tree)
    Bundle 'mbbill/undotree'
    " Unimpaired
    Bundle 'tpope/vim-unimpaired'
    " Unite (Would benefit from vimproc?)
    Bundle 'Shougo/unite.vim'

    """"" V
    " Vim-addon-mw-utils
    Bundle 'MarcWeber/vim-addon-mw-utils'
    " vimproc.vim (Needs compiling! [make])
    Bundle 'Shougo/vimproc.vim'
    " Multi-language DBGP debugger client for Vim (PHP, Python, Perl, Ruby, etc.)
    Bundle 'joonty/vdebug.git'

    """"" W
    " WebAPI support
    Bundle 'mattn/webapi-vim'
    " Wordy check misused or overly used words
    Bundle 'reedes/vim-wordy'

    """"" X

    """"" Y
    " Completion
    Bundle 'Valloric/YouCompleteMe'

    """"" Z
"}}}
" General ------------------------------ {{{
    " Set default encoding
    set encoding=utf-8
    set termencoding=utf-8
    set fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1
    scriptencoding utf-8

    " Automatically detect filetypes
    filetype plugin indent on
    syntax enable                        " Enable syntax highlighting

    " Disable the mouse
    set mouse=
    set mousehide

    set magic

    " use Perl/Python regex, not Vim's default regex
    nnoremap / /\v
    vnoremap / /\v

    if has('clipboard')
      if has('unnamedplus')
        set clipboard=unnamedplus
      else
        set clipboard=unnamed
      endif
    endif

    " Always switch to the current file directory
    autocmd BufEnter * if bufname("") !~ "^\[A-Za-z-9\]*://" | lcd %:p:h | endif
    autocmd BufWritePre,FileWritePre *.*   ks|call LastMod()|'s
    autocmd BufRead tmux.conf,.tmux.conf,.tmux*,*/tmux-sessions/* setlocal filetype=tmux foldmethod=marker
    autocmd BufRead /opt/a*/conf/*,/etc/httpd/*.conf setlocal filetype=apache
    autocmd BufRead *.sh,*.cron,*.bash setlocal filetype=sh

    set shortmess+=filmnrxoOtT           " Abbrev. of messages (avoids 'hit enter')
    set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility

    " Store a ton of history (default 20)
    set history=1000

    " Allow buffer switching without saving
    set hidden

    " Use British English for spell checking, additional use Dutch
    set spell spelllang=en_gb,nl

    "Backups are nice :D
    set backup
    if has('persistent_undo')
        set undofile                     " So is persistent undo..
        set undolevels=1000              " Maximum number of changes that can be undone
        set undoreload=10000             " Maximum number of lines to save for undo on a buffer reload

        set updatecount=50               " Write swap file to disk every 50 chars
    endif

    set complete=.,w,b,u,U,t,i,d         " Do lots of scanning on tab completion

    " If possible return to the line we were at before closing the file
    augroup resCur
        autocmd!
            if has("folding")
                autocmd BufWinEnter * if ResCur() | call UnfoldCur() | endif
            else
                autocmd BufWinEnter * call ResCur()
            endif
    augroup END
" }}}
" UI ----------------------------------- {{{
    " Display the current mode (i.e. INSERT, VISUAL)
    " Set to noshowmode, because of Powerline/Airline
    set noshowmode

    " Highlight the line the cursor is on
    set cursorline

    highlight clear SignColumn           " SignColumn should match background
    highlight clear LineNr               " Current line number row will have same background colour in relative mode

    if has('cmdline_info')
        set ruler                        " Show the ruler
        set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)  " A ruler on steroids
        set showcmd                      " Show partial commands in status line and
                                         " Selected characters/lines in visual mode
    endif

    " Statusline styling (But we've got Airline anyway)
    if has('statusline')
        set laststatus=2

        " Broken down into easily includeable segments
        set statusline=%<%f\             " Filename
        set statusline+=%w%h%m%r         " Options
        set statusline+=%{fugitive#statusline()} " Git Hotness
        set statusline+=\ [%{&ff}/%Y]    " Filetype
        set statusline+=\ [%{getcwd()}]  " Current dir
        set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
    endif

    " Set the colour theme
    set background=dark
    let g:molokai_original=0             " Use the dark background version instead of the original lighter background version
    let g:rehash256=1                    " Make the terminal version match the GUI version as close as possible
    colorscheme molokai

    set backspace=indent,eol,start       " Backspace for dummies
    set linespace=0                      " No extra spaces between rows
    set relativenumber                   " Show relative line numbers (relative to cursor)
    set showmatch                        " Briefly jump to matching bracket

    " Search options
    set ignorecase                       " Ignore case when searching
    set smartcase                        " Including a capital will make it case sensitive
    set incsearch                        " Jump to the word while searching
    set hlsearch                         " Highlight search matches
    set wrapscan                         " Continue searching at top when hitting bottom
    set gdefault                         " The substitute flag g is on by default, so all matches in a line are substituted instead of one.

    " Vim tab completion like zsh
    set wildmenu                         " Show list instead of just completing
    " Ignore output and vcs files
    set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem,*.pyc,.hg
    " Ignore archive files
    set wildignore+=*.zip,*.tar*,*.rar
    " Ignore bundler
    set wildignore+=*./.bundle/*
    " Ignore temp and backup files
    set wildignore+=*~,*.tmp,*.bak,._*,*.swp,*.bac
    set wildmode=longest,list:longest,list:full

    set whichwrap=b,s,h,l,<,>,[,]        " Backspace and cursor keys wrap too

    " Try to show at least x lines under or above the cursor
    set scrolloff=5
    set sidescrolloff=15
    set sidescroll=1

    set foldenable                       " Auto fold code
    set foldmethod=syntax                " Fold using syntax
    set list
    set listchars=tab:›\ ,trail:•,extends:❯,precedes:❮,nbsp:. " Highlight problematic whitespace

    set report=0                         " Always display info after a command

    " Fast scrolling
    set ttyfast
" }}}
" Formatting --------------------------- {{{
    " Settings for line wrapping
    set formatoptions=c,q,r,t
    set linebreak
    set textwidth=80
    set colorcolumn=81
    set nowrap                           " Don't wrap long lines, not break WRAP

    " Indention settings
    set autoindent
    set copyindent
    set smartindent
    set cindent

    " Tab handling settings
    set expandtab                        " Tabs are spaces, not tabs
    set softtabstop=2                    " Let backspace delete indent
    set tabstop=2                        " An indentation every four columns
    set shiftwidth=2                     " Use indents of 4 spaces
    set smarttab

    set nojoinspaces                     " Prevents inserting two spaces after punctuation on a join (J)

    set splitright
    set splitbelow

    set pastetoggle=<F12>                " pastetoggle (sane indentation on pastes)

    " Remove trailing whitespaces and ^M chars
    autocmd FileType c,cpp,java,go,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> call StripTrailingWhitespace()
    autocmd FileType go                                               autocmd BufWritePre <buffer> Fmt
    autocmd FileType gitcommit                                        autocmd! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])
    autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
    autocmd BufNewFile,BufRead *.coffee    set filetype=coffee
    autocmd BufNewFile,BufRead *.md        set filetype=markdown

    autocmd FileType php                   setlocal makeprg=zca\ %<.php
    autocmd FileType php                   setlocal errorformat=%f(line\ %l):\ %m
" }}}
" Key (re)mappings --------------------- {{{
    " Hardcore mode on (disable the arrow keys)
    nnoremap <up>    <nop>
    nnoremap <down>  <nop>
    nnoremap <left>  <nop>
    nnoremap <right> <nop>
    inoremap <up>    <nop>
    inoremap <down>  <nop>
    inoremap <left>  <nop>
    inoremap <right> <nop>
    vnoremap <up>    <nop>
    vnoremap <down>  <nop>
    vnoremap <left>  <nop>
    vnoremap <right> <nop>

    " SHIFT key fixes (i.e. writing :W instead of :w)
    if has('user_commands')
        command! -bang -nargs=* -complete=file E e<bang> <args>
        command! -bang -nargs=* -complete=file W w<bang> <args>
        command! -bang -nargs=* -complete=file Wq wq<bang> <args>
        command! -bang -nargs=* -complete=file WQ wq<bang> <args>
        command! -bang Wa wa<bang>
        command! -bang WA wa<bang>
        command! -bang Q q<bang>
        command! -bang QA qa<bang>
        command! -bang Qa qa<bang>
    endif

    cmap Tabe tabe

    " Find merge conflict markers
    map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

    " Just in case we forgot to use use sudo and do want to write the file.
    cmap w!! w !sudo tee % >/dev/null

    " Y yanks from cursor to $, just like C and D go to $ as well.
    nnoremap Y y$

    " Code folding options
    " NOTE: f1 IS NOT <F1>!
    nmap <leader>f0 :set foldlevel=0<CR>
    nmap <leader>f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f4 :set foldlevel=4<CR>
    nmap <leader>f5 :set foldlevel=5<CR>
    nmap <leader>f6 :set foldlevel=6<CR>
    nmap <leader>f7 :set foldlevel=7<CR>
    nmap <leader>f8 :set foldlevel=8<CR>
    nmap <leader>f9 :set foldlevel=9<CR>

    " Toggle search highlighting
    nmap <silent> <leader>/ :set invhlsearch<CR>

    " Strip whitespace
    nmap <leader><space> :call StripTrailingWhitespace()<CR>

    " Shortcuts
    " Change Working Directory to that of the current file
    cmap cwd lcd %:p:h
    cmap cd. lcd %:p:h

    " Visual shifting (does not exit Visual mode)
    vnoremap < <gv
    vnoremap > >gv

    " Fix home and end keybindings for screen, particularly on mac
    " - for some reason this fixes the arrow keys too. huh.
    map  [F $
    imap [F $
    map  [H g0
    imap [H g0

    " Some helpers to edit mode
    " http://vimcasts.org/e/14
    cnoremap %% <C-R>=expand('%:h').'/'<cr>
    map <leader>ew :e %%
    map <leader>es :sp %%
    map <leader>ev :vsp %%
    map <leader>et :tabe %%

    " Adjust viewports to the same size
    map <leader>= <C-w>=

    " Map <Leader>ff to display all lines with keyword under cursor
    " and ask which one to jump to
    nmap <leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

    " Easier horizontal scrolling
    map zl zL
    map zh zH

    " Grow and shrink by 100 lines
    map <leader>w+ 100<C-w>+
    map <leader>w- 100<C-w>-

    """ Spelling
    map <leader>ss :setlocal spell!<cr> " Toggle spell checking
    map <leader>nl :set spelllang=nl<cr> " Switch to Dutch spell checking
    map <leader>en :set spelllang=en_gb<cr> " Switch to English spell checking

    nnoremap <silent> <leader>1 :call HiInterestingWord(1)<cr>
    nnoremap <silent> <leader>2 :call HiInterestingWord(2)<cr>
    nnoremap <silent> <leader>3 :call HiInterestingWord(3)<cr>
    nnoremap <silent> <leader>4 :call HiInterestingWord(4)<cr>
    nnoremap <silent> <leader>5 :call HiInterestingWord(5)<cr>
    nnoremap <silent> <leader>6 :call HiInterestingWord(6)<cr>
    nnoremap <silent> <leader>7 :call HiInterestingWord(7)<cr>
    nnoremap <silent> <leader>8 :call HiInterestingWord(8)<cr>
    nnoremap <silent> <leader>8 :call HiInterestingWord(9)<cr>
    " Highlight going along with it
    hi def InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
    hi def InterestingWord2 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
    hi def InterestingWord3 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
    hi def InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
    hi def InterestingWord5 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
    hi def InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=197
    hi def InterestingWord7 guifg=#000000 ctermfg=16 guibg=#00afff ctermbg=039
    hi def InterestingWord8 guifg=#000000 ctermfg=16 guibg=#ffffff ctermbg=231
    hi def InterestingWord9 guifg=#000000 ctermfg=16 guibg=#ffff5f ctermbg=227

    map <silent> <f11> :call LastModNow()<cr>
    map <silent> <localLeader>ml :call AppendModeline()<cr>
    map <silent> <leader>ml :call AppendModeline()<cr>

    "" Plugin remaps
    nmap <leader>a :Ack 
    nmap <leader>f :NERDTreeFind<CR>
" }}}
" Abbreviations ------------------------ {{{
    iabbr DATE <C-R>=strftime("%a %b %d %T %Z %Y")<CR><C-R>=EatChar()<CR>
    iabbr bke Bart Kerkvliet <bkerkvliet@gmail.com><C-R>=EatChar()<CR>
" }}}
" Plug-ins ----------------------------- {{{
    " Misc ----------------------------- {{{
        let g:NERDShutUp=1
        let b:match_ignorecase=1
        let g:ackprg='ag --nogroup --nocolor --column --smart-case'
    " }}}
    " Airline -------------------------- {{{
        let g:airline_theme='light'
        let g:airline_powerline_fonts=1 " Set to 0, because the PowerLine fonts don't work well yet.
        let ttimeoutlen=50

        " unicode symbols
        " let         g:airline_left_sep = '»'
        " let         g:airline_left_sep = '▶'
        " let         g:airline_right_sep = '«'
        " let         g:airline_right_sep = '◀'
        " let         g:airline_linecolumn_prefix = '␊ '
        " let         g:airline_linecolumn_prefix = '␤ '
        " let         g:airline_linecolumn_prefix = '¶ '
        " let         g:airline#extensions#branch#symbol = '⎇ '
        " let         g:airline#extensions#paste#symbol = 'ρ'
        " let         g:airline#extensions#paste#symbol = 'Þ'
        " let         g:airline#extensions#paste#symbol = '∥'
        " let         g:airline#extensions#whitespace#symbol = 'Ξ'

        " let        g:airline_left_alt_sep='>'
        " let        g:airline_right_alt_sep='<'
    " }}}
    " AutoCloseTag --------------------- {{{
        " Make it so AutoCloseTag works for xml and xhtml files as well
        au FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
        nmap <Leader>ac <Plug>ToggleAutoCloseMappings
    " }}}
    " Ctags ---------------------------- {{{
        " Find the tags file from the current working directory going up till finding one
        set tags=./tags,tags;

         " Make tags placed in .git/tags file available in all levels of a repository
        let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
        if gitroot != ''
            let &tags = &tags . ',' . gitroot . '/.git/tags'
        endif
    " }}}
    " Fugitive ------------------------- {{{
        nnoremap <silent> <leader>gs :Gstatus<CR>
        nnoremap <silent> <leader>gd :Gdiff<CR>
        nnoremap <silent> <leader>gc :Gcommit<CR>
        nnoremap <silent> <leader>gb :Gblame<CR>
        nnoremap <silent> <leader>gl :Glog<CR>
        nnoremap <silent> <leader>gp :Git push<CR>
        nnoremap <silent> <leader>gr :Gread<CR>
        nnoremap <silent> <leader>gw :Gwrite<CR>
        nnoremap <silent> <leader>ge :Gedit<CR>

        " Mnemonic _i_interactive
        nnoremap <silent> <leader>gi :Git add -p %<CR>
        nnoremap <silent> <leader>gg :SignifyToggle<CR>
    " }}}
    " Indent Guides -------------------- {{{
        let g:indent_guides_enable_on_vim_startup = 1
        let g:indent_guides_guide_size = 1
        let g:indent_guide_start_level = 2
    " }}}
    " JSON ----------------------------- {{{
        nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>
    " }}}
    " LaTeX vim ------------------------ {{{
        set grepprg=grep\ -nH\ $*
        let g:tex_flavor = "latex"
    " }}}
    " NERDTree ------------------------- {{{
        map  <leader>e  :NERDTreeToggle<CR>:NERDTreeMirror<CR>
        map  <leader>nt :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>

        let NERDChristmasTree=1
        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let g:nerdtree_tabs_open_on_gui_startup=0
    " }}}
    " Nim ------------------------------ {{{
        fun! JumpToDef()
          if exists("*GotoDefinition_" . &filetype)
            call GotoDefinition_{&filetype}()
          else
            exe "norm! \<C-]>"
          endif
        endf

        " Jump to tag
        nn <M-g> :call JumpToDef()<cr>
        ino <M-g> <esc>:call JumpToDef()<cr>i
    " }}}
    " OmniComplete --------------------- {{{
        if has("autocmd") && exists("+omnifunc")
            autocmd Filetype *
                \if &omnifunc == "" |
                \setlocal omnifunc=syntaxcomplete#Complete |
                \endif
        endif

        hi Pmenu guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
        hi PmenuSbar guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
        hi PmenuThumb guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

        " Some convenient mappings
        inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
        inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
        "inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
        "inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
        inoremap <expr> <C-d> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
        inoremap <expr> <C-u> pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"

        " Automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
        set completeopt=menu,preview,longest
    " }}}
    " PIV ------------------------------ {{{
        let g:DisableAutoPHPFolding=0
        let g:PIVAutoClose=0
    " }}}
    " Session List --------------------- {{{
        set  sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
        nmap <leader>sl :SessionList<CR>
        nmap <leader>ss :SessionSave<CR>
        nmap <leader>sc :SessionClase<CR>
    " }}}
    " SnipMate ------------------------- {{{
    "   Does ultisnips also use this?
        let g:snips_author = 'Bart Kerkvliet <bkerkvliet@gmail.com>'
    " }}}
    " Spelling ------------------------- {{{
        " How to display errors, colour and underline
        highlight clear SpellBad
        highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline gui=undercurl guisp=Red
        highlight clear SpellCap
        highlight SpellCap term=underline cterm=underline gui=undercurl guisp=Blue
        highlight clear SpellRare
        highlight SpellRare term=underline cterm=underline gui=undercurl guisp=Orange
        highlight clear SpellLocal
        highlight SpellLocal term=underline cterm=underline gui=undercurl guisp=Red
    " }}}
    " Syntastic ------------------------ {{{
        let g:syntastic_enable_signs=1 "show markers next to each error/warning
        let g:syntastic_error_symbol='EE'
        let g:syntastic_warning_symbol='WW'
        let g:syntastic_auto_loc_list=0 "don't pop up the Errors list automatically
        let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
        let g:syntastic_phpcs_conf="--standard=PSR2"
        let g:syntastic_css_checkers = ['recess', 'prettycss', 'csslint']
    " }}}
    " Tabularize ----------------------- {{{
        nmap <Leader>a& :Tabularize /&<CR>
        vmap <Leader>a& :Tabularize /&<CR>
        nmap <Leader>a= :Tabularize /=<CR>
        vmap <Leader>a= :Tabularize /=<CR>
        nmap <Leader>a: :Tabularize /:<CR>
        vmap <Leader>a: :Tabularize /:<CR>
        nmap <Leader>a:: :Tabularize /:\zs<CR>
        vmap <Leader>a:: :Tabularize /:\zs<CR>
        nmap <Leader>a, :Tabularize /,<CR>
        vmap <Leader>a, :Tabularize /,<CR>
        nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
        vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
    " }}}
    " Tagbar --------------------------- {{{
        nnoremap <silent> <leader>tt :TagbarToggle<CR>

        " If using Go please install the gotags program using the following
        " go install github.com/jstemmer/gotags
        " And make sure gotags is in your path
        let g:tagbar_type_go={
                    \ 'ctagstype' : 'go',
                    \ 'kinds' : [ 'p:package', 'i:imports:1', 'c:constants', 'v:variables',
                        \ 't:types', 'n:interfaces', 'w:fields', 'e:embedded', 'm:methods',
                        \ 'r:constructor', 'f:functions' ],
                    \ 'sro' : '.',
                    \ 'kind2scope' : { 't' : 'ctype', 'n' : 'ntype' },
                    \ 'scope2kind' : { 'ctype' : 't', 'ntype' : 'n' },
                    \ 'ctagsbin' : 'gotags',
                    \ 'ctagsargs' : '-sort -silent'
                    \ }
    " }}}
    " Ultisnips ------------------------ {{{
        let g:UltiSnipsEditSplit="vertical"
        let g:UltiSnipsSnippetsDir="~/.vim/bundle/ultisnips/UltiSnips"

        " Remap for compatibility with YCM
        let g:UltiSnipsExpandTrigger = '<C-j>'
        let g:UltiSnipsJumpForwardTrigger = '<C-j>'
        let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
        map <Leader>ue :UltiSnipsEdit<cr>
    " }}}
    " UndoTree ------------------------- {{{
        nnoremap <Leader>u :UndotreeToggle<CR>
        " If undotree is opened, it is likely one wants to interact with it.
        let g:undotree_SetFocusWhenToggle=1
    " }}}
    " Unite ---------------------------- {{{
        call unite#filters#matcher_default#use(['matcher_fuzzy'])
        " Use ag for search
        if executable('ag')
          let g:unite_source_grep_command = 'ag'
          let g:unite_source_grep_default_opts = '--nogroup --nocolor --column --smart-case'
          let g:unite_source_grep_recursive_opt = ''
        endif

        let g:unite_force_overwrite_statusline=0

        " Content search like ack/ag
        nnoremap <space>/ :Unite grep:. -auto-preview<cr>

        " CTRL-P to open files
        nnoremap <C-p> :Unite -buffer-name=files -start-insert file_rec/async:! -auto-preview<cr>
        nnoremap <space>f :Unite -buffer-name=files -start-insert file_rec/async:! -auto-preview<cr>

        " Switch buffer
        nnoremap <space>s :Unite -quick-match buffer -auto-preview<cr>
        nnoremap <space>b :Unite -quick-match buffer -auto-preview<cr>

        " Most recently used files
        nnoremap <space>r :Unite -buffer-name=mru -start-insert file_mru<cr>

        " Yank
        let g:unite_source_history_yank_enable=1
        nnoremap <space>y :Unite history/yank<cr>
    " }}}
    " Vdebug --------------------------- {{{
        let     g:vdebug_options={
              \ "break_on_open" : 0
              \ }
    " }}}
    " YouCompleteMe -------------------- {{{
        let g:acp_enableAtStartup = 0

        " Enable completion from tags
        let g:ycm_collect_identifiers_from_tags_files = 1

        " Enable omni completion
        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
        autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
        autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

        if has('conceal')
            set conceallevel=2 concealcursor=i
        endif

        " Disable the neosnippet preview candidate window
        " When enabled, there can be too much visual noise
        " especially when splits are used.
        set completeopt-=preview
    " }}}
" }}}
" GUI ---------------------------------- {{{
    if has('gui_running')
        set     guifont=Inconsolata\ for\ Powerline\ 12
        " Turn the tool bar off
        set     guioptions-=T
        " Turn the menu bar off
        set     guioptions-=m
        " Turn the scrollbar off
        set     guioptions-=r
        set     guioptions-=R
        set     guioptions-=l
        set     guioptions-=L
        set     guioptions-=b

        " Disable GUI tabs
        set     guioptions-=e

        " Show 23 lines and 83 columns by default
        set     lines=23
        set     columns=83
    else
        " Check if we use a 256 colour terminal
        if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal" || $TERM == "rxvt-unicode-256color"
            set t_Co=256
        endif
    endif
" }}}
" Functions ---------------------------- {{{
    " Initialize directories ----------- {{{
    function! InitializeDirectories()
        let parent = $HOME
        let prefix = 'vim'
        let dir_list = {
                    \ 'backup': 'backupdir',
                    \ 'views': 'viewdir',
                    \ 'swap': 'directory' }

        if has('persistent_undo')
            let dir_list['undo'] = 'undodir'
        endif

        let common_dir = parent . '/.' . prefix

        for [dirname, settingname] in items(dir_list)
            let directory = common_dir . '/' . dirname . '/'
            if exists("*mkdir")
                if !isdirectory(directory)
                    call mkdir(directory)
                endif
            endif
            if !isdirectory(directory)
                echo "Warning: Unable to create backup directory: " . directory
                echo "Try: mkdir -p " . directory
            else
                let directory = substitute(directory, " ", "\\\\ ", "g")
                exec "set " . settingname . "=" . directory
            endif
        endfor
    endfunction
    " }}}
    " Initialize NERDTree as needed ---- {{{
        function! NERDTreeInitAsNeeded()
            redir => bufoutput
            buffers!
            redir END
            let idx = stridx(bufoutput, "NERD_tree")
            if idx > -1
                NERDTreeMirror
                NERDTreeFind
                wincmd l
            endif
        endfunction
    " }}}
    " Strip whitespace ----------------- {{{
    function! StripTrailingWhitespace()
        let _s=@/
        let l = line(".")
        let c = col(".")
        " do the business:
        %s/\s\+$//e
        " clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction
    " }}}
    " EatChar -------------------------- {{{
        " Help delete character if it is 'empty space'
        " stolen from Vim manual
        function! EatChar()
            let c = nr2char(getchar())
            return (c =~ '\s') ? '' : c
        endfunction
    " }}}
    " Highlight Interesting Word ------- {{{
        function! HiInterestingWord(n)
            " Save our location.
            normal! mz

            " Yank the current word into the z register.
            normal! "zyiw

            " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
            let mid = 86750 + a:n

            " Clear existing matches, but don't worry if they don't exist.
            silent! call matchdelete(mid)

            " Construct a literal pattern that has to match at boundaries.
            let pat = '\V\<' . escape(@z, '\') . '\>'

            " Actually match the words.
            call matchadd("InterestingWord" . a:n, pat, 1, mid)

            " Move back to our original location.
            normal! `z
        endfunction
"   }}}
    " CustomFoldText ------------------- {{{
    function! CustomFoldText()
        "get first non-blank line
        let fs = v:foldstart
        while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
        endwhile
        if fs > v:foldend
            let line = getline(v:foldstart)
        else
            let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
        endif

        let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
        let foldSize = 1 + v:foldend - v:foldstart
        let foldSizeStr = " " . printf("%10s", foldSize . " lines ")
        let foldLevelStr = repeat("+--", v:foldlevel)
        let lineCount = line("$")
        let foldPercentage = printf("[%5.1f", (foldSize*1.0)/lineCount*100) . "%] "
        let expansionString = repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
        return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
    endfunction

    set foldtext=CustomFoldText()
"     }}}
    " Restore cursor ------------------- {{{
    function! ResCur()
        if line("'\"") <= line("$")
            normal! g`"
            return 1
        endif
    endfunction
"     }}}
    " Restore folding ------------------ {{{
    if has("folding")
        function! UnfoldCur()
            if !&foldenable
                return
            endif
            let cl = line(".")
            if cl <= 1
                return
            endif
            let cf  = foldlevel(cl)
            let uf  = foldlevel(cl - 1)
            let min = (cf > uf ? uf : cf)
            if min
                execute "normal!" min . "zo"
                return 1
            endif
        endfunction
    endif
"     }}}
    " LastMod -------------------------- {{{
    function! LastMod()
        exe "silent! 1,20s/Updated: .*/" . printf('Updated: %s by %s@%s', strftime("%c"), expand("$LOGNAME"), hostname()) . "/e"
    endfunction
    " }}}
    " LastModNow ----------------------- {{{
    function! LastModNow()
        call setline(line('.'), printf('%sUpdated: %s by %s@%s', printf(&commentstring, ' '), strftime("%c"), expand("$LOGNAME"), hostname()))
        "printf('%sUpdated: %s by %s@%s', printf(&commentstring, ' '), strftime("%c"), expand("$LOGNAME"), hostname())|dd|j|dd<cr><esc>
        "printf('Updated: %s by %s %s', strftime("%c"), expand("$LOGNAME@$HOSTNAME")) ."/e"
    endfunction
    " }}}
    " ApendModeLine -------------------- {{{
    function! AppendModeline()
        let l:modeline = printf(" vim: set ft=%s ts=%d sw=%d tw=%d foldmethod=%s :", &filetype, &tabstop, &shiftwidth, &textwidth, &foldmethod)
        let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
        call append(line("$"), l:modeline)
    endfunction
    " }}}
    " DiffWithSaved -------------------- {{{
    function! s:DiffWithSaved()
        let filetype=&ft
        diffthis
        vnew | r # | normal! 1Gdd
        diffthis
        exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
    endfunction
    com! DiffSaved call s:DiffWithSaved()
    " }}}
" }}}
" Misc --------------------------------- {{{
    """ Mutt mail
    au BufRead /tmp/mutt-* set tw=72

    """ Finish local initializations
    call InitializeDirectories()
" }}}
" vim: set ft=vim ts=2 sw=2 tw=80 foldmethod=marker :

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" @filename       vimrc
" @description    vim style and rendering configuration
"                 re-arranged in January 28th, 2019
" @author         Junho Jin, JAEHO LEE
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" pathogen
execute pathogen#infect()

"" Custom

" Search down into subfolders
" provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN :
"  - Hit tab to :find by partial match
"  Use * to make it fuzzy

" Thigns to consider
" - :b lets you autocomplete any open buffer


" TAG JUMPING:

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tag
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags.

""" Indentation configuration
filetype indent on                      " enable indentation rules that are file-type specific
set autoindent                          " new lines inherit the indentation of previous lines
set relativenumber

" use a slightly darker background, like GitHub inline code blocks
let g:github_colors_soft = 1

" more blocky diff markers in signcolumn (e.g. GitGutter)
let g:github_colors_block_diffmark = 0

colorscheme blazer

""" Tab/Space and Shifts configuration
set shiftwidth=2                        " when shifting, indent using two spaces
set shiftround                          " when shifting lines, round the indentation to the nearest multiple of “shiftwidth”
set tabstop=2                           " indent using two space
set expandtab                           " convert tabs to space
set smarttab                            " insert “tabstop” number of spaces when the “tab” key is pressed

""" Search configuration
set hlsearch                            " enable search highlighting
set showmatch                           " highlight matching [{()}]
" set ignorecase                          " ignore case when searching
set incsearch                           " incremental search that shows partial matches
set smartcase                           " automatically switch search to case-sensitive when search query contains an uppercase letter

""" User Interface configuration
" set number                              " show line numbers on the sidebar
" set norelativenumber                    " show line number on the current line and no relative numbers on all other lines
" set linebreak      		                  " don't break lines by wrapping words
" set nowrapscan                          " stop searching at the end of file
" set nowrap                              " don't auto-break lines longer than screen width
" set nopaste
" set pastetoggle=<F4>

" - cursor
set ruler                               " always show cursor position
" set nocursorline                        " highlight the line currently under cursor
" set nostartofline           	          " don't move cursor when jumping lines

" - comment
" set formatoptions+=cr                   " You can find details of supported options by typing :help fo-table

" - commands
set laststatus=2                        " always display the status bar
set wildmenu                            " display command line’s tab complete options as a menu
set showcmd                             " show command in bottom bar
"set mouse=a                             " enable mouse for scrolling and resizing

" - windows
" set bg=dark                             " use colors that suit a dark background
" set noerrorbells                        " disable beep on errors
" set tabpagemax=10                       " maximum number of tab pages that can be opened from the command line
" set lazyredraw                          " don’t update screen during macro and script execution
" set title                               " set the window’s title, reflecting the file currently being edited

""" Code Folding configuration
" set nofoldenable                        " enable folding by default
" set foldmethod=indent                   " fold based on indention levels
" set foldnestmax=3                       " only fold up to three nested levels

""" Text Rendering configuration
syntax enable                           " enable syntax highlighting
set encoding=utf-8                      " use an encoding that supports unicode
set linebreak                           " avoid wrapping a line in the middle of a word
set tenc=utf-8                          " encoding scheme for terminal
set fencs=ucs-bom,utf-8,euc-kr,latin1   " when reading files, try encoding schemes in the listed order

""" File configuration
set autoread                            " automatically re-read files if unmodified inside Vim
set history=1000                        " limit the number of history logs to 1000
set backspace=indent,eol,start          " allow backspacing over indention, line breaks and insertion start
set confirm                             " display a confirmation dialog when closing an unsaved file

""" Key Mapping configuration
" map w : w
" map wq : wq
" map q : q
" map !q : !q
" map x : nohl
" map <space> : e 
" map new : new 
" map <F2> : vs <CR>
" map <F3> : sp <CR>
" map <F9> : set nonu<CR>
" map <F10> : set nu<CR>
" "map <C-t> : tabnew <cr>
" map <F5> : tabn<CR>
" map <F6> : tabp<CR>


""" Vim Plugin (https://github.com/junegunn/vim-plug)
"call pathogen#infect()
"syntax on
"filetype plugin indent on

" After adding plugins, reload it (:source ~/.vimrc) or restart Vim.
" Run :PlugInstall to install the plugins.
" After the update is finished, you can review the changes by pressing D in the window.
" Or you can do it later by running :PlugDiff.

" To remove plugins,
" 1. Delete or comment out Plug commands for the plugins you want to remove.
" Reload vimrc (:source ~/.vimrc) or restart Vim.
" Run :PlugClean. It will detect and remove undeclared plugins.


" vim-javascript configuration (https://github.com/pangloss/vim-javascript)
" let g:javascript_plugin_jsdoc = 1
" augroup javascript_folding
"     au!
"     au FileType javascript setlocal foldmethod=syntax
" augroup END

" vim-terraform configuration (https://github.com/hashivim/vim-terraform)
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1


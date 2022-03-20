"-----------------------------------------------------------------------
" Vundle
"-----------------------------------------------------------------------
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
" taglist
Plugin 'taglist.vim'

" colorscheme focuspoint-vim
" https://github.com/chase/focuspoint-vim
Plugin 'chase/focuspoint-vim'

" file tree
Plugin 'scrooloose/nerdtree'
" nerdtree git
Plugin 'Xuyuanp/nerdtree-git-plugin'

" python indent
Plugin 'Yggdroot/indentLine'

" code fold
Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-airline/vim-airline'

Plugin 'zxqfl/tabnine-vim'

Plugin 'tpope/vim-surround'

Plugin 'scrooloose/nerdcommenter'

Plugin 'raimondi/delimitmate'

call vundle#end()

filetype on
"--------------------END--------------------

" encoding
set encoding=utf-8
set enc=utf-8

syntax on
set nu

"--------------------ColorScheme: kuroi--------------------
"set termguicolors
"set background=dark
"colorscheme kuroi
"--------------------END--------------------

"--------------------ColorScheme: kuroi--------------------
"colorscheme focuspoint
"--------------------END--------------------

colorscheme monokai


let g:mapleader="\<Space>"
"--------------------YCM--------------------
let g:ycm_clangd_binary_path="/Users/Dcr/ycm_temp/llvm_root_dir/clangd"
nnoremap <C-J> :YcmCompleter GoTo<CR>
nnoremap <C-H> :YcmCompleter GoToReferences<CR>

"--------------------END--------------------

"--------------------NERDTree--------------------
" map F2 to open or close NerdTree
map <F2> :NERDTreeToggle<CR>

" change the icon 
"let g:NERDTreeDirArrowExpandable='+'
"let g:NERDTreeDirArrowCollapsible = '-'

" window position
let g:NERDTreeWinPos='left'

" window size
let g:NERDTreeSize=30

" open NERDTree if no file open
autocmd vimenter * if !argc() | NERDTree | endif
" close NERDTree if it's the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" show git info
let g:NERDTreeIndicatorMapCustom={
	\ "Modified": "‚úπ",
	\ "Staged"    : "‚úö",
    \ "Untracked" : "‚ú≠",
    \ "Renamed"   : "‚ûú",
    \ "Unmerged"  : "‚ïê",
    \ "Deleted"   : "‚úñ",
    \ "Dirty"     : "‚úó",
    \ "Clean"     : "‚úîÔ∏é",
    \ "Unknown"   : "?"
	\ }
"--------------------END--------------------

"--------------------TagList--------------------
" let Taglist on right
let Tlist_Use_Right_Window=1
" hide tags in other files
let Tlist_File_Fold_Auto_Close=1
" only show tags in all files
let Tlist_Show_One_File=0
" sort tags by name
let Tlist_Sort_Type='name'
" gain focus on open tags
let Tlist_GainFocus_On_ToggleOpen=1
" exit when last close
let Tlist_Exit_OnlyWindow=1
" window size
let Tlist_WinWidth=48
" ctags position
let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
" hotkey for Tlist
map tt :TlistToggle<CR>
"--------------------END--------------------

" hotkey to show all tabs
map tb :tabs<CR>

"--------------------Indent--------------------

" indent line
let g:indentLine_char='¬¶'
let g:indentLine_enabled=1
"--------------------END--------------------

"--------------------CODE FOLD--------------------
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimplyFold_docstring_preview=1
"--------------------END--------------------

"--------------------CODE FOLD--------------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
"--------------------END--------------------

"--------------------OTHERS--------------------
set fileformat=unix
"set cindent
"set nowrap
set tabstop=4
set autoindent
set smartindent
set shiftwidth=4
set showmatch
set scrolloff=5
set laststatus=2

set mouse=a " enable moouse
set selection=exclusive
set matchtime=5
set ignorecase " ignore case
set incsearch
set hlsearch " highlight search
set expandtab
set relativenumber
set whichwrap+=<,>,h,l
set autoread
set clipboard=unnamedplus
"set noai nosi
map <C-K> :noh <CR>
"--------------------END--------------------

"--------------------MAP--------------------
map <F5> :!javac % && java %:r<CR>
"--------------------END--------------------

"--------------------MAP--------------------
" set tags+=~/.vim/systags
"--------------------END--------------------

"--------------------TAGS--------------------
set tags=tags;/
"--------------------END--------------------

colorscheme darkblue
syntax enable

set tabstop=4
set expandtab
set softtabstop=4
set ruler


" With both ignorecase and smartcase turned on, a search is
" case-insensitive if you enter the search string in ALL lower case.
" However, if your search string has one or more characters in upper
" case, it will assume that you want a case-sensitive search. 
" (http://linuxcommando.blogspot.com/2008/06/smart-case-insensitive-incremental.html)
" set smartcase
" set ignorecase

" it does what it sayd
set hlsearch


" The 'scrolloff' (scroll offset) option determines the minimum number
" of screen lines that you would like above and below the cursor. By
" default, 'scrolloff' is 0 which means that you can move the cursor
" to any line in the window without causing scrolling.
" (http://vim.wikia.com/wiki/Make_search_results_appear_in_the_middle_of_the_screen)
set scrolloff=5


" show matching brackets
" The showmatch option is also useful: it can reduce the need for %,
" the cursor will briefly jump to the matching brace when you insert
" one.
set showmatch

set backspace=indent,eol,start


au BufRead,BufNewFile *.aurora set filetype=python
au BufRead,BufNewFile *.mesos set filetype=python
au BufRead,BufNewFile *.tsar set filetype=python
au BufRead,BufNewFile BUILD* set filetype=python



" Nice looking status line
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
" To tell Vim that you would like to have a real status line shown,
" you have to add the following setting to your vimrc file. This
" command will make sure that your status line is always shown as
" the second last line in the editor window:
" (http://archive09.linux.com/feature/120126)
set laststatus=2

" nostartofline tells VIM during motion commands to try to preserve
" column where cursor is positioned.
" (http://vimrc-dissection.blogspot.com/2009/02/fixing-pageup-and-pagedown.html)
set nostartofline



" What Vim considers part of a filename is controlled by the 'isfname'
" option. Removing the comma and equals from from the isfname allows
" for filename completion in commands like COMMAND=/file/name
" (http://superuser.com/questions/598270/getting-rid-of-characters-when-doing-gf-in-vim)
set isfname-== 
set isfname-=,


" Make autocomplete of a file act more like bash's.
" The fitst tab expands to the longest non-unique filename.
" The second tab displays filenames
" (http://vim.wikia.com/wiki/Great_wildmode/wildmenu_and_console_mouse)
set wildmode=longest:full
set wildmenu


" When you set showcmd in your vimrc, the bottom line in your editor
" will show you information about the current command going on. The
" part I like is that if you’re selecting things in visual mode it
" will show you the number of lines selected, or, if you’re doing it
" 2d-style with CTRL-V, it will show XxY for the block you’re selecting.
" (http://dailyvim.tumblr.com/post/3166172074/showcmd)
set showcmd


" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='100,\"100,:20,%,n~/.viminfo

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


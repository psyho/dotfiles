set guifont=Bitstream\ Vera\ Sans\ Mono\ Bold\ 11       " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=R
set guioptions-=r
set guioptions-=l
set guioptions-=L
set guioptions-=T
set guioptions-=m

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
endif

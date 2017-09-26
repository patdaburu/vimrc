" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: Pat Daburu <pat@daburu.net> 
" Description: This is my standard (evolving) .vimrc.

"set number " Show line numbers in vim.
"set relativenumber " Show relative line numbers.
"" Map <C-R><C-N> to toggle relaitve line numbers.
":nmap <C-R><C-N> :set relativenumber!<CR>

" Both hybrid and relative line numbers are enabled by default.
" When entering insert mode, relative line numbers are turned
" off, leaving absolute line numbers turned on.  This also 
" happens when the buffer loses focus, so you can glance back
" at it to see whic absolute line you were working on, if you
" need to.
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Show a vertical guide.
:set colorcolumn=72
highlight ColorColumn ctermbg=7

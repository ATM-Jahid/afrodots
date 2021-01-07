" Atomsky's neovim config

" crucial settings
set number relativenumber
set list listchars=tab:>-,trail:◄

" netrw settings
let g:netrw_winsize = 20
let g:netrw_dirhistmax = 0

" window splits
nnoremap ,h :split<CR>
nnoremap ,v :vsplit<CR>
" moving between splits
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>
" resizing splits
nnoremap <C-A-h> :vertical resize -3<CR>
nnoremap <C-A-j> :resize +3<CR>
nnoremap <C-A-k> :resize -3<CR>
nnoremap <C-A-l> :vertical resize +3<CR>

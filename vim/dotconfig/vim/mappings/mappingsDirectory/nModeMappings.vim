
" ... nModeMappings.vim

" taggle between background dark and light
map <Leader>. :call ToggleBackground()<CR>

" taggle between split files
nnoremap <Tab> <C-w>w

" resize split files using h, j, k, l
nnoremap <C-k> :resize -1<CR>
nnoremap <C-j> :resize +1<CR>
nnoremap <C-h> :vertical resize -1<CR>
nnoremap <C-l> :vertical resize +1<CR>

" reset splits size
nnoremap <C-e> :winc =<CR>

" swip split files using h, j, k, l
nnoremap <S-k> :call MarkWindowSwap()<CR> <C-w>k :call DoWindowSwap()<CR>
nnoremap <S-h> :call MarkWindowSwap()<CR> <C-w>h :call DoWindowSwap()<CR>
nnoremap <S-j> :call MarkWindowSwap()<CR> <C-w>j :call DoWindowSwap()<CR>
nnoremap <S-l> :call MarkWindowSwap()<CR> <C-w>l :call DoWindowSwap()<CR>

" tabs mapping
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" open TODO file
nnoremap <Leader>t  :tabedit ~/TODO<CR>

" similarly ctrl-q doesnt work, so use leader-q for block visual mode
nnoremap <Leader>q <C-Q>

" move line up and down >>> Alt + k/j
nnoremap <A-k> :m-2<CR>
nnoremap <A-j> :m+<CR>

" duplicate current line >>> 'yy' >>> 'p'
nmap <C-d> mzyyp`z

" map key to dismiss search highlightedness
map <bs> :noh<CR>


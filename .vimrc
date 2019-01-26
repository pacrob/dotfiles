" force vim to use a local .vimrc if present - allows project-specific settings
set exrc

" blocks some less-secure commands if non-default .vimrc being used
set secure

set tabstop=2
set softtabstop=2
set shiftwidth=2

" rounds a tab to the next multiple of shiftwidth setting
set shiftround

set expandtab
set autoindent
set smartindent
set cindent

" set column color at 80
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

syntax enable

" keeps what was in register rather than copy what was just deleted
" xnoremap p "_dP

set number
set ruler

" python uses 4 space indent instead of 2
autocmd Filetype python setlocal expandtab ts=4 sw=4 sts=4

" show commands as they're being typed
set showcmd

" start with a kitty
" echom ">^.^<"

" set leader key to comma
:let mapleader = ","

" set localleader to \
:let maplocalleader = "\\"

" use - and _ to move a full line up and down
" currently can't lead with a count, would like to be able to
noremap - ddp
noremap _ ddkP

" use Ctl-u in insert mode to uppercase the current word, end in append after it
inoremap <c-u> <esc>viwU<esc>ea

" edit vimrc easily
" split puts them top/bottom
" vsplit puts left/right
nnoremap <leader>ev :split $MYVIMRC<cr>

" source (restart) vimrc easily
nnoremap <leader>sv :source $MYVIMRC<cr>

" common mistype corrections using abbreviations
iabbrev adn and
iabbrev waht what
iabbrev tehn then

" name and email with abbreviations
iabbrev @@ semmaow@gmail.com
iabbrev mysig Paul Robinson
iabbrev lorem1 Lorem ipsum dolor sit amet, consectetur adipiscing elit.
iabbrev lorem2 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a lorem nec nisl<cr>malesuada vulputate sit amet nec sem. Integer tincidunt tincidunt sem. Class<cr>aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos<cr>himenaeos. Nullam consequat metus dictum, interdum lectus sed, iaculis elit.<cr>Donec sollicitudin accumsan urna ac iaculis. Mauris ullamcorper, augue et<cr>malesuada consectetur, ipsum leo faucibus risus, a luctus nunc neque. 
iabbrev lorem3 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a lorem nec nisl malesuada vulputate sit amet nec sem. Integer tincidunt tincidunt sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam consequat metus dictum, interdum lectus sed, iaculis elit. Donec sollicitudin accumsan urna ac iaculis. Mauris ullamcorper, augue et malesuada consectetur, ipsum leo faucibus risus, a luctus nunc neque vel odio. Nullam ultrices faucibus ligula sodales iaculis. Quisque vehicula est ut nulla facilisis, ut scelerisque lacus viverra. Suspendisse mattis sed neque a aliquam. Duis feugiat ligula ipsum, et rutrum felis convallis sit amet. Fusce hendrerit mollis dolor, a luctus nisl egestas id. Suspendisse eget lorem porta, aliquet tellus ut, dictum lectus. Sed id commodo leo. Sed faucibus massa sit amet erat elementum blandit tristique ac arcu. Proin porttitor, lectus in ullamcorper porttitor, arcu erat dignissim lectus, nec interdum quam sapien nec tortor.

" add single and double quote current word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" add various paired symbols around a visual selection
" method w/ `< and `> works with visual and visual line
" method w/ c and P works with visual and visual block
" https://stackoverflow.com/questions/11176159/how-to-jump-to-start-end-of-visual-selection

"vnoremap <leader>" c""<esc>Pl
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>
vnoremap <leader>( c()<esc>Pl
vnoremap <leader>{ c{}<esc>Pl
vnoremap <leader>[ c[]<esc>Pl
vnoremap <leader>< c<><esc>Pl

" trying out jk as escape from insert instead of capslock
inoremap jk <esc>
inoremap <esc> <nop>

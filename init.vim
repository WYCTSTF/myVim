" junnegunn/vim-plug
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
" Markdown-Preview
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
" Plug 'Valloric/YouCompleteMe'
Plug 'ycm-core/YouCompleteMe'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
"---------------------------------------------------------------------------
" Markdown-Preview
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
nmap <silent> <F8> <Plug>MarkdownPreview        " 普通模式
imap <silent> <F8> <Plug>MarkdownPreview        " 插入模式
nmap <silent> <C-F8> <Plug>MarkdownPreviewStop    " 普通模式
imap <silent> <C-F8> <Plug>StopMarkdownPreviewStop    " 插入模式
"---------------------------------------------------------------------------
set si
set ai
set ci
set nu
set tabstop=2
set shiftwidth=2
syntax on

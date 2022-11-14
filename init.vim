" set python path

" junnegunn/vim-plug
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/autoload/plugged')
" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Markdown预览功能
nmap <silent> <F8> <Plug>MarkdownPreview        " 普通模式
imap <silent> <F8> <Plug>MarkdownPreview        " 插入模式
nmap <silent> <C-F8> <Plug>MarkdownPreviewStop    " 普通模式
imap <silent> <C-F8> <Plug>StopMarkdownPreviewStop    " 插入模式

" 缩进
set si
set ai
set ci

" 打开行号显示
set nu

" 缩进
set tabstop=2
set shiftwidth=2

" 基础高亮
syntax on

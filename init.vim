" junnegunn/vim-plug
" Plugins will be downloaded under the specified directory.
call plug#begin('D:\ProgramFiles\Vim\vimfiles\plugged')
" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Markdown预览功能
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

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

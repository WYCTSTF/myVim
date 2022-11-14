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
" YouCompleteMe Settings
set runtimepath+=~/.vim/plugged/YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_strings = 1 "在字符串输入中也能补全
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" | " 回车即选中当前项
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     " 跳转到定义处
"let g:ycm_min_num_of_chars_for_comnpletion=2                 " 从第2个键入字符就开始罗列匹配项
"---------------------------------------------------------------------------
set si
set ai
set ci
set nu
set tabstop=2
set shiftwidth=2
syntax on

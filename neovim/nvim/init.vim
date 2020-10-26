" Common settings {{{
"
let mapleader="," " 设置前缀
let maplocalleader=";" " 设置当前文件前缀
set nocompatible " 关闭vi兼容模式
set nu " 设置行号
set encoding=utf-8 " 设定编码方式
set fenc=utf-8 " 设定默认解码
set history=100 " 历史记录行数
set incsearch " 设置查找高亮
set hidden " 切换buffer时，不用保存文件
set nobackup  " 禁止备份
set nowritebackup " 禁止写入备份文件
set autoindent " 继承前一行缩进方式，特别适用与多行注释
set smartindent " 为c程序提供自动缩进
set cindent " 使用c样式的缩进
set breakindent " 换行不改变缩进量
set tabstop=4 " 制表符为4
set shiftwidth=4 " 缩进为4
set softtabstop=4 " 退格为4
set expandtab " 用空格代替制表符
set foldmethod=marker " 设定折叠方式
set cursorline
"set textwidth=80 "文本行超过80自动换行
"set nowrap "不要换行
" }}}

" Maps {{{
" normal mode
nnoremap H ^
nnoremap L $
nnoremap Y y$
" insert mode
inoremap <M-h> <esc>cb
inoremap <C-d> <del>
inoremap <M-d> <esc>ce
inoremap <C-f> <right>
inoremap <M-f> <S-right>
inoremap <C-b> <left>
inoremap <M-b> <S-left>
inoremap <C-a> <home>
inoremap <M-a> <S-home>
inoremap <C-e> <end>
inoremap <M-e> <S-end>
"inoremap <C-g> <esc>
" command mode
cnoremap <C-a> <home>
cnoremap <C-d> <del>
cnoremap <C-f> <right>
cnoremap <M-f> <S-right>
cnoremap <C-b> <left>
cnoremap <M-b> <S-left>
cnoremap <C-a> <home>
"cnoremap <C-e> <end>
"cnoremap <C-g> <esc>
" visuas mode
"vnoremap <C-g> <esc>
" terminal mode
tnoremap <esc> <C-\><C-n>
" }}}
"
"""""""""""" Plugins Start """"""""""""
filetype plugin indent on " 等同于同时上面三种命令
filetype detect " 在空白文本中输入足够的文本，并再次检测文件类型
" set plug
let g:plug_window = "vertical"
let s:plug_root = "$XDG_CONFIG_HOME/nvim/plugged"
call plug#begin(s:plug_root)

Plug 'tpope/vim-fugitive'
Plug 'plasticboy/vim-markdown'

"System copy {{{
Plug 'christoomey/vim-system-copy'
let g:system_copy#copy_command='xclip -sel clipboard' " 复制
let g:system_copy#paste_command='xclip -sel clipboard -o' " 粘贴
" let g:system_copy_silent = 1 " 禁止消息
" }}} 

"Polyglot {{{
Plug 'sheerun/vim-polyglot'
augroup HighlightForCode
    autocmd!
    " json 显示设置
    autocmd filetype json :call <SID>CodeHighlight("json")
augroup END
" }}}

"Set themes {{{
Plug 'morhetz/gruvbox'
Plug 'fatih/molokai'
Plug 'dracula/vim', { 'as': 'dracula' }
syntax on " 用指定的高亮方案替代默认的方案
augroup MyThemes
    autocmd!
    autocmd bufnewfile,bufreadpre * colorscheme gruvbox
augroup END
"设置透明

" }}}

"Nerdtree {{{
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : "☒",
            \ "Unknown"   : "?"
            \ }
" }}}
"
"Coc.nvim {{{
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
                \'coc-marketplace',
                \'coc-json',
                \'coc-rust-analyzer',
                \'coc-snippets', 
                \'coc-highlight',
                \'coc-lists',
                \'coc-pairs',
                \]
" TODO use :verbose imap <keys>， to check if it's mapped as expected.
" TODO check <tab> & <cr> & <C-p> & <C-n>
" snippets
"
" TODO set completion imap
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" TODO set snippet imap
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>":
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
let g:coc_snippet_next = '<tab>'
"
" }}}
"
"""""""""""""""" The End """""""""""""""""
call plug#end()


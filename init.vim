" 设置编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 显示行号
set nu

set tabstop=4
" 设置自动缩进长度为4空格
set shiftwidth=4
" 继承前一行的缩进方式，适用于多行注释
set autoindent

"启动时隐去援助提示
set shortmess=atI

"语法高亮
syntax on

"不需要备份
set nobackup

"智能缩进
set smartindent

"高亮查找匹配
set hlsearch

set background=dark

"去除vi的一致性
set nocompatible

"插件管理
call plug#begin()
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


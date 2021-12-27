"================================================================================
" 安装插件
"================================================================================

call plug#begin('~/.vim/plugged')

" 主题配色
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'arcticicestudio/nord-vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'arzg/vim-colors-xcode'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'arcticicestudio/nord-vim'
Plug 'haishanh/night-owl.vim'
Plug 'sickill/vim-monokai'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'logico/typewriter'
Plug 'artanikin/vim-synthwave84'
Plug 'projekt0n/github-nvim-theme'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'
Plug 'flrnd/candid.vim'
Plug 'Mangeshrex/uwu.vim'

" 侧边栏
Plug 'scrooloose/nerdtree'

" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 文本对齐
Plug 'junegunn/vim-easy-align'

" 全文快速移动
" Plug 'easymotion/vim-easymotion'

" 代码补全
" Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

" 检索
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" markdown
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" go
Plug 'fatih/vim-go'
Plug 'sebdah/vim-delve'
Plug 'buoto/gotests-vim', {'do': 'go get -u github.com/cweill/gotests/...'}

" thrift
Plug 'solarnz/thrift.vim'

" js
" Plug 'pangloss/vim-javascript'

" python
Plug 'vim-python/python-syntax'

" lua
" Plug 'tbastos/vim-lua'

" rust
Plug 'rust-lang/rust.vim'

" 括号补全
Plug 'jiangmiao/auto-pairs'

" 文件图标
Plug 'ryanoasis/vim-devicons'

" buffer栏
" Plug 'bagrat/vim-buffet'
" Plug 'ap/vim-buftabline'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'qpkorr/vim-bufkill'

" 注释
Plug 'preservim/nerdcommenter'

" 命令行
Plug 'voldikss/vim-floaterm'

" 函数列表
Plug 'liuchengxu/vista.vim'

" 加速j k
Plug 'rhysd/accelerated-jk'

" norma模式自动切换英文
" Plug 'ybian/smartim'

" Plug 'nvie/vim-flake8'
"
Plug 'dense-analysis/ale'

Plug 'weirongxu/plantuml-previewer.vim'
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'

Plug 'tpope/vim-surround'

Plug 'terryma/vim-multiple-cursors'

Plug 'elzr/vim-json'

Plug 'miyakogi/seiya.vim'

Plug 'maksimr/vim-jsbeautify'

"  自动切换为英文
Plug 'rlue/vim-barbaric'

Plug 'tomlion/vim-solidity'

Plug 'vim-autoformat/vim-autoformat'

" sort python imports
Plug 'fisadev/vim-isort'
call plug#end()


"================================================================================
" 基础配置
"================================================================================

set hidden                            " 允许隐藏被修改过的 buffer
set nocompatible                      " 关闭兼容模式
set nu                                " 设置行号
set cursorline                        " 突出显示当前行
set showmatch                         " 显示括号匹配
set noeb                              " 不要提示音
set incsearch                         " 实时搜索
set ignorecase                        " 搜索忽略大小写
set smartcase                         " 如果有一个大写字母，则大小写敏感查找
set hlsearch                          " 高亮搜索关键词
set nobackup                          " 不要备份文件
set noswapfile                        " 不要swap文件
set confirm                           " 退出确认
set wildmenu                          " 命令行补全提示
"set splitright                        " 水平分隔窗口时在右边
"set splitbelow                        " 垂直分隔窗口时在下面
set lazyredraw                        " 延迟绘制（提升性能）
set display=lastline                  " 显示最后一行
set scrolloff=10                      " 保持在光标上下的最少行数
set history=1000                      " 命令历史数
set completeopt=menu,menuone,noselect " 补全配置
set backspace=indent,eol,start        " 设置Backspace键模式
set formatoptions+=m                  " 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=B                  " 合并两行中文时，不在中间加空格
set ffs=unix,dos,mac                  " 文件换行符，默认使用 unix 换行符
let mapleader="\\"                     " 定义快捷键的前缀，即<Leader>
" 让配置变更立即生效
autocmd BufWritePost ~/.vimrc source ~/.vimrc

" tab缩进
set autoindent   " 自动缩进，继承前一行的缩进方式
set cindent      " 打开C/C++缩进优化
set expandtab    " tab替换成空格
set tabstop=4    " 设置Tab长度为4空格
set shiftwidth=4 " 设置自动缩进长度为4空格
autocmd FileType go setlocal noexpandtab
autocmd FileType javascript,html,vue,json setlocal tabstop=4 shiftwidth=4

" vim系统菜单及语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
set viminfo+=!

" 单词分隔符
set iskeyword+=_,$,@,%,#,-

" 编码
if has('multi_byte')
    " 内部工作编码
    set encoding=utf-8
    " 文件默认编码
    set fileencoding=utf-8
    " 打开文件时自动尝试下面顺序的编码
    set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,ecu-kr,latin1
endif

" 允许 Vim 自带脚本根据文件类型自动设置缩进等
if has('autocmd')
    filetype plugin indent on
endif

" 语法高亮设置
if has('syntax')
    syntax enable
    syntax on
endif

" 打开文件时恢复上一次光标所在位置
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \     exe "normal! g`\"" |
    \ endif

" 保存时自动清除尾部空白符
autocmd BufWritePre * :%s/\s\+$//e

" 退出插入模式指定类型的文件自动保存
" au InsertLeave *.go,*.sh,*.py,*.c,*.cpp write

" 文件搜索和补全时忽略下面扩展名
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class
set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib "stuff to ignore when tab completing
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz    " MacOSX/Linux
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android

"================================================================================
" 插件配置
"================================================================================

"--------------------------------------------------------------------------------
" gruvbox
"--------------------------------------------------------------------------------

" let base16colorspace=256
" colorscheme gruvbox
" colorscheme PaperColor
colorscheme ayu
" colorscheme onehalfdark
" colorscheme dracula
" colorscheme material
" colorscheme xcodelight
" colorscheme onehalflight
" colorscheme nord
" colorscheme night-owl
" colorscheme monokai
" colorscheme palenight
" colorscheme one
" colorscheme OceanicNext
" colorscheme candid
" colorscheme typewriter
" colorscheme github_dark_default
" colorscheme uwu
" let g:material_theme_style = 'lighter'
let ayucolor="mirage"
" let ayucolor="dark"
" let ayucolor="light"
set termguicolors   " 开启24bit的颜色
set t_Co=256
" set background=light " 主题背景 dark or light
set background=dark
" 背景透明
" autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
" --------------------------------------------------------------------------------
" NERDTree
"--------------------------------------------------------------------------------

" 打开和关闭NERDTree
map <Leader>e :NERDTreeToggle<CR>
nmap <leader>c :NERDTreeFind<CR>

" 没有指定文件/目录时，自动启动NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 打开后光标自动聚焦右边window
wincmd w
autocmd VimEnter * wincmd w

let NERDTreeMinimalUI=1                    " 不显示帮助提示
let NERDTreeShowLineNumbers=0              " 显示行号
let NERDTreeAutoCenter=0                   " 打开文件时是否显示目录
let NERDTreeWinSize=40                     " 设置宽度
let NERDTreeIgnore=['\.pyc','\~$','\.swp'] " 忽略一下文件的显示
let NERDTreeMapHelp='H'                    " 打开帮助
let NERDTreeDirArrows = 1                  " 显示箭头
let NERDTreeShowHidden=1                   " 显示隐藏文件
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"
" 隐藏每个目录后面的斜杠
augroup nerdtreehidetirslashes
	autocmd!
	autocmd FileType nerdtree syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup end

" --------------------------------------------------------------------------------
" coc-explorer
"--------------------------------------------------------------------------------
" nnoremap <leader>e :CocCommand explorer<CR>
" 只剩coc-explorer时，自动关闭
" autocmd BufEnter * if (winnr("$") == 1 && &filetype == "coc-explorer") | q | endif
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | coc-explorer | endif
" --------------------------------------------------------------------------------
" LeaderF
"--------------------------------------------------------------------------------

let g:Lf_HideHelp = 1
let g:Lf_ShowDevIcons = 1
let g:Lf_WindowPosition = 'bottom'
let g:Lf_PreviewInPopup = 1
" let g:Lf_PopupColorscheme = 'material'
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_UseVersionControlTool = 0
let g:Lf_UseCache = 0

" 模糊匹配忽略扩展名
let g:Lf_WildIgnore = {
    \ 'dir': ['.svn', '.git', '.hg'],
    \ 'file': ['*.sw?', '~$*', '*.bak', '*.exe', '*.o', '*.so', '*.py[co]']
    \ }

" MRU 文件忽略扩展名
let g:Lf_MruFileExclude = ['*.so', '*.exe', '*.py[co]', '*.sw?', '~$*', '*.bak', '*.tmp', '*.dll']

" 禁用 function/buftag 的预览功能，可以手动用 p 预览
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

" RG搜索配置
let g:Lf_RgConfig = [
    \ "--glob=!output",
    \ "--glob=!git",
    \ "--glob=!mock",
    \ "--glob=!thrift_gen",
    \ "--glob=!kitex_gen",
    \ "--glob=!*_test.go"
\ ]

" 快捷键
"--------------------------------------------------------------------------------
" 命令模式快捷键
"--------------------------------------------------------------------------------
let g:Lf_ShortcutF = "<c-p>"
noremap <leader>f :<C-U><C-R>=printf("LeaderfSelf %s", "")<CR><CR>
noremap <leader>ff :<C-U><C-R>=printf("LeaderfFile %s", "")<CR><CR>
noremap <leader>fb :<C-U><C-R>=printf("LeaderfBuffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("LeaderfMruCwd %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("LeaderfBufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("LeaderfLine %s", "")<CR><CR>
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! rg -F %s", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U>Leaderf! rg --recall<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf rg -F %s", "")<CR><CR>

"--------------------------------------------------------------------------------
" accelerated-jk
"--------------------------------------------------------------------------------

nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

"--------------------------------------------------------------------------------
" accelerated-jk
"--------------------------------------------------------------------------------

let g:smartim_default = 'com.apple.keylayout.ABC'

"--------------------------------------------------------------------------------
" vim-easy-align
"--------------------------------------------------------------------------------

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"--------------------------------------------------------------------------------
" ale
"--------------------------------------------------------------------------------

" Set this in your vimrc file to disabling highlighting
" let g:ale_set_highlights = 0
" let g:ale_sign_error = '▲'
" let g:ale_sign_warning = '◆'
" highlight ALEWarningSign ctermbg=yellow
" highlight ALEErrorSign ctermbg=red
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign
let g:ale_Python_auto_pipenv = 1


"--------------------------------------------------------------------------------
" YouCompleteMe
"--------------------------------------------------------------------------------

let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_gopls_binary_path = "gopls"
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

" 白名单（非名单内文件不启用 YCM），避免打开个 1MB 的 txt 分析半天
let g:ycm_filetype_whitelist = {
    \ "c":1,
    \ "cpp":1,
    \ "objc":1,
    \ "objcpp":1,
    \ "python":1,
    \ "java":1,
    \ "javascript":1,
    \ "coffee":1,
    \ "vim":1,
    \ "go":1,
    \ "cs":1,
    \ "lua":1,
    \ "perl":1,
    \ "perl6":1,
    \ "php":1,
    \ "ruby":1,
    \ "rust":1,
    \ "erlang":1,
    \ "asm":1,
    \ "nasm":1,
    \ "masm":1,
    \ "tasm":1,
    \ "asm68k":1,
    \ "asmh8300":1,
    \ "asciidoc":1,
    \ "basic":1,
    \ "vb":1,
    \ "make":1,
    \ "cmake":1,
    \ "html":1,
    \ "css":1,
    \ "less":1,
    \ "json":1,
    \ "cson":1,
    \ "typedscript":1,
    \ "haskell":1,
    \ "lhaskell":1,
    \ "lisp":1,
    \ "scheme":1,
    \ "sdl":1,
    \ "sh":1,
    \ "zsh":1,
    \ "bash":1,
    \ "man":1,
    \ "markdown":1,
    \ "matlab":1,
    \ "maxima":1,
    \ "dosini":1,
    \ "conf":1,
    \ "config":1,
    \ "zimbu":1,
    \ "ps1":1,
    \ }

" 两个字符自动触发语义补全
let g:ycm_semantic_triggers =  {
    \ 'c,cpp,cs,python,java,go,erlang,perl,lua,javascript': ['re!\w{2}'],
    \ }

" noremap <space>lr :YcmCompleter GoToReferences<CR>
" noremap <space>li :YcmCompleter GoToImplementation<CR>
" noremap <space>ld :YcmCompleter GoToDefinition<CR>
" noremap <space>yr :YcmRestartServer<CR>

"--------------------------------------------------------------------------------
" coc
"--------------------------------------------------------------------------------

" GoTo code navigation.
nmap <space>lr <Plug>(coc-references)
nmap <space>li <Plug>(coc-implementation)
nmap <space>ld <Plug>(coc-definition)
nmap <space>rr <Esc>:CocRestart<CR><CR>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

let g:ale_disable_lsp = 1 " 禁用ale的lsp功能
" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')
"-------------------------------------------------------------------------------- vim-airline
"--------------------------------------------------------------------------------

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1    "Smarter tab line: 显示窗口tab和buffer
" let g:airline#extensions#tabline#left_sep = '⮀'  "separater
" let g:airline#extensions#tabline#left_alt_sep = '⮁'  "separater
let g:airline#extensions#tabline#formatter = 'unique_tail'  "formater
nnoremap <space>bp :bp<CR>
nnoremap <space>bn :bn<CR>
nnoremap <space>ba :BA<CR>
nnoremap <space>bd :BD<CR>

"--------------------------------------------------------------------------------
"--------------------------------------------------------------------------------
" go
"--------------------------------------------------------------------------------

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

"--------------------------------------------------------------------------------
" markdown
"--------------------------------------------------------------------------------

map <silent> <Leader>m <Plug>MarkdownPreview

"--------------------------------------------------------------------------------
" vim-go
"--------------------------------------------------------------------------------

nnoremap gb :GoDebugBreakpoint<CR>
nnoremap gc :GoDebugContinue<CR>
nnoremap gs :GoDebugStep<CR>
nnoremap go :GoDebugStepOut<CR>
nnoremap gn :GoDebugNext<CR>
nnoremap gp :GoDebugPrint
nnoremap gst :GoDebugStop<CR>
nnoremap gr :GoDebugRestart<CR>
nnoremap gf :GoDebugTestFunc<CR>
nnoremap gss :GoDebugStart<CR>

"--------------------------------------------------------------------------------
" dlv
"--------------------------------------------------------------------------------

nnoremap dlt :DlvToggleBreakpoint<CR>
nnoremap dltt :DlvTest<CR>
nnoremap dle :DlvExec<CR>
nnoremap dld :DlvDebug<CR>
nnoremap dlc :DlvClearAll<CR>

"--------------------------------------------------------------------------------
" python
"--------------------------------------------------------------------------------

let g:python_highlight_all = 1

" 保存时自动执行格式化
" autocmd BufWritePost *.py call flake8#Flake8()

"--------------------------------------------------------------------------------
" nerd-comment
"--------------------------------------------------------------------------------

let g:NERDSpaceDelims = 1
nmap <space>c <Plug>NERDCommenterToggle
vmap <space>c <Plug>NERDCommenterToggle

"--------------------------------------------------------------------------------
" vim-floaterm
"--------------------------------------------------------------------------------

let g:floaterm_wintype = 'split'
let g:floaterm_position = 'botright'
let g:floaterm_height = 20

"--------------------------------------------------------------------------------
" gotest
"--------------------------------------------------------------------------------
nmap <space>gt :GoTest<CR>
nmap <space>gr :GoRun<CR>
nmap <space>gf :GoTestFunc<CR>

"--------------------------------------------------------------------------------
" vim-devicons
"--------------------------------------------------------------------------------

" let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

"--------------------------------------------------------------------------------
" vim-multiple-cursors
"--------------------------------------------------------------------------------

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<C-m>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


"--------------------------------------------------------------------------------
" vim-isort
"--------------------------------------------------------------------------------

autocmd BufWrite *.py :Isort
" let g:vim_isort_map = '<C-i>'
let g:vim_isort_config_overrides = {
  \ 'include_trailing_comma': 1, 'multi_line_output': 3}
let g:vim_isort_python_version = 'python3'

"--------------------------------------------------------------------------------
" goto-preview
"--------------------------------------------------------------------------------

" nnoremap <space>pd <cmd>lua require('goto-preview').goto_preview_definition()<CR>
" nnoremap <space>pi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>
" nnoremap <space>gP <cmd>lua require('goto-preview').close_all_win()<CR>


"--------------------------------------------------------------------------------
" jsbeautify
"--------------------------------------------------------------------------------
".vimrc
" map <c-f> :call JsBeautify()<cr>
noremap <space>wf :call JsBeautify()<cr>
" or
autocmd FileType javascript map <buffer> <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>


"================================================================================
" vim-autoformat
"================================================================================

let g:autoformat_autoindent = 0
" 保存时自动格式化python代码
autocmd BufWrite *.py :Autoformat

"================================================================================
" vista
"================================================================================

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']

nnoremap <leader>a :Vista coc<CR>

"================================================================================
" 按键映射
"================================================================================

"--------------------------------------------------------------------------------
" 系统复制粘贴
"--------------------------------------------------------------------------------

vmap <Leader>y "+y
nmap <Leader>y "+yy
nmap <Leader>p "+p

"--------------------------------------------------------------------------------
" 插入模式快捷键
"--------------------------------------------------------------------------------
"--------------------------------------------------------------------------------
" tab跳出括号
"--------------------------------------------------------------------------------
function! SkipPair()
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'
        return "\<ESC>la"
    else
        return "\t"
    endif
endfunc

inoremap <C-a> <Home>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-e> <End>
inoremap <leader>s <ESC>:sp<CR>
inoremap <leader>v <ESC>:vsp<CR>
inoremap <TAB> <c-r>=SkipPair()<CR>

"--------------------------------------------------------------------------------
" 命令模式快捷键
"--------------------------------------------------------------------------------

cnoremap <C-a> <Home>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-e> <End>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

"--------------------------------------------------------------------------------
" 普通模式快捷键
"--------------------------------------------------------------------------------

noremap <S-h> <Home>
noremap <S-l> <End>
noremap <space>w :w<CR>
noremap <space>q :qa<CR>
noremap q :q<CR>
noremap <leader>s :sp<CR>
noremap <leader>v :vsp<CR>
noremap <space>' :FloatermToggle! cd %:p:h<CR>
noremap <space>nh :noh<CR>
noremap <space>y bve"+y
noremap <space>p bve"+p
noremap <space>, <C-w>3<
noremap <space>. <C-w>3>
noremap <space>+ <C-w>3+
noremap <space>- <C-w>3-
noremap <tab>h :bp<CR>
noremap <tab>l :bn<CR>
noremap <space>rs :ALEReset<CR>

" --------------------------------------------------------------------------------
" 命令行模式快捷键
"--------------------------------------------------------------------------------

tnoremap <Esc> <C-\><C-n>

"--------------------------------------------------------------------------------
" 窗口切换
"--------------------------------------------------------------------------------

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-c> <C-w>c
noremap <leader>wh <C-w>H
noremap <leader>wj <C-w>J
noremap <leader>wk <C-w>K
noremap <leader>wl <C-w>L


"--------------------------------------------------------------------------------
" python相关
"--------------------------------------------------------------------------------

imap <space>jr <Esc>:w<CR>:!clear;python %<CR>

"--------------------------------------------------------------------------------
" 标签快捷键
"--------------------------------------------------------------------------------

function! Tab_MoveLeft()
    let l:tabnr = tabpagenr() - 2
    if l:tabnr >= 0
        exec 'tabmove '.l:tabnr
    endif
endfunc

function! Tab_MoveRight()
    let l:tabnr = tabpagenr() + 1
    if l:tabnr <= tabpagenr('$')
        exec 'tabmove '.l:tabnr endif
endfunc

" noremap <silent> <leader>1 1gt
" noremap <silent> <leader>2 2gt
" noremap <silent> <leader>3 3gt
" noremap <silent> <leader>4 4gt
" noremap <silent> <leader>5 5gt
" noremap <silent> <leader>6 6gt
" noremap <silent> <leader>7 7gt
" noremap <silent> <leader>8 8gt
" noremap <silent> <leader>9 9gt
" noremap <silent> <leader>0 :tablast<cr>
noremap <silent> <leader>tt :tabnew<cr>
noremap <silent> <leader>tq :tabclose<cr>
noremap <silent> <leader>tn :tabnext<cr>
noremap <silent> <leader>tp :tabprev<cr>
noremap <silent> <leader>to :tabonly<cr>
noremap <silent> <leader>tl :call Tab_MoveLeft()<cr>
noremap <silent> <leader>tr :call Tab_MoveRight()<cr>

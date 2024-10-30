" Кодировка UTF-8
set encoding=utf8

" Отключение совместимости с vi. Нужно для правильной работы некоторых опций
set nocompatible

" Игнорировать регистр при поиске
set ignorecase

" Не игнорировать регистр, если в паттерне есть большие буквы
set smartcase

" Подсвечивать найденный паттерн
set hlsearch

" Интерактивный поиск
set incsearch

" Размер табов - 4
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Превратить табы в пробелы
" set expandtab

" Таб перед строкой будет вставлять количество пробелов определённое в shiftwidth
set smarttab

" Копировать отступ на новой строке
set autoindent
set smartindent

" Показывать номера строк
set number

" Относительные номера строк
set relativenumber

" Автокомплиты в командной строке
set wildmode=longest,list

" Подсветка синтаксиса
syntax on

" Разрешить использование мыши
set mouse=a

" Использовать системный буфер обмена
set clipboard=unnamedplus

" Быстрый скроллинг
set ttyfast

" Курсор во время скроллинга будет всегда в середине экрана
set so=30

" Встроенный плагин для распознавания отступов
filetype plugin indent on

call plug#begin("~/.vim/plugged")
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
" Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }
Plug 'normen/vim-pio'
Plug 'coddingtonbear/neomake-platformio'
" Plug 'embear/vim-localvimrc'
Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim'
call plug#end()

colorscheme catppuccin-mocha " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
" vim.cmd.colorscheme catppuccin-mocha
" require('../../.cache/wal/colors-wal.vim')
" colorscheme pywal
" vim.cmd.colorscheme pywal

" call SetupPlatformioEnvironment('/home/yarik/ESP32-c/')

" Включить/выключить NERDTree при нажатии \n
nnoremap <leader>n :NERDTreeToggle<CR>
" Юникодные иконки папок (Работает только с плагином vim-devicons)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" Показывает количество строк в файлах
" let g:NERDTreeFileLines = 1
" Игнорировать указанные папки
let g:NERDTreeIgnore = ['^node_modules$', '^__pycache__$']
" Закрыть vim, если единственная вкладка - это NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline_theme='deus'
let g:airline#extensions#tabline#formatter = 'default'

" Автокомплиты через Tab
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac <Plug>(coc-codeaction-cursor)

inoremap ii0n<tab> for (int i = 0; i < n; ++i)
inoremap i0n<tab> for i in range(n):

" Базовые настройки для Python
syntax on
set number              " Показывать номера строк
set tabstop=4           " Табуляция = 4 пробела
set shiftwidth=4        " Отступ = 4 пробела
set expandtab           " Пробелы вместо табуляции
set autoindent          " Автоотступы
set smartindent         " Умные отступы

" Подсветка лишних пробелов
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Автодополнение (встроенное, без плагинов)
set wildmenu
set wildmode=longest:full,full

" Поиск
set incsearch
set hlsearch
set ignorecase
set smartcase

" Включаем поддержку Python файлов
filetype plugin indent on

" Настройки netrw (встроенный файловый менеджер)
let g:netrw_banner = 0        " убрать баннер
let g:netrw_liststyle = 3     " древовидный вид
let g:netrw_browse_split = 4  " открывать файлы в предыдущем окне
let g:netrw_altv = 0          " 0 = открывать вертикальные сплиты слева, 1 = открывать вертикальные сплиты справа
let g:netrw_winsize = 25      " ширина файлового менеджера (25%)

" Автоматически открывать netrw при запуске vim .
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) | Vexplore | endif
augroup END

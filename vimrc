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

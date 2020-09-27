"===Sets no wrapping===
set nowrap

"===Auto/Smart indent===
set autoindent
set smartindent

"===Set line numbers===
set number

"===Highlight trailing whitespace===
"have this highlighting not appear whilst you are typing in insert mode
"have the highlighting of whitespace apply when you open new buffers
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=lightred guibg=lightred
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"===set color scheme===
colorscheme desert

"===Syntax highlight===
syntax on

"===tab handling===
set tabstop=4
set shiftwidth=4
set expandtab
set shiftround
set smarttab

"===backspace past autoinde,line boundaries, and start inserstions===
set backspace=indent,eol,start

"===search behaviour===
set ignorecase
set smartcase
set hlsearch

"===set vertical colour column to 81 chars=="
set colorcolumn=81
highlight ColorColumn ctermbg=240 guibg=240

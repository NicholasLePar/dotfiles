"===Sets no wrapping===
set nowrap

"===Auto/Smart indent===
set autoindent
set smartindent

"===Set line numbers===
set number

"===Highlight trailing whitespace===
"Add functionality to toggle highlighting of whitespace either on or off: \w
"define toggleHighlightWhitespace
let g:toggleHighlightWhitespace = 1
function! ToggleHighlightWhitespace()
  let g:toggleHighlightWhitespace = 1 - g:toggleHighlightWhitespace
  call RefreshHighlightWhitespace()
endfunction

"define the highlight whitespace function and check for flag
function! RefreshHighlightWhitespace()
  if g:toggleHighlightWhitespace == 1 " normal action, do the hi
    highlight ExtraWhitespace ctermbg=210
    match ExtraWhitespace /\s\+$/
    augroup HighLightWhitespace
      autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
      autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
      autocmd InsertLeave * match ExtraWhitespace /\s\+$/
      autocmd BufWinLeave * call clearmatches()
    augroup END
  else " clear whitespace highlighting
    call clearmatches()
    autocmd! HighLightWhitespace BufWinEnter
    autocmd! HighLightWhitespace InsertEnter
    autocmd! HighLightWhitespace InsertLeave
    autocmd! HighLightWhitespace BufWinLeave
  endif
endfunction

autocmd BufWinEnter * call RefreshHighlightWhitespace()
autocmd BufWinLeave * call RefreshHighlightWhitespace()
"toggle whitespace using \w
nnoremap <leader>w :call ToggleHighlightWhitespace()<cr>

"=== Delete trailing whitespace prior to saving===
autocmd BufWritePre * :%s/\s\+$//e

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
highlight ColorColumn ctermbg=240


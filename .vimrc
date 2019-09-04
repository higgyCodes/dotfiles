call plug#begin('~/vim/plugged')

Plug 'https://github.com/yalesov/vim-emblem.git'
Plug 'w0rp/ale'

" ===== Basic JS ============== " 
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" ==== Prettier ========== " 

Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" ==== Theme ====== "
Plug 'chriskempson/base16-vim'
call plug#end()

" ==== Prettier ========== " 
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.graphql,*.md,*.vue PrettierAsync
let g:user_emmet_leader_key='<Tab>'

let b:ale_linters = ['stylelint', 'eslint']
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

let g:ale_sign_column_always = 1

let b:ale_fixers = ['eslint', 'stylelint']

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

" Commands for prettier on save and on leaving insert
"autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat

let g:ale_completion_enabled = 1
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '-'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

:set number
:set ignorecase
:set smartcase

" Sets tabs to spaces, sets 2 spaces per tab
:set tabstop=2 shiftwidth=2 expandtab
map <Tab> <C-W>w

" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

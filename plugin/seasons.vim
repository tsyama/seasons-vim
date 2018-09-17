scriptencoding utf-8

if exists('g:loaded_seasons')
    finish
endif
let g:loaded_seasons = 1

let s:save_cpo = &cpo
set cpo&vim

exe "colorscheme " . seasons#GetColorScheme()

command! -nargs=1 SetMonthScheme call seasons#SetMonthScheme(<f-args>)

let &cpo = s:save_cpo
unlet s:save_cpo
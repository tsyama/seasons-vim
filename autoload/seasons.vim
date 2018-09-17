scriptencoding utf-8

if !exists('g:loaded_seasons')
  finish
endif
let g:loaded_seasons = 1

let s:save_cpo = &cpo
set cpo&vim

function! seasons#seasons()
  exe "colorscheme " . seasons#GetColorScheme()
endfunction

function! seasons#GetThisMonthScheme()
  let month = seasons#GetMonth()
  let schemeNameDict = seasons#GetSchemeNameDict()
  return schemeNameDict[month]
endfunction

function! seasons#SetMonthScheme(month)
  let schemeNameDict = seasons#GetSchemeNameDict()
  exe "colorscheme " . schemeNameDict[a:month]
endfunction

function! seasons#GetColorScheme()
  let month = seasons#GetMonth()
  let schemeNameDict = seasons#GetSchemeNameDict()
  return schemeNameDict[month]
endfunction

function! seasons#GetSchemeNameDict()
  let schemeNameDict = {
        \ '01': 'hydrangea',
        \ '02': 'iceberg',
        \ '03': 'SerialExperimentsLain',
        \ '04': 'ubaryd',
        \ '05': 'landscape',
        \ '06': 'jellybeans',
        \ '07': 'quantum',
        \ '08': 'vitamins',
        \ '09': 'moonshine',
        \ '10': 'farout',
        \ '11': 'vividchalk',
        \ '12': 'lucario',
  \ }
  return schemeNameDict
endfunction

function! seasons#GetMonth()
  let now = localtime()
  let month = strftime("%m", now)
  return month
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
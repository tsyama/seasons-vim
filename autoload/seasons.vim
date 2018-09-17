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

function! seasons#GetMonth()
  let now = localtime()
  let month = strftime("%m", now)
  return month
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
scriptencoding utf-8

if !exists('g:loaded_seasons')
  finish
endif
let g:loaded_seasons = 1

let s:save_cpo = &cpo
set cpo&vim

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

let &cpo = s:save_cpo
unlet s:save_cpo
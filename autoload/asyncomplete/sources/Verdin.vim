" Plugin Name: asyncomplete-Verdin
" Author: mityu
" Last Change: 26-Feb-2019.
" License: NYSL license.

function! asyncomplete#sources#Verdin#completor(opt, ctx) abort
    let g:Verdin#cooperativemode = 1
    let startcol = Verdin#omnifunc(1, '')
    let matches = Verdin#omnifunc(0, strpart(getline('.'), startcol))
    call asyncomplete#complete(a:opt.name, a:ctx, startcol + 1, matches)
endfunction

function! asyncomplete#sources#Verdin#get_source_options(opts)
    return a:opts
endfunction

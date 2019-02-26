# vim-asyncomplete-Verdin
An [asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim) source for VimScript via [vim-Verdin](https://github.com/machakann/vim-Verdin).

# Usage
Write following code in your .vimrc:

```vim
    call asyncomplete#register_source(asyncomplete#sources#Verdin#get_source_options{
                \ 'name': 'Verdin',
                \ 'whitelist': ['vim'],
                \ 'completor': function('asyncomplete#sources#Verdin#completor')
                \ }))
```

NOTE: Do not enable `g:Verdin#autocomplete` option.

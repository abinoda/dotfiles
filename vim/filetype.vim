au! BufRead,BufNewFile *.haml         setfiletype haml
au! BufRead,BufNewFile *.sass         setfiletype sass
au! BufRead,BufNewFile *.prawn        setfiletype ruby
au! BufRead,BufNewFile *.json         setfiletype json
au! BufRead,BufNewFile *.ftl          setfiletype html.ftl

" For LPP Compass .rules
au! BufRead,BufNewFile *.rules        set filetype=ruby

" markdown filetype file
if exists("did\_load\_filetypes")
 finish
endif
augroup markdown
 au! BufRead,BufNewFile *.mkd   setfiletype mkd
 au! BufRead,BufNewFile *.markdown   setfiletype mkd
augroup END
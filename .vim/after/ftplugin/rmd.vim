runtime! after/ftplugin/markdown.vim

function! RMarkdown()
	let filename = expand("%:t")
	execute '!echo "suppressMessages(require(rmarkdown));render('."'".filename."'".')" | '.g:R_ENV.' --vanilla --quiet'
endfunction
command! -nargs=0 RMarkdown :call RMarkdown()
nnoremap <buffer> <leader>p :RMarkdown<CR>

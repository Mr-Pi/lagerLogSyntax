" Language:	Erlang lager log files
" Maintainer:	Mr. Pi <mrpi@mr-pi.de>
" Last Change:	2013-12-10
" Version:	1.0.1-r1

if did_filetype()
	finish
endif

au BufNewFile,BufRead *.log* if getline(1) =~ '^\d\{4}-\d\{2}-\d\{2} [0-9:]\{8}\.\d\{3} \(\[debug\]\|\[info\]\|\[notice\]\|\[warning\]\|\[error\]\|\[critical\]\|\[alert\]\|\[emergency\]\).*$' | setf lagerLog | endif

" Vim syntax file
" Language:	Erlang lager log files
" Maintainer:	Mr. Pi <mrpi@mr-pi.de>
" Last Change:	2013-11-10
" Version:	1.0.0-r1

if exists("b:current_syntax")
	finish
else
	let b:current_syntax = "lagerLog"
endif

syn match erlangNode '\'[^']*@[^']*\''
syn match erlangModuleFunction '[^0-9 :@]\+:[^0-9 :/\()]\+/\d\+'
syn match erlangModuleFunction '[^0-9 :@]\+:[^0-9 :/\()]\+([^()]*)'
syn match lagerTimeStamp '^\d\{4}-\d\{2}-\d\{2} [0-9:]\{8}\.\d\{3} ' nextgroup=lagerSeverity
syn match lagerSeverityDebug	'\(\[debug\]\)'
syn match lagerSeverityNormal	'\(\[info\]\|\[notice\]\)'
syn match lagerSeverityWarning	'\(\[warning\]\)'
syn match lagerSeverityError	'\(\[error\]\)'
syn match lagerSeverityCritical	'\(\[critical\]\|\[alert\]\|\[emergency\]\)'
syn match erlangPID '<\d\+\.\d\+\.\d\+>'
syn match lagerAtModule '@[^:]*' nextgroup=lagerFunction
syn match lagerFunction ':[^0-9 :]\+' nextgroup=lagerLineNumber
syn match lagerLineNumber ':\d\+'

hi lagerSeverityDebug		term=bold cterm=bold ctermfg=gray
hi lagerSeverityNormal		term=bold,underline cterm=bold,underline ctermfg=white
hi lagerSeverityWarning		term=bold,underline cterm=bold,underline ctermfg=yellow
hi lagerSeverityError		term=bold,underline cterm=bold,underline ctermfg=gray ctermbg=red
hi lagerSeverityCritical	term=bold,underline cterm=bold,underline ctermfg=red ctermbg=gray

hi def link erlangModuleFunction Function
hi def link erlangNode Constant
hi def link lagerTimeStamp Comment
hi def link lagerSeverity Error
hi def link erlangPID Label
hi def link lagerAtModule Identifier
hi def link lagerFunction Function
hi def link lagerLineNumber Number

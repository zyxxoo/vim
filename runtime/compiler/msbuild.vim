" Vim compiler file
" Compiler:	Microsoft Visual Studio C#
" Maintainer:	Chiel ten Brinke (ctje92@gmail.com)
" Last Change:	2013 May 13

if exists("current_compiler")
  finish
endif
let current_compiler = "msbuild"
let s:keepcpo= &cpo
set cpo&vim

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet errorformat=\ %#%f(%l\\\,%c):\ %m
CompilerSet makeprg=msbuild\ /nologo\ /v:q\ /property:GenerateFullPaths=true

let &cpo = s:keepcpo
unlet s:keepcpo

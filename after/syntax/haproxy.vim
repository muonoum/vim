" section:
"   listen
"   frontend
"   backend

" address:
"   ip:port
"   abns@socket
"   unix socket?

" unary args:
"  ssl
"  check

" binary args:
"   crt ...
"   id ...
"   port ...

" directives:
"   bind
"   server
"   http-request
"   option
"   redirect

" acl:
"   if|unless acl-name | { inline-acl }

syntax keyword haproxySections listen frontend backend
syntax keyword haproxyDirective bind redirect http-request option use_backend default_backend server balance
syntax keyword haproxyOption ssl crt forwardfor id check
highlight link haproxySections Keyword
highlight link haproxyDirective Constant
highlight link haproxyOption Identifier

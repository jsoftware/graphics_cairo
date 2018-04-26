NB. libcairo interface

coclass 'jcairo'

3 : 0''
if. UNAME-:'Linux' do.
  libcairo=: 'libcairo.so.2'
elseif. UNAME-:'Android' do.
  libcairo=: 'libcairo.so'       NB. not yet supported
elseif. UNAME-:'Darwin' do.
    libcairo=: 'libcairo.2.dylib'
  if. fexist t=. '/opt/local/lib/libcairo.2.dylib' do.
    libcairo=: t
  end.
elseif. UNAME-:'Win' do.
  libcairo=: 'libcairo-2.dll'  NB. also need other dlls
end.
''
)


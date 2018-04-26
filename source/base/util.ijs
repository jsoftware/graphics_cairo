
NB. =========================================================
NB. download and install cairographics dll for windows
install=: 3 : 0
if. -. IFWIN do. return. end.
require 'pacman'
for_lib. <;._1 ' libcairo-2.dll libfontconfig-1.dll libfreetype-6.dll libpixman-1-0.dll libpng15-15.dll libxml2-2.dll zlib1.dll' do.
  'rc p'=. httpget_jpacman_ 'http://www.jsoftware.com/download/', z=. 'winlib/',(IF64{::'x86';'x64'),'/',,>lib
  if. rc do.
    smoutput 'unable to download: ',z return.
  end.
  (<jpath'~bin/',>lib) 1!:2~ 1!:1 <p
  1!:55 ::0: <p
end.
smoutput 'done'
EMPTY
)

NB. =========================================================
NB. test if cairo is installed
testcairo=: _1 ~: (cairo_version :: _1:)


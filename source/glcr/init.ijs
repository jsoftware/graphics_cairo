NB. init
NB.
NB. globals
NB. cairocs       cairo surface
NB. cairocr       cairo context
NB. cairowh
NB. cairorgb
NB. cairopenrgb
NB. cairobrushnull
NB. cairobrushrgb
NB. cairotextrgb
NB. cairofontangle

coclass'jglcr'
coinsert 'jcairo'

cairocs=: cairocr=: 0
cairoclipped=: cairofontangle=: cairounderline=: cairoorgx=: cairoorgy=: 0
cairotextxy=: 0 0
cairorgb=: cairopenrgb=: cairobrushrgb=: cairotextrgb=: cairobrushnull=: setalpha 0

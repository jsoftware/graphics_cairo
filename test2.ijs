NB. test2

load 'graphics/cairo'

cocurrent 'base'
coinsert 'jglcr'

NB. =========================================================
testall=: 3 : 0
glinit 'w h'=. 400 300
glclear''
glrgb 0 0 255
glpen 5 1
glrgb 120 120 120
glbrush''
glrect 0 50,w,20
glrgb 255 0 0
glpen 1 1
glrgb 0 0 255
glbrush''
glrect 10 10 5 5
glrect 15 15 5 5

NB. arc pie
glrgb 255 0 0
glpen 0 1  NB. zero width?
glrgb 0 0 255
glbrush''
glpie 40 140 60 60 200 70 70 0
glarc 100 100 160 160 300 170 170 0

NB. clip
glrgb 255 0 0
glpen 5 1
glrgb 0 0 255
glbrush''
glclip 40 40 200 100
glrect 20 20 200 200
glclipreset''
gllines 10 10 300 300

NB. text
glrgb 255 0 0
gltextcolor''
glfont 'sans 20'
gltextxy 150 150
glfontangle 450
gltext 'how now'

NB. polygon
glrgb 0 255 0
glpen 1 1
glbrush''
glpolygon 250 200 300 300 400 100 300 150

RED=. setalpha RGBSEQ_j_{16bff,16bff0000
BLUE=. setalpha RGBSEQ_j_{16bff0000,16bff

NB. qpixels pixels
data=: glqpixels 100 100 40 40
glpixels 20 200 40 40,data
glpixels 60 250 20 40,,(20*40)$RED
glpixels 100 250 20 80,,((20*40)$RED),(20*40)$BLUE
data=. ,((20*40)$RED),(20*40)$BLUE
glpixelsx 160 250 20 80,p=. 15!:14 <'data'

NB. lines
glrgba 255 0 255 100
glpen 1 1
gllines ,(,.250+50*1 o. *&0.1) 10+i.400
glrgb 0 128 128
glpen 2 1
gllines ,(,.250+50*1 o. *&0.04) 10+i.400

NB. test glqextent
glfont 'sans 20'
smoutput 'sans 20: ',":glqextent 'hello'
glfont 'sans 10'
smoutput 'sans 10: ',":glqextent 'hello'
glsavefile jpath '~temp/testall.png'
glfree''
viewimage_j_ jpath '~temp/testall.png'
)

NB. =========================================================
testsimple=: 3 : 0
glinit 'w h'=. 300 300
glclear''
glrgb 0 0 0
glpen 1 1
gltextcolor''

glrgb 255 0 0
glbrush''
glrect 10 10 100 88
glrect 10 100 100 50 + 0.5 0.5 _1 _1

glrgb 0 255 0
gltextcolor''
glfont 'sans 20'
gltextxy 200 10
gltext 'how now'

glrgb 0 255 255
gltextcolor''
gltextxy 200 32 + 0.5
gltext 'how now'

NB. lines
gllines ,(,.200+50*1 o. *&0.1) 10+i.400
glsavefile jpath '~temp/testsimple.png'
glfree''
viewimage_j_ jpath '~temp/testsimple.png'
)

NB. =========================================================
testall''
testsimple''


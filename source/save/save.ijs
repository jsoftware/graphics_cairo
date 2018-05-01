NB. save cairo

cocurrent 'base'

mkdir_j_ jpath '~Addons/graphics/cairo/source/release'
mkdir_j_ jpath '~Addons/graphics/cairo'
mkdir_j_ jpath '~addons/graphics/cairo'

NB. =========================================================
f=. 3 : 0
load '~Addons/graphics/cairo/source/',y,'/build.ijs'
)

Source=: <;._2 (0 : 0)
base
glcr
)

f each Source
g=: (jpath '~Addons/graphics/cairo/source/release/')&, each Source ,each <'.ijs'
dat=: ; (<_1) -.~ freads each g

dat fwritenew jpath '~Addons/graphics/cairo/cairo.ijs'
dat fwritenew jpath '~addons/graphics/cairo/cairo.ijs'

f=. 3 : 0
(jpath '~Addons/graphics/cairo/',y) fcopynew jpath '~Addons/graphics/cairo/source/',y
(jpath '~addons/graphics/cairo/',y) (fcopynew ::0:) jpath '~Addons/graphics/cairo/source/',y
)

f 'manifest.ijs'
f 'history.txt'
f 'readme.txt'
f 'test1.ijs'
f 'test2.ijs'

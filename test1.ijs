coclass 'test'

load 'graphics/cairo'
coinsert 'jcairo'

SIZEX=: 100
SIZEY=: 50


paint=: 3 : 0
c=. cairo_create y
cairo_rectangle c; 0; 0; SIZEX; SIZEY
cairo_set_source_rgb c; 0; 0; 0.5
cairo_fill c

cairo_move_to c; 10; 10
cairo_set_source_rgb c; 1; 1; 0
cairo_show_text c; 'Hello World!'

cairo_show_page c

cairo_destroy c
)

test=: 3 : 0
cs=. cairo_image_surface_create CAIRO_FORMAT_ARGB32; SIZEX; SIZEY
paint cs
cairo_surface_write_to_png cs; jpath '~temp/test1.png'
cairo_surface_destroy cs
viewimage_j_ jpath '~temp/test1.png'
''
)

test''

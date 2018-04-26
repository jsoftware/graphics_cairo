NB. cairo gl2

chkgl2=: 13!:8@3:^:(0&<)

glcr_sel=: 0:
glcr_sel2=: 0:
glcr_setlocale=: 0:

NB. =========================================================
glcr_init=: chkgl2 @: (3 : 0)
if. 0 e. 0=cairocs,cairocr do. 1 return. end.
cs=. cairo_image_surface_create <"0 CAIRO_FORMAT_ARGB32, y
if. 0=cs do. 1 return. end.
cr=. cairo_create cs
if. 0=cr do. 1 [ cairo_surface_destroy cs return. end.
cairocs=: cs [ cairocr=: cr [ cairowh=: y
0
)

NB. =========================================================
glcr_free=: chkgl2 @: (3 : 0)
if. 0=cairocs do. 0 return. end.
if. cairocr do. cairo_destroy cairocr end.
cairo_surface_destroy cairocs
cairocs=: cairocr=: 0
0
)

NB. =========================================================
glcr_savefile=: chkgl2 @: (3 : 0)
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
cairo_surface_write_to_png cairocs; ,y
)

NB. =========================================================
NB. glarc x y w h xa ya xz yz
NB.! should not be same as pie - should not use brush
glcr_arc=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
t=. cairobrushnull
cairobrushnull=: 1
glcr_arcx cairo_arcisi y
cairobrushnull=: t
0
)

NB. =========================================================
NB. not original gl command
NB. glarcx sx sy x y r a b
NB. draw arc on the ellipse defined by rectangle.
NB. sx sy scale
NB. a is start angle, where 0=3 oclock
NB. b is end angle
NB. both in radian
glcr_arcx=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
cairo_new_sub_path cairocr
if. -.cairobrushnull do.
  cairo_move_to cairocr ; <"0] 0 1{2}.y
  cairo_cairocolor cairobrushrgb
  cairo_save cairocr
  cairo_scale cairocr ; 1 ; ra=. %~/ 2{.y
  cairo_arc cairocr ; <"0] (1,ra,1 1 1)%~ 2}.y
  cairo_close_path cairocr
  cairo_restore cairocr
  cairo_fill cairocr
end.
cairo_cairocolor cairopenrgb
cairo_save cairocr
cairo_scale cairocr ; 1 ; ra=. %~/ 2{.y
cairo_arc cairocr ; <"0] (1,ra,1 1 1)%~ 2}.y
cairo_restore cairocr
cairo_stroke cairocr
0
)

NB. =========================================================
glcr_brush=: chkgl2 @: (3 : 0) "1
cairobrushrgb=: cairorgb
cairobrushnull=: 0
0
)

NB. =========================================================
glcr_brushnull=: chkgl2 @: (3 : 0) "1
cairobrushnull=: 1
0
)

NB. =========================================================
glcr_clear=: chkgl2 @: (3 : 0) "1
glcr_clipreset''
glcr_windoworg - cairoorgx, cairoorgy
cairoorgx=: cairoorgy=: 0
glcr_rgb 255 255 255
glcr_pen 1 1
glcr_brush''
glcr_rect 0 0,cairowh
glcr_brushnull''
glcr_rgb 0 0 0
glcr_pen 1 1
glcr_textcolor''
glcr_font 'profont'
glcr_fontangle 0
glcr_textxy 0 0
0
)

NB. =========================================================
glcr_clip=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
cairoclipped=: 1
cairo_save cairocr
cairo_rectangle cairocr ; <"0 y
cairo_clip cairocr
0
)

NB. =========================================================
glcr_clipreset=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
if. cairoclipped do.
  cairo_restore cairocr
  cairoclipped=: 0
end.
0
)

NB. =========================================================
NB. cmds for non-query only
glcr_cmds=: chkgl2 @: (3 : 0) "1
if. 0=#y do. 0 return. end.
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
p=. 0
rc=. 0
while. p<#y do.
  cnt=. p{y
  cmd=. (1+p){y
  dat=. (2+p+i.cnt-2){y
  select. cmd
  case. rc=. glarc_n do. glcr_arc dat
  case. rc=. glbrush_n do. glcr_brush dat
  case. rc=. glbrushnull_n do. glcr_brushnull dat
  case. rc=. glclear_n do. glcr_clear dat
  case. rc=. glclip_n do. glcr_clip dat
  case. rc=. glclipreset_n do. glcr_clipreset dat
  case. rc=. glcmds_n do. ''                 NB. glcmds dat
  case. rc=. glellipse_n do. glcr_ellipse dat
  case. rc=. glfont_n do. glcr_font dat{a.
  case. rc=. glfontextent_n do. glcr_fontextent dat{a.
  case. rc=. glfont2_n do. glcr_font2 dat
  case. rc=. glfontangle_n do. glcr_fontangle dat
  case. rc=. gllines_n do. glcr_lines dat
  case. rc=. glpen_n do. glcr_pen dat
  case. rc=. glpie_n do. glcr_pie dat
  case. rc=. glpixel_n do. glcr_pixel dat
  case. rc=. glpixels_n do. glcr_pixels dat
  case. rc=. glpixelsx_n do. glcr_pixelsx dat
  case. rc=. glpolygon_n do. glcr_polygon dat
  case. glqextent_n do. ''              NB. glqextent dat
  case. glqextentw_n do. ''             NB. glqextentw dat
  case. glqpixels_n do. ''              NB. glqpixels dat
  case. glqwh_n do. ''                  NB. glqwh dat
  case. rc=. glrect_n do. glcr_rect dat
  case. rc=. glrgb_n do. glcr_rgb dat
  case. rc=. gltext_n do. glcr_text dat{a.
  case. rc=. gltextcolor_n do. glcr_textcolor dat
  case. rc=. gltextxy_n do. glcr_textxy dat
  case. rc=. glwindoworg_n do. glcr_windoworg dat
  case. do.
    ('un-implemented glcmds ', ":cmd) 13!:8[3
  end.
  if. rc do. rc return. end.
  p=. p+cnt
end.
0
)

NB. =========================================================
glcr_ellipse=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
t=. cairobrushnull
cairobrushnull=: 0
glcr_arcx (0, 2p1),~ _2}.cairo_arcisi y,4#0
cairobrushnull=: t
0
)

NB. =========================================================
glcr_fill=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
if. 4~:#y do. 1 return. end.
cairo_cairocolor ({:y) setalpha 256 256 256#.}:y
cairo_rectangle cairocr ; <"0 [ 0 0,cairowh
cairo_fill_preserve cairocr
cairo_stroke cairocr
0
)

NB. =========================================================
glcr_font=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
if. 0=#y=. ,y do. 1 return. end.
'face size style degree'=. parseFontSpec y
'Bold Italic Underline Strikeout'=. 4{. |. #: style
cairofontangle=: <.degree*10
cairounderline=: Underline
cairo_select_font_face cairocr ; face ; (Italic{CAIRO_FONT_SLANT_NORMAL,CAIRO_FONT_SLANT_ITALIC); (Bold{CAIRO_FONT_WEIGHT_NORMAL,CAIRO_FONT_WEIGHT_BOLD)
cairo_set_font_size cairocr; size
0
)

glcr_fontextent=: glcr_font

NB. =========================================================
glcr_font2=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
'size10 style degree10'=. 3{.y
face=. a.{~3}.y
'Bold Italic Underline Strikeout'=. 4{. |. #: style
cairofontangle=: <.degree10
cairounderline=: Underline
cairofontangle=: <.degree*10
cairounderline=: Underline
cairo_select_font_face cairocr ; face ; (Italic{CAIRO_FONT_SLANT_NORMAL,CAIRO_FONT_SLANT_ITALIC); (Bold{CAIRO_FONT_WEIGHT_NORMAL,CAIRO_FONT_WEIGHT_BOLD)
cairo_set_font_size cairocr; size
0
)

NB. =========================================================
glcr_fontangle=: chkgl2 @: (3 : 0) "1
cairofontangle=: <.y
0
)

NB. =========================================================
glcr_rgb=: chkgl2 @: (3 : 0) "1
if. 3~:#y do. 1 return. end.
cairorgb=: setalpha 256 256 256#.y
0
)

NB. =========================================================
glcr_rgba=: chkgl2 @: (3 : 0) "1
if. 4~:#y do. 1 return. end.
cairorgb=: ({:y) setalpha 256 256 256#.}:y
0
)

NB. =========================================================
glcr_lines=: chkgl2 @: (3 : 0) "1
if. *./ 0=y do. 0 return. end.
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
if. 2|#y do. 1 return. end.
cairo_cairocolor cairopenrgb
c=. <.-:#y
if. 0=c do. 0 return. end.
cairo_move_to cairocr ; <"0 (0 1){y
for_i. +:>:i.<:c do.
  cairo_line_to cairocr ; <"0 (0 1+i){y
end.
cairo_stroke cairocr
0
)

NB. =========================================================
glcr_pen=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
cairopenrgb=: cairorgb
penwidth=. 0.5>.{.y   NB. 0 will be invisible in cairo
penstyle=. {:y NB.! use it
cairo_set_line_width cairocr ; (1.1-1.1)+penwidth   NB. TODO in user space
0
)

NB. =========================================================
NB. glpie x y w h xa ya xz yz
NB. draw pie on the ellipse defined by rectangle. Arc starts at
NB. xa,ya and ends at xz,yz. Start and end points need not lie on
NB. the ellipse, they define a line from the center that
NB. intersects the ellipse.
NB. gdk pie has same xywh. Two following numbers are angle to
NB. start drawing (0=3 oclock), angle to move counterclockwise
NB. both in 64th degrees.
glcr_pie=: chkgl2 @: (3 : 0) "1
glcr_arcx cairo_arcisi y
0
)

NB. =========================================================
glcr_pixel=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
if. 2|#y do. 1 return. end.
cairo_cairocolor cairorgb
for_p. <. (_2[\ y),("1) 1 1 do.
  cairo_rectangle cairocr ; <"0 p
end.
cairo_fill cairocr
0
)

NB. =========================================================
glcr_pixels=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
if. 4>#y do. 1 return. end.
if. (|*/2 3{y)~:_4+#y do. 1 return. end.
'a b'=. <. 2{.y
'w h1'=. <. 2{.2}.y
h=. |h1
d=. <. 4}.y
if. (#d)~:w*h do. 1 return. end.
if. h1<0 do. d=. ,|.(h,w)$d end.
d=. fliprgb^:(-.RGBSEQ_j_) d

d=. 2 ic d
surface=. cairo_image_surface_create_for_data d ; CAIRO_FORMAT_ARGB32 ; w ; h ; cairo_format_stride_for_width CAIRO_FORMAT_ARGB32, w
if. surface do.
  cairo_save cairocr
  cairo_set_operator cairocr ; CAIRO_OPERATOR_OVER
  cairo_set_source_surface cairocr ; surface ; a ; b
  cairo_rectangle cairocr ; a ; b ; w ; h
  cairo_clip cairocr
  cairo_paint cairocr
  cairo_restore cairocr
  cairo_surface_destroy surface
end.
0
)

NB. =========================================================
glcr_pixelsx=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
'a b'=. <. 2{.y
'w h1'=. <. 2{.2}.y
da=. <. {:y
h=. |h1
d=. memr da,0,(w*h),JINT
if. h1<0 do. d=. ,|.(h,w)$ d end.
d=. fliprgb^:(-.RGBSEQ_j_) d

d=. 2 ic d
surface=. cairo_image_surface_create_for_data d ; CAIRO_FORMAT_ARGB32 ; w ; h ; cairo_format_stride_for_width CAIRO_FORMAT_ARGB32, w
if. surface do.
  cairo_save cairocr
  cairo_set_operator cairocr ; CAIRO_OPERATOR_OVER
  cairo_set_source_surface cairocr ; surface ; a ; b
  cairo_rectangle cairocr ; a ; b ; w ; h
  cairo_clip cairocr
  cairo_paint cairocr
  cairo_restore cairocr
  cairo_surface_destroy surface
end.
0
)

NB. =========================================================
glcr_polygon=: chkgl2 @: (3 : 0) "1
if. *./ 0=y do. 0 return. end.
c=. <.-:#y
if. 0=c do. 0 return. end.
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
if. 2|#y do. 1 return. end.
if. -.cairobrushnull do.
  cairo_cairocolor cairobrushrgb
  cairo_move_to cairocr ; <"0 (0 1){y
  for_i. +:>:i.<:c do.
    cairo_line_to cairocr ; <"0 (0 1+i){y
  end.
  cairo_line_to cairocr ; <"0 (0 1){y
  cairo_fill_preserve cairocr
  cairo_cairocolor cairopenrgb
  cairo_stroke cairocr
else.
  cairo_cairocolor cairopenrgb
  cairo_move_to cairocr ; <"0 (0 1){y
  for_i. +:>:i.<:c do.
    cairo_line_to cairocr ; <"0 (0 1+i){y
  end.
  cairo_line_to cairocr ; <"0 (0 1){y
  cairo_stroke cairocr
end.
0
)

NB. =========================================================
NB. result is in opengl form
NB. pixels top to bottom, ARGB32
glcr_qpixels=: 3 : 0
if. 0 e. 0~:cairocs,cairocr do. chkgl2 1 return. end.
'a b'=. <. 2{.y
'w h'=. <. 2{.2}.y

NB.! can be simplified for double bufferring, source already an image surface

surface=. cairo_image_surface_create CAIRO_FORMAT_ARGB32 ; w ; h
cr=. cairo_create surface

cairo_set_operator cr ; CAIRO_OPERATOR_SOURCE
cairo_set_source_surface cr ; (cairo_get_target cairocr) ; (-a) ; -b
cairo_rectangle cr ; 0 ; 0 ; w ; h
cairo_clip cr
cairo_paint cr

ad=. cairo_image_surface_get_data surface
if. 0=ad do. chkgl2 1 [ cairo_surface_destroy surface [ cairo_destroy cr return. end.
if. (4*w)~: cairo_image_surface_get_stride surface do. chkgl2 1 [ cairo_surface_destroy surface [ cairo_destroy cr return. end.

if. IF64 do.
  r=. _2 ic memr ad,0,(w*h*4),JCHAR
else.
  r=. memr ad,0,(w*h),JINT
end.

NB. cleanup
cairo_destroy cr
cairo_surface_destroy surface

r=. fliprgb^:(-.RGBSEQ_j_) r
)

NB. =========================================================
glcr_qwh=: 3 : 0
cairowh
)

NB. =========================================================
glcr_rect=: chkgl2 @: (3 : 0) "1
NB. if. 0 e. _2{.y do. 0 return. end. NB. avoid 0 wh problem
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
if. 4|#y do. 1 return. end.
if. -.cairobrushnull do.
  for_p. <. _4[\ y do.
    cairo_cairocolor cairobrushrgb
    cairo_rectangle cairocr ; <"0 p
    cairo_fill_preserve cairocr
    cairo_cairocolor cairopenrgb
    cairo_stroke cairocr
  end.
else.
  for_p. <. _4[\ y do.
    cairo_cairocolor cairopenrgb
    cairo_rectangle cairocr ; <"0 p
    cairo_stroke cairocr
  end.
end.
0
)

NB. =========================================================
glcr_setbrush=: glcr_brush @ glcr_rgb
glcr_setpen=: glcr_pen @ ((1 1 [ glcr_rgb) :((2 {. [) glcr_rgb))

NB. =========================================================
glcr_text=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
cairo_cairocolor cairotextrgb

NB. cairographics text origin at baseline
te=. (5*8)$(2.2-2.2)
cairo_font_extents cairocr; te
of=. - 0 , <. {.te

if. 0=cairofontangle do.
  cairo_move_to cairocr ; <"0 of + cairotextxy
  cairo_show_text cairocr; y
  if. cairounderline do.
    off=. <. -/ 2 0{te
    'w h'=. glcr_qextent y
    cairo_move_to cairocr ; <"0 off + cairotextxy
    cairo_line_to cairocr ; <"0 (w,0) + off + cairotextxy
    cairo_stroke cairocr
  end.
else.
  cairo_save cairocr
  cairo_move_to cairocr ; <"0 of + cairotextxy
  cairo_rotate cairocr ; - rfd cairofontangle%10  NB. counter-clockwise
  cairo_show_text cairocr; y
  if. cairounderline do.
    off=. <. -/ 2 0{te
    'w h'=. glcr_qextent y
    cairo_move_to cairocr ; <"0 off + cairotextxy
    cairo_line_to cairocr ; <"0 (w,0) + off + cairotextxy
    cairo_stroke cairocr
  end.
  cairo_restore cairocr
end.
if. cairounderline do.
NB. TODO underline text
end.
0
)

NB. =========================================================
glcr_textcolor=: chkgl2 @: (3 : 0) "1
cairotextrgb=: cairorgb
0
)

NB. =========================================================
glcr_textxy=: chkgl2 @: (3 : 0) "1
cairotextxy=: <.y
0
)

NB. =========================================================
glcr_qextent=: 3 : 0
te=. (6*8)$(2.2-2.2)
if. 0 e. 0~:cairocs,cairocr do. chkgl2 1 return. end.
cairo_text_extents cairocr; y; te
<. 2 3{te
)

NB. =========================================================
glcr_qextentw=: 3 : 0
if. 0 e. 0~:cairocs,cairocr do. chkgl2 1 return. end.
{."1>glcr_qextent each<;._2 y,LF#~LF~:{:y
NB. kludge to estimate width to make performance acceptable
NB. w=. {. glqextent '8'
NB. w * #@ucp;._2 txt=. y,LF#~LF~:{:y
)

NB. =========================================================
glcr_windoworg=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
cairoorgx=: cairoorgx + <.{.y
cairoorgy=: cairoorgy + <.{:y
cairo_translate cairocr ; <"0 y
0
)

coclass 'jcairo'

3 : 0''
if. UNAME-:'Linux' do.
  libcairo=: 'libcairo.so.2'
elseif. UNAME-:'Android' do.
  libcairo=: 'libcairo.so'
elseif. UNAME-:'Darwin' do.
    libcairo=: 'libcairo.2.dylib'
  if. fexist t=. '/opt/local/lib/libcairo.2.dylib' do.
    libcairo=: t
  end.
elseif. UNAME-:'Win' do.
  libcairo=: 'libcairo-2.dll'
end.
''
)
cddef=: 4 : 0
y=. dtb (y i. ':'){.y
if. 0=#y do. '' return. end.
n=. y i. ' '
f=. n {. y
d=. (_2 * (<_2{.f) e. '_1';'_2';'_3') }. f
if. IFUNIX do.
  p=. n }. y
else.
  p=. (n+1) }. y
  if. '>' = {.p do.
    p=. ' >+', }.p
  else.
    p=. ' +', p
  end.
end.
(f)=: (x,' ',d,p)&(15!:0)
''
)
(<libcairo) cddef each <;._2 [ 0 : 0
cairo_version > i
cairo_version_string > x
cairo_create > x x
cairo_reference > x x
cairo_destroy > n x
cairo_get_reference_count > i x
cairo_get_user_data > x x x
cairo_set_user_data > i x x * x
cairo_save > n x
cairo_restore > n x
cairo_push_group > n x
cairo_push_group_with_content > n x i
cairo_pop_group > x x
cairo_pop_group_to_source > n x
cairo_set_operator > n x i
cairo_set_source > n x x
cairo_set_source_rgb > n x d d d
cairo_set_source_rgba > n x d d d d
cairo_set_source_surface > n x x d d
cairo_set_tolerance > n x d
cairo_set_antialias > n x i
cairo_set_fill_rule > n x i
cairo_set_line_width > n x d
cairo_set_line_cap > n x i
cairo_set_line_join > n x i
cairo_set_dash > n x *d i d
cairo_set_miter_limit > n x d
cairo_translate > n x d d
cairo_scale > n x d d
cairo_rotate > n x d
cairo_transform > n x x
cairo_set_matrix > n x x
cairo_identity_matrix > n x
cairo_user_to_device   n x *d *d
cairo_user_to_device_distance   n x *d *d
cairo_device_to_user   n x *d *d
cairo_device_to_user_distance   n x *d *d
cairo_new_path > n x
cairo_move_to > n x d d
cairo_new_sub_path > n x
cairo_line_to > n x d d
cairo_curve_to > n x d d d d d d
cairo_arc > n x d d d d d
cairo_arc_negative > n x d d d d d
cairo_rel_move_to > n x d d
cairo_rel_line_to > n x d d
cairo_rel_curve_to > n x d d d d d d
cairo_rectangle > n x d d d d
cairo_close_path > n x
cairo_path_extents   n x *d *d *d *d
cairo_paint > n x
cairo_paint_with_alpha > n x d
cairo_mask > n x x
cairo_mask_surface > n x x d d
cairo_stroke > n x
cairo_stroke_preserve > n x
cairo_fill > n x
cairo_fill_preserve > n x
cairo_copy_page > n x
cairo_show_page > n x
cairo_in_stroke > i x d d
cairo_in_fill > i x d d
cairo_stroke_extents   n x *d *d *d *d
cairo_fill_extents   n x *d *d *d *d
cairo_reset_clip > n x
cairo_clip > n x
cairo_clip_preserve > n x
cairo_clip_extents   n x *d *d *d *d
cairo_copy_clip_rectangle_list > x x
cairo_rectangle_list_destroy > n x
cairo_glyph_allocate > x i
cairo_glyph_free > n x
cairo_text_cluster_allocate > x i
cairo_text_cluster_free > n x
cairo_font_options_create > x
cairo_font_options_copy > x x
cairo_font_options_destroy > n x
cairo_font_options_status > i x
cairo_font_options_merge > n x x
cairo_font_options_equal > i x x
cairo_font_options_hash > x x
cairo_font_options_set_antialias > n x i
cairo_font_options_get_antialias > i x
cairo_font_options_set_subpixel_order > n x i
cairo_font_options_get_subpixel_order > i x
cairo_font_options_set_hint_style > n x i
cairo_font_options_get_hint_style > i x
cairo_font_options_set_hint_metrics > n x i
cairo_font_options_get_hint_metrics > i x
cairo_select_font_face > n x *c i i
cairo_set_font_size > n x d
cairo_set_font_matrix > n x x
cairo_get_font_matrix > n x x
cairo_set_font_options > n x x
cairo_get_font_options > n x x
cairo_set_font_face > n x x
cairo_get_font_face > x x
cairo_set_scaled_font > n x x
cairo_get_scaled_font > x x
cairo_show_text > n x *c
cairo_show_glyphs > n x x i
cairo_show_text_glyphs > n x *c i x i x i i
cairo_text_path > n x *c
cairo_glyph_path > n x x i
cairo_text_extents   n x *c *d
cairo_glyph_extents   n x x i *d
cairo_font_extents   n x *d
cairo_font_face_reference > x x
cairo_font_face_destroy > n x
cairo_font_face_get_reference_count > i x
cairo_font_face_status > i x
cairo_font_face_get_type > i x
cairo_font_face_get_user_data > x x x
cairo_font_face_set_user_data > i x x * x
cairo_scaled_font_create > x x x x x
cairo_scaled_font_reference > x x
cairo_scaled_font_destroy > n x
cairo_scaled_font_get_reference_count > i x
cairo_scaled_font_status > i x
cairo_scaled_font_get_type > i x
cairo_scaled_font_get_user_data > x x x
cairo_scaled_font_set_user_data > i x x * x
cairo_scaled_font_extents   n x *d
cairo_scaled_font_text_extents   n x *c *d
cairo_scaled_font_glyph_extents   n x x i *d
cairo_scaled_font_text_to_glyphs   i x d d *c i *x i * *x i * x
cairo_scaled_font_get_font_face > x x
cairo_scaled_font_get_font_matrix > n x x
cairo_scaled_font_get_ctm > n x x
cairo_scaled_font_get_scale_matrix > n x x
cairo_scaled_font_get_font_options > n x x
cairo_toy_font_face_create > x *c i i
cairo_toy_font_face_get_family > x x
cairo_toy_font_face_get_slant > i x
cairo_toy_font_face_get_weight > i x
cairo_user_font_face_create > x
cairo_user_font_face_set_init_func > n x x
cairo_user_font_face_set_render_glyph_func > n x x
cairo_user_font_face_set_text_to_glyphs_func > n x x
cairo_user_font_face_set_unicode_to_glyph_func > n x x
cairo_user_font_face_get_init_func > x x
cairo_user_font_face_get_render_glyph_func > x x
cairo_user_font_face_get_text_to_glyphs_func > x x
cairo_user_font_face_get_unicode_to_glyph_func > x x
cairo_get_operator > i x
cairo_get_source > x x
cairo_get_tolerance > d x
cairo_get_antialias > i x
cairo_has_current_point > i x
cairo_get_current_point   n x *d *d
cairo_get_fill_rule > i x
cairo_get_line_width > d x
cairo_get_line_cap > i x
cairo_get_line_join > i x
cairo_get_miter_limit > d x
cairo_get_dash_count > i x
cairo_get_dash   n x *d *d
cairo_get_matrix > n x x
cairo_get_target > x x
cairo_get_group_target > x x
cairo_copy_path > x x
cairo_copy_path_flat > x x
cairo_append_path > n x x
cairo_path_destroy > n x
cairo_status > i x
cairo_status_to_string > x i
cairo_surface_create_similar > x x i i i
cairo_surface_reference > x x
cairo_surface_finish > n x
cairo_surface_destroy > n x
cairo_surface_get_reference_count > i x
cairo_surface_status > i x
cairo_surface_get_type > i x
cairo_surface_get_content > i x
cairo_surface_write_to_png > i x *c
cairo_surface_write_to_png_stream > i x x *
cairo_surface_get_user_data > x x x
cairo_surface_set_user_data > i x x * x
cairo_surface_get_font_options > n x x
cairo_surface_flush > n x
cairo_surface_mark_dirty > n x
cairo_surface_mark_dirty_rectangle > n x i i i i
cairo_surface_set_device_offset > n x d d
cairo_surface_get_device_offset   n x *d *d
cairo_surface_set_fallback_resolution > n x d d
cairo_surface_get_fallback_resolution   n x *d *d
cairo_surface_set_device_scale > n x d d
cairo_surface_copy_page > n x
cairo_surface_show_page > n x
cairo_surface_has_show_text_glyphs > i x
cairo_image_surface_create > x i i i
cairo_format_stride_for_width > i i i
cairo_image_surface_create_for_data > x *c i i i i
cairo_image_surface_get_data > x x
cairo_image_surface_get_format > i x
cairo_image_surface_get_width > i x
cairo_image_surface_get_height > i x
cairo_image_surface_get_stride > i x
cairo_image_surface_create_from_png > x *c
cairo_image_surface_create_from_png_stream > x x *
cairo_pattern_create_rgb > x d d d
cairo_pattern_create_rgba > x d d d d
cairo_pattern_create_for_surface > x x
cairo_pattern_create_linear > x d d d d
cairo_pattern_create_radial > x d d d d d d
cairo_pattern_reference > x x
cairo_pattern_destroy > n x
cairo_pattern_get_reference_count > i x
cairo_pattern_status > i x
cairo_pattern_get_user_data > x x x
cairo_pattern_set_user_data > i x x * x
cairo_pattern_get_type > i x
cairo_pattern_add_color_stop_rgb > n x d d d d
cairo_pattern_add_color_stop_rgba > n x d d d d d
cairo_pattern_set_matrix > n x x
cairo_pattern_get_matrix > n x x
cairo_pattern_set_extend > n x i
cairo_pattern_get_extend > i x
cairo_pattern_set_filter > n x i
cairo_pattern_get_filter > i x
cairo_pattern_get_rgba   i x *d *d *d *d
cairo_pattern_get_surface   i x *x
cairo_pattern_get_color_stop_rgba   i x i *d *d *d *d *d
cairo_pattern_get_color_stop_count   i x i *
cairo_pattern_get_linear_points   i x *d *d *d *d
cairo_pattern_get_radial_circles   i x *d *d *d *d *d *d
cairo_matrix_init > n x d d d d d d
cairo_matrix_init_identity > n x
cairo_matrix_init_translate > n x d d
cairo_matrix_init_scale > n x d d
cairo_matrix_init_rotate > n x d
cairo_matrix_translate > n x d d
cairo_matrix_scale > n x d d
cairo_matrix_rotate > n x d
cairo_matrix_invert > i x
cairo_matrix_multiply > n x x x
cairo_matrix_transform_distance   n x *d *d
cairo_matrix_transform_point   n x *d *d
cairo_debug_reset_static_data > n
)
enumdef=: 4 : 0
if. 0=#y do. '' return. end.
if. 1=#x do.
  for_i. i.#y do.
    (dltb i{::y)=: {.i+x
  end.
else.
  assert. (#x)=#y
  for_i. i.#y do.
    (dltb i{::y)=: i{x
  end.
end.
''
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_STATUS_SUCCESS
    CAIRO_STATUS_NO_MEMORY
    CAIRO_STATUS_INVALID_RESTORE
    CAIRO_STATUS_INVALID_POP_GROUP
    CAIRO_STATUS_NO_CURRENT_POINT
    CAIRO_STATUS_INVALID_MATRIX
    CAIRO_STATUS_INVALID_STATUS
    CAIRO_STATUS_NULL_POINTER
    CAIRO_STATUS_INVALID_STRING
    CAIRO_STATUS_INVALID_PATH_DATA
    CAIRO_STATUS_READ_ERROR
    CAIRO_STATUS_WRITE_ERROR
    CAIRO_STATUS_SURFACE_FINISHED
    CAIRO_STATUS_SURFACE_TYPE_MISMATCH
    CAIRO_STATUS_PATTERN_TYPE_MISMATCH
    CAIRO_STATUS_INVALID_CONTENT
    CAIRO_STATUS_INVALID_FORMAT
    CAIRO_STATUS_INVALID_VISUAL
    CAIRO_STATUS_FILE_NOT_FOUND
    CAIRO_STATUS_INVALID_DASH
    CAIRO_STATUS_INVALID_DSC_COMMENT
    CAIRO_STATUS_INVALID_INDEX
    CAIRO_STATUS_CLIP_NOT_REPRESENTABLE
    CAIRO_STATUS_TEMP_FILE_ERROR
    CAIRO_STATUS_INVALID_STRIDE
    CAIRO_STATUS_FONT_TYPE_MISMATCH
    CAIRO_STATUS_USER_FONT_IMMUTABLE
    CAIRO_STATUS_USER_FONT_ERROR
    CAIRO_STATUS_NEGATIVE_COUNT
    CAIRO_STATUS_INVALID_CLUSTERS
    CAIRO_STATUS_INVALID_SLANT
    CAIRO_STATUS_INVALID_WEIGHT
    CAIRO_STATUS_INVALID_SIZE
    CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED
    CAIRO_STATUS_DEVICE_TYPE_MISMATCH
    CAIRO_STATUS_DEVICE_ERROR
    CAIRO_STATUS_INVALID_MESH_CONSTRUCTION
    CAIRO_STATUS_DEVICE_FINISHED
    CAIRO_STATUS_LAST_STATUS
)
16b1000 16b2000 16b3000 enumdef <;._2 [ 0 : 0
    CAIRO_CONTENT_COLOR
    CAIRO_CONTENT_ALPHA
    CAIRO_CONTENT_COLOR_ALPHA
)
_1 enumdef <;._2 [ 0 : 0
    CAIRO_FORMAT_INVALID
    CAIRO_FORMAT_ARGB32
    CAIRO_FORMAT_RGB24
    CAIRO_FORMAT_A8
    CAIRO_FORMAT_A1
    CAIRO_FORMAT_RGB16_565
    CAIRO_FORMAT_RGB30
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_OPERATOR_CLEAR
    CAIRO_OPERATOR_SOURCE
    CAIRO_OPERATOR_OVER
    CAIRO_OPERATOR_IN
    CAIRO_OPERATOR_OUT
    CAIRO_OPERATOR_ATOP
    CAIRO_OPERATOR_DEST
    CAIRO_OPERATOR_DEST_OVER
    CAIRO_OPERATOR_DEST_IN
    CAIRO_OPERATOR_DEST_OUT
    CAIRO_OPERATOR_DEST_ATOP
    CAIRO_OPERATOR_XOR
    CAIRO_OPERATOR_ADD
    CAIRO_OPERATOR_SATURATE
    CAIRO_OPERATOR_MULTIPLY
    CAIRO_OPERATOR_SCREEN
    CAIRO_OPERATOR_OVERLAY
    CAIRO_OPERATOR_DARKEN
    CAIRO_OPERATOR_LIGHTEN
    CAIRO_OPERATOR_COLOR_DODGE
    CAIRO_OPERATOR_COLOR_BURN
    CAIRO_OPERATOR_HARD_LIGHT
    CAIRO_OPERATOR_SOFT_LIGHT
    CAIRO_OPERATOR_DIFFERENCE
    CAIRO_OPERATOR_EXCLUSION
    CAIRO_OPERATOR_HSL_HUE
    CAIRO_OPERATOR_HSL_SATURATION
    CAIRO_OPERATOR_HSL_COLOR
    CAIRO_OPERATOR_HSL_LUMINOSITY
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_ANTIALIAS_DEFAULT
    CAIRO_ANTIALIAS_NONE
    CAIRO_ANTIALIAS_GRAY
    CAIRO_ANTIALIAS_SUBPIXEL
    CAIRO_ANTIALIAS_FAST
    CAIRO_ANTIALIAS_GOOD
    CAIRO_ANTIALIAS_BEST
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_FILL_RULE_WINDING
    CAIRO_FILL_RULE_EVEN_ODD
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_LINE_CAP_BUTT
    CAIRO_LINE_CAP_ROUND
    CAIRO_LINE_CAP_SQUARE
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_LINE_JOIN_MITER
    CAIRO_LINE_JOIN_ROUND
    CAIRO_LINE_JOIN_BEVEL
)
1 enumdef <;._2 [ 0 : 0
    CAIRO_TEXT_CLUSTER_FLAG_BACKWARD
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_FONT_SLANT_NORMAL
    CAIRO_FONT_SLANT_ITALIC
    CAIRO_FONT_SLANT_OBLIQUE
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_FONT_WEIGHT_NORMAL
    CAIRO_FONT_WEIGHT_BOLD
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_SUBPIXEL_ORDER_DEFAULT
    CAIRO_SUBPIXEL_ORDER_RGB
    CAIRO_SUBPIXEL_ORDER_BGR
    CAIRO_SUBPIXEL_ORDER_VRGB
    CAIRO_SUBPIXEL_ORDER_VBGR
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_HINT_STYLE_DEFAULT
    CAIRO_HINT_STYLE_NONE
    CAIRO_HINT_STYLE_SLIGHT
    CAIRO_HINT_STYLE_MEDIUM
    CAIRO_HINT_STYLE_FULL
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_HINT_METRICS_DEFAULT
    CAIRO_HINT_METRICS_OFF
    CAIRO_HINT_METRICS_ON
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_FONT_TYPE_TOY
    CAIRO_FONT_TYPE_FT
    CAIRO_FONT_TYPE_WIN32
    CAIRO_FONT_TYPE_QUARTZ
    CAIRO_FONT_TYPE_USER
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_PATH_MOVE_TO
    CAIRO_PATH_LINE_TO
    CAIRO_PATH_CURVE_TO
    CAIRO_PATH_CLOSE_PATH
)
_1 enumdef <;._2 [ 0 : 0
    CAIRO_DEVICE_TYPE_INVALID
    CAIRO_DEVICE_TYPE_DRM
    CAIRO_DEVICE_TYPE_GL
    CAIRO_DEVICE_TYPE_SCRIPT
    CAIRO_DEVICE_TYPE_XCB
    CAIRO_DEVICE_TYPE_XLIB
    CAIRO_DEVICE_TYPE_XML
    CAIRO_DEVICE_TYPE_COGL
    CAIRO_DEVICE_TYPE_WIN32
)
0 enumdef <;._2 [ 0 : 0
	CAIRO_SURFACE_OBSERVER_NORMAL
	CAIRO_SURFACE_OBSERVER_RECORD_OPERATIONS
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_SURFACE_TYPE_IMAGE
    CAIRO_SURFACE_TYPE_PDF
    CAIRO_SURFACE_TYPE_PS
    CAIRO_SURFACE_TYPE_XLIB
    CAIRO_SURFACE_TYPE_XCB
    CAIRO_SURFACE_TYPE_GLITZ
    CAIRO_SURFACE_TYPE_QUARTZ
    CAIRO_SURFACE_TYPE_WIN32
    CAIRO_SURFACE_TYPE_BEOS
    CAIRO_SURFACE_TYPE_DIRECTFB
    CAIRO_SURFACE_TYPE_SVG
    CAIRO_SURFACE_TYPE_OS2
    CAIRO_SURFACE_TYPE_WIN32_PRINTING
    CAIRO_SURFACE_TYPE_QUARTZ_IMAGE
    CAIRO_SURFACE_TYPE_SCRIPT
    CAIRO_SURFACE_TYPE_QT
    CAIRO_SURFACE_TYPE_RECORDING
    CAIRO_SURFACE_TYPE_VG
    CAIRO_SURFACE_TYPE_GL
    CAIRO_SURFACE_TYPE_DRM
    CAIRO_SURFACE_TYPE_TEE
    CAIRO_SURFACE_TYPE_XML
    CAIRO_SURFACE_TYPE_SKIA
    CAIRO_SURFACE_TYPE_SUBSURFACE
    CAIRO_SURFACE_TYPE_COGL
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_PATTERN_TYPE_SOLID
    CAIRO_PATTERN_TYPE_SURFACE
    CAIRO_PATTERN_TYPE_LINEAR
    CAIRO_PATTERN_TYPE_RADIAL
    CAIRO_PATTERN_TYPE_MESH
    CAIRO_PATTERN_TYPE_RASTER_SOURCE
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_EXTEND_NONE
    CAIRO_EXTEND_REPEAT
    CAIRO_EXTEND_REFLECT
    CAIRO_EXTEND_PAD
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_FILTER_FAST
    CAIRO_FILTER_GOOD
    CAIRO_FILTER_BEST
    CAIRO_FILTER_NEAREST
    CAIRO_FILTER_BILINEAR
    CAIRO_FILTER_GAUSSIAN
)
0 enumdef <;._2 [ 0 : 0
    CAIRO_REGION_OVERLAP_IN
    CAIRO_REGION_OVERLAP_OUT
    CAIRO_REGION_OVERLAP_PART
)

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
testcairo=: _1 ~: (cairo_version :: _1:)

coclass'jglcr'
coinsert 'jcairo'

cairocs=: cairocr=: 0
cairoclipped=: cairofontangle=: cairounderline=: cairoorgx=: cairoorgy=: 0
cairotextxy=: 0 0
cairorgb=: cairopenrgb=: cairobrushrgb=: cairotextrgb=: cairobrushnull=: setalpha 0
PS_NULL=: 0
PS_SOLID=: 1
PS_DASH=: 2
PS_DOT=: 3
PS_DASHDOT=: 4
PS_DASHDOTDOT=: 5

IDC_ARROW=: 0
IDC_UPARROW=: 1
IDC_CROSS=: 2
IDC_WAIT=: 3
IDC_IBEAM=: 4
IDC_SIZEVER=: 5
IDC_SIZEHOR=: 6
IDC_SIZEBDIAG=: 7
IDC_SIZEFDIAG=: 8
IDC_SIZEALL=: 9
IDC_BLANK=: 10
IDC_SPLITV=: 11
IDC_SPLITH=: 12
IDC_POINTINGHAND=: 13
IDC_FORBIDDEN=: 14
IDC_OPENHAND=: 17
IDC_CLOSEDHAND=: 18
IDC_WHATSTHIS=: 15
IDC_BUSY=: 16
IDC_DRAGMOVE=: 20
IDC_DRAGCOPY=: 19
IDC_DRAGLINK=: 21
IDC_UNSET=: _1
glarc_n=: 2001
glbrush_n=: 2004
glbrushnull_n=: 2005
glcapture_n=: 2062
glcaret_n=: 2065
glclear_n=: 2007
glclip_n=: 2078
glclipreset_n=: 2079
glcmds_n=: 2999
glcursor_n=: 2069
glellipse_n=: 2008
glemfopen_n=: 2084
glemfclose_n=: 2085
glemfplay_n=: 2086
glfile_n=: 2066
glfill_n=: 2093
glfont_n=: 2012
glfontextent_n=: 2094
gllines_n=: 2015
glnodblbuf_n=: 2070
glpaint_n=: 2020
glpaintx_n=: 2021
glpen_n=: 2022
glpie_n=: 2023
glpixel_n=: 2024
glpixelsx_n=: 2075
glpixels_n=: 2076
glprint_n=: 2089
glprintmore_n=: 2091
glpolygon_n=: 2029
glqextent_n=: 2057
glqextentw_n=: 2083
glqpixels_n=: 2077
glqpixelm_n=: 2080
glqprintpaper_n=: 2092
glqprintwh_n=: 2088
glqtextmetrics_n=: 2058
glqwh_n=: 2059
glqhandles_n=: 2060
glrect_n=: 2031
glrgb_n=: 2032
glroundr_n=: 2033
glsel_n=: 2035
gltext_n=: 2038
gltextcolor_n=: 2040
gltextxy_n=: 2056
glwindoworg_n=: 2045

glbkmode_n=: 2003
glnoerasebkgnd_n=: 2071

glfont2_n=: 2312
glfontangle_n=: 2342
glrgba_n=: 2343
3 : 0''
if. IFQT do.
  kbBS=: Qt_Key_Backspace_jqtide_
  kbTAB=: Qt_Key_Tab_jqtide_
  kbLF=: Qt_Key_Enter_jqtide_
  kbENTER=: Qt_Key_Enter_jqtide_
  kbRETURN=: Qt_Key_Return_jqtide_
  kbPUP=: Qt_Key_PageUp_jqtide_
  kbPDOWN=: Qt_Key_PageDown_jqtide_
  kbEND=: Qt_Key_End_jqtide_
  kbHOME=: Qt_Key_Home_jqtide_
  kbLEFT=: Qt_Key_Left_jqtide_
  kbUP=: Qt_Key_Up_jqtide_
  kbRIGHT=: Qt_Key_Right_jqtide_
  kbDOWN=: Qt_Key_Down_jqtide_
  kbESC=: Qt_Key_Escape_jqtide_
  kbINS=: Qt_Key_Insert_jqtide_
  kbDEL=: Qt_Key_Delete_jqtide_
  kbMETA=: Qt_Key_Meta_jqtide_
  kbALT=: Qt_Key_Alt_jqtide_
  kbSHIFT=: Qt_Key_Shift_jqtide_
  kbCTRL=: Qt_Key_Control_jqtide_
elseif. 'Android'-:UNAME do.
  kbBS=: 0
  kbTAB=: 0
  kbLF=: 0
  kbENTER=: 0
  kbRETURN=: 0
  kbPUP=: 0
  kbPDOWN=: 0
  kbEND=: 0
  kbHOME=: 0
  kbLEFT=: 0
  kbUP=: 0
  kbRIGHT=: 0
  kbDOWN=: 0
  kbESC=: 0
  kbINS=: 0
  kbDEL=: 0
  kbMETA=: 0
  kbALT=: 0
  kbSHIFT=: 0
  kbCTRL=: 0
end.
EMPTY
)
chkgl2=: 13!:8@3:^:(0&<)

glcr_sel=: 0:
glcr_sel2=: 0:
glcr_setlocale=: 0:
glcr_init=: chkgl2 @: (3 : 0)
if. 0 e. 0=cairocs,cairocr do. 1 return. end.
cs=. cairo_image_surface_create <"0 CAIRO_FORMAT_ARGB32, y
if. 0=cs do. 1 return. end.
cr=. cairo_create cs
if. 0=cr do. 1 [ cairo_surface_destroy cs return. end.
cairocs=: cs [ cairocr=: cr [ cairowh=: y
0
)
glcr_free=: chkgl2 @: (3 : 0)
if. 0=cairocs do. 0 return. end.
if. cairocr do. cairo_destroy cairocr end.
cairo_surface_destroy cairocs
cairocs=: cairocr=: 0
0
)
glcr_savefile=: chkgl2 @: (3 : 0)
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
cairo_surface_write_to_png cairocs; ,y
)
NB.! should not be same as pie - should not use brush
glcr_arc=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
t=. cairobrushnull
cairobrushnull=: 1
glcr_arcx cairo_arcisi y
cairobrushnull=: t
0
)
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
glcr_brush=: chkgl2 @: (3 : 0) "1
cairobrushrgb=: cairorgb
cairobrushnull=: 0
0
)
glcr_brushnull=: chkgl2 @: (3 : 0) "1
cairobrushnull=: 1
0
)
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
glcr_clip=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
cairoclipped=: 1
cairo_save cairocr
cairo_rectangle cairocr ; <"0 y
cairo_clip cairocr
0
)
glcr_clipreset=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
if. cairoclipped do.
  cairo_restore cairocr
  cairoclipped=: 0
end.
0
)
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
  case. rc=. glcmds_n do. ''
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
  case. glqextent_n do. ''
  case. glqextentw_n do. ''
  case. glqpixels_n do. ''
  case. glqwh_n do. ''
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
glcr_ellipse=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
t=. cairobrushnull
cairobrushnull=: 0
glcr_arcx (0, 2p1),~ _2}.cairo_arcisi y,4#0
cairobrushnull=: t
0
)
glcr_fill=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
if. 4~:#y do. 1 return. end.
cairo_cairocolor ({:y) setalpha 256 256 256#.}:y
cairo_rectangle cairocr ; <"0 [ 0 0,cairowh
cairo_fill_preserve cairocr
cairo_stroke cairocr
0
)
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
glcr_fontangle=: chkgl2 @: (3 : 0) "1
cairofontangle=: <.y
0
)
glcr_rgb=: chkgl2 @: (3 : 0) "1
if. 3~:#y do. 1 return. end.
cairorgb=: setalpha 256 256 256#.y
0
)
glcr_rgba=: chkgl2 @: (3 : 0) "1
if. 4~:#y do. 1 return. end.
cairorgb=: ({:y) setalpha 256 256 256#.}:y
0
)
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
glcr_pen=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
cairopenrgb=: cairorgb
penwidth=. 0.5>.{.y
penstyle=. {:y NB.! use it
cairo_set_line_width cairocr ; (1.1-1.1)+penwidth
0
)
glcr_pie=: chkgl2 @: (3 : 0) "1
glcr_arcx cairo_arcisi y
0
)
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
cairo_destroy cr
cairo_surface_destroy surface

r=. fliprgb^:(-.RGBSEQ_j_) r
)
glcr_qwh=: 3 : 0
cairowh
)
glcr_rect=: chkgl2 @: (3 : 0) "1
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
glcr_setbrush=: glcr_brush @ glcr_rgb
glcr_setpen=: glcr_pen @ ((1 1 [ glcr_rgb) :((2 {. [) glcr_rgb))
glcr_text=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
cairo_cairocolor cairotextrgb
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
  cairo_rotate cairocr ; - rfd cairofontangle%10
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
end.
0
)
glcr_textcolor=: chkgl2 @: (3 : 0) "1
cairotextrgb=: cairorgb
0
)
glcr_textxy=: chkgl2 @: (3 : 0) "1
cairotextxy=: <.y
0
)
glcr_qextent=: 3 : 0
te=. (6*8)$(2.2-2.2)
if. 0 e. 0~:cairocs,cairocr do. chkgl2 1 return. end.
cairo_text_extents cairocr; y; te
<. 2 3{te
)
glcr_qextentw=: 3 : 0
if. 0 e. 0~:cairocs,cairocr do. chkgl2 1 return. end.
{."1>glcr_qextent each<;._2 y,LF#~LF~:{:y
)
glcr_windoworg=: chkgl2 @: (3 : 0) "1
if. 0 e. 0~:cairocs,cairocr do. 1 return. end.
cairoorgx=: cairoorgx + <.{.y
cairoorgy=: cairoorgy + <.{:y
cairo_translate cairocr ; <"0 y
0
)
pafc=: 2p1&|@{:@:(*.@(j./))

rfd=: *&(1p1%180)
dfr=: *&(180%1p1)
calcAngle=: ([: pafc _1 1 * -)"1
degree64=: 0.5 <.@:+ 64 * dfr
cairo_cairocolor=: 3 : 0
cairo_set_source_rgba cairocr ; <"0 rgba2cairo y
)
cairo_arcisi=: 3 : 0
ctr=. (0 1{y) + -: (2 3{y)
rds=. -: 2{y
bgn=. pafc ctr -~ 4 5{y
end=. pafc ctr -~ 6 7{y
(2 3{y),ctr,rds,end,bgn
)
rgba2cairo=: 3 : 0
a=. getalpha y=. <.y
'r g b'=. 3{. 256 256 256 #: 0 setalpha y
255%~ r,g,b,a
)
parseFontname=: 3 : 0
font=. ' ',y
b=. (font=' ') > ~:/\font='"'
a: -.~ b <@(-.&'"');._1 font
)
FontStyle=: ;:'regular bold italic underline strikeout'

parseFontSpec=: 3 : 0
if. 'profont'-:y do. y=. 'sans 12' end.
'ns styleangle'=. 2 split parseFontname y
'face size'=. ns
size=. 12". size
style=. FontStyle i. tolower each styleangle
style=. <.+/2^<:(style ((> 0) *. <) #FontStyle) # style
if. 1 e. an=. ('angle'-:5&{.)&> styleangle do.
  degree=. 10%~ 0". 5}.>(an i. 1){styleangle
else.
  degree=. 0
end.
face;size;style;degree
)
dlws=: 3 : 0
y }.~ +/ *./\ (y e. ' ')+.(y e. LF)+.(y e. TAB)
)
clws=: 3 : 0
+/ *./\ (y e. ' ')+.(y e. LF)+.(y e. TAB)
)
wdglshiftarg=: 3 : 0
if. (#wdglstr) = wdglptr=: wdglptr + clws wdglptr}. wdglstr do. '' return. end.
y=. wdglptr}.wdglstr
b=. y e. ' '
a=. y e. '*'
q=. 2| +/\ y e. '"'
d=. 2| +/\ y e. DEL
b=. b *. -.q+.d
a=. a *. -.q+.d
if. 1={.a do.
  z=. }.y
  wdglptr=: #wdglstr
elseif. (1={.d)+.(1={.q) do.
  p2=. 1+ (}.y) i. {.y
  z=. }.p2{.y
  wdglptr=: wdglptr+ p2+1
elseif. 1 e. b do.
  p2=. {.I.b
  z=. p2{.y
  wdglptr=: wdglptr+ 1+p2
elseif. do.
  z=. y
  wdglptr=: #wdglstr
end.
<z
)
wdglshiftargs=: 3 : 0
wdglptr=: 0 [ wdglstr=: y
z=. 0$<''
while. wdglptr < #wdglstr do. z=. z, wdglshiftarg'' end.
z
)

tors=: 3 : 0
(2{.y),(2{.y)+2}.y
)
glarc_jglcr_=: glcr_arc_jglcr_
glbrush_jglcr_=: glcr_brush_jglcr_
glbrushnull_jglcr_=: glcr_brushnull_jglcr_
glcapture_jglcr_=: glcr_capture_jglcr_
glcaret_jglcr_=: glcr_caret_jglcr_
glclear_jglcr_=: glcr_clear_jglcr_
glclear2_jglcr_=: glcr_clear2_jglcr_
glclip_jglcr_=: glcr_clip_jglcr_
glclipreset_jglcr_=: glcr_clipreset_jglcr_
glcmds_jglcr_=: glcr_cmds_jglcr_
glcursor_jglcr_=: glcr_cursor_jglcr_
glellipse_jglcr_=: glcr_ellipse_jglcr_
glfill_jglcr_=: glcr_fill_jglcr_
glfont_jglcr_=: glcr_font_jglcr_
glfont2_jglcr_=: glcr_font2_jglcr_
glfontangle_jglcr_=: glcr_fontangle_jglcr_
glfontextent_jglcr_=: glcr_fontextent_jglcr_
gllines_jglcr_=: glcr_lines_jglcr_
glnodblbuf_jglcr_=: glcr_nodblbuf_jglcr_
glpaint_jglcr_=: glcr_paint_jglcr_
glpaintx_jglcr_=: glcr_paintx_jglcr_
glpen_jglcr_=: glcr_pen_jglcr_
glpie_jglcr_=: glcr_pie_jglcr_
glpixel_jglcr_=: glcr_pixel_jglcr_
glpixels_jglcr_=: glcr_pixels_jglcr_
glpixelsx_jglcr_=: glcr_pixelsx_jglcr_
glpolygon_jglcr_=: glcr_polygon_jglcr_
glqextent_jglcr_=: glcr_qextent_jglcr_
glqextentw_jglcr_=: glcr_qextentw_jglcr_
glqhandles_jglcr_=: glcr_qhandles_jglcr_
glqpixels_jglcr_=: glcr_qpixels_jglcr_
glqpixelm_jglcr_=: glcr_qpixelm_jglcr_
glqtextmetrics_jglcr_=: glcr_qtextmetrics_jglcr_
glqwh_jglcr_=: glcr_qwh_jglcr_
glrect_jglcr_=: glcr_rect_jglcr_
glrgb_jglcr_=: glcr_rgb_jglcr_
glrgba_jglcr_=: glcr_rgba_jglcr_
glsel_jglcr_=: glcr_sel_jglcr_
glsel2_jglcr_=: glcr_sel2_jglcr_
glsetlocale_jglcr_=: glcr_setlocale_jglcr_
gltext_jglcr_=: glcr_text_jglcr_
gltextcolor_jglcr_=: glcr_textcolor_jglcr_
gltextxy_jglcr_=: glcr_textxy_jglcr_
glwindoworg_jglcr_=: glcr_windoworg_jglcr_

glinit_jglcr_=: glcr_init_jglcr_
glfree_jglcr_=: glcr_free_jglcr_
glsavefile_jglcr_=: glcr_savefile_jglcr_


NB. cd defines

NB. =========================================================
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

NB. =========================================================
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

NB. typedef struct {
NB.     double ascent;
NB.     double descent;
NB.     double height;
NB.     double max_x_advance;
NB.     double max_y_advance;
NB. } cairo_font_extents_t;

NB. typedef struct {
NB.     double x_bearing;
NB.     double y_bearing;
NB.     double width;
NB.     double height;
NB.     double x_advance;
NB.     double y_advance;
NB. } cairo_text_extents_t;

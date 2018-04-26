NB. gl2 constant

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

NB. numeric constants used in glcmds

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

NB. keyboard events
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

;;
*change_dress
[cm][save_dress][eval exp="f.act.system=1" ][hide_role][nolog][hide_message_w][clearfix]
*change_dress_
[iscript]
f.tg[1]=0, f.font.size=27, tf.d_col={}, tf.d_prec={}
if(f.d_dress.type=='onp'){f.tab.main='dress1';}else{f.tab.main='dress2';}
;f.sel.col=0
[endscript]

[if exp="f.act.last!='before_bed'" ]
[set_dress_up][show_dress_up][_][endif]

*dress_menu
[free_tx][clearfix][eval exp="tf.role_name='dress_menu'" ]
[xy y=823 preg1='menu/dress/' tg1='*cdn_list' ][btn/xy]
[if exp="f.act.last!='before_bed'" ]
[btn/fix tg=*return x=1429 gr=menu/dress/return ]
[btn/fix tg=1 x=1076 g=1 gr=save exp="f.tab.sub='save'" ]
[btn/fix tg=1 x=1173 g=1 gr=load exp="f.tab.sub='load'" ]
[btn/fix tg=1 x=1284 g=1 gr=edit exp="f.tab.sub='edit'" ]
[else]
[btn/fix tg=*return_to_before_bed x=1429 gr=menu/dress/return ]
[btn/fix tg=1 x=1076 g=1 gr=load exp="f.tab.sub='load'" ]
[endif]


;脱衣
[xy x=1121 y=47 x_add=42 preg1='menu/dress/undress/' tg1='*undress' ][btn/xy]
[btn/fix tg=1 l=x g=1 gr=hair exp="tf.undress='hair'" ]
[btn/fix tg=1 l=x g=1 gr=head exp="tf.undress='head'" ]
[btn/fix tg=1 l=x g=1 gr=glasses exp="tf.undress='glasses'" ][eval exp="f.x.bace+=18" ]
[btn/fix tg=1 l=x g=1 gr=eri exp="tf.undress='eri'" ]
[if exp="f.x_count.sex>=1" ][btn/fix tg=1 l=x g=1 gr=dress exp="tf.undress='dress'" ][else][add_x][endif]
[btn/fix tg=1 l=x g=1 gr=kata exp="tf.undress='kata'" ]
[btn/fix tg=1 l=x g=1 gr=socks exp="tf.undress='socks'" ]
[if exp="f.x_count.sex>=1" ][btn/fix tg=1 l=x g=1 gr=under exp="tf.undress='under'" ][else][add_x][endif][eval exp="f.x.bace+=18" ]
;[btn/fix tg=1 l=x g=1 gr=other exp="tf.undress='other'" ]
[btn/fix tg=1 l=x g=1 gr=all exp="tf.undress='all'" ]



;;タブボタン
*tab_change
[eval exp="tf.win='dress_up/'+f.tab.main" ][c_mod n=win st=&tf.win ]
[clearfix name='dress1_btn'][clearfix name='dress2_btn'][clearfix name='tab_btn']
[clearfix name='color_btn_a1'][clearfix name='color_btn_a2'][clearfix name='color_btn_a3']
[clearfix name='color_btn_b1'][clearfix name='color_btn_b2'][clearfix name='color_btn_preset']
[clearfix name='dress_parts_conf']
[eval exp="tf.role_name='tab_btn'" ]

[xy x=843 y=89 x_add=54 preg1='menu/dress/tab/' tg1='*tab_change' ][btn/xy]
;[btn/fix tg=1 x=1090 y=36 g=1 gr=color sw=tab.main swm=color_control exp="f.tab.main='color_control'" ]
;[btn/fix tg=1 l=x g=1 gr=preset sw=tab.main swm=preset exp="f.tab.main='preset', f.tab.sub=1" ]
[btn/fix tg=1 l=x g=1 gr=preset sw=tab.main swm=preset exp="f.tab.main='preset', f.tab.page=1" ][eval exp="f.x.bace+=23" ]
[btn/fix tg=1 l=x g=1 gr=color sw=tab.main swm=color_control exp="f.tab.main='color_control'" ]
[btn/fix tg=1 l=x g=1 gr=hair sw=tab.main swm=hair exp="f.tab.main='hair'" ]
[btn/fix tg=1 l=x g=1 gr=head sw=tab.main swm=head exp="f.tab.main='head'" ]
[btn/fix tg=1 l=x g=1 gr=eri sw=tab.main swm=eri exp="f.tab.main='eri'" ]
[btn/fix tg=1 l=x g=1 gr=dress1 sw=tab.main swm=dress1 exp="f.tab.main='dress1'" ]
[btn/fix tg=1 l=x g=1 gr=dress2 sw=tab.main swm=dress2 exp="f.tab.main='dress2'" ][eval exp="f.x.bace+=23" ]
[btn/fix tg=1 l=x g=1 gr=dress3 sw=tab.main swm=dress3 exp="f.tab.main='dress3'" ][eval exp="f.x.bace+=23" ]
[btn/fix tg=1 l=x g=1 gr=kata sw=tab.main swm=kata exp="f.tab.main='kata'" ]
[btn/fix tg=1 l=x g=1 gr=limb sw=tab.main swm=limb exp="f.tab.main='limb'" ][eval exp="f.x.bace+=23" ]
[btn/fix tg=1 l=x g=1 gr=under sw=tab.main swm=under exp="f.tab.main='under'" cond="f.x_count.sex>=1" ]
[jump/ tg=*color_control cond="f.tab.main=='color_control'" ]
[jump/ tg=*preset_menu cond="f.tab.main=='preset'" ]

;;色ボタン
*color_btn
[set_dress_info]
[if exp="f.tab.main=='dress1' || f.tab.main=='dress2' || f.tab.main=='dress3' || f.tab.main=='eri' || f.tab.main=='kata'" ]
[else][jump/ tg=*col_menu_a ][endif]
[clearfix name='color_btn_preset'][eval exp="tf.role_name='color_btn_preset'" ]
[xy x=841 y=178 y_add=40 preg1='menu/dress/color/' ][btn/xy]
[btn/fix tg=*switch_col_type l=y g=1 gr=_preset sw=d_col_btn swm=preset exp="f.g_config.d_col_btn='preset'" ]
[btn/fix tg=*switch_col_type l=y g=1 gr=_custom sw=d_col_btn swm=custom exp="f.g_config.d_col_btn='custom'" ]

[if exp="f.g_config.d_col_btn=='preset'" ]
[call target=*c_preset_list ][eval exp="f.tg[1]= '*' + f.tab.main + '_menu'" ][jump/ tg=1 ]
[endif]

*col_menu_a
[xy x=1040 y=140 x_add=50 y_add=40 preg1='menu/dress/color/' ][btn/xy x=10]
*col1a
[clearfix name='color_btn_a1']
[if exp="tf.d_col.a>=1" ][eval exp="tf.role_name='color_btn_a1'" ]
	[xy tg1='*col_change_1a' ][xy y=140 cond="f.sel.act=='col1a'"]
	[btn/fix tg=1 l=x g=1 gr=light sw=d_col.a1b swm=0 exp="f.sel.col=0" ]
	[btn/fix tg=1 l=x g=1 gr=mid sw=d_col.a1b swm=10 exp="f.sel.col=10" ]
	[btn/fix tg=1 l=x g=1 gr=dark sw=d_col.a1b swm=20 exp="f.sel.col=20" ]
	[eval exp="f.x.bace+=7"]
	[btn/fix tg=1 l=x g=1 sw=d_col.a1 swm=1 gr=red exp="f.sel.col=1" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a1 swm=2 gr=blue exp="f.sel.col=2" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a1 swm=3 gr=yellow exp="f.sel.col=3" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a1 swm=4 gr=purple exp="f.sel.col=4" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a1 swm=5 gr=green exp="f.sel.col=5" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a1 swm=6 gr=orange exp="f.sel.col=6" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a1 swm=7 gr=gray exp="f.sel.col=7" ][wt/]
[endif][jump/ tg=*stop cond="f.sel.act=='col1a'"]
*col2a
[clearfix name='color_btn_a2']
[if exp="tf.d_col.a>=2" ][eval exp="tf.role_name='color_btn_a2'" ]
	[xy tg1='*col_change_2a' ][xy y=180 cond="f.sel.act=='col2a'"]
	[btn/fix tg=1 l=x g=1 gr=light sw=d_col.a2b swm=0 exp="f.sel.col=0" ]
	[btn/fix tg=1 l=x g=1 gr=mid sw=d_col.a2b swm=10 exp="f.sel.col=10" ]
	[btn/fix tg=1 l=x g=1 gr=dark sw=d_col.a2b swm=20 exp="f.sel.col=20" ]
	[eval exp="f.x.bace+=7"]
	[btn/fix tg=1 l=x g=1 sw=d_col.a2 swm=1 gr=red exp="f.sel.col=1" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a2 swm=2 gr=blue exp="f.sel.col=2" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a2 swm=3 gr=yellow exp="f.sel.col=3" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a2 swm=4 gr=purple exp="f.sel.col=4" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a2 swm=5 gr=green exp="f.sel.col=5" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a2 swm=6 gr=orange exp="f.sel.col=6" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a2 swm=7 gr=gray exp="f.sel.col=7" ][wt/]
[endif][jump/ tg=*stop cond="f.sel.act=='col2a'"]
*col3a
[clearfix name='color_btn_a3']
[if exp="tf.d_col.a>=3 || (f.tab.main=='dress1' || f.tab.main=='dress2' || f.tab.main=='eri' || f.tab.main=='kata' ) && tf.d_col.ap!=0" ]
	[eval exp="tf.role_name='color_btn_a3'" ]
	[xy tg1='*col_change_3a' ][xy y=220]
	[btn/fix tg=1 l=x g=1 gr=light sw=d_col.a3b swm=0 exp="f.sel.col=0" ]
	[btn/fix tg=1 l=x g=1 gr=mid sw=d_col.a3b swm=10 exp="f.sel.col=10" ]
	[btn/fix tg=1 l=x g=1 gr=dark sw=d_col.a3b swm=20 exp="f.sel.col=20" ]
	[eval exp="f.x.bace+=7"]
	[btn/fix tg=1 l=x g=1 sw=d_col.a3 swm=1 gr=red exp="f.sel.col=1" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a3 swm=2 gr=blue exp="f.sel.col=2" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a3 swm=3 gr=yellow exp="f.sel.col=3" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a3 swm=4 gr=purple exp="f.sel.col=4" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a3 swm=5 gr=green exp="f.sel.col=5" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a3 swm=6 gr=orange exp="f.sel.col=6" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.a3 swm=7 gr=gray exp="f.sel.col=7" ][wt/]
[endif][jump/ tg=*stop cond="f.sel.act=='col3a'"]

[jump/ tg=*color_control_parts cond="f.tab.main=='color_control'"]

[if exp="f.tg[2]=='*col_menu_a' && f.tab.main!='dress1' && f.tab.main!='dress2' && f.tab.main!='dress3'" ]
[eval exp="f.tg[1]= '*' + f.sel.dress + '_menu'" ]
[else][eval exp="f.tg[1]= '*' + f.tab.main + '_menu'" ][endif]
[jump/ tg=1 cond="f.tg[2]=='*col_menu_a'" ]


*col_menu_b
[clearfix name='color_btn_b1'][clearfix name='color_btn_b2'][set_dress_info]
[xy x=1040 y=479 x_add=50 y_add=40 preg1='menu/dress/color/' ][btn/xy x=10]
*col1b
[if exp="tf.d_col.b>=1" ][eval exp="tf.role_name='color_btn_b1'" ][xy tg1='*col_change_1b' ]
	[if exp="f.sel.act=='col1b'" ][xy y=479][clearfix name='color_btn_b1'][endif]
	[btn/fix tg=1 l=x g=1 gr=light sw=d_col.b1b swm=0 exp="f.sel.col=0" ]
	[btn/fix tg=1 l=x g=1 gr=mid sw=d_col.b1b swm=10 exp="f.sel.col=10" ]
	[btn/fix tg=1 l=x g=1 gr=dark sw=d_col.b1b swm=20 exp="f.sel.col=20" ]
	[eval exp="f.x.bace+=7"]
	[btn/fix tg=1 l=x g=1 sw=d_col.b1 swm=1 gr=red exp="f.sel.col=1" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.b1 swm=2 gr=blue exp="f.sel.col=2" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.b1 swm=3 gr=yellow exp="f.sel.col=3" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.b1 swm=4 gr=purple exp="f.sel.col=4" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.b1 swm=5 gr=green exp="f.sel.col=5" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.b1 swm=6 gr=orange exp="f.sel.col=6" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.b1 swm=7 gr=gray exp="f.sel.col=7" ][wt/]
[endif][jump/ tg=*stop cond="f.sel.act=='col1b'"]
*col2b
[if exp="tf.d_col.b>=2" ][eval exp="tf.role_name='color_btn_b2'" ][xy tg1='*col_change_2b' ]
	[if exp="f.sel.act=='col2b'" ][xy y=519][clearfix name='color_btn_b2'][endif]
	[btn/fix tg=1 l=x g=1 gr=light sw=d_col.b2b swm=0 exp="f.sel.col=0" ]
	[btn/fix tg=1 l=x g=1 gr=mid sw=d_col.b2b swm=10 exp="f.sel.col=10" ]
	[btn/fix tg=1 l=x g=1 gr=dark sw=d_col.b2b swm=20 exp="f.sel.col=20" ]
	[eval exp="f.x.bace+=7"]
	[btn/fix tg=1 l=x g=1 sw=d_col.b2 swm=1 gr=red exp="f.sel.col=1" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.b2 swm=2 gr=blue exp="f.sel.col=2" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.b2 swm=3 gr=yellow exp="f.sel.col=3" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.b2 swm=4 gr=purple exp="f.sel.col=4" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.b2 swm=5 gr=green exp="f.sel.col=5" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.b2 swm=6 gr=orange exp="f.sel.col=6" ]
	[btn/fix tg=1 l=x g=1 sw=d_col.b2 swm=7 gr=gray exp="f.sel.col=7" ][wt/]
[endif][jump/ tg=*stop cond="f.sel.act=='col2b'"]

[if exp="f.tg[2]=='*col_menu_b'" ][eval exp="f.tg[1]= '*' + f.sel.dress + '_menu'" ]
[else][eval exp="f.tg[1]= '*' + f.tab.main + '_menu'" ][endif][jump/ tg=1 ]


*c_preset_list
[xy x=969 y=141 x_add=53 y_add=39 preg1='menu/dress/color_preset/' tg1='*preset_col_change'][btn/xy x=11]
[btn/fix l=x tg=1 g=1 gr=1_7_11 exp="tf.d_prec.c1=1, tf.d_prec.c1b=0, tf.d_prec.c2=7, tf.d_prec.c2b=0, tf.d_prec.c3=1, tf.d_prec.c3b=10" ]
[btn/fix l=x tg=1 g=1 gr=2_7_12 exp="tf.d_prec.c1=2, tf.d_prec.c1b=0, tf.d_prec.c2=7, tf.d_prec.c2b=0, tf.d_prec.c3=2, tf.d_prec.c3b=10" ]
[btn/fix l=x tg=1 g=1 gr=2_14_1 exp="tf.d_prec.c1=2, tf.d_prec.c1b=0, tf.d_prec.c2=4, tf.d_prec.c2b=10, tf.d_prec.c3=1, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=3_16_21 exp="tf.d_prec.c1=3, tf.d_prec.c1b=0, tf.d_prec.c2=6, tf.d_prec.c2b=10, tf.d_prec.c3=1, tf.d_prec.c3b=20" ]
[btn/fix l=x tg=1 g=1 gr=4_24_1 exp="tf.d_prec.c1=4, tf.d_prec.c1b=0, tf.d_prec.c2=4, tf.d_prec.c2b=20, tf.d_prec.c3=1, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=5_25_3 exp="tf.d_prec.c1=5, tf.d_prec.c1b=0, tf.d_prec.c2=5, tf.d_prec.c2b=20, tf.d_prec.c3=3, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=6_3_11 exp="tf.d_prec.c1=6, tf.d_prec.c1b=0, tf.d_prec.c2=3, tf.d_prec.c2b=0, tf.d_prec.c3=1, tf.d_prec.c3b=10" ]
[btn/fix l=x tg=1 g=1 gr=7_1_14 exp="tf.d_prec.c1=7, tf.d_prec.c1b=0, tf.d_prec.c2=1, tf.d_prec.c2b=0, tf.d_prec.c3=4, tf.d_prec.c3b=10" ]
[btn/fix l=x tg=1 g=1 gr=7_2_4 exp="tf.d_prec.c1=7, tf.d_prec.c1b=0, tf.d_prec.c2=2, tf.d_prec.c2b=0, tf.d_prec.c3=4, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=7_4_1 exp="tf.d_prec.c1=7, tf.d_prec.c1b=0, tf.d_prec.c2=4, tf.d_prec.c2b=0, tf.d_prec.c3=1, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=7_27_17 exp="tf.d_prec.c1=7, tf.d_prec.c1b=0, tf.d_prec.c2=7, tf.d_prec.c2b=20, tf.d_prec.c3=7, tf.d_prec.c3b=10" ]
[wt/]
[btn/fix l=x tg=1 g=1 gr=11_3_16 exp="tf.d_prec.c1=1, tf.d_prec.c1b=10, tf.d_prec.c2=3, tf.d_prec.c2b=0, tf.d_prec.c3=6, tf.d_prec.c3b=10" ]
[btn/fix l=x tg=1 g=1 gr=12_2_7 exp="tf.d_prec.c1=2, tf.d_prec.c1b=10, tf.d_prec.c2=2, tf.d_prec.c2b=0, tf.d_prec.c3=7, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=12_11_27 exp="tf.d_prec.c1=2, tf.d_prec.c1b=10, tf.d_prec.c2=1, tf.d_prec.c2b=10, tf.d_prec.c3=7, tf.d_prec.c3b=20" ]
[btn/fix l=x tg=1 g=1 gr=12_24_7 exp="tf.d_prec.c1=2, tf.d_prec.c1b=10, tf.d_prec.c2=4, tf.d_prec.c2b=20, tf.d_prec.c3=7, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=13_21_3 exp="tf.d_prec.c1=3, tf.d_prec.c1b=10, tf.d_prec.c2=1, tf.d_prec.c2b=20, tf.d_prec.c3=3, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=14_4_27 exp="tf.d_prec.c1=4, tf.d_prec.c1b=10, tf.d_prec.c2=4, tf.d_prec.c2b=0, tf.d_prec.c3=7, tf.d_prec.c3b=20" ]
;[btn/fix l=x tg=1 g=1 gr=15_3_7 exp="tf.d_prec.c1=5, tf.d_prec.c1b=10, tf.d_prec.c2=3, tf.d_prec.c2b=0, tf.d_prec.c3=7, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=15_7_2 exp="tf.d_prec.c1=5, tf.d_prec.c1b=10, tf.d_prec.c2=7, tf.d_prec.c2b=0, tf.d_prec.c3=2, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=25_3_14 exp="tf.d_prec.c1=5, tf.d_prec.c1b=20, tf.d_prec.c2=3, tf.d_prec.c2b=0, tf.d_prec.c3=4, tf.d_prec.c3b=10" ]
[btn/fix l=x tg=1 g=1 gr=16_3_7 exp="tf.d_prec.c1=6, tf.d_prec.c1b=10, tf.d_prec.c2=3, tf.d_prec.c2b=0, tf.d_prec.c3=7, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=22_2_7 exp="tf.d_prec.c1=2, tf.d_prec.c1b=20, tf.d_prec.c2=2, tf.d_prec.c2b=0, tf.d_prec.c3=7, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=17_27_7 exp="tf.d_prec.c1=7, tf.d_prec.c1b=10, tf.d_prec.c2=7, tf.d_prec.c2b=20, tf.d_prec.c3=7, tf.d_prec.c3b=0" ]
[wt/]
[btn/fix l=x tg=1 g=1 gr=21_17_11 exp="tf.d_prec.c1=1, tf.d_prec.c1b=20, tf.d_prec.c2=7, tf.d_prec.c2b=10, tf.d_prec.c3=1, tf.d_prec.c3b=10" ]
[btn/fix l=x tg=1 g=1 gr=21_3_16 exp="tf.d_prec.c1=1, tf.d_prec.c1b=20, tf.d_prec.c2=3, tf.d_prec.c2b=0, tf.d_prec.c3=6, tf.d_prec.c3b=10" ]
[btn/fix l=x tg=1 g=1 gr=22_14_4 exp="tf.d_prec.c1=2, tf.d_prec.c1b=20, tf.d_prec.c2=4, tf.d_prec.c2b=10, tf.d_prec.c3=4, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=24_3_4 exp="tf.d_prec.c1=4, tf.d_prec.c1b=20, tf.d_prec.c2=3, tf.d_prec.c2b=0, tf.d_prec.c3=4, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=25_15_27 exp="tf.d_prec.c1=5, tf.d_prec.c1b=20, tf.d_prec.c2=5, tf.d_prec.c2b=10, tf.d_prec.c3=7, tf.d_prec.c3b=20" ]
[btn/fix l=x tg=1 g=1 gr=27_3_7 exp="tf.d_prec.c1=7, tf.d_prec.c1b=20, tf.d_prec.c2=3, tf.d_prec.c2b=0, tf.d_prec.c3=7, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=27_11_7 exp="tf.d_prec.c1=7, tf.d_prec.c1b=20, tf.d_prec.c2=1, tf.d_prec.c2b=10, tf.d_prec.c3=7, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=27_12_7 exp="tf.d_prec.c1=7, tf.d_prec.c1b=20, tf.d_prec.c2=2, tf.d_prec.c2b=10, tf.d_prec.c3=7, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=27_14_7 exp="tf.d_prec.c1=7, tf.d_prec.c1b=20, tf.d_prec.c2=4, tf.d_prec.c2b=10, tf.d_prec.c3=7, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=27_15_7 exp="tf.d_prec.c1=7, tf.d_prec.c1b=20, tf.d_prec.c2=5, tf.d_prec.c2b=10, tf.d_prec.c3=7, tf.d_prec.c3b=0" ]
[btn/fix l=x tg=1 g=1 gr=27_17_7 exp="tf.d_prec.c1=7, tf.d_prec.c1b=20, tf.d_prec.c2=7, tf.d_prec.c2b=10, tf.d_prec.c3=7, tf.d_prec.c3b=0" ]
[wt/]
[return]

*switch_col_type
[clearfix name='color_btn_preset']
[clearfix name='color_btn_a1'][clearfix name='color_btn_a2'][clearfix name='color_btn_a3']
[jump/ tg=*color_btn ]


;;服
*dress1_menu
[eval exp="tf.role_name='dress1_btn'" ][clearfix name='dress1_btn']
[xy x=852 y=274 x_add=116 y_add=177 preg1='menu/dress_icn/onp/' tg1='*dress1_change' ][btn/xy x=6]
;[btn/fix drs=d_dress.n cond="f.x_count.sex>=1" gr=non exp="f.d_dress.n='non', f.d_dress.sub_c=0, f.d_dress.slv=0, f.d_dress.h='xxx'" ]
[btn/fix drs=d_dress.n cond="f.x_count.sex>=1" gr=non exp="f.d_dress.n='non'" ]
[btn/fix drs=d_dress.n gr=boro exp="f.d_dress.n='boro', f.d_dress.sub_c=0, f.d_dress.slv=0, f.d_dress.h='def'" ]
[btn/fix drs=d_dress.n cond="f.got_dress1.peacock==1" gr=peacock exp="f.d_dress.n='peacock'" ]
;[btn/fix drs=d_dress.n cond="f.got_dress1.reijou==1" gr=reijou exp="f.d_dress.n='reijou'" ]
[btn/fix drs=d_dress.n cond="f.got_dress1.ribbon==1" gr=ribbon exp="f.d_dress.n='ribbon'" ]
[btn/fix drs=d_dress.n cond="f.got_dress1.onepiece==1" gr=onepiece exp="f.d_dress.n='onepiece'" ]
;[btn/fix drs=d_dress.n cond="f.got_dress1.gara_onp==1" gr=gara_onp exp="f.d_dress.n='gara_onp'" ]
[btn/fix drs=d_dress.n cond="f.got_dress1.seiso==1" gr=seiso exp="f.d_dress.n='seiso'" ]
[btn/fix drs=d_dress.n cond="f.got_dress1.wafuku==1" gr=wafuku exp="f.d_dress.n='wafuku'" ]
[btn/fix drs=d_dress.n cond="f.got_dress1.maid==1" gr=maid exp="f.d_dress.n='maid'" ]
[btn/fix drs=d_dress.n cond="f.got_dress1.nurse==1" gr=nurse exp="f.d_dress.n='nurse'" ]
[btn/fix drs=d_dress.n cond="f.got_dress1.yin==1" gr=yin exp="f.d_dress.n='yin'" ]
[jump/ tg=*stop ]

*dress2_menu
[eval exp="tf.role_name='dress1_btn'" ][clearfix name='dress1_btn']
[xy x=852 y=274 x_add=116 y_add=130 preg1='menu/dress_icn/up/' tg1='*dress2_change' ][btn/xy x=6]
[btn/fix drs=d_dress_a.n cond="f.x_count.sex>=1" gr=non exp="f.d_dress_a.n='non'" ]
[btn/fix drs=d_dress_a.n gr=first exp="f.d_dress_a.n='first'" ]
[btn/fix drs=d_dress_a.n cond="f.state.step>=6" gr=first_ns exp="f.d_dress_a.n='first_ns'" ]
[btn/fix drs=d_dress_a.n cond="f.got_dress2.hanako==1" gr=hanako exp="f.d_dress_a.n='hanako'" ]
[btn/fix drs=d_dress_a.n cond="f.got_dress1.alice==1" gr=alice exp="f.d_dress_a.n='alice'" ]
[btn/fix drs=d_dress_a.n cond="f.got_dress2.sailor_s==1" gr=sailor_s exp="f.d_dress_a.n='sailor_s'" ]
[btn/fix drs=d_dress_a.n cond="f.got_dress2.sailor_l==1" gr=sailor_l exp="f.d_dress_a.n='sailor_l'" ]
[if exp="f.got_dress2.blazer==1" ]
[btn/fix drs=d_dress_a.n_ad gr=blazer_a exp="f.d_dress_a.n='blazer__a'"]
[btn/fix drs=d_dress_a.n_ad gr=blazer_b exp="f.d_dress_a.n='blazer__b'"][endif]

[btn/fix drs=d_dress_a.n cond="f.got_dress2.Yshirt_l==1" gr=Yshirt_l exp="f.d_dress_a.n='Yshirt_l'" ]
[btn/fix drs=d_dress_a.n cond="f.got_dress2.Yshirt_s==1" gr=Yshirt_s exp="f.d_dress_a.n='Yshirt_s'" ]

;[btn/fix drs=d_dress_a.n swm=hanako_x gr=hanako_x exp="f.d_dress_a.n='hanako_x'" ]
;[btn/fix drs=d_dress_a.n cond="f.got_dress1.yin==1" gr=yin_x exp="f.d_dress_a.n='yin_x'" ]

[btn/fix drs=d_dress_a.n cond="f.x_count.self>=1" gr=kare exp="f.d_dress_a.n='kare'" ]
[btn/fix drs=d_dress.n cond="f.got_dress1.yin==1 && f.x_count.sex>=1" gr=yin_x exp="f.d_dress_a.n='yin_x'" ]

[btn/fix drs=d_dress.n cond="f.got_dress2x.bdoll_a==1" swm=bdoll_a gr=bdoll_a exp="f.d_dress_a.n='bdoll_a'" ]
[btn/fix drs=d_dress.n cond="f.got_dress2x.bdoll_b==1" swm=bdoll_b gr=bdoll_b exp="f.d_dress_a.n='bdoll_b'" ]

[jump/ tg=*stop ]

*dress3_menu
[eval exp="tf.role_name='dress1_btn'" ][clearfix name='dress1_btn']
[xy x=852 y=274 x_add=116 y_add=130 preg1='menu/dress_icn/btm/' tg1='*dress3_change' ][btn/xy x=6]
[btn/fix drs=d_dress_b.n cond="f.x_count.sex>=1" gr=non exp="f.d_dress_b.n='non'" ]
[btn/fix drs=d_dress_b.n cond="f.got_dress3.skirt_s==1" gr=skirt_s exp="f.d_dress_b.n='skirt_s'" ]
[btn/fix drs=d_dress_b.n cond="f.got_dress3.skirt_l==1" gr=skirt_l exp="f.d_dress_b.n='skirt_l'" ]
[btn/fix drs=d_dress_b.n gr=first exp="f.d_dress_b.n='first'" ]
[btn/fix drs=d_dress_b.n cond="f.got_dress1.ribbon==1" gr=ribbon exp="f.d_dress_b.n='ribbon'" ]
[btn/fix drs=d_dress_b.n cond="f.got_dress1.alice==1" gr=alice exp="f.d_dress_b.n='alice'" ]
[btn/fix drs=d_dress_b.n cond="f.got_dress3.genes_l==1" gr=genes_l exp="f.d_dress_b.n='genes_l'" ]
[btn/fix drs=d_dress_b.n cond="f.got_dress3.pants_m==1" gr=pants_m exp="f.d_dress_b.n='pants_m'" ]
[btn/fix drs=d_dress_b.n cond="f.got_dress3.genes_m==1" gr=genes_m exp="f.d_dress_b.n='genes_m'" ]
[btn/fix drs=d_dress_b.n cond="f.got_dress3x.genes_s==1" gr=genes_s exp="f.d_dress_b.n='genes_s'" ]
[jump/ tg=*stop ]


;;首
*eri_menu
[eval exp="tf.role_name='dress1_btn'" ][clearfix name='dress1_btn']
[xy x=852 y=274 x_add=116 y_add=110 preg1='menu/dress_icn/eri/' tg1='*eri_change' ][btn/xy x=6]
[btn/fix drs=d_eri.n gr=non exp="f.d_eri.n='non'" ]

[btn/fix drs=d_eri.n_ad gr=first_a exp="f.d_eri.n='first__a'" ]
[btn/fix drs=d_eri.n_ad cond="f.got_eri.acc_bold==1" gr=first_b exp="f.d_eri.n='first__b'" ]
[btn/fix drs=d_eri.n_ad cond="f.got_eri.acc_juel==1" gr=first_d exp="f.d_eri.n='first__d'" ]
;[btn/fix drs=d_eri.n_ad cond="f.got_eri.acc_tie_s==1" gr=first_e exp="f.d_eri.n='first__e'" ]

[btn/fix drs=d_eri.n_ad cond="f.got_eri.hanako==1" gr=hanako_a exp="f.d_eri.n='hanako__a'" ]
[btn/fix drs=d_eri.n_ad cond="f.got_eri.acc_bold==1" gr=hanako_b exp="f.d_eri.n='hanako__b'" ]
[btn/fix drs=d_eri.n_ad cond="f.got_eri.acc_thin==1" gr=hanako_c exp="f.d_eri.n='hanako__c'" ]
[btn/fix drs=d_eri.n_ad cond="f.got_eri.acc_juel==1" gr=hanako_d exp="f.d_eri.n='hanako__d'" ]

[btn/fix drs=d_eri.n_ad cond="f.got_eri.frill==1" gr=frill_a exp="f.d_eri.n='frill__a'" ]
[btn/fix drs=d_eri.n_ad cond="f.got_eri.acc_bold==1" gr=frill_b exp="f.d_eri.n='frill__b'" ]
[btn/fix drs=d_eri.n_ad cond="f.got_eri.acc_thin==1" gr=frill_c exp="f.d_eri.n='frill__c'" ]
[btn/fix drs=d_eri.n_ad cond="f.got_eri.acc_juel==1" gr=frill_d exp="f.d_eri.n='frill__d'" ]

[btn/fix drs=d_eri.n_ad cond="f.got_eri.Y_eri==1" gr=Y_eri_0 exp="f.d_eri.n='Y_eri'" ]
[btn/fix drs=d_eri.n_ad cond="f.got_eri.Y_eri==1" gr=Y_eri_a exp="f.d_eri.n='Y_eri__a'" ]
[btn/fix drs=d_eri.n_ad cond="f.got_eri.Y_eri==1" gr=Y_eri_b exp="f.d_eri.n='Y_eri__b'" ]
[btn/fix drs=d_eri.n_ad cond="f.got_eri.acc_bold==1" gr=Y_eri_c exp="f.d_eri.n='Y_eri__c'" ]
[btn/fix drs=d_eri.n_ad cond="f.got_eri.acc_juel==1" gr=Y_eri_d exp="f.d_eri.n='Y_eri__d'" ]
;[btn/fix drs=d_eri.n_ad cond="f.got_eri.acc_tie_s==1" gr=Y_eri_e exp="f.d_eri.n='Y_eri__e'" ]

[btn/fix drs=d_eri.n cond="f.got_dress2.sailor_l==1 || f.got_dress2.sailor_s==1" gr=sailor exp="f.d_eri.n='sailor'" ]
[jump/ tg=*stop ]


;;肩
*kata_menu
[eval exp="tf.role_name='dress1_btn'" ][clearfix name='dress1_btn']
[xy x=852 y=274 x_add=116 y_add=110 preg1='menu/dress_icn/kata/' tg1='*kata_change' ][btn/xy x=6]
[btn/fix drs=d_kata.n gr=non exp="f.d_kata.n='non'" ]
[btn/fix drs=d_kata.n cond="f.got_kata.peacock==1" gr=peacock exp="f.d_kata.n='peacock'" ]
[btn/fix drs=d_kata.n cond="f.got_kata.muff==1" gr=muff exp="f.d_kata.n='muff'" ]
[btn/fix drs=d_kata.n cond="f.got_kata.muff_check==1" gr=muff_check exp="f.d_kata.n='muff_check'" ]
;[btn/fix drs=d_kata.n cond="f.got_kata.epr==1" gr=maid_ep exp="f.d_kata.n='maid_ep'" ]
[jump/ tg=*stop ]


;;体
;[jump/ tg=*stop cond="f.sel.dress=='eri'"]
*body_ac_menu
;[eval exp="tf.role_name='dress2_btn'" ][clearfix name='dress2_btn']
;[xy x=852 y=573 x_add=116 y_add=110 preg1='menu/dress_icn/body_ac/' tg1='*b_acc_change' ][btn/xy x=6]
[jump/ tg=*stop ]


;;髪型
*hair_menu
*pin_menu
[eval exp="tf.role_name='dress1_btn'" ][clearfix name='dress1_btn']
;[xy x=852 y=205 x_add=116 y_add=120 preg1='menu/dress_icn/pin/' tg1='*pin_change' ][btn/xy x=6]
[xy x=849 y=222 x_add=88 y_add=82 preg1='menu/dress_icn/pin/' tg1='*pin_change' ][btn/xy x=8]
[btn/fix tg=1 l=x g=1 sw=d_pin.type swm=nr gr=_nr exp="f.d_pin.type='nr', f.d_pin.n='non'" ]
[btn/fix tg=1 l=x g=1 sw=d_pin.type swm=single gr=_single exp="f.d_pin.type='single'" ]
[if exp="f.state.step>=6" ]
[btn/fix tg=1 l=x g=1 sw=d_pin.type swm=double gr=_double exp="f.d_pin.type='double'" ]
[btn/fix tg=1 l=x g=1 sw=d_pin.type swm=wide gr=_wide exp="f.d_pin.type='wide'" ][endif]
[if exp="f.d_pin.type!='nr'" ][add_y]
[btn/fix drs=d_pin.n gr=non exp="f.d_pin.n='non'" ]
[btn/fix drs=d_pin.n gr=thin exp="f.d_pin.n='thin'" ]
[btn/fix drs=d_pin.n cond="f.got_pin.egg==1" gr=egg exp="f.d_pin.n='egg'" ]
[btn/fix drs=d_pin.n cond="f.got_pin.heart==1" gr=heart exp="f.d_pin.n='heart'" ]
[btn/fix drs=d_pin.n cond="f.got_pin.flower==1" gr=flower exp="f.d_pin.n='flower'" ]
[btn/fix drs=d_pin.n cond="f.got_pin.clover==1" gr=clover exp="f.d_pin.n='clover'" ]
[btn/fix drs=d_pin.n cond="f.got_pin.star==1" gr=star exp="f.d_pin.n='star'" ]
[btn/fix drs=d_pin.n cond="f.got_pin.skull==1" gr=skull exp="f.d_pin.n='skull'" ]
[endif]
[jump/ tg=*stop cond="f.sel.dress=='pin'"]

*ribbon_menu
[eval exp="tf.role_name='dress2_btn'" ][clearfix name='dress2_btn']
[xy x=852 y=543 x_add=116 y_add=120 preg1='menu/dress_icn/ribbon/' tg1='*ribbon_change' ][btn/xy x=6]
[btn/fix tg=1 l=x g=1 sw=d_ribbon.type swm=non gr=non exp="f.d_ribbon.type='nr', f.d_ribbon.sub_c=0, f.d_ribbon.n='non'" ]
[btn/fix tg=1 l=x g=1 sw=d_ribbon.type swm=poney gr=poney exp="f.d_ribbon.type='poney'" ]
[if exp="f.state.step>=6" ]
[btn/fix tg=1 l=x g=1 sw=d_ribbon.type swm=l_poney gr=l_poney exp="f.d_ribbon.type='l_poney'" ]
[btn/fix tg=1 l=x g=1 sw=d_ribbon.type swm=l_twin gr=l_twin exp="f.d_ribbon.type='l_twin'" ]
[btn/fix tg=1 l=x g=1 sw=d_ribbon.type swm=twin gr=twin exp="f.d_ribbon.type='twin'" ]
[btn/fix tg=1 l=x g=1 sw=d_ribbon.type swm=side gr=side exp="f.d_ribbon.type='side'" ]
[else][add_y][endif]
[if exp="f.d_ribbon.type!='nr'" ]
[btn/fix drs=d_ribbon.n gr=non exp="f.d_ribbon.n='non', f.d_ribbon.sub_c=0" ]
[btn/fix drs=d_ribbon.n gr=thin exp="f.d_ribbon.n='thin', f.d_ribbon.sub_c=1" ]
[btn/fix drs=d_ribbon.n cond="f.got_ribbon.bold==1" gr=bold exp="f.d_ribbon.n='bold', f.d_ribbon.sub_c=1" ]
[btn/fix drs=d_ribbon.n cond="f.got_ribbon.bees==1" gr=bees exp="f.d_ribbon.n='bees', f.d_ribbon.sub_c=1" ]
[btn/fix drs=d_ribbon.n cond="f.got_ribbon.shsh==1" gr=shsh exp="f.d_ribbon.n='shsh', f.d_ribbon.sub_c=1" ]
[endif]
[jump/ tg=*stop ]

;;頭顔
*head_menu
*hat_menu
[eval exp="tf.role_name='dress1_btn'" ][clearfix name='dress1_btn']
[xy x=852 y=235 x_add=116 y_add=110 preg1='menu/dress_icn/hat/' tg1='*hat_change' ][btn/xy x=6]
[btn/fix drs=d_hat.n gr=non exp="f.d_hat.n='non'" ]
[btn/fix drs=d_hat.n cond="f.got_hat.kemo==1" gr=kemo exp="f.d_hat.n='kemo'" ]
[btn/fix drs=d_hat.n cond="f.got_hat.catu==1" gr=catu exp="f.d_hat.n='catu'" ]
[btn/fix drs=d_hat.n cond="f.got_hat.catu_stripe==1" gr=catu_stripe exp="f.d_hat.n='catu_stripe'" ]
[btn/fix drs=d_hat.n cond="f.got_hat.casquette==1" gr=casquette exp="f.d_hat.n='casquette'" ]
[btn/fix drs=d_hat.n cond="f.got_hat.silk==1" gr=silk exp="f.d_hat.n='silk'" ]
[btn/fix drs=d_hat.n cond="f.got_dress1.maid==1" gr=frill exp="f.d_hat.n='frill'" ]
[btn/fix drs=d_hat.n cond="f.got_hat.race==1" gr=race exp="f.d_hat.n='race'" ]
[jump/ tg=*stop cond="f.sel.dress=='hat'"]
*glasses_menu
[eval exp="tf.role_name='dress2_btn'" ][clearfix name='dress2_btn']
[xy x=852 y=573 x_add=116 y_add=110 preg1='menu/dress_icn/glasses/' tg1='*glasses_change' ][btn/xy x=6]
[btn/fix drs=d_glasses.n gr=non exp="f.d_glasses.n='non', f.d_glasses.sub_c=0" ]
[btn/fix drs=d_glasses.n cond="f.got_glasses.round==1" gr=round exp="f.d_glasses.n='round', f.d_glasses.sub_c=1" ]
[btn/fix drs=d_glasses.n cond="f.got_glasses.rectangle==1" gr=rectangle exp="f.d_glasses.n='rectangle', f.d_glasses.sub_c=1" ]
[btn/fix drs=d_glasses.n cond="f.got_glasses.half==1" gr=half exp="f.d_glasses.n='half', f.d_glasses.sub_c=1" ]
[btn/fix drs=d_glasses.n cond="f.got_glasses.square==1" gr=square exp="f.d_glasses.n='square', f.d_glasses.sub_c=1" ]
[btn/fix drs=d_glasses.n cond="f.got_glasses.circle_l==1" gr=circle_l exp="f.d_glasses.n='circle_l', f.d_glasses.sub_c=1" ]
[btn/fix drs=d_glasses.n cond="f.got_glasses.circle_s==1" gr=circle_s exp="f.d_glasses.n='circle_s', f.d_glasses.sub_c=1" ]
[jump/ tg=*stop ]





;;手足
*limb_menu
*gloves_menu
;[eval exp="tf.role_name='dress1_btn'" ][clearfix name='dress1_btn']
;[xy x=854 y=222 x_add=78 y_add=125 preg1='menu/dress_icn/under_b/' tg1='*under_b_change' ][btn/xy x=9]
;[btn/fix drs=d_under_b.n swm=non gr=non exp="f.d_under_b.n='non', f.d_under_b.sub_c=0, f.d_under_b.h='xxx'" ]
;[jump/ tg=*stop cond="f.sel.dress=='under_b'"]

*socks_menu
[eval exp="tf.role_name='dress2_btn'" ][clearfix name='dress2_btn']
[xy x=854 y=561 x_add=78 y_add=125 preg1='menu/dress_icn/socks/' tg1='*socks_change' ][btn/xy x=9]
[btn/fix drs=d_socks.n gr=non exp="f.d_socks.n='non'" ]
[btn/fix drs=d_socks.n gr=simple_s exp="f.d_socks.n='simple_s'" ]
[btn/fix drs=d_socks.n cond="f.got_socks.simple_m==1" gr=simple_m exp="f.d_socks.n='simple_m'" ]
[btn/fix drs=d_socks.n cond="f.got_socks.simple_l==1" gr=simple_l exp="f.d_socks.n='simple_l'" ]
[if exp="f.got_socks.stripe==1" ]
[btn/fix drs=d_socks.n gr=stripe_s exp="f.d_socks.n='stripe_s'" ]
[btn/fix drs=d_socks.n cond="f.got_socks.simple_m==1" gr=stripe_m exp="f.d_socks.n='stripe_m'" ]
[btn/fix drs=d_socks.n cond="f.got_socks.simple_l==1" gr=stripe_l exp="f.d_socks.n='stripe_l'" ][endif]
[btn/fix drs=d_socks.n cond="f.got_socks.suke_l==1" gr=suke_l exp="f.d_socks.n='suke_l'" ]
;[btn/fix drs=d_socks.n gr=marble_s exp="f.d_socks.n='marble_s', f.d_socks.sub_c=2, f.d_socks.type='s'" ]
;[btn/fix drs=d_socks.n gr=marble_l exp="f.d_socks.n='marble_l', f.d_socks.sub_c=2, f.d_socks.type='l'" ]
;[btn/fix drs=d_socks.n gr=race_s exp="f.d_socks.n='race_s', f.d_socks.sub_c=1, f.d_socks.type='s'" ]
;[btn/fix drs=d_socks.n gr=race_l exp="f.d_socks.n='race_l', f.d_socks.sub_c=1, f.d_socks.type='l'" ]
[jump/ tg=*stop ]


;;下着
*under_menu
*under_b_menu
[eval exp="tf.role_name='dress1_btn'" ][clearfix name='dress1_btn']
[xy x=852 y=235 x_add=116 y_add=110 preg1='menu/dress_icn/under_b/' tg1='*under_b_change' ][btn/xy x=6]
[btn/fix drs=d_under_b.n gr=non exp="f.d_under_b.n='non'" ]
[btn/fix drs=d_under_b.n gr=simple exp="f.d_under_b.n='simple'" ]
;[btn/fix drs=d_under_b.n gr=stripe exp="f.d_under_b.n='stripe'" ]
;[btn/fix drs=d_under_b.n gr=marble exp="f.d_under_b.n='marble'" ]
[btn/fix drs=d_under_b.n cond="f.got_under.race==1" gr=race exp="f.d_under_b.n='race'" ]

[btn/fix drs=d_under_b.n cond="f.got_under.swim_m==1" gr=swim_m exp="f.d_under_b.n='swim_m'" ]
[btn/fix drs=d_under_b.n cond="f.got_under.swim_m_smsm==1" gr=swim_m_smsm exp="f.d_under_b.n='swim_m_smsm'" ]
[btn/fix drs=d_under_b.n cond="f.got_under_x.swim_s==1" gr=swim_s exp="f.d_under_b.n='swim_s'" ]
[btn/fix drs=d_under_b.n cond="f.got_under_x.swim_s_smsm==1" gr=swim_s_smsm exp="f.d_under_b.n='swim_s_smsm'" ]
[btn/fix drs=d_under_b.n cond="f.got_under_x.swim_xs==1" gr=swim_xs exp="f.d_under_b.n='swim_xs'" ]
;[btn/fix drs=d_under_b.n cond="f.got_under_x.race_xs==1" gr=race_xs exp="f.d_under_b.n='race_xs'" ]

[jump/ tg=*stop cond="f.sel.dress=='under_b'"]

*under_p_menu
[eval exp="tf.role_name='dress2_btn'" ][clearfix name='dress2_btn']
[xy x=852 y=573 x_add=116 y_add=110 preg1='menu/dress_icn/under_p/' tg1='*under_p_change' ][btn/xy x=6]
[btn/fix drs=d_under_p.n gr=non exp="f.d_under_p.n='non'" ]
[btn/fix drs=d_under_p.n gr=simple exp="f.d_under_p.n='simple'" ]
;[btn/fix drs=d_under_p.n gr=stripe exp="f.d_under_p.n='stripe'" ]
;[btn/fix drs=d_under_p.n gr=marble exp="f.d_under_p.n='marble'" ]
[btn/fix drs=d_under_p.n cond="f.got_under.race==1" gr=race exp="f.d_under_p.n='race'" ]

[btn/fix drs=d_under_p.n cond="f.got_under.swim_m==1" gr=swim_m exp="f.d_under_p.n='swim_m'" ]
[btn/fix drs=d_under_p.n cond="f.got_under.swim_m_smsm==1" gr=swim_m_smsm exp="f.d_under_p.n='swim_m_smsm'" ]
[btn/fix drs=d_under_p.n cond="f.got_under_x.swim_s==1" gr=swim_s exp="f.d_under_p.n='swim_s'" ]
[btn/fix drs=d_under_p.n cond="f.got_under_x.swim_s_smsm==1" gr=swim_s_smsm exp="f.d_under_p.n='swim_s_smsm'" ]
[btn/fix drs=d_under_p.n cond="f.got_under_x.swim_xs==1" gr=swim_xs exp="f.d_under_p.n='swim_xs'" ]
;[btn/fix drs=d_under_p.n cond="f.got_under.race_xs==1" gr=race_xs exp="f.d_under_p.n='race_xs'" ]
[jump/ tg=*stop ]



;;all色変更
*color_control
;パーツ一覧
;セットカラー一覧
;色ボタン
[set_dress_info]
[xy x=841 y=178 y_add=40 preg1='menu/dress/color/' ][btn/xy]

[eval exp="tf.role_name='color_btn_preset'" ][clearfix name='color_btn_preset']
[clearfix name='color_btn_a1'][clearfix name='color_btn_a2'][clearfix name='color_btn_a3']

[btn/fix tg=*color_control l=y g=1 gr=_preset sw=d_col_btn swm=preset exp="f.g_config.d_col_btn='preset'" ]
[btn/fix tg=*color_control l=y g=1 gr=_custom sw=d_col_btn swm=custom exp="f.g_config.d_col_btn='custom'" ]
[if exp="f.g_config.d_col_btn=='preset'" ]
	[xy x=872 y=279 x_add=59 y_add=59 tg1='*color_control_change' ][btn/xy x=11]
	[add_x_blank][add_x_blank][call target=*c_preset_list ]
[else][jump/ tg=*col_menu_a ][endif]

*color_control_parts
[if exp="f.tab.main=='color_control'" ][xy y=342 y_add=-61][else][xy y=201 y_add=-57][endif]
[xy x=862 x_add=85 tg1=c_parts_switch preg1='menu/dress/preset_conf/' ][btn/xy]
[eval exp="tf.role_name='dress_parts_conf'" ][clearfix name='dress_parts_conf']
[btn/fix l=x tg=1 g=1 gr=head sw=d_color.hat swm=1 exp="tf.r='hat'"][eval exp="f.x.bace-=23" ]
[btn/fix l=x tg=1 g=1 gr=hair sw=d_color.hair swm=1 exp="tf.r='hair'"]
[btn/fix l=x tg=1 g=1 gr=glasses sw=d_color.glasses swm=1 exp="tf.r='glasses'"]
[btn/fix l=x tg=1 g=1 gr=eri sw=d_color.eri swm=1 exp="tf.r='eri'"][eval exp="f.x.bace-=23" ]
[btn/fix l=x tg=1 g=1 gr=dress sw=d_color.dress swm=1 exp="tf.r='dress'"]
[btn/fix l=x tg=1 g=1 gr=dress_b sw=d_color.dress_b swm=1 exp="tf.r='dress_b'"]
[btn/fix l=x tg=1 g=1 gr=kata sw=d_color.kata swm=1 exp="tf.r='kata'"][eval exp="f.x.bace-=23" ]
[btn/fix l=x tg=1 g=1 gr=socks sw=d_color.socks swm=1 exp="tf.r='socks'"][eval exp="f.x.bace-=23" ]
[btn/fix l=x tg=1 g=1 gr=under sw=d_color.under swm=1 exp="tf.r='under'"]
[add_y]
[btn/fix x=1256 tg=1 g=1 gr=all_on exp="tf.r='all_on'"]
[btn/fix x=1397 tg=1 g=1 gr=all_off exp="tf.r='all_off'"]

[if exp="f.tab.main=='preset'" ]
[btn/fix x=1069 y=266 tg=1 g=1 gr=do sw=d_color.color swm=1 exp="f.d_color.color=1"]
[btn/fix x=1208 y=266 tg=1 g=1 gr=dont sw=d_color.color swm=0 exp="f.d_color.color=0"][endif]
[jump/ tg=*stop ]


*c_parts_switch
[iscript]
if(tf.r=='all_on')
	{f.d_color.hair=1, f.d_color.hat=1, f.d_color.glasses=1, f.d_color.dress=1, f.d_color.eri=1, f.d_color.kata=1, f.d_color.dress_b=1, f.d_color.socks=1, f.d_color.under=1;}
if(tf.r=='all_off')
	{f.d_color.hair=0, f.d_color.hat=0, f.d_color.glasses=0, f.d_color.dress=0, f.d_color.eri=0, f.d_color.kata=0, f.d_color.dress_b=0, f.d_color.socks=0, f.d_color.under=0;}
	
if(tf.r=='hair'){
	if(f.d_color.hair==0){f.d_color.hair=1;}else{f.d_color.hair=0;}}
if(tf.r=='hat'){
	if(f.d_color.hat==0){f.d_color.hat=1;}else{f.d_color.hat=0;}}
if(tf.r=='glasses'){
	if(f.d_color.glasses==0){f.d_color.glasses=1;}else{f.d_color.glasses=0;}}
if(tf.r=='dress'){
	if(f.d_color.dress==0){f.d_color.dress=1;}else{f.d_color.dress=0;}}
if(tf.r=='eri'){
	if(f.d_color.eri==0){f.d_color.eri=1;}else{f.d_color.eri=0;}}
if(tf.r=='kata'){
	if(f.d_color.kata==0){f.d_color.kata=1;}else{f.d_color.kata=0;}}
if(tf.r=='dress_b'){
	if(f.d_color.dress_b==0){f.d_color.dress_b=1;}else{f.d_color.dress_b=0;}}
if(tf.r=='socks'){
	if(f.d_color.socks==0){f.d_color.socks=1;}else{f.d_color.socks=0;}}
if(tf.r=='under'){
	if(f.d_color.under==0){f.d_color.under=1;}else{f.d_color.under=0;}}
	
;if(tf.r=='color'){
;	if(f.d_color.color==0){f.d_color.color=1;}else{f.d_color.color=0;}}
	
[endscript]
[jump/ tg=*color_control_parts ]


;[clearfix name='color_btn_preset'][eval exp="tf.role_name='color_btn_preset'" ]

;;preset_menu
*preset_menu
[eval exp="tf.role_name='dress1_btn'" ][clearfix name='dress1_btn']
[xy x=851 y=767 x_add=60 preg1='menu/dress/cdn/n/' tg1='*preset_menu' ][btn/xy]
[if exp="f.state.step>=6" ]
;[btn/fix l=x tg=1 g=1 gr=1 sw=tab.sub swm=1 exp="f.tab.sub=1" ]
;[btn/fix l=x tg=1 g=1 gr=2 sw=tab.sub swm=2 exp="f.tab.sub=2" ]
;[btn/fix l=x tg=1 g=1 gr=3 sw=tab.sub swm=3 exp="f.tab.sub=3" ][endif]
[btn/fix l=x tg=1 g=1 gr=1 sw=tab.page swm=1 exp="f.tab.page=1" ]
[btn/fix l=x tg=1 g=1 gr=2 sw=tab.page swm=2 exp="f.tab.page=2" ]
[btn/fix l=x tg=1 g=1 gr=3 sw=tab.page swm=3 exp="f.tab.page=3" ][endif]

[xy x=851 y=327 x_add=140 y_add=217 preg1='menu/dress_icn/preset/' tg1='*dress_preset_set' ][btn/xy x=5]
[if exp="f.tab.page==1" ]
	[btn/fix l=x tg=1 g=1 gr=first exp="tf.r='first'" ]
	[if exp="f.got_dress1.nurse==1" ]
		[btn/fix l=x tg=1 g=1 gr=nurce exp="tf.r='nurce'" ][else][add_x_blank][endif]
	[if exp="f.got_dress2.blazer==1 && f.got_dress3.skirt_l==1" ]
		[btn/fix l=x tg=1 g=1 gr=uniform_blue exp="tf.r='uniform_blue'" ][else][add_x_blank][endif]
	[if exp="f.got_dress2.Yshirt_s==1 && f.got_dress3.skirt_s==1 && f.got_eri.Y_eri==1" ]
		[btn/fix l=x tg=1 g=1 gr=uniform_summer exp="tf.r='uniform_summer'" ][else][add_x_blank][endif]
	[if exp="f.got_dress2.sailor_s==1 && f.got_dress3.skirt_s==1" ]
		[btn/fix l=x tg=1 g=1 gr=sera_blue exp="tf.r='sera_blue'" ][else][add_x_blank][endif]
	[if exp="f.got_dress2.sailor_l==1 && f.got_dress3.skirt_l==1" ]
		[btn/fix l=x tg=1 g=1 gr=sera_black exp="tf.r='sera_black'" ][else][add_x_blank][endif]
	[if exp="f.got_dress2.blazer==1 && f.got_dress3.genes_l==1" ]
		[btn/fix l=x tg=1 g=1 gr=TVA exp="tf.r='TVA'" ][else][add_x_blank][endif]
	[if exp="f.got_dress2.hanako==1 && f.got_dress3.pants_m==1 && f.got_eri.Y_eri==1" ]
		[btn/fix l=x tg=1 g=1 gr=casual_green exp="tf.r='casual_green'" ][else][add_x_blank][endif]
	[if exp="f.got_dress2.hanako==1 && f.got_dress3.genes_l==1 && f.got_eri.hanako==1 && f.got_eri.acc_thin==1" ]
		[btn/fix l=x tg=1 g=1 gr=hanako exp="tf.r='hanako'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.onepiece==1" ]
		[btn/fix l=x tg=1 g=1 gr=summer_onepiece exp="tf.r='summer_onepiece'" ][else][add_x_blank][endif]

[elsif exp="f.tab.page==2" ]
	[if exp="f.got_dress1.ribbon==1 && f.got_eri.frill==1 && f.got_eri.acc_juel==1" ]
		[btn/fix l=x tg=1 g=1 gr=black_princess exp="tf.r='black_princess'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.maid==1 && f.got_eri.Y_eri==1 && f.got_eri.acc_bold==1" ]
		[btn/fix l=x tg=1 g=1 gr=maid_black exp="tf.r='maid_black'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.maid==1 && f.got_eri.Y_eri==1 && f.got_eri.acc_bold==1" ]
		[btn/fix l=x tg=1 g=1 gr=alice_origin exp="tf.r='alice_origin'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.seiso==1 && f.got_kata.muff==1" ]
		[btn/fix l=x tg=1 g=1 gr=winter_blown exp="tf.r='winter_blown'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.seiso==1" ]
		[btn/fix l=x tg=1 g=1 gr=seiso_purple exp="tf.r='seiso_purple'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.seiso==1 && f.got_kata.peacock==1" ]
		[btn/fix l=x tg=1 g=1 gr=loli_pink exp="tf.r='loli_pink'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.peacock==1 && f.got_kata.peacock==1" ]
		[btn/fix l=x tg=1 g=1 gr=peacock exp="tf.r='peacock'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.peacock==1 && f.got_eri.frill==1" ]
		[btn/fix l=x tg=1 g=1 gr=green_fox exp="tf.r='green_fox'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.wafuku==1" ]
		[btn/fix l=x tg=1 g=1 gr=wa_red exp="tf.r='wa_red'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.wafuku==1" ]
		[btn/fix l=x tg=1 g=1 gr=wa_white exp="tf.r='wa_white'" ][else][add_x_blank][endif]

[elsif exp="f.tab.page==3" ]
	[if exp="f.got_dress2.sailor_s==1 && f.got_dress3.skirt_s==1" ]
		[btn/fix l=x tg=1 g=1 gr=sera_purple exp="tf.r='sera_purple'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.yin==1" ]
		[btn/fix l=x tg=1 g=1 gr=yin exp="tf.r='yin'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.yin==1" ]
		[btn/fix l=x tg=1 g=1 gr=black_magician exp="tf.r='black_magician'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.alice==1 && f.got_eri.frill==1 && f.got_eri.acc_juel==1" ]
		[btn/fix l=x tg=1 g=1 gr=alice_madness exp="tf.r='alice_madness'" ][else][add_x_blank][endif]
	[if exp="f.got_dress1.alice==1 && f.got_eri.hanako==1 && f.got_eri.acc_juel==1" ]
		[btn/fix l=x tg=1 g=1 gr=battle_maid exp="tf.r='battle_maid'" ][else][add_x_blank][endif]
	[if exp="f.got_dress2x.bdoll_b==1 && f.got_dress3x.genes_s==1 && f.got_dress2.sailor_s==1" ]
		[btn/fix l=x tg=1 g=1 gr=sera_swim exp="tf.r='sera_swim'" ][else][add_x_blank][endif]

[endif]
[jump/ tg=*color_control_parts ]

;;preset_読み込み
*dress_preset_set
[iscript]
;リセット
tf.d_dress = {n:'non', type:'onp', sub_p:0, c1:7, c1b:0, c2:7, c2b:0, c3:7, c3b:0 }
tf.d_dress_a = {n:'non', sub_p:0, c1:7, c1b:0, c2:7, c2b:0, c3:7, c3b:0 }
tf.d_dress_b = {n:'non', c1:7, c1b:0, c2:7, c2b:0, c3:7, c3b:10 }
tf.d_eri = {n:'non', sub_p:0, c1:7, c1b:0, c2:7, c2b:0, c3:7, c3b:0}
tf.d_kata = {n:'non', sub_p:0, c1:7, c1b:0, c2:7, c2b:0, c3:7, c3b:0}
tf.d_under_b = {n:'simple', c1:7, c1b:0, c2:7, c2b:0}
tf.d_under_p = {n:'simple', c1:7, c1b:0, c2:7, c2b:0}
tf.d_socks = {n:'non', c1:7, c1b:0, c2:7, c2b:0}
;tf.d_body = {n:'non', type:'n', c1:7, c2:7, c1b:0, c2b:0}
;tf.d_gloves = {n:'non', type:'n', c1:7, c2:7, c1b:0, c2b:0}
tf.d_hat = {n:'non', c1:7, c1b:0, c2:7, c2b:0, c3:7, c3b:0}
tf.d_pin = {n:'non', type:'nr', c1:7, c1b:0, c2:7, c2b:0}
tf.d_ribbon = {n:'non', type:'nr', c1:7, c1b:0, c2:7, c2b:0}
tf.d_glasses = {n:'non', c1:7, c1b:20, c2:7, c2b:0}
tf.d_check = {}

[endscript]
[iscript]
if(tf.r=='first'){
	tf.d_dress.type = 'up'
	tf.d_dress_a = {n:'first', sub_p:0, c1:7, c2:2, c3:7, c1b:0, c2b:20, c3b:0}	
	tf.d_dress_b = {n:'first', c1:2, c2:7, c3:7, c1b:20, c2b:0, c3b:0}	
	tf.d_eri = {n:'first', c1:7, c2:2, c3:2, c1b:0, c2b:20, c3b:10, sub_p:'a'}	
	tf.d_socks = {n:'simple_s', c1:7, c2:7, c1b:0, c2b:0}	
	tf.d_pin = {n:'thin', type:'single', c1:2, c2:2, c1b:10, c2b:10}	
	tf.d_ribbon = {n:'thin', type:'poney', c1:2, c2:7, c1b:10, c2b:0}	
	}
else if(tf.r=='nurce'){
	tf.d_dress = {n:'nurse', type:'onp', sub_p:0, c1:7, c2:7, c3:2, c1b:0, c2b:0, c3b:0}	
	tf.d_socks = {n:'simple_m', c1:7, c1b:0, c2:7, c2b:0}	
	tf.d_pin = {n:'thin', type:'single', c1:2, c2:2, c1b:0, c2b:0}	
	tf.d_ribbon = {n:'thin', type:'l_poney', c1:7, c2:7, c1b:0, c2b:0}	
	if(f.got_socks.simple_m!=1){tf.d_check.socks=0;}
	}
else if(tf.r=='uniform_blue'){
	tf.d_dress.type = 'up'
	tf.d_dress_a = {n:'blazer', sub_p:'a', c1:2, c2:7, c3:2, c1b:20, c2b:0, c3b:10}	
	tf.d_dress_b = {n:'skirt_l', c1:2, c2:6, c3:7, c1b:20, c2b:20, c3b:10}	
	tf.d_socks = {n:'simple_m', c1:7, c1b:0, c2:7, c2b:0}	
	tf.d_pin = {n:'thin', type:'single', c1:2, c2:2, c1b:10, c2b:0}	
	tf.d_ribbon = {n:'thin', type:'poney', c1:2, c2:7, c1b:10, c2b:0}	
	tf.d_glasses = {n:'rectangle', c1:7, c1b:20, c2:7, c2b:0}
	if(f.got_socks.simple_m!=1){tf.d_check.socks=0;}
	if(f.got_glasses.rectangle!=1){tf.d_check.glasses=0;}
	}
else if(tf.r=='uniform_summer'){
	tf.d_dress.type = 'up'
	tf.d_dress_a = {n:'Yshirt_s', sub_p:0, c1:7, c2:3, c3:1, c1b:0, c2b:0, c3b:10}	
	tf.d_dress_b = {n:'skirt_s', c1:2, c2:3, c3:6, c1b:10, c2b:0, c3b:10}	
	tf.d_eri = {n:'Y_eri', c1:7, c2:3, c3:1, c1b:0, c2b:0, c3b:10, sub_p:'a'}	
	tf.d_socks = {n:'simple_s', c1:7, c2:3, c1b:0, c2b:0}	
	tf.d_pin = {n:'thin', type:'double', c1:2, c2:1, c1b:0, c2b:10}	
	tf.d_ribbon = {n:'shsh', type:'l_twin', c1:3, c2:3, c1b:0, c2b:0}	
	if(f.got_ribbon.shsh!=1){tf.d_check.ribbon=0;}
	}
else if(tf.r=='sera_blue'){
	tf.d_dress.type = 'up'
	tf.d_dress_a = {n:'sailor_s', sub_p:0, c1:7, c2:2, c3:2, c1b:0, c2b:10, c3b:10}	
	tf.d_dress_b = {n:'skirt_s', c1:2, c2:6, c3:7, c1b:10, c2b:20, c3b:10}	
	tf.d_eri = {n:'sailor', c1:2, c2:1, c3:7, c1b:10, c2b:10, c3b:0, sub_p:0}	
	tf.d_socks = {n:'simple_m', c1:7, c2:7, c1b:0, c2b:0, c3:1, c3b:10}	
	tf.d_hat = {n:'catu', c1:1, c1b:10, c2:1, c2b:10, c3:7, c3b:0}	
	tf.d_pin = {n:'heart', type:'single', c1:1, c2:1, c1b:0, c2b:10}	
	if(f.got_socks.simple_m!=1){tf.d_check.socks=0;}
	if(f.got_hat.catu!=1){tf.d_check.hat=0;}
	if(f.got_pin.heart!=1){tf.d_check.pin=0;}
	}
else if(tf.r=='sera_black'){
	tf.d_dress.type = 'up'
	tf.d_dress_a = {n:'sailor_l', sub_p:0, c1:7, c2:7, c3:2, c1b:20, c2b:0, c3b:10}	
	tf.d_dress_b = {n:'skirt_l', c1:7, c2:6, c3:7, c1b:20, c2b:20, c3b:10}	
	tf.d_eri = {n:'sailor', c1:7, c2:1, c3:7, c1b:20, c2b:10, c3b:0, sub_p:0}	
	tf.d_socks = {n:'simple_l', c1:7, c2:7, c1b:20, c2b:0}	
	if(f.got_socks.simple_l!=1){tf.d_check.socks=0;}
	}
else if(tf.r=='maid_black'){
	tf.d_dress = {n:'maid', type:'onp', sub_p:0, c1:7, c2:7, c3:7, c1b:20, c2b:0, c3b:0}	
	tf.d_eri = {n:'Y_eri', c1:7, c2:7, c3:7, c1b:0, c2b:10, c3b:20, sub_p:'b'}	
	tf.d_socks = {n:'simple_l', c1:7, c2:7, c1b:0, c2b:0}	
	tf.d_hat = {n:'frill', c1:7, c1b:0, c2:1, c2b:10, c3:7, c3b:0}	
	tf.d_pin = {n:'non', type:'single', c1:7, c2:7, c1b:0, c2b:0}	
	tf.d_ribbon = {n:'thin', type:'l_poney', c1:7, c2:7, c1b:0, c2b:0}	
	tf.d_glasses = {n:'circle_l', c1:7, c1b:20, c2:7, c2b:0}	
	if(f.got_socks.simple_l!=1){tf.d_check.socks=0;}
	if(f.got_dress1.maid!=1){tf.d_check.hat=0;}
	if(f.got_glasses.circle_l!=1){tf.d_check.glasses=0;}
	}
else if(tf.r=='alice_origin'){
	tf.d_dress = {n:'maid', type:'onp', sub_p:0, c1:2, c2:7, c3:7, c1b:0, c2b:0, c3b:0}	
	tf.d_eri = {n:'Y_eri', c1:7, c2:7, c3:2, c1b:0, c2b:10, c3b:10, sub_p:'b'}	
	tf.d_under_b = {n:'simple', c1:2, c2:7, c1b:0, c2b:0}	
	tf.d_under_p = {n:'simple', c1:2, c2:7, c1b:0, c2b:0}	
	tf.d_socks = {n:'stripe_l', c1:2, c2:7, c1b:0, c2b:0}	
	tf.d_hat = {n:'catu', c1:3, c1b:0, c2:1, c2b:10, c3:7, c3b:0}	
	tf.d_ribbon = {n:'bold', type:'poney', c1:2, c2:7, c1b:10, c2b:0}	
	if(f.got_socks.stripe_l!=1){tf.d_check.socks=0;}
	if(f.got_hat.catu!=1){tf.d_check.hat=0;}
	if(f.got_ribbon.bold!=1){tf.d_check.ribbon=0;}
	}
else if(tf.r=='wa_red'){
	tf.d_dress = {n:'wafuku', type:'onp', sub_p:0, c1:1, c2:3, c3:7, c1b:10, c2b:0, c3b:20}	
	tf.d_pin = {n:'non', type:'single', c1:2, c2:7, c1b:10, c2b:0}	
	tf.d_ribbon = {n:'bees', type:'poney', c1:1, c2:7, c1b:10, c2b:0}	
	if(f.got_ribbon.bees!=1){tf.d_check.ribbon=0;}
	}
else if(tf.r=='wa_white'){
	tf.d_dress = {n:'wafuku', type:'onp', sub_p:0, c1:7, c2:7, c3:7, c1b:0, c2b:20, c3b:20}	
	tf.d_hat = {n:'kemo', c1:7, c1b:0, c2:7, c2b:0, c3:7, c3b:0}	
	tf.d_pin = {n:'non', type:'wide', c1:2, c2:7, c1b:10, c2b:0}	
	if(f.got_hat.kemo!=1){tf.d_check.hat=0;}
	}
else if(tf.r=='casual_green'){
	tf.d_dress.type = 'up'
	tf.d_dress_a = {n:'hanako', sub_p:0, c1:5, c2:7, c3:7, c1b:20, c2b:20, c3b:0}	
	tf.d_dress_b = {n:'pants_m', c1:1, c2:7, c3:7, c1b:20, c2b:0, c3b:0}	
	tf.d_eri = {n:'Y_eri', c1:7, c2:2, c3:5, c1b:0, c2b:0, c3b:10, sub_p:'c'}	
	tf.d_socks = {n:'simple_l', c1:7, c2:7, c1b:10, c2b:0}	
	tf.d_pin = {n:'clover', type:'wide', c1:5, c2:5, c1b:20, c2b:0}	
	tf.d_ribbon = {n:'bees', type:'l_twin', c1:1, c2:2, c1b:10, c2b:0}	
	tf.d_glasses = {n:'square', c1:5, c1b:10, c2:7, c2b:0}	
	if(f.got_socks.simple_l!=1){tf.d_check.socks=0;}
	if(f.got_pin.clover!=1){tf.d_check.pin=0;}
	if(f.got_glasses.square!=1){tf.d_check.glasses=0;}
	}
else if(tf.r=='winter_blown'){
	tf.d_dress = {n:'seiso', type:'onp', sub_p:0, c1:6, c2:1, c3:6, c1b:20, c2b:20, c3b:10}	
	tf.d_kata = {n:'muff', c1:3, c2:6, c3:3, c1b:10, c2b:10, c3b:0, sub_p:0}	
	tf.d_socks = {n:'simple_l', c1:6, c2:3, c1b:20, c2b:0}	
	tf.d_hat = {n:'casquette', c1:6, c1b:20, c2:3, c2b:0, c3:7, c3b:0}	
	tf.d_pin = {n:'egg', type:'single', c1:3, c2:6, c1b:0, c2b:10}	
	if(f.got_socks.simple_l!=1){tf.d_check.socks=0;}
	if(f.got_pin.egg!=1){tf.d_check.pin=0;}
	if(f.got_hat.casquette!=1){tf.d_check.hat=0;}
	}
else if(tf.r=='summer_onepiece'){
	tf.d_dress = {n:'onepiece', type:'onp', sub_p:0, c1:3, c2:7, c3:6, c1b:0, c2b:0, c3b:0}	
	tf.d_socks = {n:'simple_s', c1:7, c2:7, c1b:0, c2b:0}	
	tf.d_hat = {n:'catu_stripe', c1:6, c1b:0, c2:7, c2b:0, c3:7, c3b:0}	
	tf.d_pin = {n:'flower', type:'single', c1:6, c2:7, c1b:10, c2b:0}	
	tf.d_ribbon = {n:'thin', type:'l_twin', c1:6, c2:7, c1b:10, c2b:0}	
	if(f.got_pin.flower!=1){tf.d_check.pin=0;}
	if(f.got_hat.catu_stripe!=1){tf.d_check.hat=0;}
	}
else if(tf.r=='seiso_purple'){
	tf.d_dress = {n:'seiso', type:'onp', sub_p:0, c1:7, c2:4, c3:7, c1b:0, c2b:20, c3b:0}	
	tf.d_eri = {n:'first', c1:7, c2:4, c3:4, c1b:0, c2b:20, c3b:10, sub_p:'a'}	
	tf.d_socks = {n:'simple_m', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_hat = {n:'catu_stripe', c1:4, c1b:20, c2:1, c2b:0, c3:7, c3b:0}	
	tf.d_pin = {n:'non', type:'wide', c1:7, c2:7, c1b:20, c2b:0}	
	if(f.got_socks.simple_m!=1){tf.d_check.socks=0;}
	if(f.got_hat.catu_stripe!=1){tf.d_check.hat=0;}
	}
else if(tf.r=='black_princess'){
	tf.d_dress = {n:'ribbon', type:'onp', sub_p:0, c1:7, c2:7, c3:7, c1b:20, c2b:10, c3b:0}	
	tf.d_eri = {n:'frill', c1:7, c2:7, c3:7, c1b:20, c2b:10, c3b:0, sub_p:'d'}	
	tf.d_under_b = {n:'simple', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_under_p = {n:'simple', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_socks = {n:'stripe_m', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_hat = {n:'race', c1:7, c1b:20, c2:7, c2b:10, c3:7, c3b:0}	
	tf.d_pin = {n:'skull', type:'double', c1:7, c2:1, c1b:0, c2b:10}	
	tf.d_ribbon = {n:'bold', type:'poney', c1:7, c2:7, c1b:20, c2b:10}	
	if(f.got_socks.stripe_m!=1){tf.d_check.socks=0;}
	if(f.got_pin.skull!=1){tf.d_check.pin=0;}
	if(f.got_hat.race!=1){tf.d_check.hat=0;}
	if(f.got_ribbon.bold!=1){tf.d_check.ribbon=0;}
	}
else if(tf.r=='green_fox'){
	tf.d_dress = {n:'peacock', type:'onp', sub_p:0, c1:5, c2:5, c3:7, c1b:20, c2b:10, c3b:20}	
	tf.d_eri = {n:'frill', c1:5, c2:5, c3:7, c1b:20, c2b:10, c3b:20, sub_p:'a'}	
	tf.d_socks = {n:'simple_m', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_hat = {n:'kemo', c1:7, c1b:20, c2:7, c2b:10, c3:7, c3b:0}	
	tf.d_pin = {n:'flower', type:'wide', c1:3, c2:5, c1b:0, c2b:10}	
	tf.d_ribbon = {n:'non', type:'twin', c1:7, c2:7, c1b:20, c2b:10}	
	if(f.got_socks.simple_m!=1){tf.d_check.socks=0;}
	if(f.got_hat.kemo!=1){tf.d_check.hat=0;}
	if(f.got_pin.flower!=1){tf.d_check.pin=0;}
	}
else if(tf.r=='loli_pink'){
	tf.d_dress = {n:'seiso', type:'onp', sub_p:0, c1:7, c2:1, c3:4, c1b:0, c2b:0, c3b:10}	
	tf.d_kata = {n:'peacock', c1:1, c2:7, c3:4, c1b:0, c2b:0, c3b:10, sub_p:0}	
	tf.d_under_b = {n:'simple', c1:1, c2:7, c1b:0, c2b:0}	
	tf.d_under_p = {n:'simple', c1:1, c2:7, c1b:0, c2b:0}	
	tf.d_socks = {n:'stripe_l', c1:1, c2:7, c1b:0, c2b:0}	
	tf.d_pin = {n:'star', type:'double', c1:1, c2:7, c1b:0, c2b:0}	
	tf.d_ribbon = {n:'bold', type:'side', c1:1, c2:7, c1b:0, c2b:0}	
	if(f.got_socks.stripe_l!=1){tf.d_check.socks=0;}
	if(f.got_pin.star!=1){tf.d_check.pin=0;}
	if(f.got_ribbon.bold!=1){tf.d_check.ribbon=0;}
	}
else if(tf.r=='alice_madness'){
	tf.d_dress.type = 'up'
	tf.d_dress_a = {n:'alice', sub_p:0, c1:7, c2:6, c3:7, c1b:20, c2b:20, c3b:0}	
	tf.d_dress_b = {n:'alice', c1:7, c2:6, c3:7, c1b:20, c2b:20, c3b:10}	
	tf.d_eri = {n:'frill', c1:7, c2:7, c3:7, c1b:10, c2b:20, c3b:0, sub_p:'d'}	
	tf.d_under_b = {n:'simple', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_under_p = {n:'simple', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_socks = {n:'stripe_l', c1:6, c2:7, c1b:20, c2b:20}	
	tf.d_pin = {n:'non', type:'wide', c1:1, c1b:20}	
	if(f.got_socks.stripe_l!=1){tf.d_check.socks=0;}
	}
else if(tf.r=='black_magician'){
	tf.d_dress = {n:'yin', type:'onp', sub_p:0, c1:7, c2:7, c3:7, c1b:0, c2b:20, c3b:10}	
	tf.d_socks = {n:'simple_l', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_hat = {n:'silk', c1:7, c1b:0, c2:7, c2b:20, c3:7, c3b:0}	
	tf.d_pin = {n:'thin', type:'wide', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_glasses = {n:'square', c1:7, c1b:20, c2:7, c2b:0}	
	if(f.got_socks.simple_l!=1){tf.d_check.socks=0;}
	if(f.got_hat.silk!=1){tf.d_check.hat=0;}
	if(f.got_glasses.square!=1){tf.d_check.glasses=0;}
	}
else if(tf.r=='sera_purple'){
	tf.d_dress.type = 'up'
	tf.d_dress_a = {n:'first_ns', sub_p:0, c1:4, c2:3, c3:7, c1b:20, c2b:0, c3b:0}	
	tf.d_dress_b = {n:'skirt_s', c1:4, c2:3, c3:4, c1b:20, c2b:0, c3b:0}	
	tf.d_eri = {n:'sailor', c1:4, c2:3, c3:7, c1b:20, c2b:0, c3b:0, sub_p:0}	
	tf.d_under_b = {n:'simple', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_under_p = {n:'simple', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_socks = {n:'simple_m', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_pin = {n:'star', type:'double', c1:3, c2:4, c1b:0, c2b:10}	
	tf.d_ribbon = {n:'shsh', type:'twin', c1:4, c2:7, c1b:0, c2b:10}	
	if(f.got_socks.simple_m!=1){tf.d_check.socks=0;}
	if(f.got_pin.star!=1){tf.d_check.pin=0;}
	if(f.got_ribbon.shsh!=1){tf.d_check.ribbon=0;}
	}
else if(tf.r=='peacock'){
	tf.d_dress = {n:'peacock', type:'onp', sub_p:0, c1:1, c2:1, c3:7, c1b:20, c2b:10, c3b:0}	
	tf.d_kata = {n:'peacock', c1:1, c2:1, c3:7, c1b:20, c2b:10, c3b:0, sub_p:0}	
	tf.d_under_b = {n:'simple', c1:1, c2:7, c1b:0, c2b:0}	
	tf.d_under_p = {n:'simple', c1:1, c2:7, c1b:0, c2b:0}	
	tf.d_socks = {n:'simple_l', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_hat = {n:'silk', c1:1, c1b:20, c2:1, c2b:10, c3:7, c3b:0}	
	if(f.got_socks.simple_l!=1){tf.d_check.socks=0;}
	if(f.got_hat.silk!=1){tf.d_check.hat=0;}
	}
else if(tf.r=='hanako'){
	tf.d_dress.type = 'up'
	tf.d_dress_a = {n:'hanako', sub_p:0, c1:2, c2:7, c3:7, c1b:20, c2b:0, c3b:0}	
	tf.d_dress_b = {n:'genes_l', c1:7, c2:6, c3:7, c1b:20, c2b:10, c3b:0}	
	tf.d_eri = {n:'hanako', c1:7, c2:2, c3:2, c1b:0, c2b:10, c3b:20, sub_p:'c'}	
	tf.d_socks = {n:'simple_l', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_hat = {n:'casquette', c1:7, c1b:20, c2:7, c2b:20, c3:7, c3b:0}	
	if(f.got_socks.simple_l!=1){tf.d_check.socks=0;}
	if(f.got_hat.casquette!=1){tf.d_check.hat=0;}
	}
else if(tf.r=='TVA'){
	tf.d_dress.type = 'up'
	tf.d_dress_a = {n:'blazer', sub_p:'a', c1:1, c2:3, c3:1, c1b:20, c2b:0, c3b:10}	
	tf.d_dress_b = {n:'genes_l', c1:1, c2:3, c3:6, c1b:20, c2b:0, c3b:10}	
	tf.d_under_b = {n:'simple', c1:6, c2:3, c1b:0, c2b:0}	
	tf.d_under_p = {n:'simple', c1:6, c2:3, c1b:0, c2b:0}	
	tf.d_socks = {n:'simple_m', c1:6, c2:3, c1b:0, c2b:0}	
	tf.d_pin = {n:'thin', type:'double', c1:1, c2:1, c1b:20, c2b:20}	
	tf.d_ribbon = {n:'bees', type:'side', c1:6, c2:7, c1b:10, c2b:0}	
	tf.d_glasses = {n:'half', c1:1, c1b:20, c2:7, c2b:0}	
	if(f.got_socks.simple_m!=1){tf.d_check.socks=0;}
	if(f.got_ribbon.bees!=1){tf.d_check.ribbon=0;}
	if(f.got_glasses.half!=1){tf.d_check.glasses=0;}
	}
else if(tf.r=='yin'){
	tf.d_dress = {n:'yin', type:'onp', sub_p:0, c1:7, c2:4, c3:7, c1b:20, c2b:10, c3b:0}	
	tf.d_under_b = {n:'simple', c1:4, c2:7, c1b:20, c2b:0}	
	tf.d_under_p = {n:'simple', c1:4, c2:7, c1b:20, c2b:0}	
	tf.d_socks = {n:'simple_l', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_ribbon = {n:'thin', type:'poney', c1:4, c1b:10}	
	if(f.got_socks.simple_l!=1){tf.d_check.socks=0;}
	}
else if(tf.r=='battle_maid'){
	tf.d_dress.type = 'up'
	tf.d_dress_a = {n:'alice', sub_p:0, c1:7, c2:3, c3:7, c1b:20, c2b:0, c3b:0}	
	tf.d_dress_b = {n:'first', c1:7, c2:3, c3:7, c1b:20, c2b:0, c3b:0}	
	tf.d_eri = {n:'hanako', c1:7, c2:3, c3:7, c1b:20, c2b:0, c3b:0, sub_p:'d'}	
	tf.d_under_b = {n:'simple', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_under_p = {n:'simple', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_socks = {n:'simple_m', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_hat = {n:'frill', c1:7, c1b:20, c2:3, c2b:0, c3:7, c3b:0}	
	tf.d_pin = {n:'thin', type:'double', c1:3, c2:7, c1b:0, c2b:20}	
	tf.d_ribbon = {n:'bold', type:'l_twin', c1:7, c2:7, c1b:20, c2b:0}	
	tf.d_glasses = {n:'half', c1:7, c1b:0, c2:7, c2b:0}	
	if(f.got_socks.simple_m!=1){tf.d_check.socks=0;}
	if(f.got_dress1.maid!=1){tf.d_check.hat=0;}
	if(f.got_ribbon.bold!=1){tf.d_check.ribbon=0;}
	if(f.got_glasses.half!=1){tf.d_check.glasses=0;}
	}

else if(tf.r=='sera_swim'){
	tf.d_dress.type = 'up'
	tf.d_dress_a = {n:'bdoll_b', sub_p:0, c1:7, c2:2, c3:7, c1b:0, c2b:20, c3b:0}	
	tf.d_dress_b = {n:'genes_s', c1:2, c2:7, c3:7, c1b:20, c2b:0, c3b:0}	
	tf.d_eri = {n:'sailor', c1:7, c2:2, c3:2, c1b:0, c2b:0, c3b:10, sub_p:0}	
	tf.d_under_b = {n:'swim_m_smsm', c1:7, c2:2, c1b:0, c2b:0}	
	tf.d_under_p = {n:'swim_m_smsm', c1:7, c2:2, c1b:0, c2b:0}	
	tf.d_socks = {n:'suke_l', c1:2, c2:7, c1b:0, c2b:0}	
	tf.d_pin = {n:'egg', type:'wide', c1:1, c2:3, c1b:0, c2b:0}	
	tf.d_ribbon = {n:'shsh', type:'l_twin', c1:2, c2:7, c1b:10, c2b:0}	
	if(f.got_socks.suke_l!=1){tf.d_check.socks=0;}
	if(f.got_pin.egg!=1){tf.d_check.pin=0;}
	if(f.got_ribbon.shsh!=1){tf.d_check.ribbon=0;}
	if(f.got_under.swim_m_smsm!=1){tf.d_check.under_b=0, tf.d_check.under_p=0;}
	}
[endscript]
[iscript]

;ペースト
if(f.d_color.dress==1){f.d_dress.type=tf.d_dress.type
	if(f.d_dress.type=='onp'){f.d_dress.n=tf.d_dress.n, f.d_dress.sub_p=tf.d_dress.sub_p
		if(f.d_color.color==1){
			f.d_dress.c1=tf.d_dress.c1, f.d_dress.c2=tf.d_dress.c2, f.d_dress.c3=tf.d_dress.c3
			f.d_dress.c1b=tf.d_dress.c1b, f.d_dress.c2b=tf.d_dress.c2b, f.d_dress.c3b=tf.d_dress.c3b;}}
	else{f.d_dress_a.n=tf.d_dress_a.n, f.d_dress_a.sub_p=tf.d_dress_a.sub_p
		if(f.d_color.color==1){
			f.d_dress_a.c1=tf.d_dress_a.c1, f.d_dress_a.c2=tf.d_dress_a.c2, f.d_dress_a.c3=tf.d_dress_a.c3
			f.d_dress_a.c1b=tf.d_dress_a.c1b, f.d_dress_a.c2b=tf.d_dress_a.c2b, f.d_dress_a.c3b=tf.d_dress_a.c3b;}}}
if(f.d_color.eri==1){f.d_eri.n=tf.d_eri.n, f.d_eri.sub_p=tf.d_eri.sub_p
	if(f.d_color.color==1){
		f.d_eri.c1=tf.d_eri.c1, f.d_eri.c2=tf.d_eri.c2, f.d_eri.c3=tf.d_eri.c3
		f.d_eri.c1b=tf.d_eri.c1b, f.d_eri.c2b=tf.d_eri.c2b, f.d_eri.c3b=tf.d_eri.c3b;}}
if(f.d_color.kata==1){f.d_kata.n=tf.d_kata.n, f.d_kata.sub_p=tf.d_kata.sub_p
	if(f.d_color.color==1){
		f.d_kata.c1=tf.d_kata.c1, f.d_kata.c2=tf.d_kata.c2, f.d_kata.c3=tf.d_kata.c3
		f.d_kata.c1b=tf.d_kata.c1b, f.d_kata.c2b=tf.d_kata.c2b, f.d_kata.c3b=tf.d_kata.c3b;}}
if(f.d_color.dress_b==1 && tf.d_dress.type=='up'){f.d_dress_b.n=tf.d_dress_b.n
	if(f.d_color.color==1){
		f.d_dress_b.c1=tf.d_dress_b.c1, f.d_dress_b.c2=tf.d_dress_b.c2, f.d_dress_b.c3=tf.d_dress_b.c3
		f.d_dress_b.c1b=tf.d_dress_b.c1b, f.d_dress_b.c2b=tf.d_dress_b.c2b, f.d_dress_b.c3b=tf.d_dress_b.c3b;}}

if(f.d_color.hair==1 && tf.d_check.pin!=0){f.d_pin.n=tf.d_pin.n, f.d_pin.type=tf.d_pin.type
	if(f.d_color.color==1){
		f.d_pin.c1=tf.d_pin.c1, f.d_pin.c2=tf.d_pin.c2, f.d_pin.c3=tf.d_pin.c3
		f.d_pin.c1b=tf.d_pin.c1b, f.d_pin.c2b=tf.d_pin.c2b, f.d_pin.c3b=tf.d_pin.c3b;}}
if(f.d_color.hair==1 && tf.d_check.ribbon!=0){f.d_ribbon.n=tf.d_ribbon.n, f.d_ribbon.type=tf.d_ribbon.type
	if(f.d_color.color==1){
		f.d_ribbon.c1=tf.d_ribbon.c1, f.d_ribbon.c2=tf.d_ribbon.c2, f.d_ribbon.c3=tf.d_ribbon.c3
		f.d_ribbon.c1b=tf.d_ribbon.c1b, f.d_ribbon.c2b=tf.d_ribbon.c2b, f.d_ribbon.c3b=tf.d_ribbon.c3b;}}
		
if(f.d_color.hat==1 && tf.d_check.hat!=0){f.d_hat.n=tf.d_hat.n
	if(f.d_color.color==1){
		f.d_hat.c1=tf.d_hat.c1, f.d_hat.c2=tf.d_hat.c2, f.d_hat.c3=tf.d_hat.c3
		f.d_hat.c1b=tf.d_hat.c1b, f.d_hat.c2b=tf.d_hat.c2b, f.d_hat.c3b=tf.d_hat.c3b;}}
if(f.d_color.glasses==1 && tf.d_check.glasses!=0){f.d_glasses.n=tf.d_glasses.n
	if(f.d_color.color==1){
		f.d_glasses.c1=tf.d_glasses.c1, f.d_glasses.c2=tf.d_glasses.c2, f.d_glasses.c3=tf.d_glasses.c3
		f.d_glasses.c1b=tf.d_glasses.c1b, f.d_glasses.c2b=tf.d_glasses.c2b, f.d_glasses.c3b=tf.d_glasses.c3b;}}
if(f.d_color.socks==1 && tf.d_check.socks!=0){f.d_socks.n=tf.d_socks.n
	if(f.d_color.color==1){
		f.d_socks.c1=tf.d_socks.c1, f.d_socks.c2=tf.d_socks.c2, f.d_socks.c3=tf.d_socks.c3
		f.d_socks.c1b=tf.d_socks.c1b, f.d_socks.c2b=tf.d_socks.c2b, f.d_socks.c3b=tf.d_socks.c3b;}}
if(f.d_color.under==1 && tf.d_check.under_b!=0){f.d_under_b.n=tf.d_under_b.n
	if(f.d_color.color==1){
		f.d_under_b.c1=tf.d_under_b.c1, f.d_under_b.c2=tf.d_under_b.c2, f.d_under_b.c3=tf.d_under_b.c3
		f.d_under_b.c1b=tf.d_under_b.c1b, f.d_under_b.c2b=tf.d_under_b.c2b, f.d_under_b.c3b=tf.d_under_b.c3b;}}
if(f.d_color.under==1 && tf.d_check.under_p!=0){f.d_under_p.n=tf.d_under_p.n
	if(f.d_color.color==1){
		f.d_under_p.c1=tf.d_under_p.c1, f.d_under_p.c2=tf.d_under_p.c2, f.d_under_p.c3=tf.d_under_p.c3
		f.d_under_p.c1b=tf.d_under_p.c1b, f.d_under_p.c2b=tf.d_under_p.c2b, f.d_under_p.c3b=tf.d_under_p.c3b;}}

[endscript]
[load_d_info_all][under_bs_set][under_ps_set][socks_s_set]
[dress_set][glasses_set][under_b_set][eri_set][kata_set][hat_set][f_hair_set][hair_set][under_p_set][socks_set]
[d_face_h][jump/ tg=*stop ]


;;色変更ボタン処理
*col_change_1a
[eval exp="f.sel.act='col1a', f.sel.col_b=1" ][jump/ tg=*col_change_a ]
*col_change_2a
[eval exp="f.sel.act='col2a', f.sel.col_b=2" ][jump/ tg=*col_change_a ]
*col_change_3a
[eval exp="f.sel.act='col3a', f.sel.col_b=3" ][jump/ tg=*col_change_a ]
*col_change_a
[iscript]
if(f.sel.col==0 || f.sel.col==10 || f.sel.col==20){tf.r=1;}else{tf.r=0;}
if(f.tab.main=='dress1'){f.sel.dress='dress', f.sel.d_='d_dress';}
else if(f.tab.main=='dress2'){f.sel.dress='dress', f.sel.d_='d_dress_a';}
else if(f.tab.main=='dress3'){f.sel.dress='dress_b', f.sel.d_='d_dress_b';}
else if(f.tab.main=='eri'){f.sel.dress='eri', f.sel.d_='d_eri';}
else if(f.tab.main=='kata'){f.sel.dress='kata', f.sel.d_='d_kata';}
else if(f.tab.main=='hair'){f.sel.dress='pin', f.sel.d_='d_pin';}
else if(f.tab.main=='under'){f.sel.dress='under_b', f.sel.d_='d_under_b';}
else if(f.tab.main=='head'){f.sel.dress='hat', f.sel.d_='d_hat';}

else if(f.tab.main=='color_control'){f.sel.dress='all_color', f.sel.d_='d_all_color';}

[endscript]
[d_col_exp_switch]
[jump/ tg=*color_change_multi cond="f.tab.main=='color_control'"]
[jump/ tg=*reload_d ]

*col_change_1b
[eval exp="f.sel.act='col1b', f.sel.col_b=1" ][jump/ tg=*col_change_b ]
*col_change_2b
[eval exp="f.sel.act='col2b', f.sel.col_b=2" ][jump/ tg=*col_change_b ]
*col_change_b
[iscript]
if(f.sel.col==0 || f.sel.col==10 || f.sel.col==20){tf.r=1;}else{tf.r=0;}
if(f.tab.main=='hair'){f.sel.dress='ribbon', f.sel.d_='d_ribbon';}
else if(f.tab.main=='under'){f.sel.dress='under_p', f.sel.d_='d_under_p';}
else if(f.tab.main=='head'){f.sel.dress='glasses', f.sel.d_='d_glasses';}
else if(f.tab.main=='limb'){f.sel.dress='socks', f.sel.d_='d_socks';}

[endscript]
[d_col_exp_switch][jump/ tg=*reload_d ]

*color_change_multi
[if exp="f.d_color.hair==1" ]
	[d_col_exp_switch d=d_pin][f_hair_set]
	[d_col_exp_switch d=d_ribbon][hair_set][endif]
[if exp="f.d_color.hat==1" ]
	[d_col_exp_switch d=d_hat][hat_set][endif]
[if exp="f.d_color.eri==1" ]
	[d_col_exp_switch d=d_eri][eri_set][endif]
[if exp="f.d_color.dress==1 && f.d_dress.type=='onp'" ]
	[d_col_exp_switch][dress_set]
	[d_col_exp_switch d=d_dress][dress_set][endif]
[if exp="f.d_color.dress==1 && f.d_dress.type=='up'" ]
	[d_col_exp_switch d=d_dress_a][dress_set][endif]
[if exp="f.d_color.dress_b==1" ]
	[d_col_exp_switch d=d_dress_b][dress_set][endif]
[if exp="f.d_color.socks==1" ]
	[d_col_exp_switch d=d_socks][socks_set][socks_s_set][endif]
[if exp="f.d_color.under==1" ]
		[d_col_exp_switch d=d_under_p][under_p_set][under_ps_set]
		[d_col_exp_switch d=d_under_b][under_b_set][under_bs_set][endif]
[jump/ tg=*after_reload_dress ]


;プリセット
*preset_col_change
[if exp="f.tab.main=='color_control'" ][color_preset d=d_all_color]
	[if exp="f.d_color.hair==1" ]
			[color_preset d=d_pin][f_hair_set]
			[color_preset d=d_ribbon][hair_set][endif]
	[if exp="f.d_color.hat==1" ][color_preset d=d_hat][hat_set][endif]
	[if exp="f.d_color.glasses==1" ][color_preset d=d_glasses][glasses_set][endif]
	[if exp="f.d_color.socks==1" ][color_preset d=d_socks][socks_set][socks_s_set][endif]
	[if exp="f.d_color.under==1" ]
		[color_preset d=d_under_p][under_p_set][under_ps_set]
		[color_preset d=d_under_b][under_b_set][under_bs_set][endif]
[endif]

[if exp="f.tab.main=='dress1' || (f.tab.main=='color_control' && f.d_color.dress==1)" ]
	[color_preset d=d_dress][dress_set][endif]
[if exp="f.tab.main=='dress2' || (f.tab.main=='color_control' && f.d_color.dress==1)" ]
	[color_preset d=d_dress_a][dress_set][endif]
[if exp="f.tab.main=='dress3' || (f.tab.main=='color_control' && f.d_color.dress_b==1)" ]
	[color_preset d=d_dress_b][dress_set][endif]
[if exp="f.tab.main=='eri' || (f.tab.main=='color_control' && f.d_color.eri==1)" ]
	[color_preset d=d_eri][eri_set][endif]
[if exp="f.tab.main=='kata' || (f.tab.main=='color_control' && f.d_color.kata==1)" ]
	[color_preset d=d_kata][kata_set][endif]

[jump/ tg=*stop ]


;;着せ替え処理
*dress1_change
[eval exp="f.d_dress.type='onp', f.sel.act='dress1', f.sel.dress='dress', f.d_dress.sub_p=0" ][jump/ tg=*reload_d ]
*dress2_change
[eval exp="f.d_dress.type='up', f.sel.act='dress2', f.sel.dress='dress', f.d_dress_a.sub_p=0" ][jump/ tg=*reload_d ]
*dress3_change
[eval exp="f.d_dress.type='up', f.sel.act='dress3', f.sel.dress='dress_b'" ][jump/ tg=*reload_d ]
*eri_change
[eval exp="f.sel.act='eri', f.sel.dress='eri', f.d_eri.sub_p=0" ][jump/ tg=*reload_d ]
*kata_change
[eval exp="f.sel.act='kata', f.sel.dress='kata', f.d_kata.sub_p=0" ][jump/ tg=*reload_d ]
*pin_change
[eval exp="f.sel.act='pin', f.sel.dress='pin'" ][jump/ tg=*reload_d ]
*ribbon_change
[eval exp="f.sel.act='ribbon', f.sel.dress='ribbon'" ][jump/ tg=*reload_d ]
*hat_change
[eval exp="f.sel.act='hat', f.sel.dress='hat'" ][jump/ tg=*reload_d ]
*glasses_change
[eval exp="f.sel.act='glasses', f.sel.dress='glasses'" ][jump/ tg=*reload_d ]
*under_b_change
[eval exp="f.sel.act='under_b', f.sel.dress='under_b'" ][jump/ tg=*reload_d ]
*under_p_change
[eval exp="f.sel.act='under_p', f.sel.dress='under_p'" ][jump/ tg=*reload_d ]
*socks_change
[eval exp="f.sel.act='socks', f.sel.dress='socks'" ][jump/ tg=*reload_d ]

*reload_d
[if exp="f.sel.dress=='dress' || f.sel.dress=='dress_b'" ][load_d_info_dress][load_d_info_dress_b][dress_set][d_face_h]
[elsif exp="f.sel.dress=='eri'" ][load_d_info_eri][eri_set]
[elsif exp="f.sel.dress=='kata'" ][load_d_info_kata][kata_set]
[elsif exp="f.sel.dress=='under_b'" ][load_d_info_under_b][under_b_set][under_bs_set]
[elsif exp="f.sel.dress=='under_p'" ][load_d_info_under_p][under_p_set][under_ps_set][d_face_h]
[elsif exp="f.sel.dress=='glasses'" ][load_d_info_glasses][glasses_set]
;[elsif exp="f.sel.dress=='gloves'" ][gloves_set]
[elsif exp="f.sel.dress=='socks'" ][load_d_info_socks][socks_set][socks_s_set]
[elsif exp="f.sel.dress=='pin'" ][load_d_info_pin][f_hair_set]
[elsif exp="f.sel.dress=='ribbon'" ][hair_set]
	[if exp="f.d_hat.n!='non' && (f.d_ribbon.type=='twin' || f.d_ribbon.type=='side')" ]
		[if exp="f.d_hat.type=='hat' || f.d_ribbon.n!='non'" ]
		[eval exp="f.d_hat.n='non', f.d_hat.sub_c=0" ][load_d_info_hat][hat_set][endif][endif]	
[elsif exp="f.sel.dress=='hat'" ][load_d_info_hat][hat_set]
	[if exp="f.d_hat.n!='non' && f.d_hat.type=='hat' && (f.d_ribbon.type=='twin' || f.d_ribbon.type=='side')" ]
	[eval exp="f.d_ribbon.type='nr', f.d_ribbon.sub_c=0, f.d_ribbon.n='non'" ][hair_set][endif]
	[if exp="f.d_hat.n!='non' && (f.d_ribbon.type=='twin' || f.d_ribbon.type=='side') && f.d_ribbon.n!='non'" ]
	[eval exp="f.d_ribbon.sub_c=0, f.d_ribbon.n='non'" ][hair_set][endif]
[endif]

*after_reload_dress
[set_dress_info]

[if exp="f.sel.act=='col1a' || f.sel.act=='col2a' || f.sel.act=='col3a' || f.sel.act=='col1b' || f.sel.act=='col2b'" ]
[eval exp="f.tg[2]='*' +f.sel.act" ][xy x=1040 x_add=50 preg1='menu/dress/color/'][btn/xy]
[elsif exp="f.sel.dress=='glasses' || f.sel.dress=='under_p' || f.sel.dress=='socks' || f.sel.dress=='ribbon' || f.sel.dress=='body_ac'" ]
[eval exp="f.tg[2]='*col_menu_b'" ]
[elsif exp="f.g_config.d_col_btn!='custom' && (f.tab.main=='dress1' || f.tab.main=='dress2' || f.tab.main=='dress3' || f.tab.main=='eri' || f.tab.main=='kata')" ]
[eval exp="f.tg[1]= '*' + f.tab.main + '_menu'" ][jump/ tg=1 ]
[else][eval exp="f.tg[2]='*col_menu_a'" ][endif]
[jump/ tg=2 ]

;脱衣
*undress
[if exp="(tf.undress=='dress' || tf.undress=='all') && f.x_count.sex>=1" ]
	[eval exp="f.d_dress.n='non', f.d_dress.sub_p=0, f.d_dress_a.n='non', f.d_dress_a.sub_p=0, f.d_dress_b.n='non'" ]
	[load_d_info_dress][load_d_info_dress_b][dress_set][d_face_h][endif]
[if exp="tf.undress=='eri' || tf.undress=='all'" ]
	[eval exp="f.d_eri.n='non', f.d_eri.sub_p=0" ]
	[load_d_info_eri][eri_set][endif]
[if exp="tf.undress=='kata' || tf.undress=='all'" ]
	[eval exp="f.d_kata.n='non', f.d_kata.sub_p=0" ]
	[load_d_info_kata][kata_set][endif]
[if exp="tf.undress=='head' || tf.undress=='all'" ]
	[eval exp="f.d_hat.n='non'" ][load_d_info_hat][hat_set][endif]
[if exp="tf.undress=='hair' || tf.undress=='all'" ]
	[eval exp="f.d_pin.type='nr', f.d_pin.sub_c=0, f.d_pin.n='non', f.d_ribbon.type='nr', f.d_ribbon.sub_c=0, f.d_ribbon.n='non'" ]
	[f_hair_set][hair_set][endif]
[if exp="tf.undress=='glasses' || tf.undress=='all'" ]
	[eval exp="f.d_glasses.n='non'" ][load_d_info_glasses][glasses_set][endif]
[if exp="tf.undress=='socks' || tf.undress=='all'" ]
	[eval exp="f.d_socks.n='non'" ][load_d_info_socks][socks_set][socks_s_set][endif]
[if exp="(tf.undress=='under' || tf.undress=='all') && f.x_count.sex>=1" ]
	[eval exp="f.d_under_p.n='non', f.d_under_b.n='non'" ]
	[load_d_info_under_b][under_b_set][under_bs_set]
	[load_d_info_under_p][under_p_set][under_ps_set][d_face_h][endif]

[jump/ tg=*tab_change]


*stop
;tf.test=f.sel.act, 
[eval exp="f.sel.act=0, f.sel.dress=0, f.tg[2]=0" ][clearstack][s]

;;return
*return
[cm][if exp="f.d_dress.type=='onp' && f.d_dress.h=='xxx' || f.d_dress.type=='up' && (f.d_dress_a.h=='xxx' || f.d_dress_b.h=='xxx')" ]
[eval exp="f.d_dress.current_h='xxx'" ][else][eval exp="f.d_dress.current_h='def'" ][endif]
[last_act exp=dress_up][clearfix][resetdelay][endnolog][show_role][show_message_w][return_bace]

*return_to_before_bed
[cm][clearfix][jump/ st=H/Hx_sys tg=*sel_before_bed_ ]


;;衣装記録関連============================================
;;セーブボタン
*cdn_list
[cm][clearfix][clearstack][free_tx][c_mod n=win st='dress_up/cdn']
[eval exp="f.tab.cdn_n=1" cond="!f.tab.cdn_n"]
[eval exp="tf.role_name='return'" ]
[btn/fix tg=*dress_menu gr=menu/dress/return x=1434 y=823 ]
[btn/fix tg=*cdn_delete_all gr=menu/dress/cdn/delete_all x=1442 y=37 cond="f.act.last!='before_bed'" ]

*sav_auto_btn
[clearfix name='sav_auto_btn'][eval exp="tf.role_name='sav_auto_btn'" ]
[if exp="f.act.last!='before_bed'" ]
[xy y=37 preg1='menu/dress/cdn/' tg1='*sav_auto_btn' ][btn/xy]
[btn/fix tg=1 g=1 x=1269 gr=on sw=d_daily_change swm=1 exp="f.sel.act='sav_auto_btn', f.g_config.d_daily_change=1" ]
[btn/fix tg=1 g=1 x=1340 gr=off sw=d_daily_change swm=0 exp="f.sel.act='sav_auto_btn', f.g_config.d_daily_change=0" ][endif]
[jump/ tg=*stop cond="f.sel.act=='sav_auto_btn'"]


*cdn_n_tab
[clearfix name='cdn_n_tab'][eval exp="tf.role_name='cdn_n_tab'" ]
[xy x=940 y=93 x_add=56 tg1='*cdn_n_tab' preg1='menu/dress/cdn/n/'][btn/xy]
[btn/fix l=x tg=1 g=1 gr=1 sw=cdn_page swm=1 exp="f.tab.cdn_n=1" ]
[btn/fix l=x tg=1 g=1 gr=2 sw=cdn_page swm=2 exp="f.tab.cdn_n=2" ]
[btn/fix l=x tg=1 g=1 gr=3 sw=cdn_page swm=3 exp="f.tab.cdn_n=3" ]
[btn/fix l=x tg=1 g=1 gr=4 sw=cdn_page swm=4 exp="f.tab.cdn_n=4" ]
[btn/fix l=x tg=1 g=1 gr=5 sw=cdn_page swm=5 exp="f.tab.cdn_n=5" ]
[btn/fix l=x tg=1 g=1 gr=6 sw=cdn_page swm=6 exp="f.tab.cdn_n=6" ]
[btn/fix l=x tg=1 g=1 gr=7 sw=cdn_page swm=7 exp="f.tab.cdn_n=7" ]
[btn/fix l=x tg=1 g=1 gr=8 sw=cdn_page swm=8 exp="f.tab.cdn_n=8" ]
[btn/fix l=x tg=1 g=1 gr=9 sw=cdn_page swm=9 exp="f.tab.cdn_n=9" ]
[btn/fix l=x tg=1 g=1 gr=10 sw=cdn_page swm=10 exp="f.tab.cdn_n=10" ]

*cdn_list_btn
[iscript]
tf.n=1
if(f.tab.cdn_n==1){tf.n=1;}else if(f.tab.cdn_n==2){tf.n=11;}else if(f.tab.cdn_n==3){tf.n=21;}
else if(f.tab.cdn_n==4){tf.n=31;}else if(f.tab.cdn_n==5){tf.n=41;}else if(f.tab.cdn_n==6){tf.n=51;}
else if(f.tab.cdn_n==7){tf.n=61;}else if(f.tab.cdn_n==8){tf.n=71;}else if(f.tab.cdn_n==9){tf.n=81;}
else if(f.tab.cdn_n==10){tf.n=91;}
[endscript]

[clearfix name='cdn_btn'][eval exp="tf.role_name='cdn_btn'" ][xy x=866 y=156 y_add=65][btn/xy]
[btn/cdn exp="tf.ch_sav=1" ]
[btn/cdn exp="tf.ch_sav=2" ][btn/cdn exp="tf.ch_sav=3" ][btn/cdn exp="tf.ch_sav=4" ]
[btn/cdn exp="tf.ch_sav=5" ][btn/cdn exp="tf.ch_sav=6" ][btn/cdn exp="tf.ch_sav=7" ]
[btn/cdn exp="tf.ch_sav=8" ][btn/cdn exp="tf.ch_sav=9" ][btn/cdn exp="tf.ch_sav=10" ]
[jump/ tg=*stop cond="f.sel.act=='cdn_daily_sw'"]

[xy x=892 y=165 y_add=65 s=25][btn/xy][free_tx]
[iscript]
if(f.tab.cdn_n==1){tf.n=1;}else if(f.tab.cdn_n==2){tf.n=11;}else if(f.tab.cdn_n==3){tf.n=21;}
else if(f.tab.cdn_n==4){tf.n=31;}else if(f.tab.cdn_n==5){tf.n=41;}else if(f.tab.cdn_n==6){tf.n=51;}
else if(f.tab.cdn_n==7){tf.n=61;}else if(f.tab.cdn_n==8){tf.n=71;}else if(f.tab.cdn_n==9){tf.n=81;}
else if(f.tab.cdn_n==10){tf.n=91;}
[endscript]
*btn_name_tx
[eval exp="f.tx[1]=tf.n + '|「' + f.d_sav_n[tf.n], tf.n+=1" ][tx_img tx1=1 tx2=」 l=y ]
[if exp="f.tab.cdn_n==1 && tf.n>=11 || f.tab.cdn_n==2 && tf.n>=21 || f.tab.cdn_n==3 && tf.n>=31 || f.tab.cdn_n==4 && tf.n>=41 || f.tab.cdn_n==5 && tf.n>=51 || f.tab.cdn_n==6 && tf.n>=61 || f.tab.cdn_n==7 && tf.n>=71 || f.tab.cdn_n==8 && tf.n>=81 || f.tab.cdn_n==9 && tf.n>=91 || f.tab.cdn_n==10 && tf.n>=101" ][else]
[jump/ tg=*btn_name_tx ][endif]
[jump/ tg=*stop cond="f.sel.act=='cdn_n_tab'"]

*cdn_list_tab
[clearfix name='cdn_menu'][eval exp="tf.role_name='cdn_menu'" ]
[xy y=823 preg1='menu/dress/cdn/tab/' tg1='*cdn_list_btn' ][btn/xy]
[if exp="f.act.last!='before_bed'" ]
[btn/fix tg=1 g=1 x=848 gr=save sw=tab.sub swm=save exp="f.tab.sub='save'" ]
[btn/fix tg=1 g=1 x=944 gr=load sw=tab.sub swm=load exp="f.tab.sub='load'" ]
[btn/fix tg=1 g=1 x=1055 gr=edit sw=tab.sub swm=edit exp="f.tab.sub='edit'" ]
[btn/fix tg=1 g=1 x=1150 gr=daily_sw sw=tab.sub swm=daily_sw exp="f.tab.sub='daily_sw'" ]
[btn/fix tg=1 g=1 x=1318 gr=delete sw=tab.sub swm=delete exp="f.tab.sub='delete'" ][endif]
[jump/ tg=*stop ]


;;コーディネート関連ジャンプ先
*cdn_btn_act
[eval exp="tf.ch_sav=tf.ch_sav+(f.tab.cdn_n*10)-10" ]
[jump/ tg=*cdn_daily_sw cond="f.tab.sub=='daily_sw'"]
[eval exp="f.sav_color[0]=f.sav_color[tf.ch_sav], f.sav_auto[0]=f.sav_auto[tf.ch_sav]"]
[jump/ tg=*stop cond="f.tab.sub!='save' && f.sav_color[0]==0"]
[eval exp="f.sav_auto[0]=1" cond="f.sav_auto[0]!=1 && f.sav_auto[0]!=0"]
[clearstack][clearfix][free_tx][eval exp="f.tg[1]= '*cdn_' + f.tab.sub" ][jump/ tg=1 ]


;コーディネート編集/上書きセーブ確認
*cdn_edit
*cdn_save
[c_mod n=win st=dress_up/cdn_edit ]
[eval exp="f.sav_color[0]='black'" cond="f.sav_color[0]==0"]
[eval exp="f.d_sav_n[0]=f.d_sav_n[tf.ch_sav], tf.r=''"]
*cdn_
[commit][cm][eval exp="f.d_sav_n[0]=tf.r" cond="tf.r!=''"]
[xy x=919 y=110 x_add=130 y_add=46][btn/xy][free_tx]
[tx_img l=y tx1=ｺｰﾃﾞｨﾈｰﾄ n=tf.ch_sav]
[if exp="f.tab.sub=='save'" ]
	[tx_img l=y tx1=「 n=f.d_sav_n[0] tx2=」に][tx_img tx1=現在着せている衣装セットを上書きします。]
[else]
	[tx_img l=y tx1=「 n=f.d_sav_n[0] tx2=」][tx_img tx1=の情報編集。][endif]

[xy tg1=*cdn_ preg1='menu/dress/color/' preg2='menu/dress/cdn/' sw1='sav_color[0]' ]
[xy x=995 y=269 x_add=54][btn/xy]
[btn/ l=x tg=1 g=1 gr=black sw=1 swm=black exp="f.sav_color[0]='black'"]
[btn/ l=x tg=1 g=1 gr=white sw=1 swm=white exp="f.sav_color[0]='white'"]
[btn/ l=x tg=1 g=1 gr=blue sw=1 swm=blue exp="f.sav_color[0]='blue'"]
[btn/ l=x tg=1 g=1 gr=red sw=1 swm=red exp="f.sav_color[0]='red'"]
[btn/ l=x tg=1 g=1 gr=yellow sw=1 swm=yellow exp="f.sav_color[0]='yellow'"]
[btn/ l=x tg=1 g=1 gr=green sw=1 swm=green exp="f.sav_color[0]='green'"]
[btn/ l=x tg=1 g=1 gr=purple sw=1 swm=purple exp="f.sav_color[0]='purple'"]
[btn/ l=x tg=1 g=1 gr=orange sw=1 swm=orange exp="f.sav_color[0]='orange'"]
[btn/ l=x tg=1 g=1 gr=pink sw=1 swm=pink exp="f.sav_color[0]='pink'"]
[btn/ l=x tg=1 g=1 gr=l_blue sw=1 swm=l_blue exp="f.sav_color[0]='l_blue'"]

[xy x=1257 y=334 x_add=103][btn/xy]
[btn/ l=x tg=1 g=2 gr=do sw=sav_auto[0] swm=1 exp="f.sav_auto[0]=1"]
[btn/ l=x tg=1 g=2 gr=dont sw=sav_auto[0] swm=0 exp="f.sav_auto[0]=0"]

[tx_box x=951 y=394 w=580 h=42 ex="tf.r" ]

[xy x=968 y=468 x_add=246][btn/xy]
[btn/ l=x tg=*save_cdn g=2 gr=decide ][btn/ l=x tg=*cdn_list g=2 gr=remind ]
[jump/ tg=*stop ]


*cdn_daily_sw

[if exp="f.sav_auto[tf.ch_sav]==0 && f.sav_color[tf.ch_sav]!=0" ][eval exp="f.sav_auto[tf.ch_sav]=1" ]
[else][eval exp="f.sav_auto[tf.ch_sav]=0" ][endif]
;[if exp="f.sav_auto[tf.ch_sav]==1" ][eval exp="f.sav_auto[tf.ch_sav]=0" ]
;[else][eval exp="f.sav_auto[tf.ch_sav]=1" ][endif]
[eval exp="f.sel.act='cdn_daily_sw'" ]
[jump/ tg=*cdn_list_btn ]

*save_cdn
[commit][cm][eval exp="f.d_sav_n[0]=tf.r" cond="tf.r!=''"]
[eval exp="f.sav_auto[tf.ch_sav]=f.sav_auto[0], f.sav_color[tf.ch_sav]=f.sav_color[0], f.d_sav_n[tf.ch_sav]=f.d_sav_n[0]"]
[if exp="f.tab.sub=='edit'" ][jump/ tg=*cdn_list ][else][eval/save_cdn][jump/ tg=*dress_menu ][endif]

*cdn_delete
*cdn_load
[c_mod n=win st=dress_up/cdn_confirm ]
[eval exp="f.d_sav_n[0]=f.d_sav_n[tf.ch_sav], tf.r=''"]
[xy x=919 y=110 x_add=130 y_add=46][btn/xy][free_tx]
[tx_img l=y tx1=ｺｰﾃﾞｨﾈｰﾄ n=tf.ch_sav][tx_img l=y tx1=「 n=f.d_sav_n[0] tx2=」を]
	[if exp="f.tab.sub=='delete'" ][tx_img tx1=消去します。よろしいですか？]
	[else][tx_img tx1=シルヴィに着せます。][endif]
[xy x=968 y=272 x_add=246 preg1='menu/dress/cdn/'][btn/xy]
[if exp="f.tab.sub=='delete'" ]
[btn/ l=x tg=*delete_single g=1 gr=decide ][else]
[btn/ l=x tg=*load_cdn g=1 gr=decide ][endif]
[btn/ l=x tg=*cdn_list g=1 gr=remind ]
[jump/ tg=*stop ]



*load_cdn
[cm][eval/load_cdn][set_dress_up][show_dress_up]
;[if exp="f.act.last=='before_bed'" ]
;	[if exp="f.d_head.tc!='a1' && f.d_ribbon.hair!='c' && f.d_ribbon.hair!='e' " ][chara_part name=dress_up hat=00.png allow_storage=true ][endif]
;	[chara_part name=dress_up neck=00.png  under_p=00.png under_b=00.png allow_storage=true ][endif]
;[show_dress]
;[if exp="f.act.last=='before_bed'" ][jump/ tg=*cdn_list ]
;[else]
[jump/ tg=*cdn_list ]
;[endif]

*delete_single
[cm][eval/reset_single][jump/ tg=*cdn_list ]


*cdn_delete_all
[clearstack][clearfix][free_tx]
[c_mod n=win st=dress_up/cdn_confirm ]
[xy x=919 y=110 x_add=130 y_add=46][btn/xy][free_tx]
[tx_img l=y tx1=ｺｰﾃﾞｨﾈｰﾄ記録を全てリセットします]
[tx_img tx1=よろしいですか？]
[xy x=968 y=272 x_add=246 preg1='menu/dress/cdn/'][btn/xy]
[btn/ l=x tg=*really g=1 gr=decide ]
[btn/ l=x tg=*cdn_list g=1 gr=remind ]
[jump/ tg=*stop ]

*really
[cm][xy x=919 y=110 x_add=130 y_add=46][btn/xy][free_tx]
[tx_img tx1=本当によろしいですか？ ]
[xy x=968 y=272 x_add=246 preg1='menu/dress/cdn/'][btn/xy]
[btn/ l=x tg=*all_delete_yes g=1 gr=decide ]
[btn/ l=x tg=*cdn_list g=1 gr=remind ]
[jump/ tg=*stop ]

*all_delete_yes
[cm]
[iscript]
;for (var i=0; i<100; i++) f.d_sav_n[i]='ｺｰﾃﾞｨﾈｰﾄ' + i, f.sav_color[i]=0;
f.d_sav_n=[], f.sav_auto=[], f.sav_color=[]
for (var i=0; i<101; i++) f.d_sav_n[i]='ｺｰﾃﾞｨﾈｰﾄ' + i, f.sav_color[i]=0;
[endscript]
;リセットしました
[jump/ tg=*cdn_list ]


;;macro

0
1 type a,b,c,d,e
2 color 0,1,2,3,~10,11,12
3 filename(type + color_t)
4 def or H
5 color_val single,dark,light,

;5 hue
;6 sat
;7 


*macro

[return]
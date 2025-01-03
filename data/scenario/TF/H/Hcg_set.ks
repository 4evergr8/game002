;;x1
*x1_set
[reset_cg][eval exp="f.situ.situ='sex',f.fol_info.scene_h='hcg_x1'" ][reload_file_path][set_black]
[hcg/ body=b1 ef2=00 ][set_hcg][return]
*x1_show_set
[bg/ g=H st=x_1 ][c_show n=cg resize=1 ][return]

*x2_set
[reset_cg][eval exp="f.situ.situ='sex',f.fol_info.scene_h='hcg_x2'" ][reload_file_path][set_black]
[hcg/ body=b0 arm=b0- ef2=00 ][chara_layer_mod name="cg" part=arm zindex=176 ]
[set_hcg][return]
*x2_show_set
[bg/ g=H st=x_2 ][c_show n=cg resize=1 ][return]

*x3_set
[reset_cg][eval exp="f.situ.situ='sex',f.fol_info.scene_h='hcg_x3'" ][reload_file_path][set_black]
[hcg/ other=line eyes=1 body=b1 arm=a1 arm_b=b0_ ef2=00 ]
[layer_ef gr=H/xxx mode=mult ][set_hcg][return]
*x3_show_set
[bg/ g=H st=x_3 ][c_show n=cg resize=1 ][return]

;missional
*missional_set
[reset_cg][eval exp="f.situ.situ='sex',f.fol_info.scene_h='hcg_missional'" ][reload_file_path]
[set_black][hcg/ body=b1a arm=a1 h=1 ef2=breath other=line ]
;[chara_layer_mod name="cg" part=glasses zindex=151 ]
[set_hcg]
;[dress_set][glasses_set][b_acc_set]
;[f_hair_set][f_hair_set][ribbon_set][hair_set]
;[if exp="f.d_head.tc=='a1'" ][hcg/ hat=a1 ][endif]
[return]

*missional_show_set
[bg/ g=H/ st=missional ][c_show n=cg resize=1 ][return]

*mouth_set
[eval exp="f.fol_info.scene_h='hcg_mouth'" ][reload_file_path]
;[c_show n=glasses w=t ]
[reset_effect][show_effect xr=non]
[hide_black]
[return]

;;forest
*wd_f_set
[reset_cg][eval exp="f.situ.situ='sex',f.fol_info.scene_h='hcg_front'" ][reload_file_path][black][set_black]
[hcg/ body=b0 head=h0 p=a0 h=g_shad ef2=00 sleeve=g_c ][h_ef/ ef2=00 ]
[if exp="f.act.time<=2" ][layer_ef gr=H/forest1 mode=ovl ]
[elsif exp="f.act.time<=4" ][layer_ef gr=H/forest2 mode=ovl ]
[else][layer_ef gr=H/forest3 mode=ovl ][endif]
[set_hcg][return]
*wd_f_show_set
[bg/ g=H st=forest_f ][c_show n=cg resize=1][return]

*wd_b_set
[eval exp="f.situ.situ='sex_cg', f.g_info.scene=='Hx_back', f.fol_info.scene_h='hcg_forest', f.situ.place='forest'" ]
[set_Hx set=back][Hx/ev face_reset=1][bg/ g=H st=forest_b ][show_Hx]
[return]

;;kitchin
*ktn_set
[eval exp="f.situ.situ='sex_cg', f.g_info.scene=='Hx_back', f.fol_info.scene_h='hcg_kitchen', f.situ.place='kitchen'" ]
[set_Hx set=back][Hx/ev face_reset=1][bg/ g=H st=kitchen ][show_Hx]
[return]

;;self
*self_set
[reset_cg][eval exp="f.situ.situ='sex',f.fol_info.scene_h='hcg_self'" ][reload_file_path]
[set_black][chara_layer_mod name="cg" part=body zindex=151 ]
[hcg/ body=b0 head=h0 ef2=1 ]

[if exp="f.d_head.tc=='a1'" ]
;[hcg/ hat=a1 ]
;[elsif exp="f.d_head.tt=='a2'" ][hcg/ hat="H/self/hat/a2 ]
[else][hcg/ hat=00 ][endif]
;[glasses_set]
[f_hair_set]
;[ribbon_set]
;[socks_set]
[hair_set][return]

*self_show_set
[bg/ t=0 g=H/ st=auto1 ][c_show n=cg resize=1 ][return]

;;nurse
*nurse_set
[eval exp="f.situ.situ='sex',f.fol_info.scene_h='hcg_nurse'" ][reload_file_path]
;[if exp="tf.hist_mode>=1 && f.d_dress.tt=='non' || tf.r=='strip'" ][else][nurse_dress st=1][endif]
;[glasses_set]
[reset_effect]
;[b_acc_set]
[return]

*nurse_show_set
;[bg/ g=H st=dress_memory t=1 ]
;[c_show n=glasses ][c_show n=hat ]
;[c_show n=b_acc ]
;[if exp="f.d_dress.tt!='non' && tf.r!='strip'" ][c_show n=dress ][endif]
[return]

*mouth
[eval exp="f.situ.situ='sex',f.fol_info.scene_h='hcg_mouth'" ][reload_file_path][reset_effect]
;;c_select
*wd_f
[if exp="tf.hist_mode<=9" ]
	[if exp="f.drs_dress[3]==1" ][eval exp="f.d_dress.tt='c',f.d_dress.sub='non_white'" ]
	[else][eval exp="f.d_dress.tt='d',f.d_dress.sub='light'" ][endif]
[endif][eval exp="tf.sex_situ='wd_f'" ][jump/ tg=*c_select ]
*wd_b
[if exp="tf.hist_mode<=9" ]
	[if exp="f.drs_dress[3]==1" ][eval exp="f.d_dress.tt='c',f.d_dress.sub='non_white'" ]
	[else][eval exp="f.d_dress.tt='d',f.d_dress.sub='light'" ][endif]
[endif][eval exp="tf.sex_situ='wd_b'" ][jump/ tg=*c_select ]
*morning
[if exp="tf.hist_mode<=9" ]
	[if exp="f.drs_dress_x[1]==1" ][eval exp="f.d_dress.tt='xa',f.d_dress.sub='light_black'" ]
	[elsif exp="f.drs_dress_x[2]==1" ][eval exp="f.d_dress.tt='xb',f.d_dress.sub='light_black'" ]
	[elsif exp="f.drs_dress_x[3]==1" ][eval exp="f.d_dress.tt='xc',f.d_dress.sub='light_black'" ][endif]
[endif][eval exp="tf.sex_situ='morning'" ][jump/ tg=*c_select ]
*missional
[if exp="tf.hist_mode<=9" ]
	[if exp="f.drs_dress[6]==1" ][eval exp="f.d_dress.tt='f',f.d_dress.sub='all'" ]
	[elsif exp="f.drs_dress[10]==1" ][eval exp="f.d_dress.tt='j',f.d_dress.sub='dark'" ]
	[elsif exp="f.drs_dress[11]==1" ][eval exp="f.d_dress.tt='k',f.d_dress.sub='non_white'" ][endif]
[endif][eval exp="tf.sex_situ='missional'" ][jump/ tg=*c_select ]
*nurse
[if exp="tf.hist_mode<=9" ]
	[eval exp="f.d_dress.tt='e',f.d_dress.sub='light_black'" ]
[endif][eval exp="tf.sex_situ='nurse'" ][jump/ tg=*c_select ]
;*self
;[eval exp="tf.sex_situ='self'" ][jump/ tg=*c_select ]

*decide
[combine_dress_code]
[if exp="tf.sex_situ=='wd_f' || tf.sex_situ=='wd_b' " ][eval exp="f.st[1]='H/forest'" ]
[else][eval exp="f.st[1]='H/' + tf.sex_situ" ][endif]
[eval exp="f.tg[1]= tf.sex_situ + '_decide'" ][jump/ st=1 tg=1 ]

*c_select
[eval exp="tf.d_temp=[,'single']" ]
[if exp="tf.hist_mode>=10" ][eval exp="f.d_dress.tt='non',f.d_dress.cc=0,f.d_dress.tc='non0',f.d_dress.sub='single'" ][endif]
[bg/ g=H st=dress_memory ]
*c_select_
[cm][xy tg1='*c_select_' preg1='menu/dress/dress/' preg2='menu/dress/color/' preg3='menu/before_H/m_' ]
[xy x=356 sw1='d_dress.tt' sw2='d_dress.cc' ][btn/xy]
[btn/ l=y tg=*decide g=3 gr=decide y=580 ]
[btn/ l=y tg=*return_memory_menu g=3 gr=return y=647]

[xy x=394 y=170 x_add=95 y_add=144 ][btn/xy x=6]
[if exp="tf.hist_mode>=10" ]
[btn/ l=x tg=1 g=1 gr=00 sw=1 swm=non exp="f.d_dress.tt='non',f.d_dress.sub='single'"][endif]
[if exp="tf.sex_situ=='wd_f' || tf.sex_situ=='wd_b'" ]
	[if exp="f.drs_dress[3]==1" ][btn/ l=x tg=1 g=1 gr=c sw=1 swm=c exp="f.d_dress.tt='c',f.d_dress.sub='non_white'"][endif]
	[if exp="f.drs_dress[4]==1" ][btn/ l=x tg=1 g=1 gr=d sw=1 swm=d exp="f.d_dress.tt='d',f.d_dress.sub='light_black'"][endif]
[elsif exp="tf.sex_situ=='morning'" ]
	[if exp="f.drs_eri[1]==1" ][btn/ l=x tg=1 g=1 gr=z_ep sw=1 swm=z_ep exp="f.d_dress.tt='z_ep',f.d_dress.sub='light_black'"][endif]
	[if exp="f.drs_dress_x[1]==1" ][btn/ l=x tg=1 g=1 gr=xa sw=1 swm=xa exp="f.d_dress.tt='xa',f.d_dress.sub='light_black'"][endif]
	[if exp="f.drs_dress_x[2]==1" ][btn/ l=x tg=1 g=1 gr=xb sw=1 swm=xb exp="f.d_dress.tt='xb',f.d_dress.sub='light_black'"][endif]
	[if exp="f.drs_dress_x[3]==1" ][btn/ l=x tg=1 g=1 gr=xc sw=1 swm=xc exp="f.d_dress.tt='xc',f.d_dress.sub='light_black'"][endif]
[elsif exp="tf.sex_situ=='missional'" ]
	[if exp="f.drs_dress[6]==1" ][btn/ l=x tg=1 g=1 gr=f sw=1 swm=f exp="f.d_dress.tt='f',f.d_dress.sub='all'"][endif]
	[if exp="f.drs_dress[10]==1" ][btn/ l=x tg=1 g=1 gr=j sw=1 swm=j exp="f.d_dress.tt='j',f.d_dress.sub='dark'"][endif]
	[if exp="f.drs_dress[11]==1" ][btn/ l=x tg=1 g=1 gr=k sw=1 swm=k exp="f.d_dress.tt='k',f.d_dress.sub='non_white'"][endif]
	[if exp="f.drs_dress[10]==1" ][btn/ l=x tg=1 g=1 gr=jx sw=1 swm=jx exp="f.d_dress.tt='jx',f.d_dress.sub='dark'"][endif]
	[if exp="f.drs_dress[11]==1" ][btn/ l=x tg=1 g=1 gr=kx sw=1 swm=kx exp="f.d_dress.tt='kx',f.d_dress.sub='non_white'"][endif]
	[if exp="f.drs_dress[7]==1 || f.drs_dress[11]==1" ]
								[btn/ l=x tg=1 g=1 gr=gxx sw=1 swm=gxx exp="f.d_dress.tt='gxx',f.d_dress.sub='non_white'"][endif]
	[if exp="f.drs_dress[8]==1" ][btn/ l=x tg=1 g=1 gr=hxx sw=1 swm=hxx exp="f.d_dress.tt='hxx',f.d_dress.sub='non_white'"][endif]
[elsif exp="tf.sex_situ=='nurse'" ]
	[if exp="f.drs_dress[5]==1" ][btn/ l=x tg=1 g=1 gr=e sw=1 swm=e exp="f.d_dress.tt='e',f.d_dress.sub='light_black'"][endif]
[endif]

[if exp="f.d_dress.tt=='non'" ][s][endif]
[xy x=485 y=462 x_add=55 y_add=39 ]
[if exp="f.d_dress.sub=='light_black'" ][eval exp="f.x.bace-=30" ][endif]
[if exp="tf.sex_situ!='missional'" ][eval exp="f.y.bace-=144" ][endif]
[btn/xy]

[iscript]
;形状選択直後nonかsingleからの移行時デフォルトカラー設定
if(f.d_dress.cc==0 && (f.d_dress.sub=='non_white' || f.d_dress.sub=='dark')){tf.d_temp[1]='single';}
if(tf.d_temp[1]=='single' && f.d_dress.sub!='single'){
	if(f.d_dress.tt=='e' || f.d_dress.tt=='xa' || f.d_dress.tt=='xb'){f.d_dress.cc=0;}
	else if(f.d_dress.tt=='f'){f.d_dress.cc=12;}
	else if(f.d_dress.tt=='i' || f.d_dress.tt=='n' || f.d_dress.tt=='o' || f.d_dress.tt=='ox'){f.d_dress.cc=10;}
	else{f.d_dress.cc=11;}}
;選択中衣装の色範囲再適応＆色ボタン表示範囲再設定
if(f.d_dress.sub=='dark' && f.d_dress.cc<=9){f.d_dress.cc+=10;}
else if(f.d_dress.sub=='light' && f.d_dress.cc>=10){f.d_dress.cc-=10;}
else if(f.d_dress.sub=='light_black' && f.d_dress.cc==11){f.d_dress.cc-=10;}
else if(f.d_dress.sub=='non_white' && f.d_dress.cc==0){f.d_dress.cc=10;}

tf.d_temp[1]=f.d_dress.sub
f.d_dress.tc=f.d_dress.tt+f.d_dress.cc
[endscript]

;[eval exp="tf.d_temp[1]=f.d_dress.sub" ][eval exp="f.d_dress.tc=f.d_dress.tt+f.d_dress.cc" ]
[if exp="f.d_dress.sub!='dark'" ]
	[btn/ l=x tg=1 g=2 gr=light_b sw=2 swm=1 exp="f.d_dress.cc=1" ]
	[btn/ l=x tg=1 g=2 gr=pink sw=2 swm=2 exp="f.d_dress.cc=2" ]
	[btn/ l=x tg=1 g=2 gr=yellow sw=2 swm=3 exp="f.d_dress.cc=3" ]
	[btn/ l=x tg=1 g=2 gr=green sw=2 swm=4 exp="f.d_dress.cc=4" ]
	[btn/ l=x tg=1 g=2 gr=purple sw=2 swm=5 exp="f.d_dress.cc=5" ]
	[btn/ l=x tg=1 g=2 gr=orange sw=2 swm=6 exp="f.d_dress.cc=6" ]
[endif]
[if exp="f.d_dress.sub!='non_white' && f.d_dress.sub!='dark'" ]
	[btn/ l=x tg=1 g=2 gr=white sw=2 swm=0 exp="f.d_dress.cc=0" ][endif]
[if exp="f.d_dress.sub=='light'" ][s][endif]
[if exp="f.d_dress.sub=='light_black'" ]
	[btn/ l=x tg=1 g=2 gr=black sw=2 swm=10 exp="f.d_dress.cc=10" ][s][endif]
[if exp="f.d_dress.sub!='dark'" ][add_y][endif]
	[btn/ l=x tg=1 g=2 gr=blue sw=2 swm=11 exp="f.d_dress.cc=11" ]
	[btn/ l=x tg=1 g=2 gr=red sw=2 swm=12 exp="f.d_dress.cc=12" ]
	[btn/ l=x tg=1 g=2 gr=yel2 sw=2 swm=13 exp="f.d_dress.cc=13" ]
	[btn/ l=x tg=1 g=2 gr=green sw=2 swm=14 exp="f.d_dress.cc=14" ]
	[btn/ l=x tg=1 g=2 gr=purple sw=2 swm=15 exp="f.d_dress.cc=15" ]
	[btn/ l=x tg=1 g=2 gr=brown sw=2 swm=16 exp="f.d_dress.cc=16" ]
	[btn/ l=x tg=1 g=2 gr=black sw=2 swm=10 exp="f.d_dress.cc=10" ]
[s]

*return_memory_menu
[cm][load_dress][jump/ st=sys/system tg=*memory_menu ]

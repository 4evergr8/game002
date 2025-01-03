;;=========角色预定义信息
[chara_new name="black" storage="00.png" ][chara_new name="other" storage="00.png" ]
[chara_new name="sub" storage="00.png" ][chara_new name="sub2" storage="00.png" ]
;bad_endよう
;[chara_new name="dress" storage="00.png" ]

[chara_new name="syl" storage="00.png" ]

;最終的にいらなくなる？
[chara_new name="xr" storage="00/whole.png" ][chara_new name="tx" storage="00/whole.png" ]
[chara_new name="se" storage="00/whole.png" ][chara_new name="ef" storage="00/whole.png" ]
[chara_new name="ef2" storage="00/whole.png" ]
[chara_new name="z_a" storage="00/whole.png" ][chara_new name="hand_R" storage="00.png" ]

;[chara_new name="z_b" storage="00.png" ][chara_new name="hand_L" storage="00.png" ]
;[chara_new name="p" storage="00.png" ][chara_new name="breath" storage="00.png" ]
;[chara_new name="tear" storage="00.png" ]

[chara_new name="s_feel" storage="TF/dot_pink.png" ][chara_new name="y_feel" storage="TF/dot_blue.png" ]

[chara_new name="win" storage="00/whole.png" ][eval exp="tf.c_name='win',tf.zindex=0" ]
[c_layer pt=bace][c_layer pt=ef][c_layer pt=ef2][c_layer pt=ef3][c_layer pt=d_time]



;stand
[chara_new name="stand" storage="TF/00/stand.png" ][eval exp="tf.c_name='stand',tf.zindex=0" ]
[c_layer pt=hair_b][c_layer pt=ribbon_b_c1]
;[c_layer pt=ribbon_b_c2]
[c_layer pt=body][c_layer pt=b_acc]
[c_layer pt=under_b_c1][c_layer pt=under_b_c2][c_layer pt=under_p_c1][c_layer pt=under_p_c2]
[c_layer pt=socks_c1][c_layer pt=socks_c2]
[c_layer pt=dress_bc1][c_layer pt=dress_bc2][c_layer pt=dress_bc3]
[c_layer pt=dress_c1][c_layer pt=dress_c2][c_layer pt=dress_c3]
[c_layer pt=eri_c1][c_layer pt=eri_c2][c_layer pt=eri_c3]
[c_layer pt=arm]
;[c_layer pt=gloves]
[c_layer pt=slv_c1][c_layer pt=slv_c2]
[c_layer pt=kata_c1][c_layer pt=kata_c2][c_layer pt=kata_c3]
[c_layer pt=head][c_layer pt=eyes][c_layer pt=mouth]
[c_layer pt=glasses_c2][c_layer pt=glasses_c1]
[c_layer pt=mayu][c_layer pt=hair_f]
[c_layer pt=pin_c1][c_layer pt=pin_c2]
;[c_layer pt=ribbon_f_c2]
[c_layer pt=hair_t z=500][c_layer pt=ribbon_f_c1]
[c_layer pt=hat_c1][c_layer pt=hat_c2]

;dress_up
[chara_new name="dress_up" storage="TF/00/stand.png" ][eval exp="tf.c_name='dress_up',tf.zindex=0" ]
[c_layer pt=hair_b]
[c_layer pt=ribbon_b_c1]
;[c_layer pt=ribbon_b_c2]
[c_layer pt=body][c_layer pt=b_acc]
[c_layer pt=under_b_c1][c_layer pt=under_b_c2][c_layer pt=under_p_c1][c_layer pt=under_p_c2]
[c_layer pt=under_b_c1s][c_layer pt=under_b_c2s][c_layer pt=under_p_c1s][c_layer pt=under_p_c2s]
[c_layer pt=socks_c1][c_layer pt=socks_c2][c_layer pt=socks_c1s][c_layer pt=socks_c2s]
;[c_layer pt=gloves_c1][c_layer pt=gloves_c2]
[c_layer pt=dress_bc1][c_layer pt=dress_bc2][c_layer pt=dress_bc3]
[c_layer pt=dress_c1][c_layer pt=dress_c2][c_layer pt=dress_c3]
[c_layer pt=eri_c1][c_layer pt=eri_c2][c_layer pt=eri_c3]
[c_layer pt=slv_c1][c_layer pt=slv_c2]
[c_layer pt=kata_c1][c_layer pt=kata_c2][c_layer pt=kata_c3]
[c_layer pt=head][c_layer pt=eyes][c_layer pt=mouth]
[c_layer pt=glasses_c2][c_layer pt=glasses_c1]
[c_layer pt=mayu][c_layer pt=hair_f][c_layer pt=pin_c1][c_layer pt=pin_c2]
[c_layer pt=hair_t z=500][c_layer pt=ribbon_f_c1]
[c_layer pt=hat_c1][c_layer pt=hat_c2]

;nade
[chara_new name="nade" storage="TF/00/old.png" ][eval exp="tf.c_name='nade',tf.zindex=0" ]
[c_layer pt=hair_b][c_layer pt=ribbon_b_c1][c_layer pt=body][c_layer pt=b_acc]
[c_layer pt=under_b_c1][c_layer pt=under_b_c2]
[c_layer pt=dress_c1][c_layer pt=dress_c2][c_layer pt=dress_c3]
[c_layer pt=eri_c1][c_layer pt=eri_c2][c_layer pt=eri_c3][c_layer pt=arm]
[c_layer pt=kata_c1][c_layer pt=kata_c2][c_layer pt=kata_c3]
[c_layer pt=head][c_layer pt=eyes][c_layer pt=mouth]
[c_layer pt=glasses_c2][c_layer pt=glasses_c1]
[c_layer pt=mayu][c_layer pt=hair_f]
[c_layer pt=pin_c1][c_layer pt=pin_c2]
[c_layer pt=hair_t z=500][c_layer pt=ribbon_f_c1]
[c_layer pt=hat_c1][c_layer pt=hat_c2]
[c_layer pt=hand]

;sit_room
[chara_new name=room storage="TF/00/room.png" ][eval exp="tf.c_name='room',tf.zindex=0" ]
[c_layer pt=hair_b][c_layer pt=ribbon_b_c1][c_layer pt=arm_b]
;[c_layer pt=gloves_b]
[c_layer pt=slv_b][c_layer pt=body][c_layer pt=b_acc]
[c_layer pt=under_b_c1][c_layer pt=under_b_c2][c_layer pt=under_p_c1][c_layer pt=under_p_c2]
[c_layer pt=socks_c1][c_layer pt=socks_c2]
[c_layer pt=dress_bc1][c_layer pt=dress_bc2][c_layer pt=dress_bc3]
[c_layer pt=dress_c1][c_layer pt=dress_c2][c_layer pt=dress_c3]
[c_layer pt=arm]
;[c_layer pt=gloves]
[c_layer pt=eri_c1][c_layer pt=eri_c2][c_layer pt=eri_c3]
[c_layer pt=slv_c1][c_layer pt=slv_c2]
[c_layer pt=kata_c1][c_layer pt=kata_c2][c_layer pt=kata_c3]
[c_layer pt=head][c_layer pt=eyes][c_layer pt=mouth]
[c_layer pt=glasses_c2][c_layer pt=glasses_c1]
[c_layer pt=mayu][c_layer pt=hair_f]
[c_layer pt=pin_c1][c_layer pt=pin_c2]
[c_layer pt=hair_t][c_layer pt=ribbon_f_c1]
[c_layer pt=hat_c1][c_layer pt=hat_c2]

;dinner
[chara_new name="dinner" storage="TF/00/right.png" ][eval exp="tf.c_name='dinner',tf.zindex=0" ]
[c_layer pt=chair]
[c_layer pt=hair_b][c_layer pt=ribbon_b_c1][c_layer pt=arm_b]
;[c_layer pt=gloves_b]
[c_layer pt=slv_b]
[c_layer pt=body][c_layer pt=b_acc]
[c_layer pt=under_b_c1][c_layer pt=under_b_c2]
;[c_layer pt=socks_c1][c_layer pt=socks_c2]
[c_layer pt=dress_bc1][c_layer pt=dress_bc2][c_layer pt=dress_bc3]
[c_layer pt=dress_c1][c_layer pt=dress_c2][c_layer pt=dress_c3]
[c_layer pt=arm][c_layer pt=gloves][c_layer pt=slv_c1][c_layer pt=slv_c2]
[c_layer pt=eri_c1][c_layer pt=eri_c2][c_layer pt=eri_c3]
[c_layer pt=head][c_layer pt=eyes][c_layer pt=mouth]
[c_layer pt=glasses_c2][c_layer pt=glasses_c1]
[c_layer pt=mayu][c_layer pt=hair_f]
[c_layer pt=pin_c1][c_layer pt=pin_c2]
[c_layer pt=hair_t][c_layer pt=ribbon_f_c1]
[c_layer pt=hat_c1][c_layer pt=hat_c2]
[c_layer pt=table][c_layer pt=food]

[chara_new name="table" storage="TF/00/whole.png" ][eval exp="tf.c_name='table',tf.zindex=0" ]
[c_layer pt=table]


;work
[chara_new name="work" storage="TF/00/whole.png" ][eval exp="tf.c_name='work',tf.zindex=0" ]
;[c_layer pt=ribbon_b_c1][c_layer pt=arm_b]
[c_layer pt=body][c_layer pt=hair_b][c_layer pt=head]
;[c_layer pt=dress_c1][c_layer pt=dress_c2][c_layer pt=dress_c3]
;[c_layer pt=socks_c1][c_layer pt=socks_c2]
[c_layer pt=hair]
;[c_layer pt=ribbon]
[c_layer pt=eyes][c_layer pt=mouth]
;[c_layer pt=glasses_c2][c_layer pt=glasses_c1]

[c_layer pt=hair_f][c_layer pt=mayu]
;[c_layer pt=pin_c1][c_layer pt=pin_c2]
;[c_layer pt=ribbon_f_c1]
[c_layer pt=hair_t]
;[c_layer pt=hat_c1][c_layer pt=hat_c2]


;;Hx
;Hxwhole
[chara_new name="Hx_ef" storage="TF/00/whole.png" ][eval exp="tf.c_name='Hx_ef',tf.zindex=0" ]
[c_layer pt=breath][c_layer pt=exx]
[c_layer pt=se][c_layer pt=tx][c_layer pt=ef]
[c_layer pt=heart]

;Hx1
;[chara_new name="Hx_mngr" storage="TF/00/Hx_mngr.png" ][eval exp="tf.c_name='Hx_mngr',tf.zindex=0" ]
[chara_new name="Hx_mngr" storage="00/00.png" ][eval exp="tf.c_name='Hx_mngr',tf.zindex=0" ]
[c_layer pt=hair_b][c_layer pt=ribbon_b_c1][c_layer pt=body][c_layer pt=boko]
;[c_layer pt=b_acc]
[c_layer pt=under_b_c1][c_layer pt=under_b_c2]
[c_layer pt=dress_c1][c_layer pt=dress_c2][c_layer pt=dress_c3]
[c_layer pt=dress_bc1][c_layer pt=dress_bc2][c_layer pt=dress_bc3]
[c_layer pt=eri_c1][c_layer pt=eri_c2][c_layer pt=eri_c3]
[c_layer pt=head][c_layer pt=eyes][c_layer pt=tear][c_layer pt=mouth]
[c_layer pt=glasses_c2][c_layer pt=glasses_c1]
[c_layer pt=mayu][c_layer pt=hair_f]
[c_layer pt=pin_c1][c_layer pt=pin_c2]
[c_layer pt=hair_t][c_layer pt=ribbon_f_c1]
[c_layer pt=hat_c1][c_layer pt=hat_c2]
[c_layer pt=sbody z=100][c_layer pt=socks_c1][c_layer pt=socks_c2]
[c_layer pt=z_b][c_layer pt=p z=120]
[c_layer pt=dress_bc_t1][c_layer pt=dress_bc_t2][c_layer pt=dress_bc_t3]
[c_layer pt=z_a][c_layer pt=xrr]
[c_layer pt=hand_R z=200][c_layer pt=hand_L][c_layer pt=m_mouth]
[c_layer pt=squi]

;Hx2
;[chara_new name="Hx_himn" storage="TF/00/Hx_himn.png" ][eval exp="tf.c_name='Hx_himn',tf.zindex=0" ]
[chara_new name="Hx_himn" storage="00/00.png" ][eval exp="tf.c_name='Hx_himn',tf.zindex=0" ]
[c_layer pt=man_bace][c_layer pt=hair_b][c_layer pt=ribbon_b_c1]
[c_layer pt=hand_Lb][c_layer pt=body][c_layer pt=socks_c1][c_layer pt=socks_c2]
[c_layer pt=man_legs]
;[c_layer pt=b_acc z=11]
[c_layer pt=z_b][c_layer pt=p z=100][c_layer pt=boko]
[c_layer pt=under_b_c1][c_layer pt=under_b_c2]
[c_layer pt=dress_c1][c_layer pt=dress_c2][c_layer pt=dress_c3]
[c_layer pt=eri_c1][c_layer pt=eri_c2][c_layer pt=eri_c3]
[c_layer pt=head][c_layer pt=eyes][c_layer pt=tear][c_layer pt=mouth]
[c_layer pt=glasses_c2][c_layer pt=glasses_c1]
[c_layer pt=mayu][c_layer pt=hair_f]
[c_layer pt=pin_c1][c_layer pt=pin_c2]
[c_layer pt=hair_t][c_layer pt=ribbon_f_c1]
[c_layer pt=hat_c1][c_layer pt=hat_c2]
[c_layer pt=dress_bc1][c_layer pt=dress_bc2][c_layer pt=dress_bc3]
[c_layer pt=dress_bc_t1][c_layer pt=dress_bc_t2][c_layer pt=dress_bc_t3]
[c_layer pt=squi][c_layer pt=z_a][c_layer pt=xrr]
[c_layer pt=hand_L z=500][c_layer pt=hand_R]

;Hx3
;[chara_new name="Hx_back" storage="TF/00/Hx_back.png" ][eval exp="tf.c_name='Hx_back',tf.zindex=0" ]
[chara_new name="Hx_back" storage="00/00.png" ][eval exp="tf.c_name='Hx_back',tf.zindex=0" ]
[c_layer pt=hand_Lb]
[c_layer pt=hair_b][c_layer pt=ribbon_b_c1]
;
[c_layer pt=squi]
;[c_layer pt=obje_b]
[c_layer pt=body][c_layer pt=boko]
[c_layer pt=z_b][c_layer pt=p]
;[c_layer pt=b_acc z=11]
;[c_layer pt=z_a]
[c_layer pt=socks_c1][c_layer pt=socks_c2]
[c_layer pt=under_b_c1][c_layer pt=under_b_c2]
[c_layer pt=dress_c1][c_layer pt=dress_c2][c_layer pt=dress_c3]
[c_layer pt=hand_L][c_layer pt=dress_bc1][c_layer pt=dress_bc2]
;[c_layer pt=dress_bc3]

[c_layer pt=hand_R z=200][c_layer pt=sbody][c_layer pt=obje_f]
[c_layer pt=slv_c1][c_layer pt=slv_c2]
;[c_layer pt=slv_c3]
[c_layer pt=eri_c1 z=250][c_layer pt=eri_c2][c_layer pt=eri_c3]
[c_layer pt=head][c_layer pt=eyes][c_layer pt=tear][c_layer pt=mouth]
[c_layer pt=glasses_c2][c_layer pt=glasses_c1]
[c_layer pt=mayu][c_layer pt=hair_f]
[c_layer pt=pin_c1][c_layer pt=pin_c2]
[c_layer pt=hair_t][c_layer pt=ribbon_f_c1]
[c_layer pt=hat_c1][c_layer pt=hat_c2]
[c_layer pt=man_bace]
[c_layer pt=xrr]

;[chara_new name="Hx_back_s" storage="TF/00/Hx_back_s.png" ][eval exp="tf.c_name='Hx_back_s',tf.zindex=0" ]
[chara_new name="Hx_back_s" storage="00/00.png" ][eval exp="tf.c_name='Hx_back_s',tf.zindex=0" ]
[c_layer pt=body][c_layer pt=boko][c_layer pt=z_b][c_layer pt=p][c_layer pt=hand_R ]
[c_layer pt=squi][c_layer pt=xrr][c_layer pt=hand_L ]

;Hf
[chara_new name="Hf" storage="TF/00/whole.png" ][eval exp="tf.c_name='Hf',tf.zindex=0" ]
[c_layer pt=hair_b z=5][c_layer pt=ribbon_b z=6][c_layer pt=body z=10]
[c_layer pt=b_acc z=30][c_layer pt=under_p z=40][c_layer pt=under_b z=50]
[c_layer pt=socks z=60][c_layer pt=shadow z=65]
[c_layer pt=dress z=70][c_layer pt=eri z=75]
[c_layer pt=arm z=90][c_layer pt=gloves z=90][c_layer pt=sleeve z=100]
[c_layer pt=head z=125][c_layer pt=eyes z=135][c_layer pt=mouth z=140]
[c_layer pt=glasses z=145][c_layer pt=hair_f z=150][c_layer pt=mayu z=155]
[c_layer pt=pin z=160][c_layer pt=ribbon z=165][c_layer pt=hat z=170]
[c_layer pt=h z=175][c_layer pt=other z=200]

;cg
[chara_new name="cg" storage="TF/00/whole.png" ][eval exp="tf.c_name='cg',tf.zindex=0" ]
[c_layer pt=arm_b][c_layer pt=hair_b]
;[c_layer pt=ribbon_b][c_layer pt=sleeve_b]
[c_layer pt=body]
;[c_layer pt=b_acc]
[c_layer pt=p ]
;[c_layer pt=socks][c_layer pt=dress][c_layer pt=eri]
[c_layer pt=head][c_layer pt=eyes]
;[c_layer pt=glasses]
[c_layer pt=hair_f]
;[c_layer pt=pin][c_layer pt=ribbon]
[c_layer pt=arm][c_layer pt=hair_t][c_layer pt=hat]
[c_layer pt=ef2][c_layer pt=h][c_layer pt=other]
[end_set_c_layer]

;;衣装情報
[macro name="load_d_info_dress"]
[iscript]
;slv0=non 0.5=half 1=long 1,5=half/2col 2=long/2loc
if(f.d_dress.type=='onp'){f.d_dress.sub_c=0, f.d_dress.slv=0, f.d_dress.h='def', d_name=f.d_dress.n
	if(~d_name.indexOf('__')){ f.d_dress.sub_p = (d_name.slice(-1)), f.d_dress.n = (d_name.slice(0, -3));}
	if(f.d_dress.n=='non'){f.d_dress.h='xxx';}
	else if(f.d_dress.n=='boro'){;}
	else if(f.d_dress.n=='ribbon'){f.d_dress.sub_c=3;}
	else if(f.d_dress.n=='onepiece'){f.d_dress.sub_c=3;}
	else if(f.d_dress.n=='onp_gara'){f.d_dress.sub_c=2;}
	else if(f.d_dress.n=='seiso'){f.d_dress.sub_c=3, f.d_dress.slv=1;}
	else if(f.d_dress.n=='wafuku'){f.d_dress.sub_c=3, f.d_dress.slv=2;}
	else if(f.d_dress.n=='maid'){f.d_dress.sub_c=3, f.d_dress.slv=2;}
	else if(f.d_dress.n=='nurse'){f.d_dress.sub_c=3, f.d_dress.slv=1.5;}
	else if(f.d_dress.n=='peacock'){f.d_dress.sub_c=2, f.d_dress.slv=1.5;}
	else if(f.d_dress.n=='reijou'){f.d_dress.sub_c=3, f.d_dress.slv=1.5;}
	else if(f.d_dress.n=='yin'){f.d_dress.sub_c=3, f.d_dress.slv=2;}
	}

else if(f.d_dress.type=='up'){f.d_dress_a.sub_c=0, f.d_dress_a.slv=0, f.d_dress_a.h='def', d_name=f.d_dress_a.n
;else if(f.d_dress.type=='up'){f.d_dress_a.sub_c=0, f.d_dress_a.sub_p=0, f.d_dress_a.slv=0, f.d_dress_a.h='def', d_name=f.d_dress_a.n
	if(~d_name.indexOf('__')){ f.d_dress_a.sub_p = (d_name.slice(-1)), f.d_dress_a.n = (d_name.slice(0, -3));}
	if(f.d_dress_a.n=='non'){f.d_dress_a.h='xxx';}
	else if(f.d_dress_a.n=='first'){f.d_dress_a.sub_c=3, f.d_dress_a.slv=1;}
	else if(f.d_dress_a.n=='first_ns'){f.d_dress_a.sub_c=3;}
	else if(f.d_dress_a.n=='hanako'){f.d_dress_a.sub_c=2, f.d_dress_a.slv=1;}
	else if(f.d_dress_a.n=='alice'){f.d_dress_a.sub_c=3, f.d_dress_a.slv=1.5;}
	else if(f.d_dress_a.n=='blazer'){f.d_dress_a.sub_c=2, f.d_dress_a.slv=2;}
	else if(f.d_dress_a.n=='Yshirt_l'){f.d_dress_a.sub_c=1, f.d_dress_a.slv=1;}
	else if(f.d_dress_a.n=='Yshirt_s'){f.d_dress_a.sub_c=1, f.d_dress_a.slv=0.5;}
	else if(f.d_dress_a.n=='sailor_l'){f.d_dress_a.sub_c=2, f.d_dress_a.slv=2;}
	else if(f.d_dress_a.n=='sailor_s'){f.d_dress_a.sub_c=2, f.d_dress_a.slv=1.5;}
	else if(f.d_dress_a.n=='kare'){f.d_dress_a.sub_c=1, f.d_dress_a.slv=1, f.d_dress_a.h='xxx';}
	else if(f.d_dress_a.n=='yin_x'){f.d_dress_a.sub_c=3, f.d_dress_a.slv=2, f.d_dress_a.h='xxx';}
	else if(f.d_dress_a.n=='bdoll_a'){f.d_dress_a.sub_c=2, f.d_dress_a.h='xxx';}
	else if(f.d_dress_a.n=='bdoll_b'){f.d_dress_a.sub_c=2, f.d_dress_a.h='xxx';}
	}
[endscript]
[endmacro]

[macro name="load_d_info_dress_b"]
[iscript]
f.d_dress_b.sub_c=0, f.d_dress_b.h='def', f.d_dress_b.type='non'
if(f.d_dress_b.n=='non'){f.d_dress_b.h='xxx', f.d_dress_b.type='non';}
else if(f.d_dress_b.n=='first'){f.d_dress_b.sub_c=3, f.d_dress_b.type='ls';}
else if(f.d_dress_b.n=='ribbon'){f.d_dress_b.sub_c=3, f.d_dress_b.type='ls';}
else if(f.d_dress_b.n=='skirt_s'){f.d_dress_b.sub_c=1, f.d_dress_b.type='ss';}
else if(f.d_dress_b.n=='skirt_l'){f.d_dress_b.sub_c=1, f.d_dress_b.type='ls';}
else if(f.d_dress_b.n=='alice'){f.d_dress_b.sub_c=3, f.d_dress_b.type='ls';}
else if(f.d_dress_b.n=='genes_l'){f.d_dress_b.sub_c=2, f.d_dress_b.type='pl';}
else if(f.d_dress_b.n=='genes_m'){f.d_dress_b.sub_c=3, f.d_dress_b.type='pm';}
else if(f.d_dress_b.n=='genes_s'){f.d_dress_b.sub_c=2, f.d_dress_b.type='ps';}
else if(f.d_dress_b.n=='pants_m'){f.d_dress_b.sub_c=2, f.d_dress_b.type='ps';}
[endscript]
[endmacro]

[macro name="load_d_info_eri"]
[iscript]
f.d_eri.sub_c=0, f.d_eri.type='eri'
d_name=f.d_eri.n
if(~d_name.indexOf('__')){ f.d_eri.sub_p = (d_name.slice(-1)), f.d_eri.n = (d_name.slice(0, -3));}
;d_name=f.d_eri.n
;if(~d_name.indexOf('eri/')){ f.d_eri.n = (d_name.slice(4));}

if(f.d_eri.n=='non'){f.d_eri.type='non';}
else if(f.d_eri.n=='first'){f.d_eri.sub_c=2;}
else if(f.d_eri.n=='peacock'){f.d_eri.sub_c=3;}
else if(f.d_eri.n=='frill'){f.d_eri.sub_c=2;}
;else if(f.d_eri.n=='seiso'){f.d_eri.sub_c=2;}
;else if(f.d_eri.n=='alice'){f.d_eri.sub_c=2;}
else if(f.d_eri.n=='sailor'){f.d_eri.sub_c=3;}
else if(f.d_eri.n=='hanako'){f.d_eri.sub_c=1;}
else if(f.d_eri.n=='Y_eri'){f.d_eri.sub_c=1;}
[endscript]
[endmacro]

[macro name="load_d_info_kata"]
[iscript]
f.d_kata.sub_c=0, f.d_kata.type='neck'
d_name=f.d_kata.n
if(~d_name.indexOf('__')){ f.d_kata.sub_p = (d_name.slice(-1)), f.d_kata.n = (d_name.slice(0, -3));}
;d_name=f.d_kata.n
;if(~d_name.indexOf('eri/')){ f.d_kata.n = (d_name.slice(4));}

if(f.d_kata.n=='non'){;}
else if(f.d_kata.n=='maid_ep'){f.d_kata.sub_c=2, f.d_kata.type='ep';}
else if(f.d_kata.n=='muff'){f.d_kata.sub_c=1, f.d_kata.type='neck';}
else if(f.d_kata.n=='muff_check'){f.d_kata.sub_c=2, f.d_kata.type='neck';}
else if(f.d_kata.n=='peacock'){f.d_kata.sub_c=3, f.d_kata.type='cape';}
[endscript]
[endmacro]


[macro name="load_d_info_socks"]
[iscript]
f.d_socks.sub_c=0, f.d_socks.type='non'
if(f.d_socks.n=='non'){f.d_socks.type='non';}
else if(f.d_socks.n=='simple_s'){f.d_socks.sub_c=1, f.d_socks.type='s';}
else if(f.d_socks.n=='simple_m'){f.d_socks.sub_c=1, f.d_socks.type='m';}
else if(f.d_socks.n=='simple_l'){f.d_socks.sub_c=1, f.d_socks.type='l';}
else if(f.d_socks.n=='stripe_s'){f.d_socks.sub_c=2, f.d_socks.type='s';}
else if(f.d_socks.n=='stripe_m'){f.d_socks.sub_c=2, f.d_socks.type='m';}
else if(f.d_socks.n=='stripe_l'){f.d_socks.sub_c=2, f.d_socks.type='l';}
else if(f.d_socks.n=='suke_l'){f.d_socks.sub_c=1, f.d_socks.type='l';}
[endscript]
[endmacro]

[macro name="load_d_info_hat"]
[iscript]
f.d_hat.sub_c=0, f.d_hat.type='acce'
if(f.d_hat.n=='non'){f.d_hat.type='non';}
else if(f.d_hat.n=='kemo'){;}
else if(f.d_hat.n=='catu'){f.d_hat.sub_c=1;}
else if(f.d_hat.n=='catu_stripe'){f.d_hat.sub_c=2;}
else if(f.d_hat.n=='casquette'){f.d_hat.sub_c=2, f.d_hat.type='hat';}
else if(f.d_hat.n=='silk'){f.d_hat.sub_c=2, f.d_hat.type='hat';}
else if(f.d_hat.n=='frill'){f.d_hat.sub_c=1;}
else if(f.d_hat.n=='maid'){f.d_hat.sub_c=2;}
else if(f.d_hat.n=='race'){f.d_hat.sub_c=1;}
[endscript]
[endmacro]

[macro name="load_d_info_glasses"]
[iscript]
f.d_glasses.sub_c=1
if(f.d_glasses.n=='non'){f.d_glasses.sub_c=0;}
[endscript]
[endmacro]

[macro name="load_d_info_under_b"]
[iscript]
f.d_under_b.sub_c=0, f.d_under_b.h='def'
if(f.d_under_b.n=='non'){f.d_under_b.h='xxx';}
else if(f.d_under_b.n=='simple'){f.d_under_b.sub_c=1;}
else if(f.d_under_b.n=='stripe'){f.d_under_b.sub_c=2;}
else if(f.d_under_b.n=='marble'){f.d_under_b.sub_c=2;}
else if(f.d_under_b.n=='race'){f.d_under_b.sub_c=1;}
else if(f.d_under_b.n=='race_xs'){f.d_under_b.sub_c=1, f.d_under_b.h='xxx';}

else if(f.d_under_b.n=='swim_m'){f.d_under_b.sub_c=1;}
else if(f.d_under_b.n=='swim_s'){f.d_under_b.sub_c=1;}
else if(f.d_under_b.n=='swim_xs'){f.d_under_b.sub_c=1, f.d_under_b.h='xxx';}
else if(f.d_under_b.n=='swim_m_smsm'){f.d_under_b.sub_c=2;}
else if(f.d_under_b.n=='swim_s_smsm'){f.d_under_b.sub_c=2;}
[endscript]
[endmacro]

[macro name="load_d_info_under_p"]
[iscript]
f.d_under_p.sub_c=0, f.d_under_p.h='def'
if(f.d_under_p.n=='non'){f.d_under_p.h='xxx';}
else if(f.d_under_p.n=='simple'){f.d_under_p.sub_c=1;}
else if(f.d_under_p.n=='stripe'){f.d_under_p.sub_c=1;}
else if(f.d_under_p.n=='marble'){f.d_under_p.sub_c=2;}
else if(f.d_under_p.n=='race'){f.d_under_p.sub_c=1;}
else if(f.d_under_p.n=='race_xs'){f.d_under_p.sub_c=1, f.d_under_p.h='xxx';}

else if(f.d_under_p.n=='swim_m'){f.d_under_p.sub_c=1;}
else if(f.d_under_p.n=='swim_s'){f.d_under_p.sub_c=1;}
else if(f.d_under_p.n=='swim_xs'){f.d_under_p.sub_c=1, f.d_under_p.h='xxx';}
else if(f.d_under_p.n=='swim_m_smsm'){f.d_under_p.sub_c=2;}
else if(f.d_under_p.n=='swim_s_smsm'){f.d_under_p.sub_c=2;}
[endscript]
[endmacro]

[macro name="load_d_info_pin"]
[iscript]
f.d_pin.sub_c=2
if(f.d_pin.n=='non'){f.d_pin.sub_c=0;}
else if(f.d_pin.n=='thin'){;}
else if(f.d_pin.n=='egg'){;}
else if(f.d_pin.n=='flower'){;}
else if(f.d_pin.n=='skull'){;}
else if(f.d_pin.n=='heart'){;}
else if(f.d_pin.n=='star'){;}
else if(f.d_pin.n=='clover'){;}
[endscript]
[endmacro]


[macro name="load_d_info_ribbon"]
[iscript]
f.d_ribbon.sub_c=0
if(f.d_ribbon.n=='non'){;}
else if(f.d_ribbon.n=='thin'){f.d_ribbon.sub_c=1;}
else if(f.d_ribbon.n=='bold'){f.d_ribbon.sub_c=1;}
else if(f.d_ribbon.n=='bees'){f.d_ribbon.sub_c=1;}
else if(f.d_ribbon.n=='shsh'){f.d_ribbon.sub_c=1;}
[endscript]
[endmacro]


[macro name="load_d_info_all"]
[load_d_info_dress][load_d_info_dress_b][load_d_info_eri][load_d_info_kata]
[load_d_info_socks][load_d_info_hat][load_d_info_glasses]
[load_d_info_under_p][load_d_info_under_b]
[load_d_info_pin][load_d_info_ribbon]
[endmacro]

;;衣装コード結合
[macro name="reload_file_path"]
[iscript]
;if(f.fol_info.scene=='room'){f.fol_info.scene ='R';}else if(f.fol_info.scene=='nade'){f.fol_info.scene ='N';}
;else if(f.fol_info.scene=='stand'){f.fol_info.scene ='F';}else if(f.fol_info.scene=='dinner'){f.fol_info.scene ='S';}
;else if(f.fol_info.scene=='dress_up'){f.fol_info.scene ='D';}else if(f.fol_info.scene=='work'){f.fol_info.scene ='W';}
;else if(f.fol_info.scene=='Hx_mngr'){f.fol_info.scene ='Hx_mngr';}else if(f.fol_info.scene=='Hx2'){f.fol_info.scene ='Hx2';}

if(f.situ.situ=='Hx' || f.situ.situ=='sex_cg')
{f.fol_info.fol=f.fol_info.scene+'/',f.fol_info.fol_h=f.fol_info.fol;}
;else if(f.fol_info.scene=='Hf'){f.fol_info.fol='Hf/',f.fol_info.fol_h='Hf/';}

if(f.fol_info.scene_h=='hcg_back'){f.fol_info.fol_h='H/back/';}
else if(f.fol_info.scene_h=='hcg_front'){f.fol_info.fol_h='H/front/';}
else if(f.fol_info.scene_h=='hcg_nurse'){f.fol_info.fol_h='H/nurse/';}
else if(f.fol_info.scene_h=='hcg_missional'){f.fol_info.fol_h='H/missional/';}
else if(f.fol_info.scene_h=='hcg_self'){f.fol_info.fol_h='H/self/';}
else if(f.fol_info.scene_h=='hcg_mouth'){f.fol_info.fol_h='H/mouth/';}

else if(f.fol_info.scene_h=='hcg_x1'){f.fol_info.fol_h='H/x_1/';}
else if(f.fol_info.scene_h=='hcg_x2'){f.fol_info.fol_h='H/x_2/';}
else if(f.fol_info.scene_h=='hcg_x3'){f.fol_info.fol_h='H/x_3/';}
[endscript]
[endmacro]


;;表情
[macro name="f/"]
[iscript]
mp.scene=f.fol_info.scene
if(f.fol_info.scene=='dress_up'){mp.pose='stand';}
else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari'){mp.pose='right';}
else{mp.pose=f.fol_info.scene;}

;mayu+mouth+_+eyes
;mayu c=conf a=ang u=unc s=surp
;mouth s=smile w=wide v=evil ws=wide_smile vs=evil_smile
;eyes
;e	half,smile,shock,wink,ang,x,grgr,hhalf(half_side_half)
;es	side(s),up(u),down(d)
;ei	heart(h),yami(y),+extream(ex)
;[e=half es=s ei=hex]=storage=half_hex

;目
if(!mp.e){mp.e='def';} if(!mp.es){mp.es='';} if(!mp.ei){mp.ei='';}
if(mp.es!='' || mp.ei!=''){mp.e=mp.e+'_'+mp.es+mp.ei;}

if(mp.e=='half' || mp.e=='smile' || mp.e=='cl' || mp.e=='ang' || mp.e=='half_h')
	{f.g_state.y_height='low';}
else if(mp.e=='wink' || mp.e=='hhalf'){f.g_state.y_height='single';}
else if(mp.e=='shock'){f.g_state.y_height='high';}
else {f.g_state.y_height='def';}

;頬
if(mp.c=='p' || mp.ei=='h'){mp.c='pink';}else{mp.c='def';}

;まゆ
if(!mp.y || mp.y=='d'){mp.y='def';} else if(mp.y=='c'){mp.y='conf';}
else if(mp.y=='a'){mp.y='ang';} else if(mp.y=='s'){mp.y='surp';}
if(f.g_state.y_height=='low'){mp.y+='_l';}

;口
if(!mp.m || mp.m=='n'){mp.mm='def';}
else if(mp.m=='s' || mp.m=='sn'){mp.mm='smile';}
else if(mp.m=='mgmg'){mp.mm='mgmg';}

else{mp.mm=f.g_state.m_shape;}
	
f.g_state.m_shape=mp.mm
if(mp.m=='n' || mp.m=='sn' || mp.m=='st' && f.g_state.m_move==0){mp.mm+='_nt', f.g_state.m_move=0;}
else if(mp.m=='st'){mp.mm+='_st', f.g_state.m_move=0;}
else{f.g_state.m_move=1;}

mp.fol= f.g_info.fol + 'body/' + mp.pose
mp.head= mp.fol + '/head_' + mp.c + '.png'
mp.mayu= mp.fol + '/mayu/' + mp.y + '.png'
if(sf.config.face_ani==0){
	mp.eyes= mp.fol + '/eyes/non_ani/' + mp.e + '.png'
	mp.mouth= mp.fol + '/mouth/non_ani/' + mp.mm + '.png';}
else{mp.eyes= mp.fol + '/eyes/' + mp.e + '.png'
	mp.mouth= mp.fol + '/mouth/' + mp.mm + '.png';}
[endscript]

[if exp="mp.m!='st' && mp.m!='re'" ]
	[chara_part name=&f.fol_info.scene mouth=%mouth mayu=%mayu eyes=%eyes head=%head allow_storage=true ]
[else]
	[chara_part name=&f.fol_info.scene mouth=%mouth allow_storage=true cond="mp.m!=mp.non && f.font.c_name=='シルヴィ'" ]
;	[chara_part name=&f.fol_info.scene mayu=%mayu allow_storage=true cond="mp.y!=mp.non" ]
;	[chara_part name=&f.fol_info.scene head=%head allow_storage=true cond="mp.c!=mp.non" ]
;	[chara_part name=&f.fol_info.scene eyes=%eyes allow_storage=true cond="mp.e!=mp.non" ]
[endif]
[endmacro]

;[macro name="m/re"][f/ m=re p=1][endmacro]
[macro name="m/re"][f/ m=re][endmacro]
;[iscript]
;mp.scene=f.fol_info.scene
;if(f.fol_info.scene=='dress_up'){mp.pose='stand';}
;else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari'){mp.pose='right';}
;else{mp.pose=f.fol_info.scene;}


;if(mp.m=='st'){mp.mm=f.g_state.m_shape+'_st', f.g_state.m_move=0;}
;else if(mp.m=='re'){mp.mm=f.g_state.m_shape, f.g_state.m_move=1;}

;mp.fol= f.g_info.fol + 'body/' + mp.pose
;mp.mouth= mp.fol + '/mouth/' + mp.mm + '.png'
;[endscript]
;[chara_part name=&f.fol_info.scene mouth=%mouth allow_storage=true ][endmacro]
[macro name="p_"][f/ m=st ][p][endmacro]
[macro name="lr_"][f/ m=st ][lr][endmacro]
[macro name="r_"][f/ m=st ][r][endmacro]
[macro name="l_"][f/ m=st ][l][endmacro]

;;表情H
[macro name="f/x"]
[iscript]
mp.scene=f.fol_info.scene
;heart(ない場合のみei=nh)

if(mp.e!=mp.nothing || mp.es!=mp.nothing || mp.ei!=mp.nothing ){
	if(mp.e=='half' || mp.e=='smile' || mp.e=='cl' || mp.e=='ang' || mp.e=='half'){f.g_state.y_height='low';}
	else if(mp.e=='wink' || mp.e=='hhalf'){f.g_state.y_height='single';}
	else if(mp.e=='shock'){f.g_state.y_height='high';}
	else {f.g_state.y_height='def';}
	
	if(!mp.e){mp.e='def';} if(!mp.es){mp.es='';}if(!mp.ei){mp.ei='';}
	if(mp.es!='' || mp.ei!=''){mp.e=mp.e+'_'+mp.es+mp.ei;}
;	mp.e='TF/body/' + f.fol_info.scene + '/eyes/' + mp.e + '.png';}
	mp.e='TF/Hx/'+ f.fol_info.scene + '/body/eyes/' + mp.e + '.png';}
	
;if(mp.e!=mp.nothing){
if(f.g_state.y_height=='low'){mp.yh='_l';}else{mp.yh='';}
if(mp.y!=mp.nothing){mp.y='TF/Hx/' + f.fol_info.scene + '/body/mayu/' + mp.y + mp.yh+ '.png';}
;if(mp.y!=mp.nothing){mp.y='TF/body/' + f.fol_info.scene + '/mayu/' + mp.y + mp.yh+ '.png';}

;smile(s)+shape(aiueon)+tan+_+wrig(w)
;[f/x m=sat_w]
if(mp.m!=mp.nothing){mp.m='TF/Hx/' + f.fol_info.scene + '/body/mouth/' + mp.m + '.png';}

[endscript]
[chara_part name=%scene eyes=%e allow_storage=true cond="mp.e!=mp.nothing"]
[chara_part name=%scene mouth=%m allow_storage=true cond="mp.m!=mp.nothing"]
[chara_part name=%scene mayu=%y allow_storage=true cond="mp.y!=mp.nothing"]
[endmacro]

;;表情定義/H（状況分岐ランダム
[macro name="xf/"][eval exp="mp.e='mix'" cond="!mp.e" ]
[eval exp="tf.hx_img.m=mp.m, tf.hx_img.ee=mp.e" ][Hx_text_5sep r=3]
[iscript]
if(tf.r3==1){tf.hx_img.ew=Math.floor(Math.random() *6 + 1)
	if(tf.hx_img.ew<=2){tf.hx_img.ew='cl';}
	else if(tf.hx_img.ew==3){tf.hx_img.ew='def';}
	else{tf.hx_img.ew='half';}}
else if(tf.r3==2){tf.hx_img.ew=Math.floor(Math.random() *7 + 1)
	if(tf.hx_img.ew==1){tf.hx_img.ew='cl';}
	else if(tf.hx_img.ew<=3){tf.hx_img.ew='def';}
	else{tf.hx_img.ew='half';}}
else if(tf.r3==3){tf.hx_img.ew=Math.floor(Math.random() *11 + 1)
	if(tf.hx_img.ew==1){tf.hx_img.ew='cl';}
	else if(tf.hx_img.ew<=5){tf.hx_img.ew='def';}
	else{tf.hx_img.ew='half';}}
else{tf.hx_img.ew=Math.floor(Math.random() *2 + 1)
	if(tf.hx_img.ew==1){tf.hx_img.ew='def';}
	else{tf.hx_img.ew='half';}}
	
if(tf.hx_img.ew=='cl' || tf.hx_img.ee=='non'){;}	
else if(tf.hx_img.ee!='mix'){tf.hx_img.ew=tf.hx_img.ee;}

if(tf.r3<=3){tf.hx_img.es='';}
else if(tf.r3==4){tf.hx_img.es=Math.floor(Math.random() *5 + 1)
	if(tf.hx_img.es==1){tf.hx_img.es='u';}
	else{tf.hx_img.es='';}}
else{tf.hx_img.es=Math.floor(Math.random() *3 + 1)
	if(tf.hx_img.es==1){tf.hx_img.es='u';}
	else{tf.hx_img.es='';}}

if(tf.r3==1){tf.hx_img.ei=Math.floor(Math.random() *4 + 1)
	if(tf.hx_img.ei==1){tf.hx_img.ei='';}
	else{tf.hx_img.ei='nh';}}
else if(tf.r3==2){tf.hx_img.ei=Math.floor(Math.random() *5 + 1)
	if(tf.hx_img.ei==1){tf.hx_img.ei='nh';}
	else{tf.hx_img.ei='';}}
else if(tf.r3==3){tf.hx_img.ei=Math.floor(Math.random() *7 + 1)
	if(tf.hx_img.ei==1){tf.hx_img.ei='ex';}
	else{tf.hx_img.ei='';}}
else if(tf.r3==4){tf.hx_img.ei=Math.floor(Math.random() *5 + 1)
	if(tf.hx_img.ei==1){tf.hx_img.ei='ex';}
	else{tf.hx_img.ei='';}}
else{tf.hx_img.ei=Math.floor(Math.random() *3 + 1)
	if(tf.hx_img.ei==1){tf.hx_img.ei='ex';}
	else{tf.hx_img.ei='';}}

if(tf.hx_mpt.m_mouth=='c' && tf.hx_img.es==''){tf.hx_img.es='d';}	
if(tf.hx_img.ew=='cl'){tf.hx_img.es='', tf.hx_img.ei='';}

;mayu===========================
if(tf.r3==1){tf.r=Math.floor(Math.random() *3 + 1)
	if(tf.r==1){tf.hx_img.y='def';}
	else{tf.hx_img.y='conf';}}
else if(tf.r3==2){tf.r=Math.floor(Math.random() *5 + 1)
	if(tf.r==1){tf.hx_img.y='def';}
	else{tf.hx_img.y='conf';}}
else if(tf.r3==3){tf.r=Math.floor(Math.random() *7 + 1)
	if(tf.r==1){tf.hx_img.y='def';}
	else if(tf.hx_img.y<=3){tf.hx_img.y='unc';}
	else{tf.hx_img.y='conf';}}
else if(tf.r3==4){tf.r=Math.floor(Math.random() *4 + 1)
	if(tf.r==1){tf.hx_img.y='unc';}
	else{tf.hx_img.y='conf';}}
else{tf.r=Math.floor(Math.random() *2 + 1)
	if(tf.r==1){tf.hx_img.y='conf';}
	else{tf.hx_img.y='unc';}}

;mouth===========================
;ea/oa/in/en/kiss(oea/ein/non_i/non_o/all
if(tf.hx_img.m=='all'){tf.r=Math.floor(Math.random() *9 + 1)
	if(tf.r<=2){tf.hx_img.m='in';}
	else if(tf.r<=4){tf.hx_img.m='en';}
	else if(tf.r<=6){tf.hx_img.m='ea';}
	else{tf.hx_img.m='oa';}}
else if(tf.hx_img.m=='non_i'){tf.r=Math.floor(Math.random() *7 + 1)
	if(tf.r<=2){tf.hx_img.m='en';}
	else if(tf.r<=4){tf.hx_img.m='ea';}
	else{tf.hx_img.m='oa';}}
else if(tf.hx_img.m=='non_o'){tf.r=Math.floor(Math.random() *7 + 1)
	if(tf.r<=2){tf.hx_img.m='en';}
	else if(tf.r<=4){tf.hx_img.m='ea';}
	else{tf.hx_img.m='in';}}
else if(tf.hx_img.m=='oea'){tf.r=Math.floor(Math.random() *2 + 1)
	if(tf.r==1){tf.hx_img.m='ea';}
	else{tf.hx_img.m='oa';}}
else if(tf.hx_img.m=='ein'){tf.r=Math.floor(Math.random() *2 + 1)
	if(tf.r==1){tf.hx_img.m='in';}
	else{tf.hx_img.m='en';}}

if(tf.hx_img.ee=='non' && tf.r3<=2){tf.r3=3;}
if(tf.hx_img.m=='en'){
	if(tf.r3==1){tf.r=Math.floor(Math.random() *2 + 1)
		if(tf.r==1){tf.hx_img.m='e';}
		else if(tf.r==2){tf.hx_img.m='n';}}
	else if(tf.r3==2){tf.r=Math.floor(Math.random() *5 + 1)
		if(tf.r>=2){tf.hx_img.m='e';}
		else if(tf.r==3){tf.hx_img.m='n';}
		else if(tf.r==4){tf.hx_img.m='se';}
		else{tf.hx_img.m='sn';}}
	else if(tf.r3==3){tf.r=Math.floor(Math.random() *6 + 1)
		if(tf.r==1){tf.hx_img.m='e';}
		else if(tf.r==2){tf.hx_img.m='sn_w';}
		else if(tf.r==3){tf.hx_img.m='set';}
		else if(tf.r==4){tf.hx_img.m='n_w';}
		else if(tf.r==5){tf.hx_img.m='se';}
		else{tf.hx_img.m='sn';}}
	else if(tf.r3==4){tf.r=Math.floor(Math.random() *6 + 1)
		if(tf.r==1){tf.hx_img.m='sn_w';}
		else if(tf.r==2){tf.hx_img.m='set_w';}
		else if(tf.r<=4){tf.hx_img.m='n_w';}
		else{tf.hx_img.m='set';}}
	else{tf.r=Math.floor(Math.random() *5 + 1)
		if(tf.r<=2){tf.hx_img.m='set_w';}
		else if(tf.r==3){tf.hx_img.m='n_w';}
		else if(tf.r==4){tf.hx_img.m='set';}
		else{tf.hx_img.m='sn_w';}}
	}

else if(tf.hx_img.m=='ea'){
	if(tf.r3==1){tf.r=Math.floor(Math.random() *2 + 1)
		if(tf.r==1){tf.hx_img.m='a';}
		else{tf.hx_img.m='e';}}
	else if(tf.r3==2){tf.r=Math.floor(Math.random() *4 + 1)
		if(tf.r==1){tf.hx_img.m='a';}
		else if(tf.r==2){tf.hx_img.m='e';}
		else{tf.hx_img.m='se';}}
	else if(tf.r3==3){tf.r=Math.floor(Math.random() *7 + 1)
		if(tf.r==1){tf.hx_img.m='a';}
		else if(tf.r==2){tf.hx_img.m='e';}
		else if(tf.r==3){tf.hx_img.m='se';}
		else if(tf.r<=5){tf.hx_img.m='et';}
		else{tf.hx_img.m='set';}}
	else if(tf.r3==4){tf.r=Math.floor(Math.random() *6 + 1)
		if(tf.r<=2){tf.hx_img.m='et';}
		else if(tf.r<=4){tf.hx_img.m='set';}
		else if(tf.r==5){tf.hx_img.m='et_w';}
		else{tf.hx_img.m='set_w';}}
	else{tf.r=Math.floor(Math.random() *6 + 1)
		if(tf.r<=2){tf.hx_img.m='et_w';}
		else if(tf.r<=4){tf.hx_img.m='set_w';}
		else if(tf.r==5){tf.hx_img.m='et';}
		else{tf.hx_img.m='set';}}
	}

else if(tf.hx_img.m=='oa'){
	if(tf.r3==1){tf.r=Math.floor(Math.random() *2 + 1)
		if(tf.r==1){tf.hx_img.m='a';}
		else{tf.hx_img.m='o';}}
	else if(tf.r3==2){tf.r=Math.floor(Math.random() *5 + 1)
		if(tf.r<=2){tf.hx_img.m='a';}
		else if(tf.r<=4){tf.hx_img.m='o';}
		else{tf.hx_img.m='ot';}}
	else if(tf.r3==3){tf.r=Math.floor(Math.random() *5 + 1)
		if(tf.r<=2){tf.hx_img.m='o';}
		else if(tf.r<=4){tf.hx_img.m='ot';}
		else{tf.hx_img.m='ot_w';}}
	else if(tf.r3==4){tf.r=Math.floor(Math.random() *4 + 1)
		if(tf.r<=2){tf.hx_img.m='ot';}
		else if(tf.r==3){tf.hx_img.m='ot_w';}
		else{tf.hx_img.m='oot';}}
	else{tf.r=Math.floor(Math.random() *3 + 1)
		if(tf.r==1){tf.hx_img.m='ot';}
		else if(tf.r==2){tf.hx_img.m='ot_w';}
		else{tf.hx_img.m='oot';}}
	}

else if(tf.hx_img.m=='in'){
	if(tf.r3==1){tf.hx_img.m='n';}
	else if(tf.r3==2){tf.r=Math.floor(Math.random() *5 + 1)
		if(tf.r<=2){tf.hx_img.m='n';}
		else if(tf.r<=4){tf.hx_img.m='sn';}
		else{tf.hx_img.m='i';}}
	else if(tf.r3==3){tf.r=Math.floor(Math.random() *7 + 1)
		if(tf.r<=2){tf.hx_img.m='n';}
		else if(tf.r<=4){tf.hx_img.m='sn';}
		else if(tf.r==5){tf.hx_img.m='n_w';}
		else if(tf.r==6){tf.hx_img.m='sn_w';}
		else{tf.hx_img.m='i';}}
	else if(tf.r3==4){tf.r=Math.floor(Math.random() *3 + 1)
		if(tf.r==1){tf.hx_img.m='n_w';}
		else if(tf.r==2){tf.hx_img.m='sn_w';}
		else{tf.hx_img.m='i';}}
	else{tf.r=Math.floor(Math.random() *4 + 1)
		if(tf.r==1){tf.hx_img.m='n_w';}
		else if(tf.r==2){tf.hx_img.m='sn_w';}
		else{tf.hx_img.m='i';}}
	}

else if(tf.hx_img.m=='kiss'){
	if(tf.r3==1){tf.r=Math.floor(Math.random() *4 + 1)
		if(tf.r<=2){tf.hx_img.m='n';}
		else if(tf.r==3){tf.hx_img.m='sn';}
		else{tf.hx_img.m='n_w';}}
	else if(tf.r3==2){tf.r=Math.floor(Math.random() *4 + 1)
		if(tf.r==1){tf.hx_img.m='n';}
		else if(tf.r==2){tf.hx_img.m='sn_w';}
		else{tf.hx_img.m='sn';}}
	else if(tf.r3==3){tf.r=Math.floor(Math.random() *7 + 1)
		if(tf.r<=2){tf.hx_img.m='sn';}
		else if(tf.r<=4){tf.hx_img.m='sn_w';}
		else if(tf.r==5){tf.hx_img.m='et';}
		else if(tf.r==6){tf.hx_img.m='ot';}
		else{tf.hx_img.m='set';}}
	else if(tf.r3==4){tf.r=Math.floor(Math.random() *12 + 1)
		if(tf.r<=2){tf.hx_img.m='sn_w';}
		else if(tf.r<=4){tf.hx_img.m='et';}
		else if(tf.r<=6){tf.hx_img.m='ot';}
		else if(tf.r<=8){tf.hx_img.m='set';}
		else if(tf.r==9){tf.hx_img.m='oot';}
		else if(tf.r==10){tf.hx_img.m='et_w';}
		else if(tf.r==11){tf.hx_img.m='ot_w';}
		else{tf.hx_img.m='set_w';}}
	else{tf.r=Math.floor(Math.random() *12 + 1)
		if(tf.r==1){tf.hx_img.m='sn_w';}
		else if(tf.r==2){tf.hx_img.m='et';}
		else if(tf.r==3){tf.hx_img.m='ot';}
		else if(tf.r==4){tf.hx_img.m='set';}
		else if(tf.r<=6){tf.hx_img.m='oot';}
		else if(tf.r<=8){tf.hx_img.m='et_w';}
		else if(tf.r<=10){tf.hx_img.m='ot_w';}
		else{tf.hx_img.m='set_w';}}
	}
if(tf.hx_img.ee=='non' && tf.hx_img.m=='n'){tf.hx_img.m='n_w';}
if(tf.hx_img.ee=='non' && tf.hx_img.m=='sn'){tf.hx_img.m='sn_w';}

[endscript]
[f/x e=&tf.hx_img.ew es=&tf.hx_img.es ei=&tf.hx_img.ei cond="tf.hx_img.ee!='non'"]
[f/x y=&tf.hx_img.y cond="tf.hx_img.ee!='non']
[f/x m=&tf.hx_img.m cond="tf.hx_img.m!=mp.non"]
[endmacro]

[macro name="xf/ex"][Hx_text_5sep r=3]
[iscript]
if(tf.r3==1){tf.hx_img.ew=Math.floor(Math.random() *3 + 1)
	if(tf.hx_img.ew==1){tf.hx_img.ew='smile';}
	else if(tf.hx_img.ew==2){tf.hx_img.ew='def';}
	else{tf.hx_img.ew='half';}}
else if(tf.r3==2){tf.hx_img.ew=Math.floor(Math.random() *5 + 1)
	if(tf.hx_img.ew==1){tf.hx_img.ew='smile';}
	else if(tf.hx_img.ew<=3){tf.hx_img.ew='def';}
	else{tf.hx_img.ew='half';}}
else if(tf.r3==3){tf.hx_img.ew=Math.floor(Math.random() *3 + 1)
	if(tf.hx_img.ew==1){tf.hx_img.ew='half';}
	else{tf.hx_img.ew='def';}}
else if(tf.r3==4){tf.hx_img.ew=Math.floor(Math.random() *5 + 1)
	if(tf.hx_img.ew==1){tf.hx_img.ew='half';}
	else{tf.hx_img.ew='def';}}
else{tf.hx_img.ew=Math.floor(Math.random() *7 + 1)
	if(tf.hx_img.ew==1){tf.hx_img.ew='half';}
	else{tf.hx_img.ew='def';}}

if(tf.r3==1){tf.hx_img.es='';}
else if(tf.r3==2){tf.hx_img.es=Math.floor(Math.random() *6 + 1)
	if(tf.hx_img.es==1){tf.hx_img.es='u';}
	else{tf.hx_img.es='';}}
else if(tf.r3==3){tf.hx_img.es=Math.floor(Math.random() *4 + 1)
	if(tf.hx_img.es==1){tf.hx_img.es='u';}
	else{tf.hx_img.es='';}}
else if(tf.r3==4){tf.hx_img.es=Math.floor(Math.random() *2 + 1)
	if(tf.hx_img.es==1){tf.hx_img.es='u';}
	else{tf.hx_img.es='';}}
else{tf.hx_img.es=Math.floor(Math.random() *3 + 1)
	if(tf.hx_img.es==1){tf.hx_img.es='';}
	else{tf.hx_img.es='u';}}

tf.r=Math.floor(Math.random() *3 + 1)
if(tf.hx_img.es=='' && (tf.hx_mpt.m_mouth=='c' || tf.hx_mpt.ppp==1 && tf.r<=2)){tf.hx_img.es='d';}

if(tf.r3==1){tf.hx_img.ei=Math.floor(Math.random() *4 + 1)
	if(tf.hx_img.ei==1){tf.hx_img.ei='nhex';}
	else{tf.hx_img.ei='';}}
else if(tf.r3==2){tf.hx_img.ei=Math.floor(Math.random() *4 + 1)
	if(tf.hx_img.ei==1){tf.hx_img.ei='nhex';}
	if(tf.hx_img.ei==2){tf.hx_img.ei='ex';}
	else{tf.hx_img.ei='';}}
else if(tf.r3==3){tf.hx_img.ei=Math.floor(Math.random() *2 + 1)
	if(tf.hx_img.ei==1){tf.hx_img.ei='ex';}
	else{tf.hx_img.ei='';}}
else if(tf.r3==4){tf.hx_img.ei=Math.floor(Math.random() *3 + 1)
	if(tf.hx_img.ei==1){tf.hx_img.ei='';}
	else{tf.hx_img.ei='ex';}}
else{tf.hx_img.ei=Math.floor(Math.random() *5 + 1)
	if(tf.hx_img.ei==1){tf.hx_img.ei='';}
	else{tf.hx_img.ei='ex';}}

if(tf.hx_img.ew=='def' && tf.hx_img.es=='' && tf.hx_img.ei==''){
	if(tf.r3==1 || tf.r3==2){tf.hx_img.ei='nhex';}
	else{tf.hx_img.ei='ex';}}
if(tf.hx_img.ew=='smile'){tf.hx_img.es='', tf.hx_img.ei='';}

if(tf.r3==1){tf.r=Math.floor(Math.random() *6 + 1)
	if(tf.r==1){tf.hx_img.y='unc';}
	else{tf.hx_img.y='conf';}}
else if(tf.r3==2){tf.r=Math.floor(Math.random() *4 + 1)
	if(tf.r==1){tf.hx_img.y='unc';}
	else{tf.hx_img.y='conf';}}
else if(tf.r3==3){tf.r=Math.floor(Math.random() *2 + 1)
	if(tf.r==1){tf.hx_img.y='conf';}
	else{tf.hx_img.y='unc';}}
else if(tf.r3==4){tf.r=Math.floor(Math.random() *4 + 1)
	if(tf.r==1){tf.hx_img.y='conf';}
	else{tf.hx_img.y='unc';}}
else{tf.r=Math.floor(Math.random() *5 + 1)
	if(tf.r==1){tf.hx_img.y='conf';}
	else{tf.hx_img.y='unc';}}

tf.hx_img.exx='ex'+tf.r3
[endscript]
[f/x e=&tf.hx_img.ew es=&tf.hx_img.es ei=&tf.hx_img.ei y=&tf.hx_img.y]
[Hx/ exx=&tf.hx_img.exx][endmacro]

;;指しゃぶり手
[macro name=nade_li][chara_part name="nade" mouth="00.png" allow_storage=true ]
[eval exp="mp.st= 'TF/body/nade/hand_m_' + mp.st + '.png'" ]
[chara_part name=nade hand=%st time=200 wait=true allow_storage=true ][endmacro]

;;ファイル名読み込み/服
[macro name="body_set"]
[eval exp="tf.g='TF/body/'+f.fol_info.c_st+'/'" ]
[eval exp="tf.body=tf.g+mp.body+'.png', tf.arm=tf.g+mp.arm+'.png', tf.arm_b=tf.g+mp.arm_b+'.png', tf.hand=tf.g+mp.hand+'.png'" ]
[chara_part name=&f.fol_info.scene body=&tf.body allow_storage=true cond="mp.body!=mp.non" ]
[chara_part name=&f.fol_info.scene arm=&tf.arm allow_storage=true cond="mp.arm!=mp.non" ]
[chara_part name=&f.fol_info.scene arm_b=&tf.arm_b allow_storage=true cond="mp.arm_b!=mp.non" ]
[chara_part name=&f.fol_info.scene hand=&tf.hand allow_storage=true cond="mp.hand!=mp.non"  ]
[chara_part name=&f.fol_info.scene food=00.png allow_storage=true cond="mp.ate!=mp.non"  ]
[endmacro]

[macro name="dress_set"]
[iscript]
mp.scene=f.fol_info.scene
if(f.fol_info.scene=='stand' || f.fol_info.scene=='dress_up' || f.fol_info.scene=='Hf'){mp.a_type='1sleeve';}
else if(f.fol_info.scene=='room' || f.fol_info.scene=='dinner'){mp.a_type='2sleeve';}
;else if(f.fol_info.scene=='Hx_mngr' || f.fol_info.scene=='Hx_himn' || f.fol_info.scene=='Hx_back')
else if(f.situ.situ=='Hx' || f.fol_info.scene=='Hx_back'){mp.a_type='Hx';}
else{mp.a_type='single';}
if(f.fol_info.scene=='dress_up'){mp.pose='stand';}
else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari'){mp.pose='right';}
else{mp.pose=f.fol_info.scene;}

if((f.fol_info.scene=='Hx_mngr' || f.fol_info.scene=='Hx_himn' || f.fol_info.scene=='Hx_back') && (f.d_dress_b.type=='p' || f.d_dress_b.type=='pl' || f.d_dress_b.type=='pm' || f.d_dress_b.type=='ps'))
{mp.btm='non'}



if(f.d_dress.type=='onp'){
	mp.d_n=f.d_dress.n, mp.d_sub_c=f.d_dress.sub_c, mp.d_sub_p=f.d_dress.sub_p, mp.d_slv=f.d_dress.slv
	mp.c1=f.d_dress.c1b+f.d_dress.c1, mp.c2=f.d_dress.c2b+f.d_dress.c2, mp.c3=f.d_dress.c3b+f.d_dress.c3;}
else{
	mp.d_n=f.d_dress_a.n, mp.d_sub_c=f.d_dress_a.sub_c, mp.d_sub_p=f.d_dress_a.sub_p, mp.d_slv=f.d_dress_a.slv
	mp.c1=f.d_dress_a.c1b+f.d_dress_a.c1, mp.c2=f.d_dress_a.c2b+f.d_dress_a.c2, mp.c3=f.d_dress_a.c3b+f.d_dress_a.c3;}
mp.bc1=f.d_dress_b.c1b+f.d_dress_b.c1, mp.bc2=f.d_dress_b.c2b+f.d_dress_b.c2, mp.bc3=f.d_dress_b.c3b+f.d_dress_b.c3

mp.file= f.g_info.fol + 'clothe/dress/' + mp.pose + '/'
if(f.d_dress_b.sub_c==0){mp.file_b= mp.file + 'btm/_single/' + f.d_dress_b.n;}
else{mp.file_b= mp.file + 'btm/' + f.d_dress_b.n + '/';}

mp.s2='s_b/'
;if(f.fol_info.scene=='Hx_mngr' || f.fol_info.scene=='Hx_himn'){mp.s1='over/';}
if(mp.a_type=='Hx'){mp.s1='over/';}
else if(f.fol_info.scene=='dress_up'){mp.s1='s_s/';} else{mp.s1='s_f/';}
if(mp.slv=='eat'){mp.s1='s_fe/', mp.s2='s_be/';}

if(mp.d_sub_c==0){mp.file= mp.file + f.d_dress.type + '/_single/' + mp.d_n;}
else{mp.file= mp.file + f.d_dress.type +'/'+ mp.d_n + '/';}

;胴(onp&up
mp.dress_c1='00.png',mp.dress_c2='00.png',mp.dress_c3='00.png'
if(mp.d_n=='non'){;}
else{
	if(mp.d_sub_c==0){mp.dress_c1= mp.file+'.png';}
	if(mp.d_sub_c>=1){mp.dress_c1= mp.file +'c1/' +mp.c1 +'.png';}
	if(mp.d_sub_c>=2){mp.dress_c2= mp.file +'c2/' +mp.c2 +'.png';}
	if(mp.d_sub_c>=3){mp.dress_c3= mp.file +'c3/' +mp.c3 +'.png';}}

if(mp.d_sub_p!=0){mp.dress_c3= mp.file+mp.d_sub_p+ '/' +mp.c3+ '.png';}

;btm
mp.dress_bc1='00.png',mp.dress_bc2='00.png',mp.dress_bc3='00.png'
if(f.d_dress_b.n=='non' || f.d_dress.type=='onp' || mp.btm=='non'){;}
else{
	if(f.d_dress_b.sub_c==0){mp.dress_bc1= mp.file_b + '.png';}
	if(f.d_dress_b.sub_c>=1){mp.dress_bc1= mp.file_b +'c1/'+ mp.bc1 +'.png';}
	if(f.d_dress_b.sub_c>=2){mp.dress_bc2= mp.file_b +'c2/'+ mp.bc2 +'.png';}
	if(f.d_dress_b.sub_c>=3){mp.dress_bc3= mp.file_b +'c3/'+ mp.bc3 +'.png';}}


;袖
mp.slv_c1='00.png', mp.slv_c2='00.png', mp.slv_b='00.png'
mp.bc_t1='00.png', mp.bc_t2='00.png', mp.bc_t3='00.png'
;/Hx_over
;himn(onp=2パーツ(body+スカート)、up&btm up=1パーツ btm=1パーツ
;mngl(onp=2パーツ(body+スカート)、up&btm up=1パーツ btm=2パーツ(尻下+もも上)
;back(onp=2パーツ(body+袖)、up&btm up=2パーツ(body+袖) btm=1パーツ
if(mp.a_type=='Hx'){
;	over(スカート
	if(mp.d_n=='non' && f.d_dress.type=='onp'){;}
	else if(f.d_dress.type=='onp'){
			if(f.d_dress.sub_c==0 && f.d_dress.n!='non'){mp.bc_t1= mp.file + '_.png';}
			if(f.d_dress.sub_c>=1){mp.bc_t1= mp.file +mp.s1 +'c1/' +mp.c1 + '.png';}
			if(f.d_dress.sub_c>=2){mp.bc_t2= mp.file +mp.s1 +'c2/' +mp.c2 + '.png';}
			if(f.d_dress.sub_c>=3){mp.bc_t3= mp.file +mp.s1 +'c3/' +mp.c3 + '.png';}
			}
	else if(f.fol_info.scene=='Hx_mngr'){
			if(f.d_dress_b.sub_c==0 && f.d_dress_b.n!='non'){mp.bc_t1= mp.file_b + '.png';}
			if(f.d_dress_b.sub_c>=1){mp.bc_t1= mp.file_b +mp.s1 +'c1/' +mp.bc1 + '.png';}
			if(f.d_dress_b.sub_c>=2){mp.bc_t2= mp.file_b +mp.s1 +'c2/' +mp.bc2 + '.png';}
			if(f.d_dress_b.sub_c>=3){mp.bc_t3= mp.file_b +mp.s1 +'c3/' +mp.bc3 + '.png';}
			}
;	袖
	if(mp.d_n=='non' || mp.d_slv==0){;}
	else if(f.d_dress.type=='onp'){
		if(f.d_dress.sub_c==0 && f.d_dress.n!='non'){mp.slv_c1= mp.file +mp.s1 + f.d_dress.n + '.png';}
		if(f.d_dress.sub_c>=1){mp.slv_c1= mp.file +mp.s1 +'c1/' +mp.c1 + '.png';}
		if(f.d_dress.sub_c>=2 && mp.d_slv>=1.5){mp.slv_c2= mp.file +mp.s1 +'c2/' +mp.c2 + '.png';}
;		if(f.d_dress.sub_c>=3 && mp.d_slv>=1.5){mp.slv_c3= mp.file +mp.s1 +'c3/' +mp.c3 + '.png';}
	}else{
		if(f.d_dress_a.sub_c==0 && f.d_dress_a.n!='non'){mp.slv_c1= mp.file +mp.s1 + f.d_dress_a.n + '.png';}
		if(f.d_dress_a.sub_c>=1){mp.slv_c1= mp.file +mp.s1 +'c1/' +mp.c1 + '.png';}
		if(f.d_dress_a.sub_c>=2 && mp.d_slv>=1.5){mp.slv_c2= mp.file +mp.s1 +'c2/' +mp.c2 + '.png';}
;		if(f.d_dress_a.sub_c>=3 && mp.d_slv>=1.5){mp.slv_c3= mp.file +mp.s1 +'c3/' +mp.c3 + '.png';}
		}
	}
else{		
	if(mp.a_type=='single' || mp.d_slv==0 || mp.d_slv==0.5 || mp.d_slv==1.5 || mp.d_n=='non'){;}
	else{mp.slv_c1= mp.file +mp.s1 +'c1/' +mp.c1 + '.png'
		if(mp.d_slv>=2){mp.slv_c2= mp.file +mp.s1 +'c2/' +mp.c2 + '.png';}}
		}

;後ろ袖(room/eat
if(mp.d_n=='non' || mp.a_type=='single' || mp.a_type=='1sleeve' || mp.d_slv==0 || mp.d_slv==0.5 || mp.d_slv==1.5){;}
else{mp.slv_b= mp.file +mp.s2 +mp.c1 + '.png';}

if(!mp.t){mp.t=0;}
[endscript]
[if exp="mp.slv!=mp.non" ]
[chara_part name=%scene time=%t slv_c1=%slv_c1 slv_c2=%slv_c2 slv_b=%slv_b allow_storage=true ]
[elsif exp="mp.a_type=='1sleeve'" ]
[chara_part name=%scene time=%t dress_c1=%dress_c1 dress_c2=%dress_c2 dress_c3=%dress_c3 dress_bc1=%dress_bc1 dress_bc2=%dress_bc2 dress_bc3=%dress_bc3 slv_c1=%slv_c1 slv_c2=%slv_c2 allow_storage=true ]
[elsif exp="f.fol_info.scene=='Hx_mngr'" ]
[chara_part name=%scene time=%t dress_c1=%dress_c1 dress_c2=%dress_c2 dress_c3=%dress_c3 dress_bc1=%dress_bc1 dress_bc2=%dress_bc2 dress_bc3=%dress_bc3 dress_bc_t1=%bc_t1 dress_bc_t2=%bc_t2 dress_bc_t3=%bc_t3 allow_storage=true ]
[elsif exp="f.fol_info.scene=='Hx_himn'" ]
[chara_part name=%scene time=%t dress_c1=%dress_c1 dress_c2=%dress_c2 dress_c3=%dress_c3 dress_bc1=%dress_bc1 dress_bc2=%dress_bc2 dress_bc3=%dress_bc3 dress_bc_t1=%bc_t1 dress_bc_t2=%bc_t2 dress_bc_t3=%bc_t3 allow_storage=true ]
[elsif exp="f.fol_info.scene=='Hx_back'" ]
[chara_part name=%scene time=%t dress_c1=%dress_c1 dress_c2=%dress_c2 dress_c3=%dress_c3 dress_bc1=%dress_bc1 dress_bc2=%dress_bc2 dress_bc3=%dress_bc3 slv_c1=%slv_c1 slv_c2=%slv_c2 allow_storage=true ]

;[elsif exp="f.fol_info.scene=='Hf'" ]
;[chara_part name=%scene dress_c1=%dress_c1 dress_c2=%dress_c2 dress_c3=%dress_c3 slv_c1=%slv_c1 slv_c2=%slv_c2 slv2=%slv2 allow_storage=true ]
[elsif exp="mp.a_type=='2sleeve'" ]
[chara_part name=%scene time=%t dress_c1=%dress_c1 dress_c2=%dress_c2 dress_c3=%dress_c3 dress_bc1=%dress_bc1 dress_bc2=%dress_bc2 dress_bc3=%dress_bc3 slv_c1=%slv_c1 slv_c2=%slv_c2 slv_b=%slv_b allow_storage=true ]
[else]
[chara_part name=%scene time=%t dress_c1=%dress_c1 dress_c2=%dress_c2 dress_c3=%dress_c3 dress_bc1=%dress_bc1 dress_bc2=%dress_bc2 dress_bc3=%dress_bc3 allow_storage=true ]
[endif][endmacro]

;;ファイル名読み込み/服以外
[macro name="hat_set"]
[iscript]
	mp.scene=f.fol_info.scene
	if(f.fol_info.scene=='dress_up'){mp.pose='stand';}
	else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari'){mp.pose='right';}
	else{mp.pose=f.fol_info.scene;}
	if(f.fol_info.scene=='nade' || f.fol_info.scene=='dinner' || f.fol_info.scene=='Hx_mngr' || f.fol_info.scene=='Hx_himn' || f.fol_info.scene=='Hx_back'){mp.non_hat=1;}

	mp.file= f.g_info.fol + 'clothe/hat/' + mp.pose + '/'
	if(f.d_hat.sub_c==0){mp.file= mp.file + '_single/' + f.d_hat.n;}
	else{mp.file= mp.file + f.d_hat.n + '/';}
	
;	mp.file= f.g_info.fol + 'clothe/hat/' + mp.pose + '/'
;	if(f.d_hat.sub_c==0){mp.file= mp.file + '/single/' + f.d_hat.n;}
;	else{mp.file= mp.file + '/' + f.d_hat.n + '/';}
	
	mp.c1=f.d_hat.c1+f.d_hat.c1b, mp.c2=f.d_hat.c2+f.d_hat.c2b
	mp.hat_c1='00.png',mp.hat_c2='00.png'
	
	if(f.d_hat.n=='non' || mp.non_hat==1 && f.d_hat.type=='hat' ){;}
	else{if(f.d_hat.sub_c==0){mp.hat_c1= mp.file+'.png';}
		if(f.d_hat.sub_c>=1){mp.hat_c1= mp.file +'c1/'+ mp.c1 +'.png';}
		if(f.d_hat.sub_c>=2){mp.hat_c2= mp.file +'c2/'+ mp.c2 +'.png';}}
if(!mp.t){mp.t=0;}
[endscript]
[chara_part name=%scene hat_c1=%hat_c1 hat_c2=%hat_c2 time=%t allow_storage=true ][endmacro]

[macro name="eri_set"]
[iscript]
mp.scene=f.fol_info.scene
	if(f.fol_info.scene=='dress_up'){mp.pose='stand';}
	else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari'){mp.pose='right';}
	else{mp.pose=f.fol_info.scene;}
;	if(f.fol_info.scene=='nade' || f.fol_info.scene=='dinner' || f.fol_info.scene=='Hx_mngr' || f.fol_info.scene=='Hx_himn'){mp.non_eri=1;}

	mp.file= f.g_info.fol + 'clothe/eri/' + mp.pose
	if(f.d_eri.sub_c==0){mp.file= mp.file + '/_single/' + f.d_eri.n;}
	else{mp.file= mp.file + '/' + f.d_eri.n + '/';}
	
	mp.c1=f.d_eri.c1+f.d_eri.c1b, mp.c2=f.d_eri.c2+f.d_eri.c2b, mp.c3=f.d_eri.c3+f.d_eri.c3b
	mp.eri_c1='00.png',mp.eri_c2='00.png',mp.eri_c3='00.png'
	
;	if(f.d_eri.n=='non' || mp.non_eri==1 && f.d_eri.type!='eri' ){;}
	if(f.d_eri.n=='non'){;}
	else{if(f.d_eri.sub_c==0){mp.eri_c1= mp.file+'.png';}
		if(f.d_eri.sub_c>=1){mp.eri_c1= mp.file +'c1/'+ mp.c1 +'.png';}
		if(f.d_eri.sub_c>=2){mp.eri_c2= mp.file +'c2/'+ mp.c2 +'.png';}
		if(f.d_eri.sub_c>=3){mp.eri_c3= mp.file +'c3/'+ mp.c3 +'.png';}}
		
	if(f.d_eri.sub_p!=0){mp.eri_c3= mp.file+f.d_eri.sub_p+ '/' +mp.c3+ '.png';}

if(!mp.t){mp.t=0;}
;tf.d_test=mp.eri_c3
[endscript]
[chara_part name=%scene eri_c1=%eri_c1 eri_c2=%eri_c2 eri_c3=%eri_c3 time=%t allow_storage=true ][endmacro]

[macro name="kata_set"]
[iscript]
mp.scene=f.fol_info.scene
	if(f.fol_info.scene=='dress_up'){mp.pose='stand';}
	else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari'){mp.pose='right';}
	else{mp.pose=f.fol_info.scene;}

	mp.file= f.g_info.fol + 'clothe/kata/' + mp.pose
	if(f.d_kata.sub_c==0){mp.file= mp.file + '/_single/' + f.d_kata.n;}
	else{mp.file= mp.file + '/' + f.d_kata.n + '/';}
	
	mp.c1=f.d_kata.c1+f.d_kata.c1b, mp.c2=f.d_kata.c2+f.d_kata.c2b, mp.c3=f.d_kata.c3+f.d_kata.c3b
	mp.kata_c1='00.png',mp.kata_c2='00.png',mp.kata_c3='00.png'
	
	if(f.d_kata.n=='non'){;}
	else{if(f.d_kata.sub_c==0){mp.kata_c1= mp.file+'.png';}
		if(f.d_kata.sub_c>=1){mp.kata_c1= mp.file +'c1/'+ mp.c1 +'.png';}
		if(f.d_kata.sub_c>=2){mp.kata_c2= mp.file +'c2/'+ mp.c2 +'.png';}
		if(f.d_kata.sub_c>=3){mp.kata_c3= mp.file +'c3/'+ mp.c3 +'.png';}}
		
	if(f.d_kata.sub_p!=0){mp.kata_c3= mp.file+f.d_kata.sub_p+ '/' +mp.c3+ '.png';}

if(!mp.t){mp.t=0;}
;tf.d_test=mp.kata_c3
[endscript]
[chara_part name=%scene kata_c1=%kata_c1 kata_c2=%kata_c2 kata_c3=%kata_c3 time=%t allow_storage=true ][endmacro]

[macro name="glasses_set"]
[iscript]
mp.scene=f.fol_info.scene
	if(f.fol_info.scene=='dress_up'){mp.pose='stand';}
	else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari'){mp.pose='right';}
	else{mp.pose=f.fol_info.scene;}
	
	mp.file= f.g_info.fol + 'clothe/glasses/' + mp.pose
	if(f.d_glasses.sub_c==0){mp.file= mp.file + '/_single/' + f.d_glasses.n;}
	else{mp.file= mp.file + '/' + f.d_glasses.n + '/';}
	
	mp.c1=f.d_glasses.c1+f.d_glasses.c1b, mp.c2=f.d_glasses.c2+f.d_glasses.c2b
	mp.glasses_c1='00.png',mp.glasses_c2='00.png'
	if(f.d_glasses.n=='non'){;}
	else{if(f.d_glasses.sub_c==0){mp.glasses_c1= mp.file+'.png';}
		if(f.d_glasses.sub_c>=1){mp.glasses_c1= mp.file +'c1/'+ mp.c1 + '.png';}
		if(f.d_glasses.sub_c>=1){mp.glasses_c2= mp.file +'1.png';}}
	;	if(f.d_glasses.sub_c>=2){mp.glasses_c2= mp.file +'c2/'+ mp.c2 +'.png';}}
if(!mp.t){mp.t=0;}
[endscript]
[chara_part name=%scene glasses_c1=%glasses_c1 glasses_c2=%glasses_c2 time=%t allow_storage=true ][endmacro]

[macro name="socks_set"]
[iscript]
mp.scene=f.fol_info.scene
	if(f.fol_info.scene=='dress_up'){mp.pose='stand';}
	else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari'){mp.pose='right';}
	else{mp.pose=f.fol_info.scene;}
	
	if(mp.pose=='stand' || f.fol_info.scene=='Hx_back' || f.fol_info.scene=='Hx_himn'){mp.crop='sm';}
;	if(f.fol_info.scene=='Hx_himn'){mp.crop='s';}

	mp.file= f.g_info.fol + 'clothe/socks/' + mp.pose + '/'
	if(f.d_socks.sub_c==0){mp.file= mp.file + '_single/' + f.d_socks.n;}
	else{mp.file= mp.file + f.d_socks.n + '/';}
	
	mp.c1=f.d_socks.c1+f.d_socks.c1b, mp.c2=f.d_socks.c2+f.d_socks.c2b
	mp.socks_c1='00.png',mp.socks_c2='00.png'
	
	if(f.d_socks.n=='non' || mp.crop=='s' && f.d_socks.type=='s' || mp.crop=='sm' && (f.d_socks.type=='s' || f.d_socks.type=='m')){;}
	else{if(f.d_socks.sub_c==0){mp.socks_c1= mp.file+'.png';}
		if(f.d_socks.sub_c>=1){mp.socks_c1= mp.file +'c1/'+ mp.c1 + '.png';}
		if(f.d_socks.sub_c>=2){mp.socks_c2= mp.file +'c2/'+ mp.c2 +'.png';}}
if(!mp.t){mp.t=0;}
tf.test=mp.socks_c1
[endscript]
[chara_part name=%scene socks_c1=%socks_c1 socks_c2=%socks_c2 time=%t allow_storage=true ][endmacro]
[macro name="socks_s_set"]
[iscript]
mp.scene=f.fol_info.scene
	mp.file= f.g_info.fol + 'clothe/socks/s_side/'
	if(f.d_socks.sub_c==0){mp.file= mp.file + '_single/' + f.d_socks.n;}
	else{mp.file= mp.file + f.d_socks.n + '/';}
	mp.c1=f.d_socks.c1+f.d_socks.c1b, mp.c2=f.d_socks.c2+f.d_socks.c2b
	mp.socks_c1='00.png',mp.socks_c2='00.png'
	if(f.d_socks.n=='non'){;}
	else{if(f.d_socks.sub_c==0){mp.socks_c1= mp.file+'.png';}
		if(f.d_socks.sub_c>=1){mp.socks_c1= mp.file +'c1/'+ mp.c1 + '.png';}
		if(f.d_socks.sub_c>=2){mp.socks_c2= mp.file +'c2/'+ mp.c2 +'.png';}}
if(!mp.t){mp.t=0;}
[endscript]
[chara_part name=%scene socks_c1s=%socks_c1 socks_c2s=%socks_c2 time=%t allow_storage=true ][endmacro]


[macro name="under_b_set"]
[iscript]
mp.scene=f.fol_info.scene
	if(f.fol_info.scene=='dress_up'){mp.pose='stand';}
	else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari'){mp.pose='right';}
	else{mp.pose=f.fol_info.scene;}
	
;	mp.file= f.g_info.fol + 'clothe/under_b/' + mp.pose + '/'
	mp.file= f.g_info.fol + 'clothe/under_b/' + mp.pose
	if(f.d_under_b.sub_c==0){mp.file= mp.file + '/_single/' + f.d_under_b.n;}
	else{mp.file= mp.file + '/' + f.d_under_b.n + '/';}
	
	mp.c1=f.d_under_b.c1+f.d_under_b.c1b, mp.c2=f.d_under_b.c2+f.d_under_b.c2b
	mp.under_b_c1='00.png',mp.under_b_c2='00.png'
	if(f.d_under_b.n=='non'){;}
	else{if(f.d_under_b.sub_c==0){mp.under_b_c1= mp.file+'.png';}
		if(f.d_under_b.sub_c>=1){mp.under_b_c1= mp.file +'c1/'+ mp.c1 +'.png';}
		if(f.d_under_b.sub_c>=2){mp.under_b_c2= mp.file +'c2/'+ mp.c2 +'.png';}}
[endscript]
[chara_part name=%scene under_b_c1=%under_b_c1 under_b_c2=%under_b_c2 allow_storage=true ][endmacro]

[macro name="under_bs_set"]
[iscript]
mp.scene=f.fol_info.scene
;	mp.file= f.g_info.fol + 'clothe/under_b/s_side/'
	mp.file= f.g_info.fol + 'clothe/under_b/s_side'
	if(f.d_under_b.sub_c==0){mp.file= mp.file + '/_single/' + f.d_under_b.n;}
	else{mp.file= mp.file + '/' + f.d_under_b.n + '/';}
	mp.c1=f.d_under_b.c1+f.d_under_b.c1b, mp.c2=f.d_under_b.c2+f.d_under_b.c2b
	mp.under_b_c1='00.png',mp.under_b_c2='00.png'
	if(f.d_under_b.n=='non'){;}
	else{if(f.d_under_b.sub_c==0){mp.under_b_c1= mp.file+'.png';}
		if(f.d_under_b.sub_c>=1){mp.under_b_c1= mp.file +'c1/'+ mp.c1 +'.png';}
		if(f.d_under_b.sub_c>=2){mp.under_b_c2= mp.file +'c2/'+ mp.c2 +'.png';}}
[endscript]
[chara_part name=%scene under_b_c1s=%under_b_c1 under_b_c2s=%under_b_c2 allow_storage=true ][endmacro]

[macro name="under_p_set"]
[iscript]
mp.scene=f.fol_info.scene
	if(f.fol_info.scene=='dress_up'){mp.pose='stand';}
	else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari'){mp.pose='right';}
	else{mp.pose=f.fol_info.scene;}
	
;	mp.file= f.g_info.fol + 'clothe/under_p/' + mp.pose + '/'
	mp.file= f.g_info.fol + 'clothe/under_p/' + mp.pose
	if(f.d_under_p.sub_c==0){mp.file= mp.file + '/_single/' + f.d_under_p.n;}
	else{mp.file= mp.file + '/' + f.d_under_p.n + '/';}
	
	mp.c1=f.d_under_p.c1+f.d_under_p.c1b, mp.c2=f.d_under_p.c2+f.d_under_p.c2b
	mp.under_p_c1='00.png',mp.under_p_c2='00.png'
	if(f.d_under_p.n=='non'){;}
	else{if(f.d_under_p.sub_c==0){mp.under_p_c1= mp.file+'.png';}
		if(f.d_under_p.sub_c>=1){mp.under_p_c1= mp.file +'c1/'+ mp.c1 +'.png';}
		if(f.d_under_p.sub_c>=2){mp.under_p_c2= mp.file +'c2/'+ mp.c2 +'.png';}}
[endscript]
[chara_part name=%scene under_p_c1=%under_p_c1 under_p_c2=%under_p_c2 allow_storage=true ][endmacro]
[macro name="under_ps_set"]
[iscript]
mp.scene=f.fol_info.scene
;	mp.file= f.g_info.fol + 'clothe/under_p/s_side/'
	mp.file= f.g_info.fol + 'clothe/under_p/s_side'
	if(f.d_under_p.sub_c==0){mp.file= mp.file + '/_single/' + f.d_under_p.n;}
	else{mp.file= mp.file + '/' + f.d_under_p.n + '/';}
	
	mp.c1=f.d_under_p.c1+f.d_under_p.c1b, mp.c2=f.d_under_p.c2+f.d_under_p.c2b
	mp.under_p_c1='00.png',mp.under_p_c2='00.png'
	if(f.d_under_p.n=='non'){;}
	else{if(f.d_under_p.sub_c==0){mp.under_p_c1= mp.file+'.png';}
		if(f.d_under_p.sub_c>=1){mp.under_p_c1= mp.file +'c1/'+ mp.c1 +'.png';}
		if(f.d_under_p.sub_c>=2){mp.under_p_c2= mp.file +'c2/'+ mp.c2 +'.png';}}
[endscript]
[chara_part name=%scene under_p_c1s=%under_p_c1 under_p_c2s=%under_p_c2 allow_storage=true ][endmacro]

;;ファイル名読み込み/髪
[macro name="f_hair_set"]
[iscript]
mp.scene=f.fol_info.scene
	if(f.fol_info.scene=='dress_up'){mp.pose='stand';}
	else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari'){mp.pose='right';}
	else{mp.pose=f.fol_info.scene;}
;	f.fol_info.scene='sex'
	if(f.situ.situ=='sex' && f.situ.situ!='sex_cg'){
;	if(f.situ.situ=='sex'){
	mp.scene='cg',
	mp.hair_f= f.g_info.fol + f.fol_info.fol_h + 'body/fh_' + f.d_pin.type + '.png';}
	else if(f.situ.situ=='Hx' || f.situ.situ=='sex_cg'){
	mp.hair_f= f.g_info.fol + 'Hx/' + mp.pose + '/body/fh_' + f.d_pin.type + '.png';}
	else{
	mp.hair_f= f.g_info.fol + 'body/' + mp.pose + '/fh_' + f.d_pin.type + '.png';}
	
	mp.file= f.g_info.fol + 'clothe/pin/' + mp.pose + '/' + f.d_pin.type
	if(f.d_pin.sub_c==0){mp.file= mp.file + '/_single/' + f.d_pin.n;}
	else{mp.file= mp.file + '/' + f.d_pin.n + '/';}
	
	mp.c1=f.d_pin.c1+f.d_pin.c1b, mp.c2=f.d_pin.c2+f.d_pin.c2b
	mp.pin_c1='00.png',mp.pin_c2='00.png'
	
	if(f.d_pin.n=='non'){;}
	else{
		if(f.d_pin.sub_c==0){mp.pin_c1= mp.file+'.png';}
		if(f.d_pin.sub_c>=1){mp.pin_c1= mp.file +'c1/'+ mp.c1 +'.png';}
		if(f.d_pin.sub_c>=2){mp.pin_c2= mp.file +'c2/'+ mp.c2 +'.png';}}
if(!mp.t){mp.t=0;}
[endscript]
[if exp="(f.situ.situ=='sex' || f.situ.situ=='work') && f.situ.situ!='sex_cg'" ]
[chara_part name=%scene hair_f=%hair_f time=%t allow_storage=true ][else]
[chara_part name=%scene pin_c1=%pin_c1 pin_c2=%pin_c2 hair_f=%hair_f time=%t allow_storage=true ][endif][endmacro]

[macro name="hair_set"]
[iscript]
mp.scene=f.fol_info.scene

if(f.situ.situ=='sex' && f.situ.situ!='sex_cg'){
	if(f.fol_info.scene_h=='hcg_back' || f.fol_info.scene_h=='hcg_x2'){mp.angle='right';}
	else if(f.fol_info.scene_h=='hcg_front' || f.fol_info.scene_h=='hcg_missional'){mp.angle='front';}
	else if(f.fol_info.scene_h=='hcg_self'){f.fol_info.fol_h='H/self/';}}
else{
	if(f.fol_info.scene=='dress_up'){mp.pose='stand';}
	else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari'){mp.pose='right';}
	else{mp.pose=f.fol_info.scene;}
	
	if(f.fol_info.scene=='dress_up' || f.fol_info.scene=='stand' || f.fol_info.scene=='nade' || f.fol_info.scene=='Hx_mngr'){mp.angle='front';}
	else if(f.fol_info.scene=='dinner' || f.fol_info.scene=='nedari' || f.fol_info.scene=='Hx_himn' || f.fol_info.scene=='Hx_back'){mp.angle='right';}}

;髪
	mp.hair_t='00.png', mp.hair_b='00.png'
	if(f.situ.situ=='sex' && f.situ.situ!='sex_cg'){mp.scene='cg',
	mp.hair1= f.g_info.fol + f.fol_info.fol_h + 'body/hair_' + f.d_ribbon.type + '.png'
	mp.hair2= f.g_info.fol + f.fol_info.fol_h + 'body/hair_' + f.d_ribbon.type + '_b.png';}
	else if(f.situ.situ=='Hx' || f.situ.situ=='sex_cg'){
	mp.hair1= f.g_info.fol + 'Hx/' + mp.pose + '/body/hair_' + f.d_ribbon.type + '.png'
	mp.hair2= f.g_info.fol + 'Hx/' + mp.pose + '/body/hair_' + f.d_ribbon.type + '_b.png';}
	else{
	mp.hair1= f.g_info.fol + 'body/' + mp.pose + '/hair_' + f.d_ribbon.type + '.png'
	mp.hair2= f.g_info.fol + 'body/' + mp.pose + '/hair_' + f.d_ribbon.type + '_b.png';}

	if(f.d_ribbon.type=='nr'){mp.hair_t=mp.hair1, mp.hair_b=mp.hair2;}
	if(f.d_ribbon.type=='poney' || f.d_ribbon.type=='l_twin' || f.d_ribbon.type=='l_poney')
		{mp.hair_b=mp.hair1;}
	if(f.d_ribbon.type=='twin'){
		if(mp.angle=='front'){mp.hair_t=mp.hair1;}
		else{mp.hair_t=mp.hair1, mp.hair_b=mp.hair2;}}
	if(f.d_ribbon.type=='side'){
		if(mp.angle=='right'){mp.hair_b=mp.hair1;}
		else{mp.hair_t=mp.hair1;}}

;リボン
	mp.c1=f.d_ribbon.c1+f.d_ribbon.c1b
;	, mp.c2=f.d_ribbon.c2+f.d_ribbon.c2b
	mp.r_f='00.png', mp.r_b='00.png'

	mp.file_r= f.g_info.fol + 'clothe/ribbon/' + mp.pose + '/right'
	mp.file_l= f.g_info.fol + 'clothe/ribbon/' + mp.pose + '/left'
	mp.file= f.g_info.fol + 'clothe/ribbon/' + mp.pose + '/' + f.d_ribbon.type

	if(f.d_ribbon.sub_c==0){
		mp.file_r= mp.file_r + '/_single/' + f.d_ribbon.n
		mp.file_l= mp.file_l + '/_single/' + f.d_ribbon.n
		mp.file= mp.file + '/_single/' + f.d_ribbon.n;}
	else{
		mp.d_ribbon= mp.d_ribbon + '/' + f.d_ribbon.n
		mp.file_r= mp.file_r + '/' + f.d_ribbon.n
		mp.file_l= mp.file_l + '/' + f.d_ribbon.n
		mp.file= mp.file + '/' + f.d_ribbon.n;}

	if(f.d_ribbon.type=='poney' || f.d_ribbon.type=='l_twin' || f.d_ribbon.type=='l_poney')
		{mp.r_b=mp.file;}
	else if(mp.angle=='front')
		{mp.r_f=mp.file;}
	else if(mp.angle=='right')
		{mp.r_b=mp.file_r;}
	else {mp.r_f=mp.file_r;}

	if(f.d_ribbon.type=='twin' && mp.angle!='front'){
		if(mp.angle=='right'){mp.r_f=mp.file_l;}
		else{mp.r_b=mp.file_l;}}

	if(mp.angle=='front' && f.d_ribbon.type=='l_poney' && (f.d_ribbon.n=='bees' || f.d_ribbon.n=='shsh')){mp.r_f='00.png', mp.r_b='00.png';}
	if(f.d_ribbon.n=='non'){mp.r_f='00.png', mp.r_b='00.png';}
	else{
		if(f.d_ribbon.sub_c>=1){
			if(mp.r_b!='00.png'){mp.r_b= mp.r_b +'/c1/'+ mp.c1 +'.png';}
			if(mp.r_f!='00.png'){mp.r_f= mp.r_f +'/c1/'+ mp.c1 +'.png';}
			}
		}
;		if(f.d_ribbon.sub_c==0){mp.r_b= mp.r_b +'.png', mp.r_f= mp.r_f +'.png';}
;		if(f.d_ribbon.sub_c>=1){mp.r_b= mp.r_b +'/c1/'+ mp.c1 +'.png', mp.r_f= mp.r_f +'c1/'+ mp.c1 +'.png';}
;		if(f.d_ribbon.sub_c>=2){mp.r_b= mp.r_b +'/c2/'+ mp.c2 +'.png', mp.r_f= mp.r_f +'c2/'+ mp.c2 +'.png';}}
if(!mp.t){mp.t=0;}
[endscript]
[if exp="(f.situ.situ=='sex' || f.situ.situ=='work') && f.situ.situ!='sex_cg'" ]
[chara_part name=%scene hair_t=%hair_t hair_b=%hair_b time=%t allow_storage=true ][else]
[chara_part name=%scene ribbon_f_c1=%r_f ribbon_b_c1=%r_b hair_t=%hair_t hair_b=%hair_b time=%t allow_storage=true ][endif][endmacro]


;;set&show
[macro name="d_set_set"]
[if exp="f.fol_info.scene!='work' " ][dress_set][glasses_set][under_b_set][eri_set][kata_set][hat_set][endif][f_hair_set][hair_set]
;[gloves_set][b_acc_set]
;[if exp="f.fol_info.scene=='nade' || f.fol_info.scene=='dinner'" ][hat_set cond="f.d_hat.type!='hat'"][else][hat_set][endif]
[if exp="f.fol_info.scene!='nade' && f.fol_info.scene!='work' " ][under_p_set][socks_set][endif]
[if exp="f.fol_info.scene=='dress_up'" ][under_bs_set][under_ps_set][socks_s_set][endif][endmacro]

[macro name="set_dress_up"][eval exp="f.fol_info.scene='dress_up', f.fol_info.c_st='stand'" ][black]
[d_face_h][body_set body=body_dress ][d_set_set][endmacro]

[macro name="show_dress_up"]
[if exp="f.act.last=='before_bed'" ][bg/ g=bg/ st=bed t=0 ][else][bg/ g=bg/ st=dress t=0 ][endif]
[c_mod n=win time=00 ][c_show n=win][c_show n=dress_up w=t x=120 y=-50][hide_black][endmacro]

;座り
[macro name="set_sit"][black][c_mod n=win st=room/act ef3=00 ef2=00]
[eval exp="f.fol_info.scene='room', f.situ.situ='room', f.situ.place='room', f.fol_info.c_st='room'" ]
[if exp="f.state.step==1" ][f/ ei=y m=n][elsif exp="f.state.step==2" ][f/ ei=y m=n]
[elsif exp="f.state.step==3" ][f/ m=n][elsif exp="f.state.step==4" ][f/ m=n]
[elsif exp="f.state.step==5" ][f/ m=sn][elsif exp="f.state.step==6" ][f/ m=sn][endif]
[body_set body=body arm=arm arm_b=arm_b ][d_set_set][endmacro]

[macro name="show_sit"][bg/ g=bg/ st=room-menu t=100 ][c_show n=win ]
[c_show n=room x=70 y=-20 wi=782 hi=990 w=t ][hide_black][endmacro]

;撫で
[macro name="set_nade_"][if exp="f.act.last!='nade_conti'" ][black][set_black][endif]
[eval exp="f.fol_info.scene='nade', f.situ.situ='nade', f.fol_info.c_st='nade'" ]
[c_mod n=win time=00][set_time][body_set body=body hand=hand_head ][d_set_set][endmacro]

[macro name="show_nade_"][bg/ g=bg/ st=nade t=100 ][c_show n=nade w=t wi=1550 hi=1200 x=-29 y=-101]
[kanim name=nade keyframe=nade_tilt time=0][c_show n=win ][hide_black][endmacro]
[keyframe name="nade_tilt"][frame p=0% rotateZ="0deg" ][frame p=100% rotateZ="5deg" ][endkeyframe]

;立ち
[macro name="set_stand"][black cond="mp.black!='non'"]
;[if exp="f.mult_chara!=1 || mp.black=='non'" ][black][endif]
[eval exp="f.fol_info.scene='stand', f.fol_info.c_st='stand'" ]
[body_set body=body_stnd arm=arm_stnd ][d_set_set][endmacro]

[macro name="show_stand"][c_mod n=win time=00][c_show n=win t=300 ][c_show n=stand x=459 y=0 w=t][endmacro]

;食事
[macro name="set_dinner"][black][set_black][eval exp="f.fol_info.scene='dinner', f.fol_info.c_st='right'" ]
[eval exp="tf.table_h='sys/food/tbl_'+f.fol_info.eat_situ+'_whole', tf.table='TF/sys/food/tbl_'+f.fol_info.eat_situ+'.png' ]
[c_mod n=other st=&tf.table_h ]
[chara_part name=dinner chair="TF/sys/food/chair.png" table=&tf.table food="00.png" allow_storage=true ]
[body_set body=body arm=arm arm_b=arm_b ][d_set_set][endmacro]


[macro name="show_dinner"][set_black][eval exp="tf.bg='eat/'+ f.fol_info.eat_situ" ][bg/ g=bg/ t=0 st=&tf.bg ]
[c_show n=other w=t hi=1150 wi=1521 x=44 y=-135][kanim name=other keyframe=dinner_tilt time=0]
[c_show n=dinner w=t hi=1150 wi=1181 x=53 y=-85][kanim name=dinner keyframe=dinner_tilt time=0]
[layermode graphic="TF/effect/inside/eat.png" time=0 mode="overlay" wait="false" ]
[c_mod n=win time=00][c_show n=win ][hide_black][endmacro]
[keyframe name="dinner_tilt"][frame p=0% rotateZ="0deg" ][frame p=100% rotateZ="-17deg" ][endkeyframe]

[macro name="ate"][set_black][dress_set slv=def][body_set arm=arm arm_b=arm_b ate=1][endmacro]

[macro name="set_work"][eval exp="f.fol_info.scene='work', f.situ.situ='work', f.fol_info.c_st='work'" ][black]
[body_set body=body ][d_set_set][endmacro]

;show_work
[macro name="show_work"][bg/ g=bg/ st=work][c_show n=work t=1 w=t resize=1][hide_black][endmacro]

;;Hx
[macro name="set_Hx"][eval exp="f.fol_info.scene='Hx_'+ mp.set" ][freechara][reload_file_path][set_black]
	[Hx/ef_reset]
[if exp="f.situ.situ=='Hx'" ]
	[Hx/ xr=00 ef=00 squi=00 man=1 z_a=show z_b=show t=non place=1]
[else]
	[eval exp="tf.ev_img={xr:'00.png', tx:'00.png', se:'00.png', ef:'00.png'}"]
	[Hx/ev squi=00 man=1 z_a=00 z_b=00 t=non place=1]
;	[Hx/ev xr=00 ef=00 tx=00 se=00 squi=00 breath=00 man=1 z_a=00 z_b=00 t=non place=1]
	[Hx/ev body=1 head=1 exx=00 tear=00 arm=00 ]
[endif]

[dress_set][under_b_set][hat_set][eri_set][kata_set]
;[b_acc_set]
[socks_set][glasses_set][f_hair_set][hair_set]
[endmacro]

;show_Hx
[macro name="show_Hx"]
[bg/ t=1 g=H st=&f.fol_info.scene cond="f.situ.situ=='Hx'" ]

[if exp="f.fol_info.scene=='Hx_mngr'" ]
	[c_show resize=1 n=Hx_mngr wi=945 hi=1058 x=177 y=-75 z=20]
[elsif exp="f.fol_info.scene=='Hx_himn'" ]
	[c_show resize=1 n=Hx_himn wi=898 hi=1185 x=192 y=-99 z=20]
[elsif exp="f.fol_info.scene=='Hx_back'" ]
	[c_show resize=1 n=Hx_back wi=1014 hi=1106 x=255 y=-102 z=20]
	[c_show resize=1 n=Hx_back_s wi=408 hi=900 x=0 y=0 z=100 cond="f.situ.situ=='Hx'" ]
;	[c_show resize=1 n=Hx_back_s wi=408 hi=900 x=0 y=0 z=100 ]
[endif]
[kanim name=&f.fol_info.scene keyframe=&f.fol_info.scene time=0]
[c_show resize=1 n=Hx_ef z=500 ][Hx_light_ef]

[if exp="f.situ.situ=='Hx'" ]
	[c_show n=win w=t z=600 ][set_Hx_body]
	[Hx/man you=left syl=leg][Hx/man you=right syl=leg][Hx/man you=ppp syl=0][Hx/man you=m_mouth syl=non]
	[eval exp="tf.hx_mpt= {right:'leg', left:'leg', m_mouth:'non', ppp:0 }" ]
	[eval exp="tf.hx_temp={right:0, left:0, ppp:0, m_mouth:0}" ]

	[c_mod n=win ef=mood/lust_hx cond="tf.hx_state.red_aroma==1 || f.state.mood=='lust'" ]
	[chara_show name=s_feel time=0 wait=false width=5 height=2 top=998 left=1338 zindex=1000 ]
	[chara_show name=y_feel time=0 wait=false width=5 height=2 top=998 left=1344 zindex=1000 ]
	[hide_black]
[endif]
[endmacro]

[keyframe name="Hx_mngr"][frame p=0% rotateZ="0deg" ][frame p=100% rotateZ="-35deg" ][endkeyframe]
[keyframe name="Hx_himn"][frame p=0% rotateZ="0deg" ][frame p=100% rotateZ="-20deg" ][endkeyframe]
[keyframe name="Hx_back"][frame p=0% rotateZ="0deg" ][frame p=100% rotateZ="12deg" ][endkeyframe]

[macro name="set_Hx_body"]
[if exp="tf.hx_state.wet>=1700 || tf.hx_s.ex_sum>=15" ][Hx/ breath=10 tear=3 body=4 head=3 ][Hx/ heart=5 cond="sf.h_effect.ef==1"][eval exp="tf.hx_img.wet='max'" ]
[elsif exp="tf.hx_state.wet>=1500 || tf.hx_s.ex_sum>=12" ][Hx/ breath=9 tear=2 body=4 head=3][Hx/ heart=4 cond="sf.h_effect.ef==1"]
[elsif exp="tf.hx_state.wet>=1300 || tf.hx_s.ex_sum>=11" ][Hx/ breath=8 tear=2 body=3 head=3][Hx/ heart=4 cond="sf.h_effect.ef==1"]
[elsif exp="tf.hx_state.wet>=1100 || tf.hx_s.ex_sum>=9" ][Hx/ breath=7 tear=2 body=3 head=3][Hx/ heart=3 cond="sf.h_effect.ef==1"]
[elsif exp="tf.hx_state.wet>=900 || tf.hx_s.ex_sum>=7" ][Hx/ breath=6 tear=1 body=2 head=2][Hx/ heart=3 cond="sf.h_effect.ef==1"]
[elsif exp="tf.hx_state.wet>=750 || tf.hx_s.ex_sum>=4" ][Hx/ breath=5 tear=1 body=2 head=2][Hx/ heart=2 cond="sf.h_effect.ef==1"]
[elsif exp="tf.hx_state.wet>=500 || tf.hx_s.ex_sum>=3" ][Hx/ breath=4 tear=1 body=1 head=1][Hx/ heart=2 cond="sf.h_effect.ef==1"]
[elsif exp="tf.hx_state.wet>=300 || tf.hx_s.ex_sum>=2" ][Hx/ breath=3 tear=1 body=1 head=1 ][Hx/ heart=1 cond="sf.h_effect.ef==1"]
[elsif exp="tf.hx_state.wet>=150 || tf.hx_s.ex_sum>=1" ][Hx/ breath=2 tear=1 body=0 head=1 ][Hx/ heart=1 cond="sf.h_effect.ef==1"]
[else][Hx/ heart=00 breath=1 tear=00 body=0 head=0 ][endif]
[endmacro]

[macro name="hx/shake"]
[iscript]
mp.r=Math.floor(Math.random() *2 + 1)
if(mp.r==1){mp.ef='a';}else{mp.ef='b';}
if(tf.hx_state.wet>=300){mp.ef='shake1'+mp.ef;}
else if(tf.hx_state.wet>=900){mp.ef='shake2'+mp.ef;}
else if(tf.hx_state.wet>=1200){mp.ef='shake3'+mp.ef;}
else{mp.ef=00;}
[endscript]
[Hx/ ef=&mp.ef][endmacro]

[macro name="Hx_light_ef"][free_layermode time="0" wait="false" ]
[iscript]
if(f.fol_info.scene_h=='hcg_forest'){
		if(f.act.time<=2){mp.time='morning';}
		else if(f.act.time<=4){mp.time='noon';}
		else{mp.time='afternoon';}}
else if(f.fol_info.scene_h=='hcg_kitchen'){
	mp.time='morning';}
if(f.situ.situ=='Hx'){
;if(f.act.time>=6){mp.time='def';}
;else if(f.act.time>=4){mp.time='mid';}
;else{mp.time='morning';}
	mp.time='def'
	mp.fol= 'H/'+ f.fol_info.scene+ '/'+ mp.time ;}
else{mp.fol= 'H/'+ f.fol_info.scene+ '/' + f.fol_info.scene_h + '/'+ mp.time ;}

tf.hx_img_ovl=mp.fol +'_ovl'
tf.hx_img_mult=mp.fol +'_mult'
[endscript]
[layer_ef gr=&tf.hx_img_mult mode=mult cond="(f.situ.situ=='Hx' && f.hx_conf.light=='off') || f.situ.situ=='sex_cg'"]
[layer_ef gr=&tf.hx_img_ovl mode=ovl ][endmacro]

;;ねだり
[macro name="set_mise"]
[chara_part name=Hf body="TF/Hf/body/body1.png" head="TF/Hf/body/head0.png" other="TF/Hf/ef/line.png" h="00.png" ef2="00.png" allow_storage=true ]
[chara_part name=Hf dress="TF/Hf/body/a0.png" hair_f="TF/Hf/body/fh.png" allow_storage=true ]
[endmacro]
[macro name="show_mise"][bg/ g=H/ st=Hxf t=1 ]
[c_show n=Hf t=100 w=t resize=1][hide_black]
[eval exp="f.situ.situ='sex',f.fol_info.scene='afterHf'" ][endmacro]

;;mod-food/hat_shortcut==================================================================
[macro name="mod_hat"][chara_part name="dress_up" hat=%st allow_storage=true ][endmacro]

[macro name="mod_food"][eval exp="mp.food= 'TF/sys/food/' + f.fol_info.eat_situ + '/' + mp.st + '.png'" ]
[if exp="!mp.t" ][eval exp="mp.t=200" ][endif]
[chara_part name=dinner food=%food allow_storage=true time=%t wait=true ][endmacro]

[macro name="set_food"][set_black][f/ m=sn][c_mod n=win st=00 ][set_food_]
…。[p][hide_black]（しばらくして注文したものが机に運ばれてきた。[p_][endmacro]
[macro name="set_food_"][eval exp="mp.food= 'TF/sys/food/' + f.fol_info.eat_situ + '/' + f.temp.food_sel + '.png' " ]
[chara_part name=dinner food=%food allow_storage=true ][endmacro]

[macro name="set_food2"]
[eval exp="mp.food= 'TF/sys/food/' + f.fol_info.eat_situ + '/' + f.temp.food_sel + '_.png' " ]
[chara_part name=dinner food=%food allow_storage=true time=100 wait=false ][eating][endmacro]

[macro name="eating"]
[if exp="f.d_dress.type=='onp' && f.d_dress.slv>=1 || f.d_dress.type=='up' && f.d_dress_a.slv>=1 " ][dress_set slv=eat][endif]
[eval exp="tf.fol='TF/body/right/', tf.arm=tf.fol+'arme.png'" ]
[if exp="tf.r=='2c'" ][eval exp="tf.arm_b=tf.fol+'arme_b2.png'" ][else][eval exp="tf.arm_b=tf.fol+'arme_b1.png'" ][endif]
[chara_part name=dinner arm=&tf.arm arm_b=&tf.arm_b allow_storage=true time=100 wait=false ]
[endmacro]


[return]
;;================================================================================================
;;ファイル名読み込み/特殊(たくし上げ影
;Hf/服影
[macro name="Hf_shadow_set"]
[iscript]
if(f.d_dress.tt=='non' || f.d_dress.tt=='xa' || f.d_dress.tt=='xb' || f.d_dress.tt=='xc' || f.d_dress.tt=='px' || f.d_dress.tt=='nx')
	{mp.shadow_st='00.png';}
;else if(f.d_dress.tt=='h1' || f.d_dress.tt=='h2'){mp.shadow_st='TF/Hf/dress/h1_s.png';}
;else if(f.d_dress.tt=='h3' || f.d_dress.tt=='h4'){mp.ef2shadow_st_st='TF/Hf/dress/h3_s.png';}
;else if(f.d_dress.tt=='gxx'){mp.shadow_st='TF/Hf/dress/gxx_s.png';}
;else if(f.d_dress.tt=='hxx'){mp.shadow_st='TF/Hf/dress/hxx_s.png';}
else if(f.d_dress.sub_c=='a0' || f.d_dress.tt=='xz'){mp.shadow_st= f.d_dress.sub_c;}
else{mp.shadow_st= f.d_dress.tt;}
if(mp.shadow_st!='00.png'){mp.shadow_st= 'TF/dress/Hf/' +mp.shadow_st + '_s.png';}
[endscript]
[chara_part name=Hf shadow=%shadow_st allow_storage=true ][endmacro]

;;show_s0
[macro name="show_s0"][black][set_black]
[chara_show name="body" time="0" wait="false" left="0.1" ]
[if exp="f.d_dress.tt!=0" ][chara_show name="dress" time="0" wait="false" left="0.1" ][endif]
[chara_show name="eyes" time="0" wait="false" left="0.1" ]
[chara_show name="hand_R" time="0" wait="false" left="0.1" ]
[hide_black][endmacro]

;;ねだり
[macro name="set_mise"]
[eval exp="f.fol_info.scene='Hf'" ][eval exp="f.situ.situ='pre_sex'" ][set_black]
;[eval exp="f.fol_info.scene_h='Hf'" ][black][set_black]

[if exp="f.d_eri.tt=='a'" ][chara_layer_mod name=Hf part="eri" zindex=75 ]
[else][chara_layer_mod name=Hf part="eri" zindex=105 ][endif]

[if exp="f.d_dress.tt=='f'" ]
[chara_layer_mod name=Hf part="arm" zindex=5 ][else]
[chara_layer_mod name=Hf part="arm" zindex=80 ][endif]

[chara_part name=Hf body="TF/Hf/body/body1.png" head="TF/Hf/body/head0.png" other="TF/Hf/ef/line.png" h="00.png" ef2="00.png" allow_storage=true ]

;[if exp="f.d_dress.tt=='e' || f.d_dress.tt=='f' || f.d_dress.tt=='e' || f.d_dress.tt=='k' || f.d_dress.tt=='o' || f.d_dress.tt=='xc' || f.d_dress.tt=='gxx'" ]
;[chara_part name=Hf arm="TF/Hf/body/arm_b0.png" allow_storage=true ]
;[elsif exp="f.d_dress.sub_c=='a1' || f.d_dress.tt=='h' || f.d_dress.tt=='xd3' || f.d_dress.tt=='xd4'" ]
[if exp="f.d_dress.sub_c=='a0' || f.d_dress.tt=='d' || f.d_dress.tt=='e' || f.d_dress.tt=='g' || f.d_dress.tt=='gxx' || f.d_dress.tt=='k' || f.d_dress.tt=='o' || f.d_dress.tt=='xc'" ]
[chara_part name=Hf arm="TF/Hf/body/arm_b0.png" allow_storage=true ]
[elsif exp="f.d_dress.tt=='f'" ][chara_part name=Hf arm="00.png" allow_storage=true ]
[else][chara_part name=Hf arm="TF/Hf/body/arm_a0.png" allow_storage=true ][endif]

[if exp="f.state.step==6" ][chara_part name=Hf eyes="TF/Hf/face/m_h.png" allow_storage=true ][endif]

[dress_set][Hf_shadow_set][b_acc_set][glasses_set]
[under_b_set][under_p_set][hat_set]
[if exp="f.d_eri.tt!='a'" ][eri_set][endif]
[f_hair_set][ribbon_set][hair_set][endmacro]

;show_nedari
[macro name="show_mise"][bg/ g=H/ st=Hxf t=1 ]
[c_show n=Hf t=100 w=t][hide_black]
[eval exp="f.situ.situ='sex',f.fol_info.scene='afterHf'" ][endmacro]

;;
[return]



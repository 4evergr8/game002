;;
*aaa
[cm][eval exp="f.act.time=7" ][eval exp="f.state.love+=7" ][return_bace]

[jump storage="debug.ks" target="*test" ]

;*test
[cm][show_message_w]

[iscript]
f.name ={ call:'ご主人様', c_kana:'ごしゅじんさま', name:'未设定', kana:'未设定', n_add:'さん', sub:'ご主人様', s_kana:'ごしゅじんさま', call_type:'other' }
f.name_h ={ call:'ご主人様', c_kana:'ごしゅじんさま', n_add:'さん',  sub:'ご主人様', s_kana:'ごしゅじんさま', call_type:'other' }

f.Hxns_v=[4,'V1','V2','V3','V4'], f.Hxns_p=[3,'P1','P2','P3','P4']
f.Hxns_z=[2,'Z1','Z2','Z3','Z4'], f.Hxns_x=[1,'X1','X2','X3','X4']
;频度调整
f.call_ct={v:0, p:0, z:0, x:0 }

[endscript]

[name_call_set]

[name]、[name k=1]、[name h=1]、[name mid=…]、[name sepa=〜 k=1]、[r]


;n[name]、nh[name h=1][r]
v[Hxns n=v b=私の]、p[Hxns n=p]、z[Hxns n=z b=が]、s[Hxns n=x][r]
;v[Hxns n=v ex=1 ]、p[Hxns n=p ex=1]、z[Hxns n=z ex=1]、s[Hxns n=x ex=1][r]
v[Hxns n=v]、p[Hxns n=p y=の]、z[Hxns n=z]、s[Hxns n=x y=の]
[p]
*aaaaaaa
v[Hxns n=v ex=1 b=私の]、p[Hxns n=p ex=1 a=が]、z[Hxns n=z ex=1 aが…]、s[Hxns n=x ex=1 b=と][r]
v[Hxns n=v ex=1 a=が]、p[Hxns n=p ex=1 y=の a=から]、z[Hxns n=z ex=1 a=♡]、s[Hxns n=x ex=1][r]
v[Hxns n=v ex=1 a=に]、p[Hxns n=p ex=1 a…]、z[Hxns n=z ex=1]、s[Hxns n=x ex=1]
[p]
[jump target=*aaaaaaa ]

[s]
;;デバッグテスト
*test
[cm][show_message_w]
[call storage="TF/pre/exp.ks" target=*first]
[iscript]
f.state = {love:540, lust:50, step:6, sexless:0, mood:'def' }
f.count= { day:200, talk:300, nade:120, out:150, town:100, forest:50, market:50,
			cafe:50, dinner:20, tea:30, wine:10, shop_n:60, shop:10, Aur_t:2, Neph_t:2, Ferr_t:2 }
f.item= { miyage:'クッキー', p_wine:10, book:1,  
	flower_p:4, flower_b:4, aroma_p:5, aroma_b:6, popuri_p:7, popuri_b:6 }
f.d_dress= {"n":"alice","type":"onp","sub_c":3,"sub_p":0,"c1":7,"c2":7,"c3":7,"c1b":0,"c2b":0,"c3b":0,"slv":0,"h":"def","temp":0}	
f.h_count= { ext:40, cum:30, kake:5, drink:15, blow:15, kiss:150, ext_v:5, ext_b:5, ext_c:5, ext_m:5 }
f.x_count= { sex:35, forest:5, work:5, drunk:5, sleep:5, self:15 }
f.temp_flg.sexless_c=1
f.h_state= { m:6, b:6, c:6, v:6 }
f.h_memory= { xxx1:1, xxx2:1, xxx3:1, morning:3, forest:3, mouth:3, nurse:3, self:3, drunk:3, missional:3}
f.act.time=6
f.got_dress1.nurse=1
f.got_eri.ep=1

[endscript]

[eval exp="f.d_dress.type='up'" ]
[eval exp="f.d_under_b.n='simple', f.d_under_b.sub_c=1, f.d_under_b.h='def'" ]
[eval exp="f.d_under_p.n='simple', f.d_under_p.sub_c=1, f.d_under_p.h='def'" ]
[eval exp="f.d_socks.n='simple_s', f.d_socks.sub_c=1, f.d_socks.type='s'" ]
[eval exp="f.d_ribbon.n='thin', f.d_ribbon.sub_c=1, f.d_ribbon.type='poney'" ]
[eval exp="f.d_pin.n='thin', f.d_pin.sub_c=1, f.d_pin.type='single'" ]


[eval exp="f.intro.ex_trust+=1" ][eval exp="f.state.love+=3" ]
[eval exp="f.intro.wear=1" ]

[cm][free_tx][start_keyconfig]
[eval exp="f.name.name='未设定'" cond="f.name.name=='设定しない'"]
[show_role][set_win_frame][show_message_w]

;[jump/ st=talk/intro tg=*step1 ]
;[chara_new name="ef2" storage="00.png" ]

;[set_dinner][show_dinner][s]
[jump/ st=talk/room tg=*intro_step6 ]


[set_stand][f/ m=sn][show_stand][p_]
[set_sit][f/ m=sn][show_sit][p_]
[set_dinner][f/ m=sn][show_dinner][p_][eating][p_]
[set_nade][f/ m=sn][show_nade][p_]
[set_work][f/ m=sn][show_work][p_]
[set_mise][f/ m=sn][show_mise][p_]
[eval exp="f.situ.situ='room'" ]

;

;[load_dress]
[black][eval exp="f.h_style='def'" ]
[set_Hx_mngr][show_Hx_mngr][p_]
[black][eval exp="f.h_style='sit'" ]
[set_Hx2][show_Hx2][p_]
;[set_dress][f/ m=n][show_dress]
[jump storage="TF/sys/dress.ks" target="*change_dress" ]


*save_to0
[save_dress]
[jump storage="TF/sys/dress.ks" target="*change_dress" ]
*bbb
[cm]

[jump target="*bbb" ]


[p]

;[set_work][f/ m=n][show_work][p][jump storage="H/nurse.ks" target="*nurse" ]

;[set_work][f/ m=sn][show_work][p_]
;[f/ m=s][p_]
;[f/ m=n][p_]
[return_bace]

[jump storage="debug.ks" target="*bbb" ]
[jump storage="TF/debug.ks" target="*all_unlock" ]

;;おそらくボツ、衣装をカラーhueで変更。
[macro name="sel_color_reset"]
[eval exp="mp.name=tf.dres_sel[0]" ]
[free_filter layer=0 name=%name ]
[endmacro]

[macro name="reload_drs_color"][sel_color_reset]
[if exp="tf.dres_sel[0]=='dress'" ]
[eval exp="tf.dres_sel[2]=f.d_dress.cc,tf.dres_sel[3]=f.d_dress.tc,tf.dres_sel[5]=f.d_dress.sub,tf.dres_sel[6]=f.d_dress.onepiece" ]
[elsif exp="tf.dres_sel[0]=='under_b'" ]
[eval exp="tf.dres_sel[2]=f.d_under_b.cc,tf.dres_sel[3]=f.d_under_b.tc,tf.dres_sel[5]=f.d_under_b[5],tf.dres_sel[6]=f.d_under_b[6]" ]
[elsif exp="tf.dres_sel[0]=='under_p'" ]
[eval exp="tf.dres_sel[2]=f.d_under_p.cc,tf.dres_sel[3]=f.d_under_p.tc,tf.dres_sel[5]=f.d_under_p[5],tf.dres_sel[6]=f.d_under_p[6]" ]
[elsif exp="tf.dres_sel[0]=='socks'" ]
[eval exp="tf.dres_sel[2]=f.d_socks.cc,tf.dres_sel[3]=f.d_socks.tc,tf.dres_sel[5]=f.d_socks[5],tf.dres_sel[6]=f.d_socks[6]" ]
[elsif exp="tf.dres_sel[0]=='glove'" ]
[eval exp="tf.dres_sel[2]=f.d_glove.cc,tf.dres_sel[3]=f.d_glove.tc,tf.dres_sel[5]=f.d_glove[5],tf.dres_sel[6]=f.d_glove[6]" ]
[endif]

[if exp="tf.dres_sel[3]==4 || tf.dres_sel[3]==3 || tf.dres_sel[2]==2" ][eval exp="tf.dres_sel[5]=0,tf.dres_sel[6]=100" ]
[elsif exp="tf.dres_sel[3]==2" ]
	[if exp="tf.dres_sel[2]==1" ][eval exp="tf.dres_sel[5]=250,tf.dres_sel[6]=60" ]
	[elsif exp="tf.dres_sel[2]==3" ][eval exp="tf.dres_sel[5]=60,tf.dres_sel[6]=65" ]
	[elsif exp="tf.dres_sel[2]==4" ][eval exp="tf.dres_sel[5]=160,tf.dres_sel[6]=40" ]
	[elsif exp="tf.dres_sel[2]==5" ][eval exp="tf.dres_sel[5]='-45',tf.dres_sel[6]=70" ]
	[elsif exp="tf.dres_sel[2]==6" ][eval exp="tf.dres_sel[5]=35,tf.dres_sel[6]=40" ][endif]
[elsif exp="tf.dres_sel[3]==1" ]
	[if exp="tf.dres_sel[2]==1" ][eval exp="tf.dres_sel[5]=250,tf.dres_sel[6]=90" ]
	[elsif exp="tf.dres_sel[2]==3" ][eval exp="tf.dres_sel[5]=80,tf.dres_sel[6]=100" ]
	[elsif exp="tf.dres_sel[2]==4" ][eval exp="tf.dres_sel[5]=150,tf.dres_sel[6]=60" ]
	[elsif exp="tf.dres_sel[2]==5" ][eval exp="tf.dres_sel[5]='-45',tf.dres_sel[6]=80" ]
	[elsif exp="tf.dres_sel[2]==6" ][eval exp="tf.dres_sel[5]=35,tf.dres_sel[6]=100" ][endif]
[endif]

[if exp="tf.dres_sel[0]=='dress'" ]
[eval exp="f.d_dress.cc=tf.dres_sel[2],f.d_dress.tc=tf.dres_sel[3],f.d_dress.sub=tf.dres_sel[5],f.d_dress.onepiece=tf.dres_sel[6]" ]
[elsif exp="tf.dres_sel[0]=='under_b'" ]
[eval exp="f.d_under_b.cc=tf.dres_sel[2],f.d_under_b.tc=tf.dres_sel[3],f.d_under_b[5]=tf.dres_sel[5],f.d_under_b[6]=tf.dres_sel[6]" ]
[elsif exp="tf.dres_sel[0]=='under_p'" ]
[eval exp="f.d_under_p.cc=tf.dres_sel[2],f.d_under_p.tc=tf.dres_sel[3],f.d_under_p[5]=tf.dres_sel[5],f.d_under_p[6]=tf.dres_sel[6]" ]
[elsif exp="tf.dres_sel[0]=='socks'" ]
[eval exp="f.d_socks.cc=tf.dres_sel[2],f.d_socks.tc=tf.dres_sel[3],f.d_socks[5]=tf.dres_sel[5],f.d_socks[6]=tf.dres_sel[6]" ]
[elsif exp="tf.dres_sel[0]=='glove'" ]
[eval exp="f.d_glove.cc=tf.dres_sel[2],f.d_glove.tc=tf.dres_sel[3],f.d_glove[5]=tf.dres_sel[5],f.d_glove[6]=tf.dres_sel[6]" ]
[endif][endmacro]


[macro name="reload_dress_color"]
[re_color_dress][if exp="f.fol_info.scene=='room'" ][re_color_sleeve_st][re_color_sleeve_b_st][endif]
[re_color_under_b][re_color_under_p][re_color_socks]
[endmacro]

[macro name="re_color_dress"]
[eval exp="mp.hue=f.d_dress.sub" ][eval exp="mp.sat=f.d_dress.onepiece" ]
[filter layer=0 name=dress hue=%hue saturate=%sat ][endmacro]
[macro name="re_color_sleeve_st"]
[eval exp="mp.hue=f.d_dress.sub" ][eval exp="mp.sat=f.d_dress.onepiece" ]
[filter layer=0 name=sleeve hue=%hue saturate=%sat ][endmacro]
[macro name="re_color_sleeve_b_st"]
[eval exp="mp.hue=f.d_dress.sub" ][eval exp="mp.sat=f.d_dress.onepiece" ]
[filter layer=0 name=sleeve_b hue=%hue saturate=%sat ][endmacro]

[macro name="re_color_socks"]
[eval exp="mp.hue=f.d_socks[5]" ][eval exp="mp.sat=f.d_socks[6]" ]
[filter layer=0 name=socks hue=%hue saturate=%sat ][endmacro]
[macro name="re_color_glove"]
[eval exp="mp.hue=f.d_under_p[5]" ][eval exp="mp.sat=f.d_under_p[6]" ]
[filter layer=0 name=glove hue=%hue saturate=%sat ][endmacro]

[macro name="re_color_under_b"]
[eval exp="mp.hue=f.d_under_b[5]" ][eval exp="mp.sat=f.d_under_b[6]" ]
[filter layer=0 name=under_b hue=%hue saturate=%sat ][endmacro]
[macro name="re_color_under_p"]
[eval exp="mp.hue=f.d_under_p[5]" ][eval exp="mp.sat=f.d_under_p[6]" ]
[filter layer=0 name=under_p hue=%hue saturate=%sat ][endmacro]




;;btn/元タグ版
;[eval exp="f.x.bace=158" ]
[if exp="sf.config.auto_sp==1" ][button target=*conf_sys_menu graphic=TF/role_config/number/1-.png x=158 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/1.png enterimg=TF/role_config/number/1_.png x=158 y=530 exp="sf.config.auto_sp=1" ][endif]
[if exp="sf.config.auto_sp==2" ][button target=*conf_sys_menu graphic=TF/role_config/number/2-.png x=201 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/2.png enterimg=TF/role_config/number/2_.png x=201 y=530 exp="sf.config.auto_sp=2" ][endif]
[if exp="sf.config.auto_sp==3" ][button target=*conf_sys_menu graphic=TF/role_config/number/3-.png x=244 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/3.png enterimg=TF/role_config/number/3_.png x=244 y=530 exp="sf.config.auto_sp=3" ][endif]
[if exp="sf.config.auto_sp==4" ][button target=*conf_sys_menu graphic=TF/role_config/number/4-.png x=287 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/4.png enterimg=TF/role_config/number/4_.png x=287 y=530 exp="sf.config.auto_sp=4" ][endif]
[if exp="sf.config.auto_sp==5" ][button target=*conf_sys_menu graphic=TF/role_config/number/5-.png x=330 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/5.png enterimg=TF/role_config/number/5_.png x=330 y=530 exp="sf.config.auto_sp=5" ][endif]
[if exp="sf.config.auto_sp==6" ][button target=*conf_sys_menu graphic=TF/role_config/number/6-.png x=373 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/6.png enterimg=TF/role_config/number/6_.png x=373 y=530 exp="sf.config.auto_sp=6" ][endif]
[if exp="sf.config.auto_sp==7" ][button target=*conf_sys_menu graphic=TF/role_config/number/7-.png x=416 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/7.png enterimg=TF/role_config/number/7_.png x=416 y=530 exp="sf.config.auto_sp=7" ][endif]
[if exp="sf.config.auto_sp==8" ][button target=*conf_sys_menu graphic=TF/role_config/number/8-.png x=459 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/8.png enterimg=TF/role_config/number/8_.png x=459 y=530 exp="sf.config.auto_sp=8" ][endif]
[if exp="sf.config.auto_sp==9" ][button target=*conf_sys_menu graphic=TF/role_config/number/9-.png x=502 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/9.png enterimg=TF/role_config/number/9_.png x=502 y=530 exp="sf.config.auto_sp=9" ][endif]
[if exp="sf.config.auto_sp==10" ][button target=*conf_sys_menu graphic=TF/role_config/number/10-.png x=545 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/10.png enterimg=TF/role_config/number/10_.png x=545 y=530 exp="sf.config.auto_sp=10" ][endif]

;[eval exp="f.x.bace=756" ]
[btn/ tg=4 g=2 gr=mute x=1139 y=487 sw=4 swm=0 exp="sf.config.se=0" ]
[if exp="sf.config.se==1" ][button target=*conf_sys_menu graphic=TF/role_config/number/1-.png x=756 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/1.png enterimg=TF/role_config/number/1_.png x=756 y=530 exp="sf.config.se=1" ][endif]
[if exp="sf.config.se==2" ][button target=*conf_sys_menu graphic=TF/role_config/number/2-.png x=799 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/2.png enterimg=TF/role_config/number/2_.png x=799 y=530 exp="sf.config.se=2" ][endif]
[if exp="sf.config.se==3" ][button target=*conf_sys_menu graphic=TF/role_config/number/3-.png x=842 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/3.png enterimg=TF/role_config/number/3_.png x=842 y=530 exp="sf.config.se=3" ][endif]
[if exp="sf.config.se==4" ][button target=*conf_sys_menu graphic=TF/role_config/number/4-.png x=885 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/4.png enterimg=TF/role_config/number/4_.png x=885 y=530 exp="sf.config.se=4" ][endif]
[if exp="sf.config.se==5" ][button target=*conf_sys_menu graphic=TF/role_config/number/5-.png x=928 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/5.png enterimg=TF/role_config/number/5_.png x=928 y=530 exp="sf.config.se=5" ][endif]
[if exp="sf.config.se==6" ][button target=*conf_sys_menu graphic=TF/role_config/number/6-.png x=971 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/6.png enterimg=TF/role_config/number/6_.png x=971 y=530 exp="sf.config.se=6" ][endif]
[if exp="sf.config.se==7" ][button target=*conf_sys_menu graphic=TF/role_config/number/7-.png x=1014 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/7.png enterimg=TF/role_config/number/7_.png x=1014 y=530 exp="sf.config.se=7" ][endif]
[if exp="sf.config.se==8" ][button target=*conf_sys_menu graphic=TF/role_config/number/8-.png x=1057 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/8.png enterimg=TF/role_config/number/8_.png x=1057 y=530 exp="sf.config.se=8" ][endif]
[if exp="sf.config.se==9" ][button target=*conf_sys_menu graphic=TF/role_config/number/9-.png x=1100 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/9.png enterimg=TF/role_config/number/9_.png x=1100 y=530 exp="sf.config.se=9" ][endif]
[if exp="sf.config.se==10" ][button target=*conf_sys_menu graphic=TF/role_config/number/10-.png x=1143 y=530 ][else]
[button target=*sound graphic=TF/role_config/number/10.png enterimg=TF/role_config/number/10_.png x=1143 y=530 exp="sf.config.se=10" ][endif]
[s]
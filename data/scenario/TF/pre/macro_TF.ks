;;メニューボタン
[macro name="show_button"]
;[clickable width="10" height="10" x="0" y="0" storage="sys/debug',f.tg[0]='*bbb" border="solid:1px:gray" ]
[jump/ st=sys/system tg=*talk cond="f.g_config.repeat_mode==1 && f.act.last=='talk'"]

;通常コマンド
[xy x=928 y=116 x_add=193 y_add=66 preg1='menu/room/bace/' ][btn/xy x=3]
[btn/ exp="f.st[0]='sys/system',f.tg[0]='*talk'" g=1 gr=c_talk l=x ]
[btn/ exp="f.st[0]='sys/system',f.tg[0]='*nade'" g=1 gr=c_pat l=x ]

[if exp="f.state.step>=6" ]
;お茶/お酒
	[if exp="f.act.time>=3 && f.act.time<=4 && f.daily.tea==0" ]
	[btn/ exp="f.st[0]='talk/room',f.tg[0]='*tea_menu'" g=1 gr=c_tea l=x ]
	[elsif exp="f.act.time==6 && f.item.p_wine>=1" ]
	[btn/ exp="f.st[0]='talk/wine',f.tg[0]='*wine'" g=1 gr=c_drink l=x ]
	[else][add_x_blank][endif]

;外出
	[if exp="f.act.time<=4 && (f.daily.out==0 || f.daily.out=='syl')" ]
	[btn/ exp="f.st[0]='talk/town',f.tg[0]='*out_choice'" g=1 gr=c_out l=x ][endif]
	[if exp="f.act.time>=5 && (f.daily.out=='syl' || f.daily.out==0)" ]
	[btn/ exp="f.st[0]='talk/town',f.tg[0]='*out_choice'" g=1 gr=c_out_n l=x ][endif]
	[if exp="f.act.time>=5 && (f.daily.out=='syl' || f.daily.out==0)" ]
	[elsif exp="f.act.time<=4 && (f.daily.out==0 || f.daily.out=='syl')" ]
	[else][add_x_blank][endif]
;仕事/就寝
	[if exp="f.got_dress1.nurse==1 && f.daily.work==0 && f.act.time<=4 && f.daily.out!='syl'" ]
	[btn/ exp="f.st[0]='talk/room',f.tg[0]='*work'" g=1 gr=c_work l=x ][else][add_x_blank][endif]
;	[if exp="f.act.time==6" ]
;	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*sleep_now'" g=1 gr=c_sleep x=915 ][endif]
;コマンドタッチ
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*touch_menu'" g=1 gr=c_touch cond="f.g_config.touch_command==1" ]

;エロコマンド
	[if exp="f.g_config.H_setting!=0" ][xy x=964 y=265 x_add=252 y_add=62 ][btn/xy x=2]
		[if exp="f.act.time>=5 || f.temp_flg.bed_agree>=1" ]
		[btn/ exp="f.st[0]='H/Hx_sys',f.tg[0]='*bed'" g=1 gr=h_bed l=x ][else][add_x_blank][endif]
		[if exp="f.act.time>=5 && (f.state.lust>=10 || f.h_memory.mouth>=1)" ]
		[btn/ exp="f.st[0]='H/Hx_sys',f.tg[0]='*mouth'" g=1 gr=h_mouth l=x ][else][add_x_blank][endif]

		[if exp="f.act.time>=5 && f.x_count.self>=1 && (f.state.lust>=100 || f.state.mood=='lust' || f.g_config.H_setting==4)" ]
		[btn/ exp="f.st[0]='H/Hx_sys',f.tg[0]='*self_intro'" g=1 gr=h_self l=x ][else][add_x_blank][endif]
;		[if exp="f.act.time>=5 && f.state.mood=='lust'" ]
;		[btn/ exp="f.st[0]='H/hand_h',f.tg[0]='*hand_h'" g=1 gr=hand_h x=957 y=324 ][endif]
		[if exp="(f.state.mood=='lust' || f.g_config.H_setting==4) && f.temp_flg.bed_agree>=1" ]
		[btn/ exp="f.st[0]='H/missional',f.tg[0]='*select_c'" g=1 gr=h_hard ][endif]
	[endif]

;システムコマンド
[xy y=430]
	[btn/ exp="f.st[0]='sys/dress',f.tg[0]='*change_dress'" g=1 gr=s_dress x=922 ]
	[if exp="f.item.flower_p>=1 || f.item.flower_b>=1" ]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*medi'" g=1 gr=s_medi x=1061 ][endif]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*name_call_change'" g=1 gr=s_call x=1177 ]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*status'" g=1 gr=s_states x=1357 ]
[xy y=488]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*items'" g=1 gr=s_items x=922 ]
		[if exp="f.g_config.pourri_use=='blue'" ]
		[btn/ exp="f.st[0]='sys/system',f.tg[0]='*pourri'" g=1 gr=s_popuri_b x=1057 ]
		[elsif exp="f.g_config.pourri_use=='red'" ]
		[btn/ exp="f.st[0]='sys/system',f.tg[0]='*pourri'" g=1 gr=s_popuri_r x=1057 ]
		[elsif exp="f.item.popuri_b>=1 || f.item.popuri_p>=1" ]
		[btn/ exp="f.st[0]='sys/system',f.tg[0]='*pourri'" g=1 gr=s_popuri x=1057 ][endif]
	[if exp="f.g_config.H_setting>=1" ]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*h_word'" g=1 gr=s_h_word x=1175 ][endif]
	[if exp="f.x_count.sex>=1" ]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*h_status'" g=1 gr=s_h_states x=1345 ][endif]

[xy y=574][btn/xy][add_x]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*touch_config'" g=1 gr=s_touch x=963 ]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*music'" g=1 gr=s_music x=1116 ]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*memory_top'" g=1 gr=s_memory x=1230 ]

;コミュニケートコマンド
	[tx_box x=959 y=649 w=461 h=42 ex=tf.c_word ]
	[button storage="TF/talk/c_words.ks" target="*talk" graphic="TF/menu/room/bace/communicate.png" enterimg="TF/menu/room/bace/communicate_.png" x=1433 y=648 ]
	[btn/ exp="f.st[0]='talk/c_words',f.tg[0]='*select_commu',f.tab.commu='like'" x=865 y=648 g=1 gr=commu_sel ]

[else]
;初期
	[if exp="f.state.step<=5 && (f.intro.flag=='poor' || f.intro.flag=='alone')" ]
	[elsif exp="f.act.time<=4 && f.state.step>=3 && f.daily.out==0" ]
	[btn/ exp="f.st[0]='talk/town',f.tg[0]='*talk_before_go'" g=1 gr=c_out x=927 y=181 ][endif]
	[if exp="f.state.step<=2 && f.g_config.H_setting!=0" ]
	[btn/ exp="f.st[0]='H/rape',f.tg[0]='*touch'" g=1 gr=h_touch x=964 y=264 ][endif]

	[xy y=430]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*status'" g=1 gr=s_states x=1357 ]
	[if exp="f.intro.wear==1 && f.state.step>=3" ]
	[btn/ exp="f.st[0]='sys/dress',f.tg[0]='*change_dress'" g=1 gr=s_dress x=922 ][endif]
	[xy y=488]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*items'" g=1 gr=s_items x=922 ]
	[if exp="f.g_config.H_setting>=1 && f.x_count.sex>=1" ]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*h_word'" g=1 gr=s_h_word x=1175 ][endif]

	[xy x=885 y=573 x_add=170 s=30 ][btn/xy x=2]
	[if exp="f.state.step<=3" ]
	[tx_img tx1=信赖度 n=f.intro.trust l=x ]
	[tx_img tx1=友好度 n=f.state.love l=x ]
	[else]
	[tx_img tx1=亲密度 n=f.state.love l=x ][endif]

	[xy x=915 y=653 s=25 ]
	[if exp="f.state.step==1" ][tx_img tx1=希尔薇仍然认为你是陌生人。]
	[elsif exp="f.state.step==2" ][tx_img tx1=希尔薇认为你是熟人。]
	[elsif exp="f.state.step==3" ][tx_img tx1=希尔薇作为同居人开始信任你。]
	[elsif exp="f.state.step==4" ][tx_img tx1=希尔薇很享受和你的时光。]
	[elsif exp="f.state.step==5" ][tx_img tx1=希尔薇对你有明确的好感。][endif]


[xy y=574]
;	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*how_to'" g=1 gr=s_how_to x=959 ]
	[btn/ exp="f.st[0]='sys/system',f.tg[0]='*memory_top'" g=1 gr=s_memory x=1230 ]

[endif]

;[btn/ exp="f.st[0]='sys/system',f.tg[0]='*save'" g=1 gr=s_save x=1343 ]
[btn/ exp="f.st[0]='pre/exp',f.tg[0]='*save'" g=1 gr=s_save x=1343 ]
[cancelskip][s]
[endmacro]

;;クリッカブル============================================================================
[macro name="clickable_touch"]
;頭
[clickable x=372 y=76 width=152 height=35 storage=TF/talk/touch.ks target=*head color= ]
[clickable x=353 y=106 width=194 height=51 storage=TF/talk/touch.ks target=*head color= ]
;目
[clickable x=373 y=199 width=37 height=37 storage=TF/talk/touch.ks target=*eyes color= ]
[clickable x=433 y=199 width=68 height=32 storage=TF/talk/touch.ks target=*eyes color= ]
;耳
;[clickable width=15 height=28 x=439 y=180 storage=TF/talk/touch.ks target=*ear color= ]
;口
[clickable x=411 y=267 width=42 height=14 storage=TF/talk/touch.ks target=*mouth color= ]
;肩
[clickable x=522 y=303 width=59 height=73 storage=TF/talk/touch.ks target=*shoulder color= ]
[clickable x=357 y=298 width=30 height=43 storage=TF/talk/touch.ks target=*shoulder color= ]
;手
[clickable x=299 y=623 width=115 height=102 storage=TF/talk/touch.ks target=*hands color= ]
;胸
[if exp="f.x_count.sex>=1" ]
[clickable x=348 y=351 width=73 height=73 storage=TF/talk/touch.ks target=*bust color= ]
[clickable x=418 y=361 width=96 height=79 storage=TF/talk/touch.ks target=*bust color= ][endif]
;腹
[clickable x=345 y=484 width=117 height=98 storage=TF/talk/touch.ks target=*stomach color= ]
[clickable x=339 y=567 width=96 height=54 storage=TF/talk/touch.ks target=*stomach color= ]
;足　--和服、女仆、清楚、パティー
;[clickable width=107 height=69 x=104 y=752 storage=TF/talk/touch.ks target=*foot color= ]
;[clickable width=174 height=96 x=211 y=755 storage=TF/talk/touch.ks target=*foot color= ]
;[clickable width=63 height=76 x=385 y=775 storage=TF/talk/touch.ks target=*foot color= ]
;[clickable width=36 height=16 x=380 y=764 storage=TF/talk/touch.ks target=*foot color= ]
;[clickable width=36 height=61 x=448 y=792 storage=TF/talk/touch.ks target=*foot color= ][endif]
;尻
;[if exp="f.x_count.sex>=1 color= ]
;[clickable width=60 height=118 x=433 y=620 storage=TF/talk/touch.ks target=*hip color= ]
;[clickable width=14 height=71 x=488 y=632 storage=TF/talk/touch.ks target=*hip color= ][endif]
[endmacro]

;傷
[macro name="clickable_touch_scar"]
;腕半（袖/无袖
[if exp="f.d_dress.type=='onp' && f.d_dress.slv==0 || f.d_dress.type=='up' && f.d_dress_a.slv==0" ]
[clickable x=403 y=615 width=37 height=45 storage=TF/talk/touch.ks target=*scar color= ]
[clickable x=439 y=614 width=38 height=27 storage=TF/talk/touch.ks target=*scar color= ]
[clickable x=487 y=540 width=38 height=27 storage=TF/talk/touch.ks target=*scar color= ]
[clickable x=497 y=566 width=20 height=29 storage=TF/talk/touch.ks target=*scar color= ]
[endif]
[endmacro]

;;直发
[macro name="clickable_touch_hair"]
[clickable x=485 y=261 width=12 height=46 storage=TF/talk/touch.ks target=*hair color= ]

[if exp="f.d_ribbon.type=='nr'" ]
;なし
[clickable x=366 y=245 width=17 height=30 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=364 y=267 width=37 height=31 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=496 y=139 width=56 height=154 storage=TF/talk/touch.ks target=*hair color= ]
;ポニー
[elsif exp="f.d_ribbon.type=='poney'" ]
[clickable x=362 y=225 width=18 height=50 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=370 y=252 width=16 height=47 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=495 y=168 width=27 height=117 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=507 y=208 width=33 height=90 storage=TF/talk/touch.ks target=*hair color= ]
;ローポニー
[elsif exp="f.d_ribbon.type=='l_poney'" ]
[clickable x=362 y=225 width=18 height=50 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=370 y=252 width=16 height=47 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=495 y=168 width=25 height=117 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=507 y=258 width=31 height=40 storage=TF/talk/touch.ks target=*hair color= ]
;ローツイン
[elsif exp="f.d_ribbon.type=='l_twin'" ]
[clickable x=362 y=225 width=18 height=50 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=370 y=273 width=36 height=26 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=325 y=325 width=32 height=41 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=495 y=168 width=34 height=113 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=512 y=264 width=54 height=37 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=580 y=311 width=26 height=112 storage=TF/talk/touch.ks target=*hair color= ]
[elsif exp="f.d_ribbon.type=='side'" ]
;サイド
[clickable x=362 y=225 width=18 height=50 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=370 y=252 width=16 height=47 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=492 y=168 width=23 height=110 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=505 y=85 width=54 height=57 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=523 y=106 width=61 height=199 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=530 y=294 width=27 height=63 storage=TF/talk/touch.ks target=*hair color= ]
[elsif exp="f.d_ribbon.type=='twin'" ]
;ツイン
[clickable x=347 y=215 width=33 height=60 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=370 y=252 width=16 height=47 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=327 y=90 width=40 height=30 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=318 y=119 width=34 height=167 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=494 y=168 width=21 height=117 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=507 y=82 width=57 height=61 storage=TF/talk/touch.ks target=*hair color= ]
[clickable x=525 y=114 width=57 height=179 storage=TF/talk/touch.ks target=*hair color= ]
[endif][endmacro]

;;system================================================================================
[macro name="reset_frame"]
[position layer=message1 page=fore frame="TF/frame/non.png" width=1600 height=212 top=688 left=0 margint=53 marginl=165 marginr=110 marginb=10 vertical=false ]
[position layer=message0 page=fore frame="TF/frame/bace.png" width=1600 height=212 top=688 left=0 margint=53 marginl=165 marginr=110 marginb=10 vertical=false ]
[ptext name="chara_name_area_a" layer="message0" color=white size=1 x=1600 y=0 bold="bold"]
[chara_config ptext=chara_name_area_a ][deffont size=27]
[endmacro]

[macro name="set_win_frame"]
[position layer=message1 page=fore frame="TF/frame/non.png" width=1600 height=212 top=688 left=0 margint=53 marginl=165 marginr=110 marginb=10 vertical=false ]
[position layer=message0 page=fore frame="TF/frame/bace.png" width=1600 height=212 top=688 left=0 margint=53 marginl=165 marginr=110 marginb=10 vertical=false ]
[endmacro]
[macro name="set_win_frame_h"]
[position layer=message1 page=fore frame="TF/frame/non.png" width=1600 height=900 top=0 left=0 margint=793 marginl=145 marginr=40 marginb=35 vertical=false ]
[position layer=message0 page=fore frame="TF/frame/h_event.png" width=1600 height=900 top=0 left=0 margint=793 marginl=145 marginr=40 marginb=35 vertical=false ]
[endmacro]
[macro name="set_win_frame_hx"]
[position layer=message1 page=fore frame="TF/frame/non.png" width=1600 height=160 top=748 left=0 margint=47 marginl=130 marginr=110 marginb=10 vertical=false ]
[position layer=message0 page=fore frame="TF/frame/hx_bace.png" width=1600 height=160 top=748 left=0 margint=47 marginl=130 marginr=110 marginb=10 vertical=false ]
[endmacro]
[macro name="set_win_frame_config"]
[position layer=message0 page=fore frame="00.png" width=1153 height=112 top=700 left=205 margint=5 marginl=15 marginr=10 marginb=10 vertical=false ]
[endmacro]

[macro name="last_act"][eval exp="f.act.last=mp.exp" ][endmacro]
[macro name="day_end" ][cm][endnolog][hide_role][show_role][set_win_frame][free_tx]
[jump/ st=talk/room tg=*day_start ][endmacro]

[macro name="return_bace" ][cm][eval exp="f.situ.situ='room'" ]
[endnolog][hide_role][show_role][set_win_frame]
[if exp="f.state.step==6" ][jump/ st=talk/room tg=*show_bace ]
[else][jump/ st=talk/intro tg=*show_bace ][endif][endmacro]

[macro name="return_menu" ]
[cm][endnolog][resetdelay][show_repeat_role st=room][show_role]
[free_tx][c_mod n=win st=room/act ][bgm_room]
[eval exp="f.situ.situ='room'" ]
[if exp="f.state.step==6" ][jump/ st=talk/room tg=*before_menu ]
[else][jump/ st=talk/intro tg=*before_menu ][endif][endmacro]

[macro name="return_memory"]
;[set_win_frame]
;[load_dress]
[black][stopse][jump/ st=sys/system tg=*memory_top_ ][endmacro]

[macro name="depend_on_lust"]
[iscript]
tf.r=Math.floor(Math.random() *100 + 1);
if(mp.mood_include==1 && f.state.mood=='lust'){tf.r-=50;}
if(f.d_dress.current_h=='xxx'){tf.r-=20;}
if(f.d_dress.current_h=='xxx' && mp.set_lust!=1){tf.r-=50;}
if(f.temp_flg.sexless_c>=1){tf.r=tf.r*0.5;}
if(f.temp_flg.sexless_c>=2){tf.r=tf.r*0.5;}

if(f.g_config.H_setting>=4){tf.r-=10;}
if(f.g_config.H_setting>=3){tf.r-=10;}
if(f.g_config.H_setting>=2){tf.r-=10;}

if(f.state.lust>=2000){tf.r-=10;}
if(f.state.lust>=1500){tf.r-=10;}
if(f.state.lust>=1000){tf.r-=10;}
if(f.state.lust>=500){tf.r-=10;}


if(f.x_count.sex>=1){;}else{tf.r=1000;}
tf.test=tf.r
[endscript]
[endmacro]

[macro name="pre_touch_link"][xy x=170 y=759 x_add=185 preg1='menu/room/touch_link/' ][btn/xy x=2][endmacro]

;;role===========================================================================
;折りたたみボタン
[macro name="show_role" ][clearfix name="role_sys"][clearfix name="h_role_sw"][clearfix name="h_role_bgm"][clearfix name="h_role_se"]
[eval exp="tf.role_name='role_sys'" ]
[xy x=1438 y=741 x_add=75 y_add=39 preg1='frame/role/' ][btn/xy y=4]
[btn/fix l=y role=load g=1 gr=load ][btn/fix l=y role=skip g=1 gr=skip ]
[btn/fix l=y role=auto g=1 gr=auto ][btn/fix l=y role=backlog g=1 gr=log ]
[btn/fix l=y role=window g=1 gr=close ]
[btn/fix l=y role=sleepgame g=1 gr=hint tg=*how_to exp="f.g_state.awake='sleep'" ]
[btn/fix l=y role=sleepgame g=1 gr=config tg=*config exp="f.g_state.awake='sleep'" ]
[btn/fix l=y role=title g=1 gr=title ]
[endmacro]

;全消し
[macro name="hide_role" ][clearfix][endmacro]

;リピートボタン
[macro name="hide_repeat_role"][clearfix name="role_repeat" ][endmacro]
[macro name="show_repeat_role"][clearfix name="role_repeat" ]
[iscript]
if(mp.st=='room'){f.x.bace=1488,f.y.bace=36,f.tg[1]='*repeat_room';}
else if(mp.st=='out'){f.x.bace=1528,f.y.bace=4,f.tg[1]='*repeat_out';}
else if(mp.st=='work'){f.x.bace=1402,f.y.bace=4,f.tg[1]='*repeat_work';}
else if(mp.st=='nade'){f.x.bace=1528,f.y.bace=4,f.tg[1]='*repeat_nade';}
;else if(mp.st=='Hx'){f.x.bace=1353,f.y.bace=3,f.tg[1]='*repeat_Hx';}
[endscript]
[eval exp="tf.role_name='role_repeat'" ]
[if exp="f.g_config.repeat_mode==1" ]
[btn/fix gr=frame/role/repeat- st=sys tg=1 exp="f.g_config.repeat_mode=0" ][else]
[btn/fix gr=frame/role/repeat st=sys tg=1 exp="f.g_config.repeat_mode=1" ][endif][endmacro]

;基本の折りたたみボタン２つ(H
[macro name="show_H_role" ][clearfix name="role_sys" ][eval exp="tf.role_name='role_sys'" ]
[xy x=1478 y=857 y_add=-33 preg1='frame/role_h/' ][btn/xy]
[if exp="tf.hist_mode>=1" ][btn/fix l=y st=sys tg=*return_to_memory g=1 gr=memory ]
[else][btn/fix l=y role=title g=1 gr=title ][endif]
[if exp="tf.hist_mode>=1 && f.tab.sub=='cg'" ][else]
[btn/fix l=y role=backlog g=1 gr=log ][btn/fix l=y role=auto g=1 gr=auto ]
[btn/fix l=y role=skip g=1 gr=skip ][btn/fix l=y role=load g=1 gr=load ]
[btn/fix x=1415 y=862 role=window g=1 gr=close ][h_role_se][h_role_bgm][endif]
[h_role_sw][endmacro]


[macro name="h_role_sw"][clearfix name="h_role_sw" ][eval exp="tf.role_name='h_role_sw'" ]
[if exp="tf.hist_mode>=1 && f.tab.sub=='cg'" ][xy y=824 ][else][xy y=675 ][endif]
[xy x=1478 y_add=-33 tg1=*h_role_sw preg1='frame/role_h/' ][btn/xy]
[if exp="f.g_info.ks!='TF/H/mouth.ks'" ]
[btn/fix l=y st=sys tg=1 g=1 gr=xr sw=h_effect.xr swm=1 exp="tf.role_sw='xr'" ][endif]
[btn/fix l=y st=sys tg=1 g=1 gr=se sw=h_effect.se swm=1 exp="tf.role_sw='se'" ]
[btn/fix l=y st=sys tg=1 g=1 gr=tx sw=h_effect.tx swm=1 exp="tf.role_sw='tx'" ]
[btn/fix l=y st=sys tg=1 g=1 gr=ef sw=h_effect.ef swm=1 exp="tf.role_sw='ef'" ]
[endmacro]

[macro name="h_role_bgm"][clearfix name="h_role_bgm" ][eval exp="tf.role_name='h_role_bgm'" ]
[wt/][xy x=1510 y=495 y_add=-15 st1='sys' tg1=*h_role_bgm preg1='frame/role_h/vol/' sw1='config.bgm' ][btn/xy]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=0 sw=1 swm=0 exp="sf.config.bgm=0" ]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=2 sw=1 swm=0.2 exp="sf.config.bgm=0.2" ][btn/fix l=y mo=2 st=sys tg=1 g=1 gr=5 sw=1 swm=0.5 exp="sf.config.bgm=0.5" ]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=10 sw=1 swm=1 exp="sf.config.bgm=1" ][btn/fix l=y mo=2 st=sys tg=1 g=1 gr=20 sw=1 swm=2 exp="sf.config.bgm=2" ]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=30 sw=1 swm=3 exp="sf.config.bgm=3" ][btn/fix l=y mo=2 st=sys tg=1 g=1 gr=40 sw=1 swm=4 exp="sf.config.bgm=4" ]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=50 sw=1 swm=5 exp="sf.config.bgm=5" ][btn/fix l=y mo=2 st=sys tg=1 g=1 gr=60 sw=1 swm=6 exp="sf.config.bgm=6" ]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=70 sw=1 swm=7 exp="sf.config.bgm=7" ][btn/fix l=y mo=2 st=sys tg=1 g=1 gr=80 sw=1 swm=8 exp="sf.config.bgm=8" ]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=90 sw=1 swm=9 exp="sf.config.bgm=9" ][btn/fix l=y mo=2 st=sys tg=1 g=1 gr=100 sw=1 swm=10 exp="sf.config.bgm=10" ]
[endmacro]

[macro name="h_role_se"][clearfix name="h_role_se" ][eval exp="tf.role_name='h_role_se'" ]
[wt/][xy x=1510 y=225 y_add=-15 st1='sys' tg1=*h_role_se preg1='frame/role_h/vol/' sw1='config.se' ][btn/xy]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=0 sw=1 swm=0 exp="sf.config.se=0" ]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=2 sw=1 swm=0.2 exp="sf.config.se=0.2" ][btn/fix l=y mo=2 st=sys tg=1 g=1 gr=5 sw=1 swm=0.5 exp="sf.config.se=0.5" ]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=10 sw=1 swm=1 exp="sf.config.se=1" ][btn/fix l=y mo=2 st=sys tg=1 g=1 gr=20 sw=1 swm=2 exp="sf.config.se=2" ]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=30 sw=1 swm=3 exp="sf.config.se=3" ][btn/fix l=y mo=2 st=sys tg=1 g=1 gr=40 sw=1 swm=4 exp="sf.config.se=4" ]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=50 sw=1 swm=5 exp="sf.config.se=5" ][btn/fix l=y mo=2 st=sys tg=1 g=1 gr=60 sw=1 swm=6 exp="sf.config.se=6" ]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=70 sw=1 swm=7 exp="sf.config.se=7" ][btn/fix l=y mo=2 st=sys tg=1 g=1 gr=80 sw=1 swm=8 exp="sf.config.se=8" ]
[btn/fix l=y mo=2 st=sys tg=1 g=1 gr=90 sw=1 swm=9 exp="sf.config.se=9" ][btn/fix l=y mo=2 st=sys tg=1 g=1 gr=100 sw=1 swm=10 exp="sf.config.se=10" ]
[endmacro]

;;btn
[macro name="btn/"]
[iscript]
if(mp.sw>=1){mp.sw=f.sw[mp.sw];} if(mp.tg>=1){mp.tg= f.tg[mp.tg];}
;=============================================================================
;タブ
if(mp.sw=='tab.main' && mp.swm==f.tab.main){;} else if(mp.sw=='tab.sub' && mp.swm==f.tab.sub){;}
else if(mp.sw=='tab.prev' && mp.swm==f.tab.prev){;} else if(mp.sw=='tab.page' && mp.swm==f.tab.page){;}
else if(mp.sw=='tab.commu' && mp.swm==f.tab.commu){;}
else if(mp.sw=='temp.tab' && mp.swm==f.temp.tab){;} else if(mp.sw=='tf.tab' && mp.swm==tf.tab){;}
; else if(mp.sw=='tab1' && mp.swm==tf.tab1){;}

;コンフィグ
else if(mp.sw=='config.bgm' && mp.swm==sf.config.bgm){;} else if(mp.sw=='config.se' && mp.swm==sf.config.se){;}
else if(mp.sw=='config.text_sp' && mp.swm==sf.config.text_sp){;} else if(mp.sw=='config.auto_sp' && mp.swm==sf.config.auto_sp){;}
else if(mp.sw=='config.anim_auto_t' && mp.swm==sf.config.anim_auto_t){;} else if(mp.sw=='config.bgm_always' && mp.swm==sf.config.bgm_always){;}
else if(mp.sw=='config.key_shortcut' && mp.swm==sf.config.key_shortcut){;} else if(mp.sw=='config.tx_color' && mp.swm==sf.config.tx_color){;}
else if(mp.sw=='h_effect.xr' && mp.swm==sf.h_effect.xr){;} else if(mp.sw=='h_effect.tx' && mp.swm==sf.h_effect.tx){;}
else if(mp.sw=='h_effect.se' && mp.swm==sf.h_effect.se){;} else if(mp.sw=='h_effect.ef' && mp.swm==sf.h_effect.ef){;}
else if(mp.sw=='h_effect.fin_choice' && mp.swm==sf.h_effect.fin_choice){;}

else if(mp.sw=='pourri_time' && mp.swm==f.g_config.pourri_time){;}
else if(mp.sw=='touch_command' && mp.swm==f.g_config.touch_command){;}
else if(mp.sw=='touch_direct' && mp.swm==f.g_config.touch_direct){;}

;名前関連
else if(mp.sw=='name.name' && mp.swm==f.name.name){;} else if(mp.sw=='name.kana' && mp.swm==f.name.kana){;}

else if(mp.sw=='Hxns_b[0]' && mp.swm==f.Hxns_b[0]){;} else if(mp.sw=='Hxns_c[0]' && mp.swm==f.Hxns_c[0]){;}
else if(mp.sw=='Hxns_v[0]' && mp.swm==f.Hxns_v[0]){;} else if(mp.sw=='Hxns_iv[0]' && mp.swm==f.Hxns_iv[0]){;}
else if(mp.sw=='Hxns_u[0]' && mp.swm==f.Hxns_u[0]){;} else if(mp.sw=='Hxns_p[0]' && mp.swm==f.Hxns_p[0]){;}
else if(mp.sw=='Hxns_z[0]' && mp.swm==f.Hxns_z[0]){;} else if(mp.sw=='Hxns_x[0]' && mp.swm==f.Hxns_x[0]){;}


else if(mp.sw=='x_speak' && mp.swm==f.g_config.x_speak){;}

else if(mp.sw=='H_setting' && mp.swm==f.g_config.H_setting){;}
;else if(mp.sw=='touch_way' && mp.swm==f.g_config.touch_way){;}
else if(mp.sw=='pourri_use' && mp.swm==f.g_config.pourri_use){;} else if(mp.sw=='pourri_time' && mp.swm==f.g_config.pourri_time){;}

else if(mp.sw=='room_bgm' && mp.swm==f.g_config.room_bgm){;}
else if(mp.sw=='x_speak' && mp.swm==f.g_config.x_speak){;}
else if(mp.sw=='d_daily_change' && mp.swm==f.g_config.d_daily_change){;}
else if(mp.sw=='ondr.when' && mp.swm==f.ondr.when){;}
	
else if(mp.sw=='h_style' && mp.swm==tf.hx_state.style){;} else if(mp.sw=='red_aroma' && mp.swm==tf.hx_state.red_aroma){;}
else if(mp.sw=='hc_menu' && mp.swm==tf.hx_menu){;} else if(mp.sw=='h_cum_pos' && mp.swm==f.h_cum_pos){;}

else if(mp.sw=='sav_color[0]' && mp.swm==f.sav_color[0]){;}else if(mp.sw=='sav_auto[0]' && mp.swm==f.sav_auto[0]){;}

else{mp.btn_switch='non';}

;gr処理=============================================================================
if(mp.g>=1){mp.gr= f.preg[mp.g] + mp.gr;}
if(mp.gr=='preg1'){mp.gr= f.preg[1];}else if(mp.gr=='preg2'){mp.gr= f.preg[2];}else if(mp.gr=='preg3'){mp.gr= f.preg[3];}else if(mp.gr=='preg4'){mp.gr= f.preg[4];}
mp.gr= f.g_info.fol + mp.gr

if(mp.mo==1){mp.m= mp.gr;}
else if(mp.mo==2){mp.m= mp.gr + '_';}
else if(mp.btn_switch!='non'){mp.m= mp.gr + '-';}
else {mp.m= mp.gr + '_';}

if(mp.btn_switch!='non' && mp.mo==2){mp.gr=mp.gr + '_';}
else if(mp.btn_switch!='non'){mp.gr=mp.gr + '-';}
mp.mo= mp.m + '.png', mp.gr= mp.gr + '.png'
;=============================================================================
if(!mp.x){mp.x=f.x.bace;} if(!mp.y){mp.y=f.y.bace;}
if(mp.l=='x'){f.x.bace+=f.x.add, f.x.count+=1;}
else if(mp.l=='y'){f.y.bace+=f.y.add, f.y.count+=1;}

if(!mp.n){mp.n='btn';}
if(mp.ex>=1){mp.ex=f.btn_tip_gr[mp.ex];}
if(mp.ex!=mp.non){
mp.n=mp.ex+f.btn_tip.num, f.btn_tip.num+=1
f.btn_tip.name=mp.n
f.btn_tip.img=mp.ex + '.png';}
[endscript]

[if exp="!mp.tg" ]
[button name=%n storage=ALL/pre/macro_bace.ks target=*button graphic=%gr enterimg=%mo x=%x y=%y exp=%exp ][else]
[button name=%n target=%tg graphic=%gr enterimg=%mo x=%x y=%y exp=%exp ][endif]
;[if exp="!mp.tg" ]
;[button name=btn storage=ALL/pre/macro_bace.ks target=*button graphic=%gr enterimg=%mo x=%x y=%y exp=%exp ][else]
;[button target=%tg graphic=%gr enterimg=%mo x=%x y=%y exp=%exp ][endif]
[add_y cond="f.x.count>=f.x.c_max"][add_x cond="f.y.count>=f.y.c_max"]
[endmacro]


;;btn/fix
[macro name="btn/fix"]
[iscript]
if(!mp.d){mp.d='';}
if(mp.drs!=mp.non){mp.tg=1, mp.l='x', mp.g=1, mp.sw=mp.drs, mp.swm=mp.gr+mp.d ;}

if(mp.sw>=1){mp.sw=f.sw[mp.sw];} if(mp.tg>=1){mp.tg= f.tg[mp.tg];}
;=============================================================================
if(mp.sw=='config.bgm' && mp.swm==sf.config.bgm){;} else if(mp.sw=='config.se' && mp.swm==sf.config.se){;}
else if(mp.sw=='config.text_sp' && mp.swm==sf.config.text_sp){;} else if(mp.sw=='config.auto_sp' && mp.swm==sf.config.auto_sp){;}
else if(mp.sw=='config.anim_auto_t' && mp.swm==sf.config.anim_auto_t){;} else if(mp.sw=='config.bgm_always' && mp.swm==sf.config.bgm_always){;}
else if(mp.sw=='config.key_shortcut' && mp.swm==sf.config.key_shortcut){;} else if(mp.sw=='config.tx_color' && mp.swm==sf.config.tx_color){;}
else if(mp.sw=='config.face_ani' && mp.swm==sf.config.face_ani){;}

else if(mp.sw=='h_effect.xr' && mp.swm==sf.h_effect.xr){;} else if(mp.sw=='h_effect.tx' && mp.swm==sf.h_effect.tx){;}
else if(mp.sw=='h_effect.se' && mp.swm==sf.h_effect.se){;} else if(mp.sw=='h_effect.ef' && mp.swm==sf.h_effect.ef){;}
else if(mp.sw=='h_effect.fin_choice' && mp.swm==sf.h_effect.fin_choice){;}

else if(mp.sw=='tab.main' && mp.swm==f.tab.main){;} else if(mp.sw=='tab.sub' && mp.swm==f.tab.sub){;}
else if(mp.sw=='tab.page' && mp.swm==f.tab.page){;} else if(mp.sw=='tab.prev' && mp.swm==f.tab.prev){;}
else if(mp.sw=='repeat_mode' && mp.swm==f.g_config.repeat_mode){;}
else if(mp.sw=='temp.tab' && mp.swm==f.temp.tab){;} else if(mp.sw=='tf.tab' && mp.swm==tf.tab){;}

;TF用
else if(mp.sw=='hc_man_act' && mp.swm==f.hx_select.man_act){;} else if(mp.sw=='hc_lock' && mp.swm==f.hx_conf.lock){;}
else if(mp.sw=='hc_c_act' && mp.swm==f.hx_select.c_act){;}
else if(mp.sw=='hc_rb_act' && mp.swm==f.hx_select.rb_act){;} else if(mp.sw=='hc_lb_act' && mp.swm==f.hx_select.lb_act){;}
else if(mp.sw=='hc_v_act' && mp.swm==f.hx_select.v_act){;} else if(mp.sw=='hc_v_spd' && mp.swm==f.hx_select.v_spd){;}

else if(mp.sw=='hc_b_act' && mp.swm==f.hx_select.b_hand){;}
else if(mp.sw=='hc_h_act' && mp.swm==f.hx_select.h_hand){;}
else if(mp.sw=='hc_hip_act' && mp.swm==f.hx_select.hip_hand){;}

else if(mp.sw=='tf.Hxn_num.b' && mp.swm==tf.Hxn_num.b){;} else if(mp.sw=='tf.Hxn_num.c' && mp.swm==tf.Hxn_num.c){;}
else if(mp.sw=='tf.Hxn_num.v' && mp.swm==tf.Hxn_num.v){;} else if(mp.sw=='tf.Hxn_num.iv' && mp.swm==tf.Hxn_num.iv){;}
else if(mp.sw=='tf.Hxn_num.u' && mp.swm==tf.Hxn_num.u){;} else if(mp.sw=='tf.Hxn_num.p' && mp.swm==tf.Hxn_num.p){;}
else if(mp.sw=='tf.Hxn_num.z' && mp.swm==tf.Hxn_num.z){;} else if(mp.sw=='tf.Hxn_num.x' && mp.swm==tf.Hxn_num.x){;}
else if(mp.sw=='tf.Hxn_num.w' && mp.swm==tf.Hxn_num.w){;} else if(mp.sw=='tf.Hxn_num.o' && mp.swm==tf.Hxn_num.o){;}
else if(mp.sw=='tf.Hxn_num.m' && mp.swm==tf.Hxn_num.m){;} else if(mp.sw=='tf.Hxn_num.ex' && mp.swm==tf.Hxn_num.ex){;}
else if(mp.sw=='f.hx_conf.tx_word' && mp.swm==f.hx_conf.tx_word){;}
else if(mp.sw=='Hx_sel_type' && mp.swm==f.hx_conf.sel_type){;}

else if(mp.sw=='d_daily_change' && mp.swm==f.g_config.d_daily_change){;}
else if(mp.sw=='d_col_btn' && mp.swm==f.g_config.d_col_btn){;}
else if(mp.sw=='cdn_page' && mp.swm==f.tab.cdn_n){;} else if(mp.sw=='sav_auto[0]' && mp.swm==f.sav_auto[0]){;}
else if(mp.sw=='d_col.a1b' && mp.swm==tf.d_col.a1b){;} else if(mp.sw=='d_col.a1' && mp.swm==tf.d_col.a1){;}
else if(mp.sw=='d_col.a2b' && mp.swm==tf.d_col.a2b){;} else if(mp.sw=='d_col.a2' && mp.swm==tf.d_col.a2){;}
else if(mp.sw=='d_col.a3b' && mp.swm==tf.d_col.a3b){;} else if(mp.sw=='d_col.a3' && mp.swm==tf.d_col.a3){;}
else if(mp.sw=='d_col.b1b' && mp.swm==tf.d_col.b1b){;} else if(mp.sw=='d_col.b1' && mp.swm==tf.d_col.b1){;}
else if(mp.sw=='d_col.b2b' && mp.swm==tf.d_col.b2b){;} else if(mp.sw=='d_col.b2' && mp.swm==tf.d_col.b2){;}
else if(mp.sw=='d_col.b3b' && mp.swm==tf.d_col.b3b){;} else if(mp.sw=='d_col.b3' && mp.swm==tf.d_col.b3){;}

else if(mp.sw=='d_dress.n' && mp.swm==f.d_dress.n){;}
else if(mp.sw=='d_dress.n_ad' && mp.swm==f.d_dress.n+'_'+f.d_dress.sub_p){;}
else if(mp.sw=='d_dress_a.n_ad' && mp.swm==f.d_dress_a.n+'_'+f.d_dress_a.sub_p){;}
else if(mp.sw=='d_eri.n_ad' && mp.swm==f.d_eri.n+'_'+f.d_eri.sub_p){;}
else if(mp.sw=='d_kata.n_ad' && mp.swm==f.d_kata.n+'_'+f.d_kata.sub_p){;}

else if(mp.sw=='d_dress_a.n' && mp.swm==f.d_dress_a.n){;} else if(mp.sw=='d_dress_b.n' && mp.swm==f.d_dress_b.n){;}
else if(mp.sw=='d_pin.type' && mp.swm==f.d_pin.type){;} else if(mp.sw=='d_pin.n' && mp.swm==f.d_pin.n){;}
else if(mp.sw=='d_ribbon.type' && mp.swm==f.d_ribbon.type){;} else if(mp.sw=='d_ribbon.n' && mp.swm==f.d_ribbon.n){;}
else if(mp.sw=='d_glove.n' && mp.swm==f.d_glove.n){;} else if(mp.sw=='d_socks.n' && mp.swm==f.d_socks.n){;}
else if(mp.sw=='d_hat.n' && mp.swm==f.d_hat.n){;} else if(mp.sw=='d_glasses.n' && mp.swm==f.d_glasses.n){;}
else if(mp.sw=='d_eri.n' && mp.swm==f.d_eri.n){;} else if(mp.sw=='d_kata.n' && mp.swm==f.d_kata.n){;} 
else if(mp.sw=='d_body.n' && mp.swm==f.d_body.n){;}
else if(mp.sw=='d_under_b.n' && mp.swm==f.d_under_b.n){;} else if(mp.sw=='d_under_p.n' && mp.swm==f.d_under_p.n){;}

else if(mp.sw=='d_color.dress' && mp.swm==f.d_color.dress){;}
else if(mp.sw=='d_color.dress_b' && mp.swm==f.d_color.dress_b){;}
else if(mp.sw=='d_color.eri' && mp.swm==f.d_color.eri){;}
else if(mp.sw=='d_color.kata' && mp.swm==f.d_color.kata){;}
else if(mp.sw=='d_color.hair' && mp.swm==f.d_color.hair){;}
else if(mp.sw=='d_color.hat' && mp.swm==f.d_color.hat){;}
else if(mp.sw=='d_color.glasses' && mp.swm==f.d_color.glasses){;}
else if(mp.sw=='d_color.socks' && mp.swm==f.d_color.socks){;}
else if(mp.sw=='d_color.under' && mp.swm==f.d_color.under){;}
else if(mp.sw=='d_color.color' && mp.swm==f.d_color.color){;}

else{mp.btn_switch='non';}
;gr処理=============================================================================
if(mp.g>=1){mp.gr= f.preg[mp.g] + mp.gr;}
if(mp.gr=='preg1'){mp.gr= f.preg[1];}else if(mp.gr=='preg2'){mp.gr= f.preg[2];}else if(mp.gr=='preg3'){mp.gr= f.preg[3];}else if(mp.gr=='preg4'){mp.gr= f.preg[4];}
mp.gr= f.g_info.fol + mp.gr

if(mp.mo==1){mp.m= mp.gr;}
else if(mp.mo==2){mp.m= mp.gr + '_';}
else if(mp.btn_switch!='non'){mp.m= mp.gr + '-';}
else {mp.m= mp.gr + '_';}

if(mp.btn_switch!='non' && mp.mo==2){mp.gr=mp.gr + '_';}
else if(mp.btn_switch!='non'){mp.gr=mp.gr + '-';}
mp.mo= mp.m + '.png', mp.gr= mp.gr + '.png'
;=============================================================================
if(!mp.x){mp.x=f.x.bace;} if(!mp.y){mp.y=f.y.bace;}
if(mp.l=='x'){f.x.bace+=f.x.add, f.x.count+=1;}
else if(mp.l=='y'){f.y.bace+=f.y.add, f.y.count+=1;}
if(mp.st=='sys' || mp.role=='sleepgame'){mp.st= f.g_info.fol + 'sys/system.ks';}
else if(mp.st!=mp.non){mp.st= f.g_info.fol + mp.st + '.ks';}
if(!mp.n){mp.n=tf.role_name	;}
if(mp.ex>=1){mp.ex=f.btn_tip_gr[mp.ex];}
if(mp.ex!=mp.non){
mp.n=mp.ex+f.btn_tip.num, f.btn_tip.num+=1
f.btn_tip.name=mp.n
f.btn_tip.img=mp.ex + '.png';}

[endscript]

[if exp="mp.role!=mp.non" ]
[button name=%n role=%role auto_next="false" graphic=%gr enterimg=%mo storage=%st target=%tg x=%x y=%y exp=%exp ]
[elsif exp="!mp.tg" ]
[button name=%n fix="true" storage=ALL/pre/macro_bace.ks target=*button graphic=%gr enterimg=%mo x=%x y=%y exp=%exp ][else]
[button name=%n fix="true" auto_next="false" graphic=%gr enterimg=%mo storage=%st target=%tg x=%x y=%y exp=%exp ][endif]
[add_y cond="f.x.count>=f.x.c_max"][add_x cond="f.y.count>=f.y.c_max"]
[endmacro]

[macro name="btn/commu"]
[iscript]
tf.list_n+=1
if(tf.page==1 && tf.list_n>=6){;}
else if(tf.page==2 && (tf.list_n<=5 || tf.list_n>=10)){;}
else{mp.tbn='true'
mp.gr= f.g_info.fol + f.preg[1] + mp.gr
mp.mo= mp.gr + '_.png'
mp.gr= mp.gr + '.png'
mp.y=f.y.bace, mp.x=f.x.bace
f.y.bace= f.y.bace + f.y.add;}
[endscript]
[button target=*jump_to_conv graphic=%gr enterimg=%mo x=%x y=%y exp=%exp cond="mp.tbn=='true'"][endmacro]

[macro name="choice_xy"][cancelskip]
[iscript]
f.x.bace=125, f.y.c_max=10000
if(mp.set=3){f.y.bace=200,f.y.add=120;}
else if(mp.set=4){f.y.bace=200,f.y.add=120;}
else{f.y.bace=200,f.y.add=150;}
[endscript]
[endmacro]

;;btn/click
[macro name="btn/click"]
[iscript]
if(mp.sw>=1){mp.sw=f.sw[mp.sw];} if(mp.tg>=1){mp.tg= f.tg[mp.tg];}
;=============================================================================
if(!mp.x){mp.x=f.x.bace;} if(!mp.y){mp.y=f.y.bace;}
if(mp.l=='x'){f.x.bace+=f.x.add, f.x.count+=1;}
else if(mp.l=='y'){f.y.bace+=f.y.add, f.y.count+=1;}

if(!mp.n){mp.n='btn';}
if(mp.ex>=1){mp.ex=f.btn_tip_gr[mp.ex];}
if(mp.ex!=mp.non){
mp.n=mp.ex+f.btn_tip.num, f.btn_tip.num+=1
f.btn_tip.name=mp.n
f.btn_tip.img=mp.ex + '.png';}

mp.gr='00.png'
;mp.gr='001.png'
[endscript]
[button name=%n storage=ALL/pre/macro_bace.ks target=*button graphic=%gr x=%x y=%y width=%wi height=%hi exp=%exp cond="!mp.tg" ]
[button name=%n target=%tg graphic=%gr x=%x y=%y width=%wi height=%hi exp=%exp cond="mp.tg!=mp.non" ]
[endmacro]

;;day_reset/exp=============================================================================
[macro name="day_reset"]
[iscript]
if(f.g_config.H_setting==0 && f.x_count.sex>=1){f.g_config.H_setting=1;}
if(f.g_config.H_setting==0){f.state.mood='def',f.state.lust=0, f.temp_flg.sexless_c=0,f.state.sexless=0;}
if(f.state.mood=='lust'){f.state.lust+=10;}
;1のみ減少
if(f.g_config.H_setting>=2){;}
else if(f.state.lust>=3000){f.state.lust-=15;} else if(f.state.lust>=2000){f.state.lust-=10;}
else if(f.state.lust>=1000){f.state.lust-=5;} else if(f.state.lust>=500){f.state.lust-=3;}
else if(f.state.lust>=100){f.state.lust-=2;} else if(f.state.lust>=50){f.state.lust-=1;}

;4のみ上昇
if(f.g_config.H_setting<=3){;}
else if(f.state.mood=='lust'){f.state.lust+=20;}
else if(f.state.lust>=3000){f.state.lust+=15;} else if(f.state.lust>=2000){f.state.lust+=10;}
else if(f.state.lust>=1000){f.state.lust+=5;} else if(f.state.lust>=500){f.state.lust+=3;}
else if(f.state.lust>=100){f.state.lust+=2;} else if(f.state.lust>=50){f.state.lust+=1;}
else if(f.state.lust<=0){f.state.lust=0;}

;2以下冷静時減少
if(f.g_config.H_setting>=3){;}
else if(f.g_config.H_setting==2 && f.state.mood=='calm'){f.state.lust-=5;}
else if(f.state.mood=='calm'){f.state.lust-=10;}

if(f.state.lust<=0){f.state.lust=0;}
;欲求不満状態によって上昇記述あとでここに？
if(f.x_count.sex>=1){;}else{f.temp_flg.sexless_c=0,f.state.sexless=0;}

f.count.day+=1, f.g_config.repeat_mode=0
f.act.last='awake', f.act.wine='non'
f.situ.situ='room'
f.d_dress.temp=0, f.temp={}
f.act.lust=0, f.temp_flg.drunk=0, f.temp_flg.bed_agree=0, f.act.last_tf=0
f.temp_flg.commu_c=0, f.touch_c==0, f.temp_flg.lust_c=0, f.h_state.m_c=0
f.temp_flg.jealous=0, f.state.mood='def'

;多分未実装指イベ用
;f.v_wet=0, f.v_wait=0, f.v_ex=0
;１日一回のみのイベントスイッチ変数
f.daily.lunch=0, f.item.miyage='non', f.daily.d_shop_n=0
f.daily.tea=0, f.daily.work=0, f.daily.out=0, f.daily.d_shop=0
f.daily.carry=0, f.daily.carry_n=0
;１日の終わりコメント用変数
f.daily.nade=0, f.daily.talk=0, f.daily.forest=0, f.daily.market=0
f.daily.hiroba=0, f.daily.communicate=0, f.daily.act='non'
;f.daily_touch_h=0

;ポプリ消費
if(f.g_config.pourri_time=='every'){
	if(f.g_config.pourri_use=='red' && f.item.popuri_p>=1){f.item.popuri_p=f.item.popuri_p-1;}
	else if(f.g_config.pourri_use=='blue' && f.item.popuri_b>=1){f.item.popuri_b=f.item.popuri_b-1;}}
else{f.g_config.pourri_use='non', f.g_config.pourri_time=1;}
[endscript]


[c_mod n=win reset=1]
[dayly_dress_change cond="f.g_config.d_daily_change==1"][endmacro]

;ステータスリミット
[macro name="limit_status"]
[iscript]
if(f.h_state.m>=99999){f.h_state.m=99999;} if(f.h_state.b>=99999){f.h_state.b=99999;}
if(f.h_state.c>=99999){f.h_state.c=99999;} if(f.h_state.v>=99999){f.h_state.v=99999;}

if(f.state.love>=99999){f.state.love=99999;} if(f.state.lust>=99999){f.state.lust=99999;}
if(f.state.lust<=0){f.state.lust=0;}

if(f.item.flower_p>=9999){f.item.flower_p=9999;}
if(f.item.flower_b>=9999){f.item.flower_b=9999;}
[endscript]
[endmacro]

;;mood_calc=============================================================================
[macro name="mood_calc"]
[iscript]
;ポプリ補正
if(f.g_config.pourri_use=='red'){f.state.mood='lust';}
else if(f.g_config.pourri_use=='blue'){f.state.mood='calm';}
else{
;	lust_act計算+その結果によるmood変更。
	if(f.act.last=='dinner' || f.act.last=='cafe' || f.act.last=='hiroba' || f.act.last=='forest' || f.act.last=='market' || f.act.last=='work' || f.act.last=='d_shop')
	{f.act.lust=0;}
	else if(f.act.system==1 || f.act.system==2)
	{f.act.system=0;}
	else{f.act.lust-=1;}
	if(f.act.lust<=0){f.act.lust=0;}
;	if(f.act.lust>=6 && f.state.lust>=20 || f.act.lust>=5 && f.state.lust>=100 || f.act.lust>=4 && f.state.lust>=500 || f.act.lust>=3 && f.state.lust>=1000 || f.act.lust>=2 && f.state.lust>=2000)
;	{f.state.mood='lust';}
}
if(f.g_config.H_setting==0){f.state.mood='def';}
[endscript]
[mood_ef][endmacro]

[macro name="mood_ef"]
[iscript]
if(f.temp_flg.drunk>=3 && f.state.mood=='lust'){mp.st='LD2';}
else if(f.temp_flg.drunk>=3){mp.st='drunk2';}
else if(f.temp_flg.drunk>=2 && f.state.mood=='lust'){mp.st='LD';}
else if(f.temp_flg.drunk>=2){mp.st='drunk';}
else if(f.state.mood=='lust'){mp.st='lust';}
else if(f.state.mood=='calm'){mp.st='calm';}
else{mp.st='00';}
if(mp.st!='00'){mp.st='mood/' + mp.st;}
[endscript]
[c_mod n=win ef=%st ][endmacro]
	
[macro name="set_layermode_TF"]
[free_layermode time="0" wait="false" ]
[iscript]
mp.gr_overlay='00.png', mp.gr_multiply='00.png'

if(f.situ.bg=='d_shop_n'){mp.gr_overlay='inside/d_shop_n', mp.gr_multiply='inside/d_shop_n';}
else if(f.situ.bg=='restaurant'){mp.gr_multiply='inside/restaurant';}

if(mp.gr_overlay!='00.png')
{mp.gr_overlay=f.g_info.fol + 'effect/' + mp.gr_overlay + '_ovlay.png';}
if(mp.gr_multiply!='00.png')
{mp.gr_multiply=f.g_info.fol + 'effect/' + mp.gr_multiply + '_multi.png';}

[endscript]
[layermode graphic=%gr_overlay time=300 mode="overlay" wait="false" ]
[layermode graphic=%gr_multiply time=300 mode="multiply" wait="false" ][endmacro]

;;BGM-shortcut===========================================================================
[macro name="bgm_room" ][eval exp="f.bgm.re=1" cond="mp.re==1"]
[if exp="!f.g_config.room_bgm" ][eval exp="f.st[1]='SG'" ][else]
[eval exp="f.st[1]=f.g_config.room_bgm" ][endif][bgm st=1][endmacro]

[macro name="bgm_replay"][eval exp="f.st[1]=f.g_config.room_bgm" ][bgm st=1][endmacro]

;;H-shortcut=============================================================================
[macro name="h_next"][btn/ tg=%tg gr=menu/Hx/next_p y=0 x=934 ][endmacro]
[macro name="h_back"][btn/ tg=%tg gr=menu/Hx/prev_p y=0 x=0 ][endmacro]

[macro name="add_lust_act" ][eval exp="f.temp_flg.lust_c+=1, f.act.lust+=2" ]
[if exp="f.temp_flg.lust_c==5" ][eval exp="f.temp_flg.lust_c=0, f.state.lust+=1" ][endif][endmacro]
[macro name="mouth_up_little" ][eval exp="f.h_state.m_c+=1" ]
[if exp="f.h_state.m_c>=3" ][eval exp="f.h_state.m+=1, f.h_state.m_c=0" ][endif][endmacro]


[macro name="Hx/ef_reset"]
[chara_part name=Hx_ef breath=00.png allow_storage=true cond="mp.breath!=mp.non"]
;[chara_part name=Hx_ef heart=%heart allow_storage=true cond="mp.heart!=mp.non"]
[chara_part name=Hx_ef exx=00.png allow_storage=true cond="mp.exx!=mp.non"]
[chara_part name=Hx_ef ef=00.png allow_storage=true cond="mp.ef!=mp.non"]
[chara_part name=Hx_ef tx=00.png allow_storage=true cond="mp.tx!=mp.non"]
[chara_part name=Hx_ef se=00.png allow_storage=true cond="mp.se!=mp.non"]
[endmacro]

[macro name="Hx/ev"]
[iscript]
mp.file1='TF/Hx/' + f.fol_info.fol + 'body/'
mp.file='TF/Hx/' + f.fol_info.fol

if(mp.face_reset==1){mp.xr='00', mp.se='00', mp.tx='00', mp.ef='00';}

if(mp.place!=mp.non){mp.obje_f= mp.file + 'man/place_' + f.situ.place + '.png';}

if(mp.body!=mp.non){
	mp.sbody= mp.file1 + 'b_sbody'+ mp.body + '.png'
;	mp.arm= mp.file1 + 'b_arm'+ mp.body + '.png'
	mp.head= mp.file1 + 'b_head'+ mp.body + '.png'
	mp.breath= mp.file + 'wet/breath' + mp.body*2 + '.png'
	mp.body= mp.file1 + 'b_body'+ mp.body + '.png';}
;if(mp.head!=mp.non){mp.head= mp.file1 + 'b_head'+ mp.head + '.png';}

if(mp.face=='00'){mp.face='00.png';} else if(mp.face!=mp.non)
	{mp.face= mp.file + 'ev/face/' + mp.face + '.png';}

if(mp.breath=='00'){mp.breath='00.png';}
if(mp.tear=='00'){mp.tear='00.png';}else if(mp.tear!=mp.non)
	{mp.tear= mp.file + 'wet/tear' + mp.tear + '.png';}
;if(mp.breath=='00'){mp.breath='00.png';}else if(mp.breath!=mp.non)
;	{mp.breath= mp.file + 'wet/breath' + mp.breath + '.png';}
;if(mp.exx=='00'){mp.exx='00.png';}
;else if(mp.exx!=mp.non){mp.exx= mp.file + 'ef/' + mp.exx + '.png';}

if(mp.xr=='00'){mp.xr='00.png';} else if(mp.xr!=mp.non && mp.xr!='re' && mp.xr!='hide')
	{mp.xr= mp.file + 'xr/' + mp.xr +'.png';}
if(mp.xr=='re'){mp.xr=tf.ev_img.xr;} else if(mp.xr!=mp.non && mp.xr!='hide'){tf.ev_img.xr=mp.xr;}
if(sf.h_effect.xr!=1 || mp.xr=='hide'){mp.xr='00.png';}

if(mp.ef=='00'){mp.ef='00.png';} else if(mp.ef!=mp.non && mp.ef!='re' && mp.ef!='hide')
	{mp.ef= mp.file + 'ev/ef/' + mp.ef + '.png';}
if(mp.ef=='re'){mp.ef=tf.ev_img.ef;} else if(mp.ef!=mp.non && mp.ef!='hide'){tf.ev_img.ef=mp.ef;}
if(sf.h_effect.ef!=1 || mp.ef=='hide'){mp.ef='00.png';}

if(mp.se=='00'){mp.se='00.png';} else if(mp.se!=mp.non && mp.se!='re' && mp.se!='hide')
	{mp.se= mp.file + 'ev/se/' + mp.se + '.png';}
if(mp.se=='re'){mp.se=tf.ev_img.se;} else if(mp.se!=mp.non && mp.se!='hide'){tf.ev_img.se=mp.se;}
if(sf.h_effect.se!=1 || mp.se=='hide'){mp.se='00.png';}

if(mp.tx=='00'){mp.tx='00.png';} else if(mp.tx!=mp.non && mp.tx!='re' && mp.tx!='hide')
	{mp.tx= mp.file + 'ev/tx/' + mp.tx + '.png';}
if(mp.tx=='re'){mp.tx=tf.ev_img.tx;} else if(mp.tx!=mp.non && mp.tx!='hide'){tf.ev_img.tx=mp.tx;}
if(sf.h_effect.tx!=1 || mp.tx=='hide'){mp.tx='00.png';}

if(f.fol_info.scene=='Hx_back' && mp.p!=mp.non){mp.man_bace= mp.file + 'vp/' + mp.p + '_.png';}
if(mp.p=='00'){mp.p='00.png';} else if(mp.p!=mp.non)
	{mp.p= mp.file + 'vp/' + mp.p + '.png'}
if(mp.boko=='00'){mp.boko='00.png';} else if(mp.boko!=mp.non)
	{mp.boko= mp.file + 'vp/' + mp.boko + '.png'}

if(mp.z_a=='00'){mp.z_a='00.png';} else if(mp.z_a!=mp.non)
	{mp.z_a= mp.file + 'zzz/zz' + mp.z_a + '.png';}
if(mp.z_b=='00'){mp.z_b='00.png';} else if(mp.z_b!=mp.non)
	{mp.z_b= mp.file + 'zzz/zv' + mp.z_b + '.png';}
if(mp.squi=='00'){mp.squi='00.png';} else if(mp.squi!=mp.non)
	{mp.squi= mp.file + 'wet/squi' + mp.squi + '.png';}

if(mp.exx=='00'){mp.exx='00.png';} else if(mp.exx!=mp.non)
	{mp.exx= mp.file + 'ef/ex' + mp.exx + '.png';}

if(mp.hand_L=='00'){mp.hand_L='00.png', mp.hand_Lb='00.png';}
else if(mp.hand_L!=mp.non){mp.hand_Lb= mp.file + 'man/lhand_' + mp.hand_L + '_.png',
							mp.hand_L= mp.file + 'man/lhand_' + mp.hand_L + '.png';}
if(mp.hand_R=='00'){mp.hand_R='00.png';}
else if(mp.hand_R!=mp.non){mp.hand_R= mp.file + 'man/rhand_' + mp.hand_R + '.png';}

;if(mp.m_mouth=='00'){mp.m_mouth='00.png';}
;else if(mp.m_mouth!=mp.non){mp.m_mouth= mp.file + 'man/m_' + mp.m_mouth + '.png';}

;if(f.fol_info.scene=='Hx_back'){
;	if(mp.rh_zdx=='over'){mp.rh_zdx=240;} else if(mp.rh_zdx=='under'){mp.rh_zdx=200;}}

;if(!mp.t){mp.t=300;}else{mp.t=0;}
if(mp.t>=1){;}else{mp.t=0;}
[endscript]
;[chara_part name=&f.fol_info.scene body=%body body2=%body2 arm=%arm allow_storage=true cond="mp.body!=mp.non"]
[chara_part name=&f.fol_info.scene body=%body sbody=%sbody allow_storage=true cond="mp.body!=mp.non"]
[chara_part name=&f.fol_info.scene head=%head allow_storage=true cond="mp.head!=mp.non"]
[chara_part name=&f.fol_info.scene obje_f=%obje_f allow_storage=true cond="mp.obje_f!=mp.non"]

[chara_part name=&f.fol_info.scene p=%p allow_storage=true cond="mp.p!=mp.non" ]
;[chara_part name=&f.fol_info.scene boko=%boko allow_storage=true cond="mp.p!=mp.non"]

[chara_part name=&f.fol_info.scene eyes=%face allow_storage=true cond="mp.face!=mp.non"]
[chara_part name=&f.fol_info.scene tear=%tear allow_storage=true cond="mp.tear!=mp.non"]
[chara_part name=&f.fol_info.scene squi=%squi allow_storage=true cond="mp.squi!=mp.non"]

;[chara_part name=&f.fol_info.scene z_a=%z_a allow_storage=true cond="mp.z_a!=mp.non"]
[chara_part name=&f.fol_info.scene z_b=%z_b allow_storage=true cond="mp.z_b!=mp.non"]
[chara_part name=&f.fol_info.scene exx=%exx allow_storage=true cond="mp.exx!=mp.non"]

[chara_part name=&f.fol_info.scene man_bace=%man_bace allow_storage=true cond="mp.man_bace!=mp.non"]
;[chara_part name=&f.fol_info.scene man_legs=%man_legs allow_storage=true cond="mp.man_legs!=mp.non"]
;[chara_part name=&f.fol_info.scene m_mouth=%m_mouth allow_storage=true cond="mp.m_mouth!=mp.non"]

[if exp="mp.hand_R!=mp.non" ]
	[chara_part name=&f.fol_info.scene hand_R=%hand_R allow_storage=true][endif]
[if exp="mp.hand_L!=mp.non" ]
	[chara_part name=&f.fol_info.scene hand_L=%hand_L allow_storage=true][endif]
[chara_part name=&f.fol_info.scene hand_Lb=%hand_Lb allow_storage=true cond="mp.hand_Lb!=mp.non"]

[chara_part name=&f.fol_info.scene xrr=%xr allow_storage=true cond="mp.xr!=mp.non"]
[chara_part name=Hx_ef breath=%breath allow_storage=true cond="mp.breath!=mp.non"]
;[chara_part name=Hx_ef heart=%heart allow_storage=true cond="mp.heart!=mp.non"]
[chara_part name=Hx_ef exx=%exx allow_storage=true cond="mp.exx!=mp.non"]
[chara_part name=Hx_ef ef=%ef allow_storage=true cond="mp.ef!=mp.non"]
[chara_part name=Hx_ef tx=%tx allow_storage=true cond="mp.tx!=mp.non"]
[chara_part name=Hx_ef se=%se allow_storage=true cond="mp.se!=mp.non"]


[if exp="mp.face_reset==1" ]
[chara_part name=&f.fol_info.scene mayu=00.png allow_storage=true ]
[chara_part name=&f.fol_info.scene mouth=00.png allow_storage=true ]
[chara_part name=&f.fol_info.scene eyes=00.png allow_storage=true ][endif]
[endmacro]



;old=============================================================================
[macro name="hcg/"]
[iscript]
	mp.file='TF/' + f.fol_info.fol_h
	if(mp.eyes!=mp.non){mp.eyes= mp.file + 'face/' + mp.eyes + '.png';}
	if(mp.body!=mp.non){mp.body= mp.file + 'body/' + mp.body + '.png';}
	if(mp.head!=mp.non){mp.head= mp.file + 'body/' + mp.head + '.png';}
	if(mp.arm!=mp.non){mp.arm= mp.file + 'body/' + mp.arm + '.png';}
	if(mp.arm_b!=mp.non){mp.arm_b= mp.file + 'body/' + mp.arm_b + '.png';}
	if(mp.b_acc!=mp.non){mp.b_acc= mp.file + 'b_acc/' + mp.b_acc + '.png';}
	if(mp.ef2=='00'){mp.ef2='00.png';}
	else if(mp.ef2!=mp.non){mp.ef2= mp.file + 'ef2/' + mp.ef2 + '.png';}
	if(mp.h=='00'){mp.h='00.png';}
	else if(mp.h!=mp.non){mp.h= mp.file + 'ef2/' + mp.h + '.png';}
	if(mp.p=='00'){mp.p='00.png';}
	else if(mp.p!=mp.non){mp.p= mp.file + 'p/' + mp.p + '.png';}
	if(mp.other=='00'){mp.other='00.png';}
	else if(mp.other!=mp.non){mp.other= mp.file + 'ef2/' + mp.other + '.png';}
	
;if(mp.dress=='00'){mp.dress='00.png';}
;else if(mp.dress!=mp.non){mp.dress= mp.file + 'dress/' + mp.dress + '.png';}
;if(mp.glasses=='00'){mp.glasses='00.png';}
;else if(mp.glasses!=mp.non){mp.glasses= mp.file + 'glass/' + mp.p + '.png';}
	if(mp.hat=='00'){mp.hat='00.png';}
	else if(mp.hat!=mp.non){mp.hat= mp.file + 'hat/' + mp.hat + '.png';}
	if(mp.b_acc=='00'){mp.b_acc='00.png';}
	else if(mp.b_acc!=mp.non){mp.b_acc= mp.file + mp.b_acc + '.png';}
[endscript]
	[chara_part name=cg eyes=%eyes allow_storage=true cond="mp.eyes!=mp.non" ]
	[chara_part name=cg body=%body allow_storage=true cond="mp.body!=mp.non" ]
	[chara_part name=cg head=%head allow_storage=true cond="mp.head!=mp.non" ]
	[chara_part name=cg arm=%arm allow_storage=true cond="mp.arm!=mp.non" ]
	[chara_part name=cg arm_b=%arm_b allow_storage=true cond="mp.arm_b!=mp.non" ]
;[chara_part name=cg b_acc=%b_acc allow_storage=true cond="mp.b_acc!=mp.non" ]
	[chara_part name=cg ef2=%ef2 allow_storage=true cond="mp.ef2!=mp.non" ]
	[chara_part name=cg p=%p allow_storage=true cond="mp.p!=mp.non" ]
	[chara_part name=cg h=%h allow_storage=true cond="mp.h!=mp.non" ]
;[chara_part name=cg dress=%dress allow_storage=true cond="mp.dress!=mp.non" ]
;[chara_part name=cg glasses=%glasses allow_storage=true cond="mp.glasses!=mp.non" ]
	[chara_part name=cg hat=%hat allow_storage=true cond="mp.hat!=mp.non" ]
	[chara_part name=cg other=%other allow_storage=true cond="mp.other!=mp.non" ]
[endmacro]

[macro name="h_ef/"]
[iscript]
mp.file=f.g_info.fol + f.fol_info.fol_h

if(mp.xr=='00'){mp.xr='00.png';} else if(mp.xr!=mp.non && mp.xr!='re' && mp.xr!='hide')
	{mp.xr= mp.file + 'xr/' + mp.xr +'.png';}
if(mp.xr=='re'){mp.xr=tf.ev_img.xr;} else if(mp.xr!=mp.non && mp.xr!='hide'){tf.ev_img.xr=mp.xr;}
if(sf.h_effect.xr!=1 || mp.xr=='hide'){mp.xr='00.png';}

if(mp.ef=='00'){mp.ef='00.png';} else if(mp.ef!=mp.non && mp.ef!='re' && mp.ef!='hide')
	{mp.ef= mp.file + 'ef/' + mp.ef + '.png';}
if(mp.ef=='re'){mp.ef=tf.ev_img.ef;} else if(mp.ef!=mp.non && mp.ef!='hide'){tf.ev_img.ef=mp.ef;}
if(sf.h_effect.ef!=1 || mp.ef=='hide'){mp.ef='00.png';}

if(mp.se=='00'){mp.se='00.png';} else if(mp.se!=mp.non && mp.se!='re' && mp.se!='hide')
	{mp.se= mp.file + 'se/' + mp.se + '.png';}
if(mp.se=='re'){mp.se=tf.ev_img.se;} else if(mp.se!=mp.non && mp.se!='hide'){tf.ev_img.se=mp.se;}
if(sf.h_effect.se!=1 || mp.se=='hide'){mp.se='00.png';}

if(mp.tx=='00'){mp.tx='00.png';} else if(mp.tx!=mp.non && mp.tx!='re' && mp.tx!='hide')
	{mp.tx= mp.file + 'tx/' + mp.tx + '.png';}
if(mp.tx=='re'){mp.tx=tf.ev_img.tx;} else if(mp.tx!=mp.non && mp.tx!='hide'){tf.ev_img.tx=mp.tx;}
if(sf.h_effect.tx!=1 || mp.tx=='hide'){mp.tx='00.png';}

;	if(mp.ef=='00'){mp.ef='00.png', f.st_ef=mp.ef;} else if(mp.ef=='re'){mp.ef=f.st_ef;}
;	else if(mp.ef!=mp.non){mp.ef= mp.file + 'ef/' + mp.ef + '.png', f.st_ef=mp.ef;}
;	if(mp.se=='00'){mp.se='00.png', f.st_se=mp.se;} else if(mp.se=='re'){mp.se=f.st_se;}
;	else if(mp.se!=mp.non){mp.se= mp.file + 'se/' + mp.se + '.png', f.st_se=mp.se;}
;	if(mp.tx=='00'){mp.tx='00.png', f.st_tx=mp.tx;} else if(mp.tx=='re'){mp.tx=f.st_tx;}
;	else if(mp.tx!=mp.non){mp.tx= mp.file + 'tx/' + mp.tx + '.png', f.st_tx=mp.tx;}
;	if(mp.xr=='00'){mp.xr='00.png', f.st_xr=mp.xr;} else if(mp.xr=='re'){mp.xr=f.st_xr;}
;	else if(mp.xr!=mp.non){mp.xr= mp.file + 'xr/' + mp.xr + '.png', f.st_xr=mp.xr;}
	
	if(mp.ef2=='00'){mp.ef2='00.png';}
	else if(mp.ef2!=mp.non){mp.ef2= mp.file + 'ef2/' + mp.ef2 + '.png';}
	if(mp.p=='00'){mp.p='00.png';}
	else if(mp.p!=mp.non){mp.p= mp.file + 'ef2/' + mp.p + '.png';}
	
if(!mp.t){mp.t='0';}
[endscript]
	[chara_mod wait=false name=ef time=%t storage=%ef cond="mp.ef!=mp.non" ]
	[chara_mod wait=false name=se time=%t storage=%se cond="mp.se!=mp.non" ]
	[chara_mod wait=false name=tx time=%t storage=%tx cond="mp.tx!=mp.non" ]
	[chara_mod wait=false name=xr time=%t storage=%xr cond="mp.xr!=mp.non" ]
	[chara_mod wait=false name=ef2 time=%t storage=%ef2 cond="mp.ef2!=mp.non" ]
	[chara_mod wait=false name=p time=%t storage=%p cond="mp.p!=mp.non" ]
[endmacro]

[macro name="reset_cg"][chara_part_reset name="cg" ][eval exp="tf.c_name='cg'" ]
[c_layer_z pt=hair_b ]
;[c_layer_z pt=ribbon_b z=6 ]
[c_layer_z pt=arm_b ]
;[c_layer_z pt=gloves_b z=15 ]
;[c_layer_z pt=sleeve_b z=20 ]
[c_layer_z pt=body ][c_layer_z pt=b_acc ]
;[c_layer_z pt=under_p z=40 ][c_layer_z pt=under_b z=50 ]
;[c_layer_z pt=socks z=55 ]
[c_layer_z pt=p ]
;[c_layer_z pt=dress z=70 ]
;[c_layer_z pt=eri z=75 ][c_layer_z pt=gloves z=100 ]
;[c_layer_z pt=sleeve z=100 ]
[c_layer_z pt=head ][c_layer_z pt=eyes ]
;[c_layer_z pt=mouth z=140 ]
;[c_layer_z pt=glasses z=145 ]
[c_layer_z pt=hair_f ]
;[c_layer_z pt=mayu z=155 ]
;[c_layer_z pt=pin z=160 ][c_layer_z pt=ribbon z=165 ]
[c_layer_z pt=arm ][c_layer_z pt=hat ]
[c_layer_z pt=ef2 ][c_layer_z pt=h ]
[c_layer_z pt=other ]
[end_set_c_layer][reset_effect][endmacro]


[macro name="reset_effect"]
[eval exp="tf.ev_img={xr:'00.png', tx:'00.png', se:'00.png', ef:'00.png'}"]
[h_ef/ se=00 se=00 ef=00 xr=00]
;[c_mod n=xr ][c_mod n=tx ][c_mod n=se ][c_mod n=ef ]
[c_mod n=z_a ]
[endmacro]

[macro name="show_effect"][set_win_frame_h]
[c_show n=xr t=0 z=200 cond="sf.h_effect.xr==1 && mp.xr!='non'"][c_show n=tx t=0 z=210 cond="sf.h_effect.tx==1"]
[c_show n=se t=0 z=220 cond="sf.h_effect.se==1"][c_show n=ef t=0 z=230 cond="sf.h_effect.ef==1"]
[show_H_role][endmacro]

[macro name="set_h_cg_role"][set_win_frame_h][show_H_role][endmacro]



[macro name="set_hcg"]
;[if exp="f.fol_info.scene_h!='hcg_x1' && f.fol_info.scene_h!='hcg_x2' && f.fol_info.scene_h!='hcg_x3' && tf.r!='strip'" ][dress_set][endif]
;[glasses_set][b_acc_set][ribbon_set][socks_set]
[f_hair_set][hair_set]
;[hcg/ hat=a1 cond="f.d_hat.n=='ear'" ]
[reset_effect][endmacro]

[macro name="nurse_dress"]
[if exp="f.d_dress.tt=='e'" ]
[eval exp="mp.st= 'TF/H/nurse/dress/' + mp.st + '_' + f.d_dress.cc + '.png'" ][else]
[eval exp="mp.st= 'TF/H/nurse/dress/' + mp.st + '_0.png'" ][endif]
[chara_mod cross="false" name="dress" time="0" storage=%st ]
[endmacro]

;[macro name="m_glass"]
;[if exp="f.d_glasses.tt!='non'" ]
;[eval exp="mp.st='TF/glass/mouth_cg/' + mp.st + f.d_glasses.tc +'.png'" ][else]
;[eval exp="mp.st='00.png'" ][endif]
;[chara_mod name="glasses" wait="false" time="0" storage=%st ][endmacro]



;;コマンドHシーン用マクロ===================================================================
[macro name="Hx/"]
[iscript]
mp.file1='TF/Hx/' + f.fol_info.fol + 'body/'
mp.file='TF/Hx/' + f.fol_info.fol

if(tf.hx_state.style=='himn' && mp.man!=mp.non)
	{mp.man_bace= mp.file + 'man/bace.png', mp.man_legs= mp.file + 'man/legs.png';}
;if(mp.place!=mp.non){mp.obje_f= mp.file + 'man/place_' + f.situ.place + '.png', mp.obje_b= mp.file + 'man/' + f.situ.place + '_b.png';}
if(mp.place!=mp.non){mp.obje_f= mp.file + 'man/place_' + f.situ.place + '.png';}

if(mp.body!=mp.non){mp.sbody= mp.file1 + 'b_sbody'+ mp.body + '.png'
						mp.body_s= mp.file1 + 'side/b_body'+ mp.body + '.png'
						mp.body= mp.file1 + 'b_body'+ mp.body + '.png';}
if(mp.head!=mp.non){mp.head= mp.file1 + 'b_head'+ mp.head + '.png';}

;if(tf.hx_y.ex_in>=1 && tf.hx_state.z_in==0){mp.boko=1;} else{mp.boko=tf.hx_state.z_in;}

if(tf.hx_state.z_in>=6){tf.hx_state.z_in=5, tf.hx_state.z_iout+=1}
if(tf.hx_state.z_iout>=5){tf.hx_state.z_iout=5}
if(tf.hx_state.z_out>=6){tf.hx_state.z_out=6;}
	
if(mp.z_a=='00'){mp.z_a='00.png';}
else if(mp.z_a!=mp.non){mp.z_a= mp.file + 'zzz/zz' + tf.hx_state.z_out + '.png';}
if(mp.z_b=='00'){mp.z_b='00.png';}
else if(mp.z_b!=mp.non){mp.z_b_s= mp.file + 'zzz/side/zv' + tf.hx_state.z_iout + '.png'
						mp.z_b= mp.file + 'zzz/zv' + tf.hx_state.z_iout + '.png';}

if(mp.xr=='00' || mp.p=='0' || mp.p=='00' || sf.h_effect.xr!=1){mp.xr='00.png', mp.xr_s='00.png';}
else if(mp.xr!=mp.non || mp.p!=mp.non && mp.p!='show' && mp.p!='cum' && mp.p!='off'){
	mp.xr_s= mp.file + 'xr/side/' + tf.hx_state.z_in + tf.hx_img.sp +'.png'
	mp.xr= mp.file + 'xr/' + tf.hx_state.z_in + tf.hx_img.sp +'.png';}
	
if(mp.p=='off' || tf.hx_state.style=='back' && (mp.p=='0' || mp.p=='00')){mp.p='show';}
if(mp.p=='0' || mp.p=='00' || mp.p=='show' || mp.p=='cum'){mp.boko='00.png', mp.boko_s='00.png';}
else if(mp.p!=mp.non){mp.boko_s= mp.file + 'vp/side/boko' + tf.hx_state.z_in + '.png'
					mp.boko= mp.file + 'vp/boko' + tf.hx_state.z_in + '.png'}
if(tf.hx_state.style=='back' && mp.boko!=mp.non && (f.d_dress.type=='onp' && f.d_dress.h=='def' || f.d_dress.type=='up' && f.d_dress_a.h=='def'))
{mp.boko='00.png';}


if(mp.p=='0' || mp.p=='00'){mp.p='0';}
else if(mp.p=='show' || mp.p=='cum'){
		if(tf.hx_y.ex_in>=1){mp.p='p_'+mp.p +'z';}else{mp.p='p_'+mp.p;}}
;else if(mp.p!=mp.non && tf.hx_state.z_in>=1 && (tf.hx_state.style=='mngr' || tf.hx_state.style=='back')){mp.p='z'+mp.p;}
else if(mp.p!=mp.non && tf.hx_state.z_in>=1){mp.p='z'+mp.p;}

if(tf.hx_state.style=='back' && mp.p!=mp.non){mp.man_bace= mp.file + 'vp/' + mp.p + '_.png';}
if(mp.p!=mp.non){
	mp.p_s= mp.file + 'vp/side/' + mp.p + '.png'
	mp.p= mp.file + 'vp/' + mp.p + '.png'}


if(mp.tear=='00'){mp.tear='00.png';}
else if(mp.tear!=mp.non){mp.tear= mp.file + 'wet/tear' + mp.tear + '.png';}
if(mp.squi=='00'){mp.squi='00.png', mp.squi_s='00.png';}
else if(mp.squi!=mp.non){mp.squi_s= mp.file + 'wet/squi_side' + mp.squi + '.png', 
						mp.squi= mp.file + 'wet/squi' + mp.squi + '.png';}

if(mp.breath=='00'){mp.breath='00.png';}
else if(mp.breath!=mp.non){mp.breath= mp.file + 'wet/breath' + mp.breath + '.png';}
if(mp.heart=='00' || sf.h_effect.ef!=1){mp.heart='00.png';}
else if(mp.heart!=mp.non){mp.heart= mp.file + 'ef/heart' + mp.heart + '.png';}
if(mp.ef=='00' || sf.h_effect.ef!=1){mp.ef='00.png';}
else if(mp.ef!=mp.non){mp.ef= mp.file + 'ef/' + mp.ef + '.png';}
if(mp.exx=='00'){mp.exx='00.png';}
else if(mp.exx!=mp.non){mp.exx= mp.file + 'ef/' + mp.exx + '.png';}

if(mp.hand_L=='00'){mp.hand_L='00.png', mp.hand_Lb='00.png', mp.hand_L_s='00.png';}
else if(mp.hand_L!=mp.non){mp.hand_Lb= mp.file + 'man/lhand_' + mp.hand_L + '_.png',
							mp.hand_L_s= mp.file + 'man/side/lhand_' + mp.hand_L + '.png',
							mp.hand_L= mp.file + 'man/lhand_' + mp.hand_L + '.png';}
if(mp.hand_R=='00'){mp.hand_R='00.png', mp.hand_R_s='00.png';}
else if(mp.hand_R!=mp.non){mp.hand_R_s= mp.file + 'man/side/rhand_' + mp.hand_R + '.png'
							mp.hand_R= mp.file + 'man/rhand_' + mp.hand_R + '.png';}
if(mp.m_mouth=='00'){mp.m_mouth='00.png';}
else if(mp.m_mouth!=mp.non){mp.m_mouth= mp.file + 'man/m_' + mp.m_mouth + '.png';}

if(tf.hx_state.style=='mngr'){mp.lh_zdx=205
	if(mp.p_zdx=='def'){mp.p_zdx=120;} else if(mp.p_zdx=='over'){mp.p_zdx=250;}
	if(mp.rh_zdx=='def'){mp.rh_zdx=200;} else if(mp.rh_zdx=='same_as_p'){mp.rh_zdx=120;}}
else if(tf.hx_state.style=='himn'){mp.rh_zdx=305
	if(mp.p_zdx=='def'){mp.p_zdx=100;} else if(mp.p_zdx=='over'){mp.p_zdx=350;}
	if(mp.lh_zdx=='def'){mp.lh_zdx=500;} else if(mp.lh_zdx=='back_skirt'){mp.lh_zdx=150;}}
else if(tf.hx_state.style=='back'){
	if(mp.rh_zdx=='over'){mp.rh_zdx=240;} else if(mp.rh_zdx=='under'){mp.rh_zdx=200;}}

if(!mp.t){mp.t=300;}else{mp.t=0;}


mp.side=f.fol_info.scene+'_s'
[endscript]

[chara_part name=&f.fol_info.scene body=%body sbody=%sbody allow_storage=true cond="mp.body!=mp.non"]
[chara_part name=&f.fol_info.scene head=%head allow_storage=true cond="mp.head!=mp.non"]
[chara_part name=&f.fol_info.scene obje_f=%obje_f allow_storage=true cond="mp.obje_f!=mp.non"]

[if exp="mp.p!=mp.non && mp.p_zdx!=mp.non" ]
	[chara_part name=&f.fol_info.scene p=%p p_zindex=&mp.p_zdx allow_storage=true ]
[elsif exp="mp.p!=mp.non" ]
	[chara_part name=&f.fol_info.scene p=%p allow_storage=true ][endif]
[chara_part name=&f.fol_info.scene boko=%boko allow_storage=true cond="mp.p!=mp.non"]

[chara_part name=&f.fol_info.scene xrr=%xr allow_storage=true cond="mp.xr!=mp.non"]
[chara_part name=&f.fol_info.scene tear=%tear allow_storage=true cond="mp.tear!=mp.non"]
[chara_part name=&f.fol_info.scene squi=%squi allow_storage=true cond="mp.squi!=mp.non"]

;[if exp="mp.t=='non'" ]
	[chara_part name=&f.fol_info.scene z_a=%z_a allow_storage=true cond="mp.z_a!=mp.non"]
	[chara_part name=&f.fol_info.scene z_b=%z_b allow_storage=true cond="mp.z_b!=mp.non"]
;[else]
;	[chara_part name=&f.fol_info.scene z_a=%z_a allow_storage=true time=%t cond="mp.z_a!=mp.non"]
;	[chara_part name=&f.fol_info.scene z_b=%z_b allow_storage=true time=%t cond="mp.z_b!=mp.non"]
;[endif]
	
[chara_part name=&f.fol_info.scene man_bace=%man_bace allow_storage=true cond="mp.man_bace!=mp.non"]
[chara_part name=&f.fol_info.scene man_legs=%man_legs allow_storage=true cond="mp.man_legs!=mp.non"]
[chara_part name=&f.fol_info.scene m_mouth=%m_mouth allow_storage=true cond="mp.m_mouth!=mp.non"]
[if exp="mp.hand_R!=mp.non && mp.rh_zdx!=mp.non && (tf.hx_state.style=='mngr' || tf.hx_state.style=='back')" ]
	[chara_part name=&f.fol_info.scene hand_R=%hand_R hand_R_zindex=&mp.rh_zdx allow_storage=true ]
[elsif exp="mp.hand_R!=mp.non" ]
	[chara_part name=&f.fol_info.scene hand_R=%hand_R allow_storage=true][endif]

[if exp="mp.hand_L!=mp.non && mp.lh_zdx!=mp.non && tf.hx_state.style=='himn'" ]
	[chara_part name=&f.fol_info.scene hand_L=%hand_L hand_L_zindex=&mp.lh_zdx allow_storage=true ]
[elsif exp="mp.hand_L!=mp.non" ]
	[chara_part name=&f.fol_info.scene hand_L=%hand_L allow_storage=true][endif]
[chara_part name=&f.fol_info.scene hand_Lb=%hand_Lb allow_storage=true cond="mp.hand_Lb!=mp.non"]

[chara_part name=Hx_ef breath=%breath allow_storage=true cond="mp.breath!=mp.non"]
[chara_part name=Hx_ef heart=%heart allow_storage=true cond="mp.heart!=mp.non"]
[chara_part name=Hx_ef exx=%exx allow_storage=true cond="mp.exx!=mp.non"]
[chara_part name=Hx_ef ef=%ef allow_storage=true cond="mp.ef!=mp.non"]
[chara_part name=Hx_ef tx=%tx allow_storage=true cond="mp.tx!=mp.non"]

[if exp="tf.hx_state.style=='back'" ]
[chara_part name=&mp.side body=%body_s allow_storage=true cond="mp.body!=mp.non"]
[chara_part name=&mp.side hand_R=%hand_R_s allow_storage=true cond="mp.hand_R!=mp.non"]
[chara_part name=&mp.side hand_L=%hand_L_s allow_storage=true cond="mp.hand_L!=mp.non"]
[chara_part name=&mp.side squi=%squi_s allow_storage=true cond="mp.squi!=mp.non"]
[chara_part name=&mp.side xrr=%xr_s allow_storage=true cond="mp.xr!=mp.non"]
[chara_part name=&mp.side z_b=%z_b_s allow_storage=true cond="mp.z_b!=mp.non"]
[chara_part name=&mp.side boko=%boko_s allow_storage=true cond="mp.p!=mp.non"]
[chara_part name=&mp.side p=%p_s allow_storage=true cond="mp.p!=mp.non" ]
[endif]
[endmacro]


[macro name="Hx_text_5sep"]
[iscript]
if(tf.hx_state.wet<=100 || tf.hx_s.ex_sum==0){mp.r1=1;}
else if(tf.hx_state.wet<=300 || tf.hx_s.ex_sum<=1){mp.r1=2;}
else if(tf.hx_state.wet<=700 || tf.hx_s.ex_sum<=3){mp.r1=3;}
else if(tf.hx_state.wet<=1200 || tf.hx_s.ex_sum<=5){mp.r1=4;}
else{mp.r1=5;}
if(mp.r==3){tf.r3=mp.r1;} else if(mp.r==2){tf.r2=mp.r1;} else{tf.r=mp.r1;}
[endscript]
[endmacro]

[macro name="Hx/man"][eval exp="mp.exp='tf.hx_temp.'+mp.you+'=mp.syl'" ][eval exp=%exp ]
[iscript]
if(f.fol_info.scene!='Hx_back' && mp.you=='right' && mp.syl=='v_f')
	{tf.hx_temp.rh_zdx='same_as_p';} else{tf.hx_temp.rh_zdx='def';}

if(f.fol_info.scene=='Hx_back' && mp.you=='right' && mp.syl=='hand'){tf.hx_temp.rh_zdx='over';}
	else if(f.fol_info.scene=='Hx_back' && mp.you=='right'){tf.hx_temp.rh_zdx='under';}

if(f.fol_info.scene=='Hx_mngr' && mp.syl=='v_f' && tf.hx_y.ex_in>=1){mp.syl='z'+ mp.syl;}
if(f.fol_info.scene=='Hx_himn' && mp.you=='left' && mp.syl=='leg')
		{tf.hx_temp.lh_zdx='back_skirt';}else{tf.hx_temp.lh_zdx='def';}
if(mp.sp!=mp.non){mp.syl+=mp.sp, tf.hx_img.sp=mp.sp;}else{tf.hx_img.sp=''}
tf.hx_temp.sel=mp.syl, tf.hx_temp.you=mp.you

;if(tf.hx_y.ex_in>=1 && mp.you=='ppp' && mp.syl!=0){mp.syl=='z'+mp.syl;}
[endscript]
[Hx/ hand_L=&tf.hx_temp.sel lh_zdx=&tf.hx_temp.lh_zdx cond="tf.hx_temp.you=='left'"]
[Hx/ hand_R=&tf.hx_temp.sel rh_zdx=&tf.hx_temp.rh_zdx cond="tf.hx_temp.you=='right'"]
[Hx/ p=&tf.hx_temp.sel cond="tf.hx_temp.you=='ppp'"]
[Hx/ xr=show cond="tf.hx_temp.sel=='v' && sf.h_effect.xr==1"]
;[Hx/ xr=show cond="tf.hx_act.sel=='v_p' && sf.h_effect.xr==1"]
[Hx/ m_mouth=&tf.hx_temp.sel cond="tf.hx_temp.you=='m_mouth'"]
[Hx/ p=00 cond="tf.hx_state.style=='mngr' && tf.hx_mpt.y_pt=='right' && tf.hx_mpt.right=='f' && tf.hx_act.act!='vf_move'"]
[endmacro]

[macro name="set_hc_mpt"]
[iscript]
if(tf.hx_temp.right!=0){tf.hx_mpt.right=tf.hx_temp.right;}
if(tf.hx_temp.left!=0){tf.hx_mpt.left=tf.hx_temp.left;}
if(tf.hx_temp.m_mouth!=0){tf.hx_mpt.m_mouth=tf.hx_temp.m_mouth;}
if(tf.hx_temp.right=='v_f' || tf.hx_temp.right=='v_f_m' || tf.hx_temp.right=='v_f_mm')
	{tf.hx_mpt.right='v_f';}
if(tf.hx_temp.ppp!=0){tf.hx_mpt.ppp=1;}

tf.hx_temp={right:0, left:0, ppp:0, m_mouth:0}
[endscript]
[endmacro]

[macro name=p_show][eval exp="tf.hx_img.ppp=mp.p" ][Hx/man you=m_mouth syl=non]
[se/ st=fin1 cond="tf.hx_img.ppp=='cum'"][se/ st=s-wet2 cond="tf.hx_img.ppp=='off'"]
[iscript]
tf.hx_mpt.m_mouth='non', tf.hx_img.ppp_out=tf.hx_y.ex_in
if(tf.hx_img.ppp!='show'){tf.hx_mpt.ppp=0;}
if(tf.hx_img.ppp=='cum'){f.state.lust+=1, tf.hx_y.ex_out+=1, tf.hx_state.z_out+=1, tf.hx_y.feel-=tf.hx_max.y_ex, tf.hx_y.ex_rest-=1}
;if(tf.hx_y.ex_in>=1 && tf.hx_img.ppp!='show'){tf.hx_state.z_iout=tf.hx_state.z_iout+tf.hx_y.ex_in-1, tf.hx_y.ex_in=1;}
if(tf.hx_y.ex_in>=1 && tf.hx_img.ppp!='show'){tf.hx_state.z_iout=tf.hx_state.z_iout+tf.hx_state.z_in-1, tf.hx_state.z_in=1;}
[endscript]
[Hx/ xr=00][Hx/ p=%p p_zdx=over]
[if exp="tf.hx_img.ppp!='cum'" ][wait time=900][Hx/ p=00 p_zdx=def][endif]
[if exp="tf.hx_img.ppp=='off' && tf.hx_img.ppp_out>=2" ][Hx/ z_b=show][se/ st=s-wet1 ][endif]
[endmacro]

[macro name=p_cum_after][Hx/ z_a=show][wait time=900][Hx/ p=00 p_zdx=def]
[if exp="tf.hx_img.ppp_out>=2" ][Hx/ z_b=show][se/ st=s-wet1 ][endif][endmacro]

[macro name=cum_in][se/ st=fin1 ]
[iscript]
tf.hx_s.feel+=20, f.state.lust+=1, f.h_state.v+=1
tf.hx_y.ex_in+=1, tf.hx_state.z_in+=1, tf.hx_y.feel-=tf.hx_max.y_ex, tf.hx_y.ex_rest-=1
if(tf.hx_state.z_in>=2 && tf.hx_state.z_in>=tf.hx_state.z_iout-3){tf.hx_state.z_iout=tf.hx_state.z_in-2}
tf.hx_img.sp=''
;tf.hx_img.sp='ex'
[endscript]
[Hx/ z_b=show p=v xr=show][endmacro]

[macro name="add_syl_ext"]
[iscript]
tf.hx_extx={v:0, c:0, b:0, m:0 }
tf.hx_state.wet+=30, f.state.lust+=1, tf.hx_s.ex_sum+=1, tf.hx_s.feel-=tf.hx_max.s_ex, tf.hx_s.ex_rest-=1
if(tf.hx_act.act=='vf_in' || tf.hx_act.act=='vp_in' || tf.hx_act.act=='vf_move' || tf.hx_act.act=='vp_move')
	{tf.hx_s.ex_v+=1, tf.hx_extx.v+=1;}
if(tf.hx_act.act=='touch_c' || tf.hx_act.act=='lick_c')
	{tf.hx_s.ex_c+=1, tf.hx_extx.c+=1;}
if(tf.hx_act.act=='touch_rb' || tf.hx_act.act=='touch_lb' || tf.hx_act.act=='lick_rb' || tf.hx_act.act=='lick_lb')
	{tf.hx_s.ex_b+=1, tf.hx_extx.b+=1;}
if(tf.hx_act.act=='kiss' || tf.hx_act.act=='kiss_s')
	{tf.hx_s.ex_m+=1, tf.hx_extx.m+=1;}
if(tf.hx_s.feel_v>=tf.hx_max.s_exv){tf.hx_s.ex_v+=1, tf.hx_s.feel_v=0, tf.hx_s.ex_sum+=1, f.state.lust+=1, tf.hx_extx.v+=10;}
if(tf.hx_s.feel_c>=tf.hx_max.s_exc){tf.hx_s.ex_c+=1, tf.hx_s.feel_c=0, tf.hx_s.ex_sum+=1, f.state.lust+=1, tf.hx_extx.c+=10;}
if(tf.hx_s.feel_b>=tf.hx_max.s_exb){tf.hx_s.ex_b+=1, tf.hx_s.feel_b=0, tf.hx_s.ex_sum+=1, f.state.lust+=1, tf.hx_extx.b+=10;}
if(tf.hx_s.feel_m>=tf.hx_max.s_exm){tf.hx_s.ex_m+=1, tf.hx_s.feel_m=0, tf.hx_s.ex_sum+=1, f.state.lust+=1, tf.hx_extx.m+=10;}

if(tf.hx_extx.v==1){tf.hx_extx.v='!絶頂!';}
else if(tf.hx_extx.v==10){tf.hx_extx.v='!!強絶頂!!';}
else if(tf.hx_extx.v==11){tf.hx_extx.v='!!!超絶頂!!!';}

if(tf.hx_extx.c==1){tf.hx_extx.c='!ｸﾘ:絶頂!';}
else if(tf.hx_extx.c==10){tf.hx_extx.c='!!強絶頂!!';}
else if(tf.hx_extx.c==11){tf.hx_extx.c='!!!超絶頂!!!';}

if(tf.hx_extx.b==1){tf.hx_extx.b='!絶頂!';}
else if(tf.hx_extx.b==10){tf.hx_extx.b='!!強絶頂!!';}
else if(tf.hx_extx.b==11){tf.hx_extx.b='!!!超絶頂!!!';}

if(tf.hx_extx.m==1){tf.hx_extx.m='!絶頂!';}
else if(tf.hx_extx.m==10){tf.hx_extx.m='!!強絶頂!!';}
else if(tf.hx_extx.m==11){tf.hx_extx.m='!!!超絶頂!!!';}
[endscript]
[set_Hx_body cond="tf.hx_img.wet!='max'"]
[syl_ex_pop][squi][endmacro]

[macro name="syl_ex_pop"]
[xy x=1360 y=680 x_add=95 s=16][btn/xy x=2]
[if exp="tf.hx_extx.v!=0" ][tx_img l=x c=yellow tx1=&tf.hx_extx.v][else][add_x_blank][endif]
[if exp="tf.hx_extx.c!=0" ][tx_img l=x c=yellow tx1=&tf.hx_extx.c][else][add_x_blank][endif]
[if exp="tf.hx_extx.b!=0" ][tx_img l=x c=yellow tx1=&tf.hx_extx.b][else][add_x_blank][endif]
[if exp="tf.hx_extx.m!=0" ][tx_img l=x c=yellow tx1=&tf.hx_extx.m][else][add_x_blank][endif]
[endmacro]

[macro name=squi][se/ st=squi ]
[if exp="tf.hx_state.wet<=600 || tf.hx_extx.v==0" ][Hx/ squi=1]
[elsif exp="tf.hx_state.wet<=1200" ][Hx/ squi=2]
[else][Hx/ squi=3]
[endif][endmacro]


[macro name="set_feel"]
[eval exp="mp.h=tf.hx_s.feel*(900/tf.hx_max.s_ex)+1, mp.y=900-mp.h" ][chara_move name=s_feel height=%h top=%y time=300 anim=true wait=false ]
[eval exp="mp.h=tf.hx_y.feel*(900/tf.hx_max.y_ex)+1, mp.y=900-mp.h" ][chara_move name=y_feel height=%h top=%y time=300 anim=true wait=false ]
[endmacro]


;;call-shortcut==========================================================================
[macro name="d_face_h"]
[if exp="f.state.step<=5" ][f/ m=n]
[elsif exp="f.d_dress.type=='onp' && f.d_dress.h=='xxx' || f.d_dress.type=='up' && (f.d_dress_a.h=='xxx' || f.d_dress_b.h=='xxx') || f.d_under_p.h=='xxx' || f.act.last=='before_bed'" ]
	[if exp= f.state.lust>=1000" ][f/ c=p e=half ei=h m=sn]
	[elsif exp="f.state.mood=='lust' || f.state.lust>=500" ][f/ y=c c=p ei=h m=sn]
	[elsif exp="f.state.lust>=5 || f.x_count.sex>=10" ][f/ c=p m=n]
	[else][f/ e=cl c=p m=n][endif]
[else][f/ m=sn][endif][endmacro]


[macro name="after_talk"][last_act exp=talk][eval exp="f.act.time+=1, f.count.talk+=1" ]
[eval exp="f.daily.talk+=1" cond="f.state.step==6"]
[eval exp="f.state.love+=1" cond="f.state.step>=4"]
[if exp="f.state.step==6" ][jump/ st=talk/room tg=*before_menu ]
[else][free_tx][jump/ st=talk/intro tg=*before_menu ][endif]
;[return_menu]
[endmacro]

[macro name="after_nade"][jump/ st=sys/system tg=*after_nade ][endmacro]

;[macro name="shop_f/"][cm][freechara][f/ m=n][show_stand][syl][endmacro]
;[macro name="shop_f/s"][cm][freechara][f/ m=sn][show_stand][syl][endmacro]
;[macro name="shop_f/p"][cm][freechara][f/ c=p m=n][show_stand][syl][endmacro]
;[macro name="shop_f/c"][cm][freechara][f/ y=c m=n][show_stand][syl][endmacro]

[macro name=set_nade][if exp="f.nade_conti==1" ][eval exp="f.nade_conti=2"][else][set_nade_][endif][endmacro]
[macro name=show_nade][if exp="f.nade_conti==2" ][eval exp="f.nade_conti=0"][else][show_nade_][endif][endmacro]

;;条件付き画像表示（時間/天気/オーレリア）=====================================================
[macro name=set_time]
[iscript]
;if(f.situ.situ=='drink'){mp.preg='room/time_d';}
;else{
mp.preg=f.situ.situ
;}

if(f.act.time=='morning' ||f.act.time=='sexmax'){mp.st=4;}
else if(f.act.time>=0){mp.st= f.act.time +1;} else{mp.st=1;}
if(mp.st>=8){mp.st=7;}
if(f.situ.situ=='drink'){mp.st=f.act.wine;}

mp.st= 'TF/sys/time/' + mp.preg +'/'+ mp.st + '.png'
[endscript]
[chara_part name=win d_time=%st allow_storage=true ][endmacro]


[macro name=set_weather][free_layermode time="200" wait="false" ]
[iscript]
if(f.act.time==0){mp.gr='01';} else if(f.act.time==1){mp.gr='02';}
else if(f.act.time==2){mp.gr='04';} else if(f.act.time==3){mp.gr='05';}
else if(f.act.time==4){mp.gr='07';} else if(f.act.time==5){mp.gr='08';}
else if(f.act.time>=6){mp.gr='08';}
mp.gr= 'TF/effect/outside/' + mp.gr + '.png'
[endscript]
[layermode graphic=%gr time="200" mode="overlay" wait="false" ]
[endmacro]

[macro name=set_Aurelia_c]
[iscript]
if(f.Aurelia_c==1){mp.st='a';} else if(f.Aurelia_c==2){mp.st='b';}
else if(f.Aurelia_c==3){mp.st='c';}
else if(f.Aurelia_c==11){mp.st='xa';}
mp.st='TF/sys/sub/Aurelia_' + mp.st + '.png'
[endscript]
[chara_mod name="sub" time="0" storage=%st ][endmacro]

;;名前関係================================================================================
[macro name="show_c_name"][eval exp="f.font.frame= 'TF/frame/' + f.font.frame + '.png'" ]
[chara_ptext name=&f.font.c_name][position frame=&f.font.frame layer="message1"]
;[mc_font shadow=&f.font.shad]
[font shadow=&f.font.shad]
[endmacro]

[macro name="_"]
[iscript]
f.font.frame='non', f.font.shad='0x000000', f.font.c_name=''
[endscript]
[show_c_name][endmacro]
[macro name="syl"]
[iscript]
f.font.frame='Syl', f.font.shad='0x8e9394', f.font.c_name='シルヴィ'
if(f.situ.situ=='sex' || f.situ.situ=='sex_cg'){f.font.frame='h_event_Syl';}
;else if(f.fol_info.scene=='Hx_mngr' || f.fol_info.scene=='Hx_himn')
else if(f.situ.situ=='Hx')
{f.font.frame='hx_Syl';}
[endscript]
[show_c_name][endmacro]
[macro name="Aur"]
[iscript]
f.font.frame='Aur', f.font.shad='0x8a8800'
if(f.sub_chara.Aur>=1){f.font.c_name='オーレリア';} else{f.font.c_name='不気味な店員', f.font.frame+='_';}
[endscript]
[show_c_name][endmacro]
[macro name="Neph"]
[iscript]
f.font.frame='Neph', f.font.shad='0x06997c'
if(f.sub_chara.Neph>=1){f.font.c_name='ネフィー';} else{f.font.c_name='奇妙な店員', f.font.frame+='_';}
[endscript]
[show_c_name][endmacro]
[macro name="Ferr"]
[iscript]
f.font.frame='Ferr', f.font.shad='0x373638'
if(f.sub_chara.Ferr>=1){f.font.c_name='フェルム';} else{f.font.c_name='怪しい男', f.font.frame+='_';}
[endscript]
[show_c_name][endmacro]
[macro name="Kcas"]
[iscript]
f.font.frame='Kcas', f.font.shad='0x1b5385'
if(f.sub_chara.Kcas>=1){f.font.c_name='キャシオ';} else{f.font.c_name='妙に溌剌な女', f.font.frame+='_';}
[endscript]
[show_c_name][endmacro]

[macro name="miyage"][emb exp="f.item.miyage" ][endmacro]

[macro name="name_call_set"]
[iscript]
if(f.name.name==''){f.name.name='未設定';}

if(f.name.type=='other' || f.name.name=='未設定'){f.name.call=f.name.sub, f.name.c_kana=f.name.s_kana, f.name.type='other';}
else if(f.name.type=='name'){f.name.call=f.name.name, f.name.c_kana=f.name.kana;}
else if(f.name.type=='name_add'){f.name.call=f.name.name+f.name.n_add, f.name.c_kana=f.name.kana+f.name.n_add;}
if(f.name.type=='other' && f.name.c_kana==''){f.name.c_kana=f.name.sub;}

if(f.name_h.type=='other' || f.name.name=='未設定'){f.name_h.call=f.name_h.sub, f.name_h.c_kana=f.name_h.s_kana, f.name_h.type='other';}
else if(f.name_h.type=='name'){f.name_h.call=f.name.name, f.name_h.c_kana=f.name.kana;}
else if(f.name_h.type=='name_add'){f.name_h.call=f.name.name+f.name_h.n_add, f.name_h.c_kana=f.name.kana+f.name_h.n_add;}
if(f.name_h.type=='other' && f.name_h.c_kana==''){f.name_h.c_kana=f.name_h.sub;}
[endscript]
[endmacro]


[macro name=name]
[iscript]
if(mp.h==1){mp.cap= f.name_h.c_kana.slice(0, 1)
	if(mp.k==1){tf.n_call=f.name_h.c_kana, mp.non_cap=f.name_h.c_kana.slice(1);}
	else{tf.n_call=f.name_h.call, mp.non_cap=f.name_h.call.slice(1);}
	if(mp.mid!=mp.non){tf.n_call=mp.cap+mp.mid+tf.n_call;}
	if(mp.sepa!=mp.non){tf.n_call=mp.cap+mp.sepa+mp.non_cap;}}
else{mp.cap= f.name.c_kana.slice(0, 1)
	if(mp.k==1){tf.n_call=f.name.c_kana, mp.non_cap=f.name.c_kana.slice(1);}
	else{tf.n_call=f.name.call, mp.non_cap=f.name.call.slice(1);}
	if(mp.mid!=mp.non){tf.n_call=mp.cap+mp.mid+tf.n_call;}
	if(mp.sepa!=mp.non){tf.n_call=mp.cap+mp.sepa+mp.non_cap;}}
;[name]、[name k=1]、[name h=1]、[name mid=…]、[name sepa=〜 k=1]、
[endscript]
[emb exp="tf.n_call"][endmacro]


;エロ呼称
[macro name="Hxns"]
[iscript]
;exp_1&2でHxn情報を仮のmp.rnにコピー。mp.rn[]=f.Hxns_v[], tf.call_ct=f.call_ct.v[]
mp.rn=[]
mp.exp_1='tf.call_ct=f.call_ct.'+mp.n
mp.exp_2='mp.rn[0]=f.Hxns_'+mp.n+'[0], mp.rn[1]=f.Hxns_'+mp.n+'[1], mp.rn[2]=f.Hxns_'+mp.n+'[2], mp.rn[3]=f.Hxns_'+mp.n+'[3], mp.rn[4]=f.Hxns_'+mp.n+'[4]'
[endscript]
[eval exp=%exp_1 ][eval exp=%exp_2 ]
[iscript]
;h=挿入中のみ表示
;ex=発言確率が+α高くなる処理追加。(h==1でも同様の処理
if(mp.h==1){
	if((mp.n=='v' || mp.n=='x' || mp.n=='p') && tf.hx_mpt.ppp!=1){mp.say='no';}
	if(mp.n=='z' && (tf.hx_y.ex_in==0 || tf.hx_y.ex_out==0)){mp.say='no';}
	}

mp.r=0, tf.call_ct+=1
if((mp.ex==1 || mp.h==1) && mp.say!='no'){mp.r=Math.floor(Math.random() *2 + 1)
if(mp.r==1){tf.call_ct+=1;}

	if(mp.rn[0]==0){;}
	else if(mp.rn[0]==1 && tf.call_ct<=4){;} else if(mp.rn[0]==2 && tf.call_ct<=3){;}
	else if(mp.rn[0]==3 && tf.call_ct<=2){;} else if(mp.rn[0]==4 && tf.call_ct<=1){;}
	else{tf.call_ct='say';}
	if(tf.call_ct=='say'){tf.call_ct=0;}else{mp.say='no';}}

if(mp.say!='no'){
	if(mp.rn[0]==0){mp.r=0;}
	else if(mp.rn[2]==''){mp.r=1;} else if(mp.rn[3]==''){mp.r=2;}
	else if(mp.rn[4]==''){mp.r=3;} else{mp.r=4;}
	if(mp.r>=2){mp.r=Math.floor(Math.random() * mp.r + 1);}
	
	if(mp.r==0){mp.n_call='';}
	else{mp.n_call=mp.rn[mp.r]
;		if(mp.b!=mp.non){mp.n_call=mp.b+mp.n_call+'…';}
		if(mp.b!=mp.non){mp.n_call=mp.b+mp.n_call;}
		if(mp.a!=mp.non){mp.n_call=mp.n_call+mp.a;}
		if(mp.y!=mp.non){mp.n_call=f.name_h.call+mp.y+mp.n_call;}}
	}
if(mp.say=='no'){mp.n_call='';}

mp.exp='f.call_ct.'+mp.n+'=tf.call_ct'
[endscript]
[eval exp=%exp ][emb exp="mp.n_call"][endmacro]


;地の文
[macro name="Hxn"]
[eval exp="mp.exp_pre='mp.count='+f.hx_conf.tx_word+'.Hxn_'+mp.n+'[0]'" ]
[eval exp=%exp_pre ]
[iscript]
tf.r=Math.floor(Math.random() *mp.count+1)
mp.exp='mp.Hx_call='+f.hx_conf.tx_word+'.Hxn_'+ mp.n +'[tf.r]'
[endscript]
[eval exp=%exp ][emb exp="mp.Hx_call"][endmacro]


;地の文コンフィグ用
[macro name="Hxn_temp_set"]
[iscript]
if(tf.title=='title'){mp.f='sf'}else{mp.f=f.hx_conf.tx_word}
if(mp.save==1){mp.save_f=mp.f, mp.load_f='tf';}
else{mp.load_f=mp.f, mp.save_f='tf';}
mp.exp_pre= 'tf.Hxn_' +mp.w+ '=[]'
mp.exp= mp.save_f+'.Hxn_' +mp.w+ '[0]=' +mp.load_f+'.Hxn_' +mp.w+ '[0], ' +mp.save_f+'.Hxn_' +mp.w+ '[1]=' +mp.load_f+'.Hxn_' +mp.w+ '[1], ' +mp.save_f+'.Hxn_' +mp.w+ '[2]=' +mp.load_f+'.Hxn_' +mp.w+ '[2], ' +mp.save_f+'.Hxn_' +mp.w+ '[3]=' +mp.load_f+'.Hxn_' +mp.w+ '[3], ' +mp.save_f+'.Hxn_' +mp.w+ '[4]=' +mp.load_f+'.Hxn_' +mp.w+ '[4]'
[endscript]
[eval exp=%exp_pre cond="mp.save!=1" ][eval exp=%exp ][endmacro]

[macro name="Hxn_temp_set_load"]
[if exp="tf.title=='title' || f.hx_conf.tx_word==''" ][eval exp="tf.Hxn_num=sf.Hxn_num" ][else][eval exp="tf.Hxn_num=f.Hxn_num" ][endif]
[Hxn_temp_set w=v][Hxn_temp_set w=iv][Hxn_temp_set w=c][Hxn_temp_set w=u]
[Hxn_temp_set w=b][Hxn_temp_set w=m][Hxn_temp_set w=x][Hxn_temp_set w=p]
[Hxn_temp_set w=z][Hxn_temp_set w=o][Hxn_temp_set w=w][Hxn_temp_set w=ex]
[endmacro]
[macro name="Hxn_temp_set_save"][Hxn_recount_all]
[Hxn_temp_set save=1 w=v][Hxn_temp_set save=1 w=iv][Hxn_temp_set save=1 w=c][Hxn_temp_set save=1 w=u]
[Hxn_temp_set save=1 w=b][Hxn_temp_set save=1 w=m][Hxn_temp_set save=1 w=x][Hxn_temp_set save=1 w=p]
[Hxn_temp_set save=1 w=z][Hxn_temp_set save=1 w=o][Hxn_temp_set save=1 w=w][Hxn_temp_set save=1 w=ex]
[endmacro]

[macro name="Hxn_recount"]
[iscript]
mp.Hxn_temp=[]
mp.exp_pre= 'mp.Hxn_temp[0]=tf.Hxn_' +mp.n+ '[0], mp.Hxn_temp[1]=tf.Hxn_' +mp.n+ '[1], mp.Hxn_temp[2]=tf.Hxn_' +mp.n+ '[2], mp.Hxn_temp[3]=tf.Hxn_' +mp.n+ '[3], mp.Hxn_temp[4]=tf.Hxn_' +mp.n+ '[4]'
[endscript]
[eval exp=%exp_pre ]
[iscript]
if(mp.Hxn_temp[4]!=''){mp.Hxn_temp[0]=4;}
else if(mp.Hxn_temp[3]!=''){mp.Hxn_temp[0]=3;}
else if(mp.Hxn_temp[2]!=''){mp.Hxn_temp[0]=2;}
else{mp.Hxn_temp[0]=1;}
mp.exp= 'tf.Hxn_' +mp.n+ '[0]=mp.Hxn_temp[0], tf.Hxn_' +mp.n+ '[1]=mp.Hxn_temp[1], tf.Hxn_' +mp.n+ '[2]=mp.Hxn_temp[2], tf.Hxn_' +mp.n+ '[3]=mp.Hxn_temp[3], tf.Hxn_' +mp.n+ '[4]=mp.Hxn_temp[4]'
[endscript]
[eval exp=%exp ][endmacro]

[macro name="Hxn_recount_all"]
[Hxn_recount n=v ][Hxn_recount n=iv ][Hxn_recount n=c ][Hxn_recount n=u ]
[Hxn_recount n=b ][Hxn_recount n=m ][Hxn_recount n=x ][Hxn_recount n=p ]
[Hxn_recount n=z ][Hxn_recount n=o ][Hxn_recount n=w c][Hxn_recount n=ex ]
[endmacro]

[macro name="Hxn_del"][eval exp="mp.Hxn_temp=[]" ]
[eval exp="mp.exp='mp.Hxn_temp[1]=tf.Hxn_' + tf.word + '[1], mp.Hxn_temp[2]=tf.Hxn_' + tf.word + '[2], mp.Hxn_temp[3]=tf.Hxn_' + tf.word + '[3], mp.Hxn_temp[4]=tf.Hxn_' + tf.word + '[4]'" ]
[eval exp=%exp ]
[iscript]
mp.Hxn_temp[tf.r]=''
if(mp.Hxn_temp[1]==''){mp.Hxn_temp[1]=mp.Hxn_temp[2], mp.Hxn_temp[2]=mp.Hxn_temp[3], mp.Hxn_temp[3]=mp.Hxn_temp[4];}
else if(mp.Hxn_temp[2]==''){mp.Hxn_temp[2]=mp.Hxn_temp[3], mp.Hxn_temp[3]=mp.Hxn_temp[4];}
else if(mp.Hxn_temp[3]==''){mp.Hxn_temp[3]=mp.Hxn_temp[4];}
mp.Hxn_temp[4]=''
mp.exp='tf.Hxn_' + tf.word + '[1]=mp.Hxn_temp[1], tf.Hxn_' + tf.word + '[2]=mp.Hxn_temp[2], tf.Hxn_' + tf.word + '[3]=mp.Hxn_temp[3], tf.Hxn_' + tf.word + '[4]=mp.Hxn_temp[4]'
[endscript]
[eval exp=%exp ][endmacro]


;;トークループ=============================================================================
[macro name="talk_loop"]
[if exp="tf.r<=tf.t_number" ]
	[eval exp="mp.exp ='tf.talk=f.t_' + tf.t_name + '[' + tf.r + ']'" ][eval exp=%exp ]
	[jump/ cond="tf.talk!=1" tg=2 ]
	[eval exp="tf.r+=1" ]
[else][eval exp="tf.r=1,tf.loop+=1" ][endif]
[jump/ tg=1 ][endmacro]

[macro name="talk_done"][eval exp="mp.exp ='f.t_' + tf.t_name + '[' + tf.r + ']=1'" ][eval exp=%exp ][endmacro]

;;衣装関連=============================================================================
[macro name="set_dress_info"]
[iscript]
if(f.tab.main=='dress1'){tf.d_col.a=f.d_dress.sub_c, tf.d_col.b=0, tf.d_col.ap=f.d_dress.sub_p
	tf.d_col.a1=f.d_dress.c1, tf.d_col.a1b=f.d_dress.c1b
	tf.d_col.a2=f.d_dress.c2, tf.d_col.a2b=f.d_dress.c2b
	tf.d_col.a3=f.d_dress.c3, tf.d_col.a3b=f.d_dress.c3b;}
else if(f.tab.main=='dress2'){tf.d_col.a=f.d_dress_a.sub_c, tf.d_col.b=0, tf.d_col.ap=f.d_dress_a.sub_p
	tf.d_col.a1=f.d_dress_a.c1, tf.d_col.a1b=f.d_dress_a.c1b
	tf.d_col.a2=f.d_dress_a.c2, tf.d_col.a2b=f.d_dress_a.c2b
	tf.d_col.a3=f.d_dress_a.c3, tf.d_col.a3b=f.d_dress_a.c3b;}
else if(f.tab.main=='dress3'){tf.d_col.a=f.d_dress_b.sub_c, tf.d_col.b=0
	tf.d_col.a1=f.d_dress_b.c1, tf.d_col.a1b=f.d_dress_b.c1b
	tf.d_col.a2=f.d_dress_b.c2, tf.d_col.a2b=f.d_dress_b.c2b
	tf.d_col.a3=f.d_dress_b.c3, tf.d_col.a3b=f.d_dress_b.c3b;}
else if(f.tab.main=='eri'){tf.d_col.a=f.d_eri.sub_c, tf.d_col.b=f.d_body.sub_c, tf.d_col.ap=f.d_eri.sub_p
	tf.d_col.a1=f.d_eri.c1, tf.d_col.a1b=f.d_eri.c1b
	tf.d_col.a2=f.d_eri.c2, tf.d_col.a2b=f.d_eri.c2b
	tf.d_col.a3=f.d_eri.c3, tf.d_col.a3b=f.d_eri.c3b;}
else if(f.tab.main=='kata'){tf.d_col.a=f.d_kata.sub_c, tf.d_col.b=f.d_body.sub_c, tf.d_col.ap=f.d_kata.sub_p
	tf.d_col.a1=f.d_kata.c1, tf.d_col.a1b=f.d_kata.c1b
	tf.d_col.a2=f.d_kata.c2, tf.d_col.a2b=f.d_kata.c2b
	tf.d_col.a3=f.d_kata.c3, tf.d_col.a3b=f.d_kata.c3b;}
else if(f.tab.main=='hair'){tf.d_col.a=f.d_pin.sub_c, tf.d_col.b=f.d_ribbon.sub_c
	tf.d_col.a1=f.d_pin.c1, tf.d_col.a1b=f.d_pin.c1b
	tf.d_col.a2=f.d_pin.c2, tf.d_col.a2b=f.d_pin.c2b
	tf.d_col.b1=f.d_ribbon.c1, tf.d_col.b1b=f.d_ribbon.c1b
	tf.d_col.b2=f.d_ribbon.c2, tf.d_col.b2b=f.d_ribbon.c2b;}
else if(f.tab.main=='under'){tf.d_col.a=f.d_under_b.sub_c, tf.d_col.b=f.d_under_p.sub_c
	tf.d_col.a1=f.d_under_b.c1, tf.d_col.a1b=f.d_under_b.c1b
	tf.d_col.a2=f.d_under_b.c2, tf.d_col.a2b=f.d_under_b.c2b
	tf.d_col.b1=f.d_under_p.c1, tf.d_col.b1b=f.d_under_p.c1b
	tf.d_col.b2=f.d_under_p.c2, tf.d_col.b2b=f.d_under_p.c2b;}
else if(f.tab.main=='head'){tf.d_col.a=f.d_hat.sub_c, tf.d_col.b=f.d_glasses.sub_c
	tf.d_col.a1=f.d_hat.c1, tf.d_col.a1b=f.d_hat.c1b
	tf.d_col.a2=f.d_hat.c2, tf.d_col.a2b=f.d_hat.c2b
	tf.d_col.b1=f.d_glasses.c1, tf.d_col.b1b=f.d_glasses.c1b
	tf.d_col.b2=f.d_glasses.c2, tf.d_col.b2b=f.d_glasses.c2b;}
else if(f.tab.main=='limb'){tf.d_col.a=f.d_gloves.sub_c, tf.d_col.b=f.d_socks.sub_c
	tf.d_col.a1=f.d_gloves.c1, tf.d_col.a1b=f.d_gloves.c1b
	tf.d_col.a2=f.d_gloves.c2, tf.d_col.a2b=f.d_gloves.c2b
	tf.d_col.b1=f.d_socks.c1, tf.d_col.b1b=f.d_socks.c1b
	tf.d_col.b2=f.d_socks.c2, tf.d_col.b2b=f.d_socks.c2b;}

else if(f.tab.main=='color_control'){tf.d_col.a=f.d_all_color.sub_c, tf.d_col.b=0
	tf.d_col.a1=f.d_all_color.c1, tf.d_col.a1b=f.d_all_color.c1b
	tf.d_col.a2=f.d_all_color.c2, tf.d_col.a2b=f.d_all_color.c2b
	tf.d_col.a3=f.d_all_color.c3, tf.d_col.a3b=f.d_all_color.c3b;}

[endscript]
[endmacro]

[macro name="d_col_exp_switch"]
[if exp="mp.d!=mp.non" ]
	[if exp="tf.r==1" ][eval exp="mp.exp='f.'+mp.d+'.c'+f.sel.col_b+'b=f.sel.col'" ]
	[else][eval exp="mp.exp='f.'+mp.d+'.c'+f.sel.col_b+'=f.sel.col'" ][endif]
[else]
	[if exp="tf.r==1" ][eval exp="mp.exp='f.'+f.sel.d_+'.c'+f.sel.col_b+'b=f.sel.col'" ]
	[else][eval exp="mp.exp='f.'+f.sel.d_+'.c'+f.sel.col_b+'=f.sel.col'" ][endif]
[endif]
[eval exp=%exp ][endmacro]

[macro name="color_preset"]
[eval exp="mp.exp='f.'+mp.d+'.c1=tf.d_prec.c1, f.'+mp.d+'.c2=tf.d_prec.c2, f.'+mp.d+'.c3=tf.d_prec.c3, f.'+mp.d+'.c1b=tf.d_prec.c1b, f.'+mp.d+'.c2b=tf.d_prec.c2b, f.'+mp.d+'.c3b=tf.d_prec.c3b'" ]
;[eval exp="tf.d_test=mp.exp" ]
[eval exp=%exp ][endmacro]

;現状服装保存
[macro name="save_dress"][eval exp="tf.ch_sav=101" ][eval/save_cdn][endmacro]
[macro name="load_dress"][eval exp="tf.ch_sav=101" ][eval/load_cdn]
[if exp="f.d_dress.type=='onp' && f.d_dress.h=='xxx' || f.d_dress.type=='up' && (f.d_dress_a.h=='xxx' || f.d_dress_b.h=='xxx')" ]
[eval exp="f.d_dress.current_h='xxx'" ][else][eval exp="f.d_dress.current_h='def'" ][endif][endmacro]

[macro name="head_check"]
[if exp="f.d_ribbon.hair=='c' || f.d_ribbon.hair=='e'" ]
[eval exp="f.d_ribbon.tt='non',f.d_ribbon.cc='non',f.d_ribbon[6]='non',f.d_ribbon.hair='nr'" ]
[dress_hair_set][endif][endmacro]

;;着せ替えコーディネート関連==================================================================
[macro name="btn/cdn"]
[iscript]
mp.fol='TF/menu/dress/cdn_list/'
if(f.tab.sub=='daily_sw' && f.sav_auto[tf.n]==1){mp.fol+='c/';}
mp.gr= mp.fol + f.sav_color[tf.n] + '.png'
mp.mo= mp.fol + f.sav_color[tf.n] + '_.png'

if(f.sav_color[tf.n]==0 && f.tab.sub!='save'){mp.mo=mp.gr;}

tf.n+=1, mp.n=tf.role_name
mp.x=f.x.bace, mp.y=f.y.bace
f.y.bace=f.y.bace + f.y.add
[endscript]
[button name=%n fix=true storage=TF/sys/dress.ks target=*cdn_btn_act graphic=%gr enterimg=%mo x=%x y=%y exp=%exp ][endmacro]

[macro name="eval/save_cdn"]
[iscript]
mp.n=tf.ch_sav
f.sav_dress_n[mp.n]=f.d_dress.n, f.sav_dress_type[mp.n]=f.d_dress.type
;f.sav_dress_sub_c[mp.n]=f.d_dress.sub_c, 
f.sav_dress_sub_p[mp.n]=f.d_dress.sub_p
f.sav_dress_c1[mp.n]=f.d_dress.c1, f.sav_dress_c1b[mp.n]=f.d_dress.c1b
f.sav_dress_c2[mp.n]=f.d_dress.c2, f.sav_dress_c2b[mp.n]=f.d_dress.c2b
f.sav_dress_c3[mp.n]=f.d_dress.c3, f.sav_dress_c3b[mp.n]=f.d_dress.c3b
;f.sav_dress_slv[mp.n]=f.d_dress.slv, f.sav_dress_h[mp.n]=f.d_dress.h
;f.sav_dressa_type[mp.n]=f.d_dress_a.type
f.sav_dressa_n[mp.n]=f.d_dress_a.n,
;f.sav_dressa_sub_c[mp.n]=f.d_dress_a.sub_c, 
f.sav_dressa_sub_p[mp.n]=f.d_dress_a.sub_p
f.sav_dressa_c1[mp.n]=f.d_dress_a.c1, f.sav_dressa_c1b[mp.n]=f.d_dress_a.c1b
f.sav_dressa_c2[mp.n]=f.d_dress_a.c2, f.sav_dressa_c2b[mp.n]=f.d_dress_a.c2b
f.sav_dressa_c3[mp.n]=f.d_dress_a.c3, f.sav_dressa_c3b[mp.n]=f.d_dress_a.c3b
;f.sav_dressa_slv[mp.n]=f.d_dress_a.slv, f.sav_dressa_h[mp.n]=f.d_dress_a.h
;f.sav_dressb_type[mp.n]=f.d_dress_b.type
f.sav_dressb_n[mp.n]=f.d_dress_b.n
;f.sav_dressb_h[mp.n]=f.d_dress_b.h, f.sav_dressb_sub_c[mp.n]=f.d_dress_b.sub_c
f.sav_dressb_c1[mp.n]=f.d_dress_b.c1, f.sav_dressb_c1b[mp.n]=f.d_dress_b.c1b
f.sav_dressb_c2[mp.n]=f.d_dress_b.c2, f.sav_dressb_c2b[mp.n]=f.d_dress_b.c2b
f.sav_dressb_c3[mp.n]=f.d_dress_b.c3, f.sav_dressb_c3b[mp.n]=f.d_dress_b.c3b
f.sav_eri_n[mp.n]=f.d_eri.n, f.sav_eri_sub_p[mp.n]=f.d_eri.sub_p
;f.sav_eri_type[mp.n]=f.d_eri.type, f.sav_eri_sub_c[mp.n]=f.d_eri.sub_c
f.sav_eri_c1[mp.n]=f.d_eri.c1, f.sav_eri_c1b[mp.n]=f.d_eri.c1b
f.sav_eri_c2[mp.n]=f.d_eri.c2, f.sav_eri_c2b[mp.n]=f.d_eri.c2b
f.sav_eri_c3[mp.n]=f.d_eri.c3, f.sav_eri_c3b[mp.n]=f.d_eri.c3b
f.sav_kata_n[mp.n]=f.d_kata.n, f.sav_kata_sub_p[mp.n]=f.d_kata.sub_p
;f.sav_kata_type[mp.n]=f.d_kata.type, f.sav_kata_sub_c[mp.n]=f.d_kata.sub_c
f.sav_kata_c1[mp.n]=f.d_kata.c1, f.sav_kata_c1b[mp.n]=f.d_kata.c1b
f.sav_kata_c2[mp.n]=f.d_kata.c2, f.sav_kata_c2b[mp.n]=f.d_kata.c2b
f.sav_kata_c3[mp.n]=f.d_kata.c3, f.sav_kata_c3b[mp.n]=f.d_kata.c3b
f.sav_socks_n[mp.n]=f.d_socks.n
;f.sav_socks_sub_c[mp.n]=f.d_socks.sub_c, f.sav_socks_type[mp.n]=f.d_socks.type
f.sav_socks_c1[mp.n]=f.d_socks.c1, f.sav_socks_c1b[mp.n]=f.d_socks.c1b
f.sav_socks_c2[mp.n]=f.d_socks.c2, f.sav_socks_c2b[mp.n]=f.d_socks.c2b
f.sav_under_b_n[mp.n]=f.d_under_b.n
;, f.sav_under_b_h[mp.n]=f.d_under_b.h, f.sav_under_b_sub_c[mp.n]=f.d_under_b.sub_c
f.sav_under_b_c1[mp.n]=f.d_under_b.c1, f.sav_under_b_c1b[mp.n]=f.d_under_b.c1b
f.sav_under_b_c2[mp.n]=f.d_under_b.c2, f.sav_under_b_c2b[mp.n]=f.d_under_b.c2b
f.sav_under_p_n[mp.n]=f.d_under_p.n
;, f.sav_under_p_h[mp.n]=f.d_under_p.h, f.sav_under_p_sub_c[mp.n]=f.d_under_p.sub_c
f.sav_under_p_c1[mp.n]=f.d_under_p.c1, f.sav_under_p_c1b[mp.n]=f.d_under_p.c1b
f.sav_under_p_c2[mp.n]=f.d_under_p.c2, f.sav_under_p_c2b[mp.n]=f.d_under_p.c2b
f.sav_hat_n[mp.n]=f.d_hat.n
;, f.sav_hat_type[mp.n]=f.d_hat.type, f.sav_hat_sub_c[mp.n]=f.d_hat.sub_c
f.sav_hat_c1[mp.n]=f.d_hat.c1, f.sav_hat_c1b[mp.n]=f.d_hat.c1b
f.sav_hat_c2[mp.n]=f.d_hat.c2, f.sav_hat_c2b[mp.n]=f.d_hat.c2b
f.sav_glasses_n[mp.n]=f.d_glasses.n
;, f.sav_glasses_sub_c[mp.n]=f.d_glasses.sub_c, f.sav_glasses_type[mp.n]=f.d_glasses.type
f.sav_glasses_c1[mp.n]=f.d_glasses.c1, f.sav_glasses_c1b[mp.n]=f.d_glasses.c1b
f.sav_glasses_c2[mp.n]=f.d_glasses.c2, f.sav_glasses_c2b[mp.n]=f.d_glasses.c2b
f.sav_pin_n[mp.n]=f.d_pin.n
f.sav_pin_type[mp.n]=f.d_pin.type, f.sav_pin_sub_c[mp.n]=f.d_pin.sub_c
f.sav_pin_c1[mp.n]=f.d_pin.c1, f.sav_pin_c1b[mp.n]=f.d_pin.c1b
f.sav_pin_c2[mp.n]=f.d_pin.c2, f.sav_pin_c2b[mp.n]=f.d_pin.c2b
f.sav_ribbon_n[mp.n]=f.d_ribbon.n
f.sav_ribbon_type[mp.n]=f.d_ribbon.type, f.sav_ribbon_sub_c[mp.n]=f.d_ribbon.sub_c
f.sav_ribbon_c1[mp.n]=f.d_ribbon.c1, f.sav_ribbon_c1b[mp.n]=f.d_ribbon.c1b
f.sav_ribbon_c2[mp.n]=f.d_ribbon.c2, f.sav_ribbon_c2b[mp.n]=f.d_ribbon.c2b
[endscript]
[endmacro]

[macro name="eval/load_cdn"]
[iscript]
mp.n=tf.ch_sav
f.d_dress.n=f.sav_dress_n[mp.n], f.d_dress.sub_p=f.sav_dress_sub_p[mp.n]
f.d_dress.type=f.sav_dress_type[mp.n]
;, f.d_dress.sub_c=f.sav_dress_sub_c[mp.n], 
f.d_dress.c1=f.sav_dress_c1[mp.n], f.d_dress.c1b=f.sav_dress_c1b[mp.n]
f.d_dress.c2=f.sav_dress_c2[mp.n], f.d_dress.c2b=f.sav_dress_c2b[mp.n]
f.d_dress.c3=f.sav_dress_c3[mp.n], f.d_dress.c3b=f.sav_dress_c3b[mp.n]
;f.d_dress.slv=f.sav_dress_slv[mp.n], f.d_dress.h=f.sav_dress_h[mp.n]
;f.d_dress_a.type=f.sav_dressa_type[mp.n]
f.d_dress_a.n=f.sav_dressa_n[mp.n], f.d_dress_a.sub_p=f.sav_dressa_sub_p[mp.n]
;f.d_dress_a.sub_c=f.sav_dressa_sub_c[mp.n], 
f.d_dress_a.c1=f.sav_dressa_c1[mp.n], f.d_dress_a.c1b=f.sav_dressa_c1b[mp.n]
f.d_dress_a.c2=f.sav_dressa_c2[mp.n], f.d_dress_a.c2b=f.sav_dressa_c2b[mp.n]
f.d_dress_a.c3=f.sav_dressa_c3[mp.n], f.d_dress_a.c3b=f.sav_dressa_c3b[mp.n]
;f.d_dress_a.slv=f.sav_dressa_slv[mp.n], f.d_dress_a.h=f.sav_dressa_h[mp.n],
f.d_dress_b.n=f.sav_dressb_n[mp.n]
;, f.d_dress_b.type=f.sav_dressb_type[mp.n]
;f.d_dress_b.h=f.sav_dressb_h[mp.n], f.d_dress_b.sub_c=f.sav_dressb_sub_c[mp.n]
f.d_dress_b.c1=f.sav_dressb_c1[mp.n], f.d_dress_b.c1b=f.sav_dressb_c1b[mp.n]
f.d_dress_b.c2=f.sav_dressb_c2[mp.n], f.d_dress_b.c2b=f.sav_dressb_c2b[mp.n]
f.d_dress_b.c3=f.sav_dressb_c3[mp.n], f.d_dress_b.c3b=f.sav_dressb_c3b[mp.n]
f.d_eri.n=f.sav_eri_n[mp.n], f.d_eri.sub_p=f.sav_eri_sub_p[mp.n]
;, f.d_eri.type=f.sav_eri_type[mp.n], f.d_eri.sub_c=f.sav_eri_sub_c[mp.n]
f.d_eri.c1=f.sav_eri_c1[mp.n], f.d_eri.c1b=f.sav_eri_c1b[mp.n]
f.d_eri.c2=f.sav_eri_c2[mp.n], f.d_eri.c2b=f.sav_eri_c2b[mp.n]
f.d_eri.c3=f.sav_eri_c3[mp.n], f.d_eri.c3b=f.sav_eri_c3b[mp.n]
f.d_kata.n=f.sav_kata_n[mp.n], f.d_kata.sub_p=f.sav_kata_sub_p[mp.n]
;, f.d_kata.type=f.sav_kata_type[mp.n], f.d_kata.sub_c=f.sav_kata_sub_c[mp.n]
f.d_kata.c1=f.sav_kata_c1[mp.n], f.d_kata.c1b=f.sav_kata_c1b[mp.n]
f.d_kata.c2=f.sav_kata_c2[mp.n], f.d_kata.c2b=f.sav_kata_c2b[mp.n]
f.d_kata.c3=f.sav_kata_c3[mp.n], f.d_kata.c3b=f.sav_kata_c3b[mp.n]
f.d_socks.n=f.sav_socks_n[mp.n]
;, f.d_socks.type=f.sav_socks_type[mp.n], f.d_socks.sub_c=f.sav_socks_sub_c[mp.n]
f.d_socks.c1=f.sav_socks_c1[mp.n], f.d_socks.c1b=f.sav_socks_c1b[mp.n]
f.d_socks.c2=f.sav_socks_c2[mp.n], f.d_socks.c2b=f.sav_socks_c2b[mp.n]
f.d_under_b.n=f.sav_under_b_n[mp.n]
;, f.d_under_b.h=f.sav_under_b_h[mp.n], f.d_under_b.sub_c=f.sav_under_b_sub_c[mp.n]
f.d_under_b.c1=f.sav_under_b_c1[mp.n], f.d_under_b.c1b=f.sav_under_b_c1b[mp.n]
f.d_under_b.c2=f.sav_under_b_c2[mp.n], f.d_under_b.c2b=f.sav_under_b_c2b[mp.n]
f.d_under_p.n=f.sav_under_p_n[mp.n]
;, f.d_under_p.h=f.sav_under_p_h[mp.n], f.d_under_p.sub_c=f.sav_under_p_sub_c[mp.n]
f.d_under_p.c1=f.sav_under_p_c1[mp.n], f.d_under_p.c1b=f.sav_under_p_c1b[mp.n]
f.d_under_p.c2=f.sav_under_p_c2[mp.n], f.d_under_p.c2b=f.sav_under_p_c2b[mp.n]
f.d_hat.n=f.sav_hat_n[mp.n]
;, f.d_hat.type=f.sav_hat_type[mp.n], f.d_hat.sub_c=f.sav_hat_sub_c[mp.n]
f.d_hat.c1=f.sav_hat_c1[mp.n], f.d_hat.c1b=f.sav_hat_c1b[mp.n]
f.d_hat.c2=f.sav_hat_c2[mp.n], f.d_hat.c2b=f.sav_hat_c2b[mp.n]
f.d_glasses.n=f.sav_glasses_n[mp.n]
;, f.d_glasses.type=f.sav_glasses_type[mp.n], f.d_glasses.sub_c=f.sav_glasses_sub_c[mp.n]
f.d_glasses.c1=f.sav_glasses_c1[mp.n], f.d_glasses.c1b=f.sav_glasses_c1b[mp.n]
f.d_glasses.c2=f.sav_glasses_c2[mp.n], f.d_glasses.c2b=f.sav_glasses_c2b[mp.n]
f.d_pin.n=f.sav_pin_n[mp.n]
f.d_pin.type=f.sav_pin_type[mp.n], f.d_pin.sub_c=f.sav_pin_sub_c[mp.n]
f.d_pin.c1=f.sav_pin_c1[mp.n], f.d_pin.c1b=f.sav_pin_c1b[mp.n]
f.d_pin.c2=f.sav_pin_c2[mp.n], f.d_pin.c2b=f.sav_pin_c2b[mp.n]
f.d_ribbon.n=f.sav_ribbon_n[mp.n]
f.d_ribbon.type=f.sav_ribbon_type[mp.n], f.d_ribbon.sub_c=f.sav_ribbon_sub_c[mp.n]
f.d_ribbon.c1=f.sav_ribbon_c1[mp.n], f.d_ribbon.c1b=f.sav_ribbon_c1b[mp.n]
f.d_ribbon.c2=f.sav_ribbon_c2[mp.n], f.d_ribbon.c2b=f.sav_ribbon_c2b[mp.n]
[endscript]
[load_d_info_all][endmacro]

[macro name="eval/reset_single"]
[iscript]
f.sav_color[tf.ch_sav]=0, f.sav_auto[tf.ch_sav]=0
f.d_sav_n[tf.ch_sav]='ｺｰﾃﾞｨﾈｰﾄ' + tf.ch_sav
[endscript]
[endmacro]

;;日替わり衣装=============================================================================
[macro name="dayly_dress_change"]
[iscript]
tf.d_count=0,tf.auto_d_list=[]
for(tf.n=1 ; tf.n<=100 ; tf.n+=1) {
	if(f.sav_auto[tf.n]==1){tf.d_count+=1,tf.auto_d_list[tf.d_count]=tf.n}
}
if(tf.d_count>=2){tf.r=Math.floor(Math.random() * tf.d_count + 1);}
[endscript]
[if exp="tf.d_count>=2" ][eval exp="tf.ch_sav=tf.auto_d_list[tf.r]"]
[eval/load_cdn][endif]
[if exp="f.d_dress.type=='onp' && f.d_dress.h=='xxx' || f.d_dress.type=='up' && (f.d_dress_a.h=='xxx' || f.d_dress_b.h=='xxx')" ]
[eval exp="f.d_dress.current_h='xxx'" ][else][eval exp="f.d_dress.current_h='def'" ][endif][endmacro]

;;return
[return]

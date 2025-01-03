;;第一回拒绝后的初夜
*first_sel
[cm][clearfix]
[choice_xy][btn/ l=y tg=*jump_to_first gr=ch/re_first ][btn/ tg=*remind gr=ch/remind ][s]
*remind
[cm]（还是算了吧[p_][eval exp="f.act.system=1" ]
[return_bace]
;[return_menu]

*jump_to_first
[cm][stop_bgm][set_stand][bg/ g=bg/ st=bed][f/ m=n]…[p_][show_stand]
[syl][m/re]…[name]？[p_]
[_]（悄悄地亲吻希尔薇…。[p_]
[syl]……嗯[p_][jump/ st=sys/intro_event tg=*kiss ]

;;床前设置/服装
*bed
[jump/ st=talk/room tg=*before_menu cond="f.g_config.H_setting==0"]
[save_dress]
*bed_from_ev
[freechara]
[if exp="f.x_count.sex>=1" ][else][jump/ tg=*first_sel][endif]
[eval exp="f.situ.situ='pre_sex'"][last_act exp=before_bed ]
[nolog][hide_message_w][hide_role]
[set_dress_up][c_mod n=win st=room/before_bed ]
;[c_show n=win][bg/ g=bg/ st=bed][c_mod n=win st=room/before_bed time=00 ef=00]
[bgm st=MT][_][show_dress_up]
[iscript]
tf.hx_state={wet:0, act:0, z_out:0, z_in:0, z_iout:0, style:'mngr', red_aroma:0}
tf.hx_tx_state={}
[endscript]

*sel_before_bed_
[cm][c_mod n=win st=room/before_bed ][free_tx]
*sel_before_bed
[cm][xy x=930 y=191 y_add=80 x_add=127 s=30 tg1='*sel_before_bed' preg1='menu/before_H/' ][btn/xy]
[tx_img l=x tx1=体位 ]
;[eval exp="f.x.bace+=10" ]
[btn/ l=x tg=1 g=1 gr=h_style_mngr sw=h_style swm=mngr exp="tf.hx_state.style='mngr'" ]
[btn/ l=x tg=1 g=1 gr=h_style_himn sw=h_style swm=himn exp="tf.hx_state.style='himn'" ]
[btn/ l=x tg=1 g=1 gr=h_style_back sw=h_style swm=back exp="tf.hx_state.style='back'" ]

[if exp="f.item.aroma_p>=1" ][add_y][tx_img l=x tx1=红色的香 ][eval exp="f.x.bace+=25" ]
	[btn/ l=x tg=1 g=1 gr=flower_use sw=red_aroma swm=1 exp="tf.hx_state.red_aroma=1" ]
	[btn/ l=x tg=1 g=1 gr=flower_not_use sw=red_aroma swm=0 exp="tf.hx_state.red_aroma=0" ]
	
	[xy x=985 y=100 ]
	[if exp="f.item.aroma_p>=1" ][tx_img tx1=红色的香「 n=f.item.aroma_p tx2=」個 l=y c=pink][endif]
[endif]
[xy x=858 y=342 y_add=53 ]
[btn/ y=378 tg=*calc g=1 gr=decide_bed]
[btn/ y=497 exp="f.st[0]='sys/dress', f.tg[0]='*change_dress_'" g=1 gr=change_dress]
[s]

*calc
[cm][c_mod n=win st=00][endnolog][show_message_w]
[iscript]
f.g_config.repeat_mode=0, f.tab.main='act'
tf.hx_mpt= {right:'leg', left:'leg', m_mouth:'non', ppp:0 }
tf.hx_temp={right:0, left:0, ppp:0, m_mouth:0}

tf.hx_y= {feel:0, ex_in:0, ex_out:0, ex_rest:2}
tf.hx_s= {feel:0, ex_sum:0, ex_m:0, ex_b:0, ex_v:0, ex_c:0, ex_rest:3, feel_v:0, feel_c:0, feel_b:0, feel_m:0}

f.hx_select.man_act='hands'
f.hx_select.rb_act='touch', f.hx_select.lb_act='touch'
f.hx_select.c_act='touch', f.hx_select.v_act='finger'

tf.hx_act={act:'non', last:'non', sel:'non'}
tf.hx_img={}

if(f.state.lust<=0){f.state.lust=0;}
if(tf.hx_state.red_aroma==1){f.item.aroma_p-=1;}
[endscript]

;[eval exp="f.state.lust=0" cond="f.state.lust<=0"]
;[eval exp="f.item.aroma_p-=1" cond="tf.hx_state.red_aroma==1"]
[if exp="f.h_act=='self' || f.h_act=='mouth'" ][jump/ tg=*text_before_bed_ ]
[else][jump/ tg=*text_before_bed ][endif]

;;床前台词
*text_before_bed
[cm][set_stand][bg/ g=bg/ st=bed][f/ c=p m=n][show_stand][syl]
[if exp="f.Hxns_x[0]>=2 && (f.state.lust>=1000 || f.state.mood=='lust')"]
[f/ ei=h ][Hxns n=x]能为我做吗？[p_]
[f/ y=c ei=h m=s ]已经是我的[Hxns n=v]……等不及了。[r]快点…[p_]
[elsif exp="f.state.mood=='lust' || f.state.lust>=600" ]
[f/ c=p]你要抱我吗？[p_]
[f/ y=c ei=h m=s ]已经是我的[Hxns n=v]……等不及了。[r]快点…[p_]
[elsif exp="f.state.lust>=100" ]
[f/ c=p]你要抱我吗？[p_]
[f/ e=smile m=s c=p]是的，很高兴…♡[p_]
[else]
[f/ c=p]……是吧。[p_]
[f/ e=cl c=p]好的，我知道了。[p_][endif]

*text_before_bed_
[black]
[_]（希尔薇
[if exp="tf.hx_state.style=='himn'" ]跨过膝盖
[elsif exp="tf.hx_state.style=='back'" ]我站在床的深渊里背对着她。
[elsif exp="tf.hx_state.style=='mngr'" ]仰面躺在床上…。[endif][p_]
[jump/ tg=*H_ex ]

;奥莱尔前台词
*mouth
[cm][jump/ st=talk/room tg=*before_menu cond="f.g_config.H_setting==0"]
[set_stand][bg/ g=bg/ st=room][bgm st=MT][f/ c=p m=n][show_stand]
[eval exp="f.situ.situ='sex', f.fol_info.scene_h='hcg_mouth'" ][eval exp="f.h_count.oral+=1" ][reload_file_path]
[syl][if exp="f.h_memory.mouth==0" ][eval exp="f.h_memory.mouth=1" ]
	[f/ c=p]是用嘴吗？[p_]
	[m/re]……知道了。[lr_]
	[m/re]虽然不知道能不能做得很好，但是试着做一下。[p_]
	[jump/ st=H/mouth tg=*a ]
[elsif exp="f.state.mood=='calm' && f.h_state.m>=100 && f.h_memory.mouth>=2 && f.state.lust>=600" ]
	[f/ c=p m=s]您要吃吗？[p_]
	[m/re]わかり是的。拼命服务♡[p_]
	[jump/ st=H/mouth tg=*b ]
[elsif exp="f.state.mood=='calm'" ]
	[f/ c=p]用嘴吗？[lr_]
	[m/re]好的…我会努力的。[p_]
	[jump/ st=H/mouth tg=*a ]
[elsif exp="(f.state.lust>=600 || f.state.mood=='lust') && f.h_state.m>=100 && f.h_memory.mouth>=2" ]
	[f/ c=p m=s]是…♡[lr_]
	[m/re][Hxns n=p y=の]请允许我用嘴服务…♡[p_]
	[jump/ st=H/mouth tg=*c ]
[elsif exp="(f.state.lust>=200 || f.state.mood=='lust') && f.h_state.m>=30 && f.h_memory.mouth>=1" ]
	[f/ c=p m=s]您要吃吗？[p_]
	[m/re]我明白了。拼命服务♡[p_]
	[jump/ st=H/mouth tg=*b ]
[else]
	[f/ c=p]用嘴吗？[lr_]
	[m/re]好的…我会努力的。[p_]
	[jump/ st=H/mouth tg=*a ]
[endif]

;自己说的台词
*self_intro
[cm][jump/ st=talk/room tg=*before_menu cond="f.g_config.H_setting==0"]
[set_stand][bg/ g=bg/ st=room][bgm st=MT][f/ c=p m=n][show_stand]
[syl][if exp="f.x_count.self>=30 && f.state.lust>=1000 || f.state.mood=='lust'" ]
	[m/re]自己…吗？[p_]
	[m/re]好的，我知道了。[p_]
	[f/ ei=h m=s]我的[Hxns n=v]……请好好看…♡[p_]
[elsif exp="f.x_count.self>=30" ]
	[m/re]自己…吗？[p_]
	[m/re]好的，我知道了。[p_]
	[f/ ei=h]……请好好看哦。[p_]
[elsif exp="f.x_count.self>=2" ]
	[m/re]自己…吗？[p_]
	[m/re]……好的，知道了。[lr_]
	[m/re][name]但是，如果想看的话…。[p_]
[else]
	[m/re]啊，是“自己”吗？[lr_]
	[m/re]像“那个时候”一样？[p_]
	[f/ e=cl m=n c=p]…。[p_]
	[f/ c=p][name]如果想看的话，我知道了…。[p_]
	[if exp="f.d_dress_a.n=='kare'" ]
		[m/re]衬衫就这样借吧。[lr_]
		[f/ y=c e=cl c=p]没有这个的话，那个……到“最后”为止……做不到。[p_]
	[else]
		[m/re]那个…[name]可以借用一下这件衬衫吗？[lr_]
		[f/ y=c e=cl c=p]什么都没有的话，那个……到“最后”为止……做不到。[p_][endif]
[endif]
	[jump/ st=H/self tg=*H_self ]

;奥拉尔/我自己之后
*mouth_after
;[hide_role][show_role]
[cm][eval exp="f.h_act='mouth', tf.r='mouth_y'" ][save_dress]
[iscript]
if(f.d_dress.type=='up'){f.d_dress_a.n='non', f.d_dress_b.n='non';}
else{f.d_dress.n='non';}
f.d_eri.n='non', f.d_eri.sub_p=0, f.d_kata.n='non', f.d_socks.n='non'
f.d_under_b.n='non', f.d_under_p.n='non', f.d_hat.n='non'
f.d_pin.type='nr', f.d_pin.sub_c=0, f.d_pin.n='non'
f.d_ribbon.type='nr', f.d_ribbon.sub_c=0, f.d_ribbon.n='non'
[endscript]
[load_d_info_all]
[choice_xy][btn/ l=y tg=*conti gr=ch/sex ][btn/ tg=*end_h gr=ch/rest ][s]

*self_after
[cm][eval exp="f.h_act='self', tf.r='self_y'" ][save_dress]
[iscript]
f.d_dress.type='up', f.d_dress_b.n='non', f.d_eri.n='non', f.d_eri.sub_p=0
f.d_kata.n='non'
f.d_under_b.n='non', f.d_under_p.n='non', f.d_hat.n='non'
f.d_pin.n='non', f.d_ribbon.n='non'
f.d_dress_a	={ n:'kare', type:'non', sub_p:0, c1:7, c2:2, c3:7, c1b:0, c2b:20, c3b:0}	
[endscript]
[load_d_info_all]
[choice_xy][btn/ l=y tg=*conti gr=ch/sex ][btn/ tg=*end_h gr=ch/rest ][s]

*end_h
[cm][black][load_dress]
[if exp="tf.r=='mouth_y' && f.temp_flg.sexless_c>=1 || tf.r=='self_y' && f.temp_flg.sexless_c==3" ][jump/ tg=*please ][endif]
[if exp="tf.r=='mouth_y'" ][eval exp="f.state.sexless+=2" ]
[elsif exp="tf.r=='self_y'" ][eval exp="f.state.sexless-=1" ][endif]
[_]（因为很满足所以今天就休息吧…。[p_]
[stop_bgm]…[p_][eval exp="f.act.time='nonp'" ][day_end]

;仰卧
*please
[cm][eval exp="f.situ.situ='pre_sex'" ][set_stand][bg/ g=bg/ st=bed][f/ y=c c=p m=n]
;[if exp="f.h_act=='self'" ][eval exp="tf.r='self_s'" ]
;[chara_part name="stand" neck="00.png" dress="s/dress/F/a2.png" sleeve="s/dress/F/a2_.png" pin="00.png" hair_f="s/body/stn_fh ]
;[chara_part name="stand" under_b="00.png" under_p="00.png" wait="true" allow_storage=true ]
;[else]
;[eval exp="tf.r='mouth_s'" ]
;[chara_part name="stand" neck="00.png" dress="00.png" sleeve="00.png" pin="00.png" hair_f="s/body/stn_fh ]
;[chara_part name="stand" under_b="00.png" under_p="00.png" socks="00.png" wait="true" allow_storage=true ]
;[endif]

[show_stand][set_win_frame][show_role]
[syl][m/re]……今天结束了吗？[p_]
;[if exp="f.Hxns_v[0]==2 && (f.state.lust>=800 || f.state.mood=='lust')" ]
;	[m/re][name h=1]…我的[Hxns n=v]也请做…。[lr]
;	[m/re]我也是[name h=1]在[Hxns n=x]希望…。[p_]
[if exp="f.state.lust>=500 || f.state.mood=='lust'" ]
	[m/re][name h=1]…私[Hxns n=v ex=1 b=也请做…。[lr_]
	[m/re]我也是[name h=1]在[Hxns n=x]希望…。[p_]
[elsif exp="f.state.lust>=100" ]
	[m/re][name h=1]…那个…。哇，我也…。[p_]
[else]
	[m/re]那个…。[p_]
[endif]
[choice_xy][btn/ l=y tg=*conti gr=ch/sex ][btn/ tg=*endisend gr=ch/rest ][s]


;継続
*conti
[cm][black][_]
;[set_win_frame_hx]
[if exp="tf.r=='self_y'" ]（希尔薇的猥亵行为让我忍不住在眼前[r]再次邀请她上床。[p_]
[elsif exp="tf.r=='self_s'" ]（无法抑制希尔薇的样子，邀请她上床。[p_]
[elsif exp="tf.r=='mouth_y'" ]（一次射精无法控制，邀请希尔薇上床。[p_]
[elsif exp="tf.r=='mouth_s'" ]（无法抑制希尔薇的样子，邀请她上床。[p_]
[endif]
;[set_dress_info all=1]
;[jump/ tg=*bed ]
[jump/ tg=*bed_from_ev ]
;[jump/ tg=*sex_2nd ]

*endisend
[cm][if exp="f.state.lust>=800 || f.state.mood=='lust'" ]
	[f/ e=cl c=p]嗯…。[lr_]
	[m/re]知道了…。[p_]
[elsif exp="f.state.lust>=100" ]
	[f/ e=cl c=p]啊，对不起…。[p_]
[else]
	[f/ e=cl c=p m=n]…。[p_]
[endif]
[black]（…[p_][stop_bgm]
[eval exp="f.state.sexless+=2, f.daily.out=0, f.act.time='nonp'" ][day_end]

;*sex_2nd
;[cm][last_act exp=before_bed ][hide_role][nolog][hide_message_w]
;[dress_set][bgm st=MT][c_mod n=win st=before_bed ]
;[c_show n=win w=t ][show_dress]
;[eval exp="f.drug_s=0" ][eval exp="f.drug_y=0" ]
;[jump/ tg=*reload_dress ]


;;床场景迁移后，初始变量设定
*H_ex
[cm]
[iscript]
if(f.d_dress_b.type=='p' || f.d_dress_b.type=='pl' || f.d_dress_b.type=='pm' || f.d_dress_b.type=='ps'){f.d_dress_b.n='non', f.d_dress_b.sub_c=0, f.d_dress_b.h='xxx', f.d_dress_b.type='non';}
;if(f.d_eri.type!='eri'){f.d_eri.n='non', f.d_eri.sub_c=0, f.d_eri.sub_p=0, f.d_eri.type='non';}

f.situ.situ='Hx', f.act.system=0
;s_ex max
tf.hx_max= {act:150, y_ex:210, s_ex:280, s_exm:150, s_exb:100, s_exc:50, s_exv:200}
tf.hx_max.s_exm=Math.floor(tf.hx_max.s_exm-f.h_state.m/10), tf.hx_max.s_exb=Math.floor(tf.hx_max.s_exb-f.h_state.b/10)
tf.hx_max.s_exc=Math.floor(tf.hx_max.s_exc-f.h_state.c/10), tf.hx_max.s_exv=Math.floor(tf.hx_max.s_exv-f.h_state.v/10)
if(tf.hx_max.s_exm<=10){tf.hx_max.s_exm=10;} if(tf.hx_max.s_exb<=10){tf.hx_max.s_exb=10;}
if(tf.hx_max.s_exc<=10){tf.hx_max.s_exc=10;} if(tf.hx_max.s_exv<=10){tf.hx_max.s_exv=10;}

;wet/体力残量
if(f.state.lust>=1000){tf.hx_state.wet=250;}
else if(f.state.lust>=700){tf.hx_state.wet=f.state.lust*0.25;}
else if(f.state.lust>=300){tf.hx_state.wet=f.state.lust*0.375;}
else{tf.hx_state.wet=f.state.lust*0.5;}
tf.hx_state.wet=Math.floor(tf.hx_state.wet)
if(f.state.mood=='calm'){tf.hx_state.wet-=100;}
if(tf.hx_state.wet<=0){tf.hx_state.wet=0;}

if(tf.hx_state.red_aroma==1){tf.hx_state.wet+=50, tf.hx_s.ex_rest+=5, tf.hx_y.ex_rest+=5;}
if(tf.hx_act=='self' || tf.hx_act=='mouth'){tf.hx_state.wet+=50;}
if(f.state.mood=='lust')
	{tf.hx_state.wet+=100, tf.hx_s.ex_rest+=3, tf.hx_y.ex_rest+=3;}
tf.hx_s.ex_rest+=(f.state.lust/100), tf.hx_y.ex_rest+=(f.state.lust/100)
tf.hx_s.ex_rest=Math.floor(tf.hx_s.ex_rest)
tf.hx_y.ex_rest=Math.floor(tf.hx_y.ex_rest)
if(tf.hx_s.ex_rest>=50){tf.hx_s.ex_rest=50}
if(tf.hx_y.ex_rest>=30){tf.hx_y.ex_rest=30}
[endscript]

[bgm st=MT][set_win_frame_hx]

*show_Hx
[cm]
[iscript]
f.hx_select.man_act='hands', f.hx_select.c_act='touch'
f.hx_select.rb_act='touch', f.hx_select.lb_act='touch'

f.hx_select.b_hand='touch_r', f.hx_select.h_hand='touch_r', f.hx_select.hip_hand='touch_r'

[endscript]
;[reset_effect]
[if exp="tf.hx_state.style=='mngr'" ][set_Hx set=mngr]
[elsif exp="tf.hx_state.style=='himn'" ][set_Hx set=himn]
[elsif exp="tf.hx_state.style=='back'" ][set_Hx set=back][endif]
[xf/ m=en e=def][show_Hx]

;;Hx/行动菜单
*act_menu
[jump/ tg=*h_def cond="f.g_config.repeat_mode==1 && tf.hx_act.menu_reload!='need'"]
[clearfix][eval exp="tf.role_name='act_menu_tab'" ]
[btn/fix gr=frame/role/repeat tg=*repeat_Hx exp="f.g_config.repeat_mode=1" x=1353 y=3 ]
[xy y=4 tg1='*act_menu_select' preg1='menu/Hx/' ][btn/xy]
	[btn/fix tg=1 g=1 gr=tab_act sw=tab.main swm=act exp="f.tab.main='act'" x=1423 ]
	[btn/fix tg=*config_menu g=1 gr=tab_config sw=tab.main swm=config exp="f.tab.main='config', tf.r='jump_to_conf'" x=1531 ]
	[btn/fix tg=*stop g=1 gr=quit x=1346 y=866]

*act_menu_top
[iscript]
tf.hx_act.menu_reload='done'
if(f.hx_conf.sel_type=='action'){
	if(tf.hx_state.style=='back' && f.hx_select.man_act=='hands')
	{f.hx_select.man_act='hand_r';}
	if(tf.hx_state.style!='back' && (f.hx_select.man_act=='hand_r' || f.hx_select.man_act=='hand_l'))
	{f.hx_select.man_act='hands';}

	f.st[1]='Hx/act_action/'+tf.hx_state.style+'/'+f.hx_select.man_act
	tf.r='Hx/act_action/lock'+ f.hx_conf.lock
}else{f.st[1]='Hx/act_part/'+tf.hx_state.style, tf.r='00';}

[endscript]
[c_mod n=win st=1 ef2=&tf.r]

[clearfix name='act_menu_top'][eval exp="tf.role_name='act_menu_top'" ]
;部位選択形式
[xy tg1='*act_menu_select_top' preg1='menu/Hx/' ][btn/xy]
[if exp="f.hx_conf.sel_type=='part'" ][xy preg1='menu/Hx/type_b/' ]
	[xy x=1428 y=115 x_add=81 y_add=48][btn/xy x=2]
	[if exp="f.fol_info.scene=='Hx_mngr'" ]
		[btn/fix tg=1 g=1 l=x gr=b_touch sw=hc_rb_act swm=touch exp="f.hx_select.rb_act='touch'" ]
		[if exp="f.d_dress.type=='onp' && f.d_dress.n=='non' || f.d_dress.type=='up' && f.d_dress_a.n=='non'" ]
		[btn/fix tg=1 g=1 l=x gr=b_lick sw=hc_rb_act swm=lick exp="f.hx_select.rb_act='lick'" ][else][add_x_blank][endif]
		[btn/fix tg=1 g=1 l=x gr=b_touch sw=hc_lb_act swm=touch exp="f.hx_select.lb_act='touch'" ]
		[if exp="f.d_dress.type=='onp' && f.d_dress.n=='non' || f.d_dress.type=='up' && f.d_dress_a.n=='non'" ]
		[btn/fix tg=1 g=1 l=x gr=b_lick sw=hc_lb_act swm=lick exp="f.hx_select.lb_act='lick'" ][else][add_x_blank][endif]
		[btn/fix tg=1 l=x g=1 gr=b_touch sw=hc_c_act swm=touch exp="f.hx_select.c_act='touch'" ]
		[btn/fix tg=1 l=x g=1 gr=b_lick sw=hc_c_act swm=lick exp="f.hx_select.c_act='lick'" ]
	[elsif exp="f.fol_info.scene=='Hx_back'" ]
		[btn/fix tg=1 g=1 l=x gr=hand_l sw=hc_b_act swm=touch_l exp="f.hx_select.b_hand='touch_l'" ]
		[btn/fix tg=1 g=1 l=x gr=hand_r sw=hc_b_act swm=touch_r exp="f.hx_select.b_hand='touch_r'" ]
		[btn/fix tg=1 g=1 l=x gr=hand_l sw=hc_h_act swm=touch_l exp="f.hx_select.h_hand='touch_l'" ]
		[btn/fix tg=1 g=1 l=x gr=hand_r sw=hc_h_act swm=touch_r exp="f.hx_select.h_hand='touch_r'" ]
		[btn/fix tg=1 g=1 l=x gr=hand_l sw=hc_hip_act swm=touch_l exp="f.hx_select.hip_hand='touch_l'" ]
		[btn/fix tg=1 g=1 l=x gr=hand_r sw=hc_hip_act swm=touch_r exp="f.hx_select.hip_hand='touch_r'" ]
	[endif]

;行動選択形式
[elsif exp="f.hx_conf.sel_type=='action'" ][xy preg1='menu/Hx/type_a/' ]
	[xy x=1355 y=95 x_add=120 y_add=39][btn/xy x=2]
	[if exp="f.fol_info.scene=='Hx_back'" ]
		[btn/fix tg=1 l=x g=1 gr=hand_l sw=hc_man_act swm=hand_l exp="f.hx_select.man_act='hand_l'" ]
		[btn/fix tg=1 l=x g=1 gr=hand_r sw=hc_man_act swm=hand_r exp="f.hx_select.man_act='hand_r'" ][else]
		[btn/fix tg=1 l=x g=1 gr=hands sw=hc_man_act swm=hands exp="f.hx_select.man_act='hands'" ][endif]

	[if exp="f.fol_info.scene=='Hx_mngr'" ]
		[btn/fix tg=1 l=x g=1 gr=mouth sw=hc_man_act swm=mouth exp="f.hx_select.man_act='mouth'" ]
		[elsif exp="f.fol_info.scene=='Hx_himn'" ][add_x_blank][endif]
	[btn/fix tg=1 l=x g=1 gr=ppp sw=hc_man_act swm=ppp exp="f.hx_select.man_act='ppp'" ]
	[if exp="tf.hx_mpt.ppp==1 || tf.hx_mpt.right=='v_f'" ]
		[btn/fix tg=*v_off l=x g=1 gr=v_off sw=hc_man_act swm=off ][endif]
[endif]
[jump/ tg=*act_menu_select_stop cond="f.act.system=='act_menu_top'"]

[wt/]
;共通(ピストン速度/手or竿
*act_menu_mid
[xy tg1='*act_menu_select_mid' preg1='menu/Hx/' ][btn/xy]
[clearfix name='act_menu_mid'][eval exp="tf.role_name='act_menu_mid'" ]
[if exp="f.hx_conf.sel_type=='part'" ][xy preg1='menu/Hx/type_b/' ]
	[xy x=1406 y=342 x_add=92 y_add=48][btn/xy]
	[if exp="tf.hx_mpt.ppp==1 || tf.hx_mpt.right=='v_f'" ]
		[btn/fix tg=*v_off x=1475 g=1 gr=v_off ]
	[else]
		[btn/fix tg=1 l=x g=1 gr=v_fin sw=hc_v_act swm=finger exp="f.hx_select.v_act='finger'" ]
		[btn/fix tg=1 l=x g=1 gr=v_p_in sw=hc_v_act swm=sex exp="f.hx_select.v_act='sex'" ][endif]
	[xy x=1355 y=390 x_add=120][btn/xy]
	[btn/fix tg=1 g=1 l=x gr=v_slow sw=hc_v_spd swm=normal exp="f.hx_select.v_spd='normal'" ]
	[btn/fix tg=1 g=1 l=x gr=v_fast sw=hc_v_spd swm=fast exp="f.hx_select.v_spd='fast'" ]	
[elsif exp="f.hx_conf.sel_type=='action'" ][xy preg1='menu/Hx/type_a/' ]
	[xy x=1355 y=269 x_add=120 y_add=39][btn/xy x=2]
	[btn/fix tg=1 l=x g=1 l=x gr=v_slow sw=hc_v_spd swm=normal exp="f.hx_select.v_spd='normal'" ]
	[btn/fix tg=1 l=x g=1 l=x gr=v_fast sw=hc_v_spd swm=fast exp="f.hx_select.v_spd='fast'" ]
	[xy x=1355 y=346 x_add=120 y_add=39][btn/xy x=2]
	[btn/fix tg=1 l=x g=1 l=x gr=lock sw=hc_lock swm=1 exp="f.hx_conf.lock=1" ]
	[btn/fix tg=1 l=x g=1 l=x gr=unlock sw=hc_lock swm=0 exp="f.hx_conf.lock=0" ]
[endif]
[jump/ tg=*act_menu_select_stop cond="f.act.system=='act_menu_mid'"]


;漫画表現switch/sub_act移行
*act_menu_btm
[clearfix name='act_menu_btm'][eval exp="tf.role_name='act_menu_btm'" ]
[xy x=1355 y=451 x_add=120 y_add=38 preg1='menu/Hx/config/'][btn/xy x=2]
	[add_x_blank][add_x_blank]
	[btn/fix l=x tg=*xr_switch g=1 gr=xr sw=h_effect.xr swm=1 ]
;	[btn/fix l=x tg=*se_switch g=1 gr=se sw=h_effect.se swm=1 ]
	[btn/fix l=x tg=*ef_switch g=1 gr=ef sw=h_effect.ef swm=1 ]
	[btn/fix x=1355 y=536 tg=*2nd_act_menu gr=menu/Hx/Hx_2nd_act ]
[jump/ tg=*act_menu_select_stop cond="f.act.system=='act_menu_btm'"]


;;Hx/絶頂&体力チェック/+ステータス再読み込み
*h_def
[cm][if exp="f.g_config.repeat_mode==0" ][_][clearstack][endif]
[jump/ st=H/Hx_text tg=*morning cond="tf.hx_state.act>=tf.hx_state.act_max"]
[eval exp="tf.hx_s.feel=0" cond="tf.hx_s.feel<=0"][eval exp="tf.hx_y.feel=0" cond="tf.hx_y.feel<=0"]
[hx/shake cond="sf.h_effect.ef==1"][set_Hx_body cond="tf.hx_img.wet!='max'"]
[jump/ tg=*exx cond="tf.hx_s.feel>=tf.hx_max.s_ex || tf.hx_y.feel>=tf.hx_max.y_ex || tf.hx_s.feel_v>=tf.hx_max.s_exv+3 || tf.hx_s.feel_c>=tf.hx_max.s_exc+3 || tf.hx_s.feel_b>=tf.hx_max.s_exb+3 || tf.hx_s.feel_m>=tf.hx_max.s_exm+3" ]


[eval exp="f.act.system=0" cond="f.act.system=='return_from_config'"]
[if exp="f.act.system==1" ][eval exp="f.act.system=0" ][jump/ tg=*clickable_menu ][endif]
;[elsif exp="f.g_config.repeat_mode==0" ][eval exp="f.g_config.repeat_mode_c=0" ][endif]

*Hx_state
[set_feel][free_tx]
;[jump/ tg=*tes ]
[iscript]
tf.hx_tx_state.y_h='', tf.hx_tx_state.s_h=''
if(tf.hx_s.ex_rest>=6){tf.hx_tx_state.s_h='♡×'+tf.hx_s.ex_rest}
else{if(tf.hx_s.ex_rest>=1){tf.hx_tx_state.s_h+='♡'} if(tf.hx_s.ex_rest>=2){tf.hx_tx_state.s_h+='♡'}
	if(tf.hx_s.ex_rest>=3){tf.hx_tx_state.s_h+='♡'} if(tf.hx_s.ex_rest>=4){tf.hx_tx_state.s_h+='♡'}
	if(tf.hx_s.ex_rest>=5){tf.hx_tx_state.s_h+='♡'}} 

if(tf.hx_y.ex_rest>=6){tf.hx_tx_state.y_h='♡×'+tf.hx_y.ex_rest}
else{if(tf.hx_y.ex_rest>=1){tf.hx_tx_state.y_h+='♡'} if(tf.hx_y.ex_rest>=2){tf.hx_tx_state.y_h+='♡'}
	if(tf.hx_y.ex_rest>=3){tf.hx_tx_state.y_h+='♡'} if(tf.hx_y.ex_rest>=4){tf.hx_tx_state.y_h+='♡'}
	if(tf.hx_y.ex_rest>=5){tf.hx_tx_state.y_h+='♡'} } 

;位置テスト
;tf.hx_extx={v:'!!強絶頂!!', c:'!!!超絶頂!!!', b:'!絶頂!', m:'!!強絶頂!!' }
;tf.hx_s.feel_v=tf.hx_max.s_exv-5
;tf.hx_s.feel_c=tf.hx_max.s_exc
;tf.hx_s.feel_b=tf.hx_max.s_exb+2
;tf.hx_s.feel_m=tf.hx_max.s_exm+1

tf.hx_tx_state.v=Math.floor(tf.hx_s.feel_v/tf.hx_max.s_exv*35+1)
tf.hx_tx_state.c=Math.floor(tf.hx_s.feel_c/tf.hx_max.s_exc*35+1)
tf.hx_tx_state.b=Math.floor(tf.hx_s.feel_b/tf.hx_max.s_exb*35+1)
tf.hx_tx_state.m=Math.floor(tf.hx_s.feel_m/tf.hx_max.s_exm*35+1)
if(tf.hx_s.feel_v>=tf.hx_max.s_exv+2){tf.hx_tx_state.v_c='0xff0000';}
else if(tf.hx_s.feel_v>=tf.hx_max.s_exv+1){tf.hx_tx_state.v_c='0xff2962';}
else if(tf.hx_s.feel_v>=tf.hx_max.s_exv){tf.hx_tx_state.v_c='0xfc4bac';}
else{tf.hx_tx_state.v_c='0xf76fe0';}
if(tf.hx_s.feel_c>=tf.hx_max.s_exc+2){tf.hx_tx_state.c_c='0xff0000';}
else if(tf.hx_s.feel_c>=tf.hx_max.s_exc+1){tf.hx_tx_state.c_c='0xff2962';}
else if(tf.hx_s.feel_c>=tf.hx_max.s_exc){tf.hx_tx_state.c_c='0xfc4bac';}
else{tf.hx_tx_state.c_c='0xf76fe0';}
if(tf.hx_s.feel_b>=tf.hx_max.s_exb+2){tf.hx_tx_state.b_c='0xff0000';}
else if(tf.hx_s.feel_b>=tf.hx_max.s_exb+1){tf.hx_tx_state.b_c='0xff2962';}
else if(tf.hx_s.feel_b>=tf.hx_max.s_exb){tf.hx_tx_state.b_c='0xfc4bac';}
else{tf.hx_tx_state.b_c='0xf76fe0';}
if(tf.hx_s.feel_m>=tf.hx_max.s_exm+2){tf.hx_tx_state.m_c='0xff0000';}
else if(tf.hx_s.feel_m>=tf.hx_max.s_exm+1){tf.hx_tx_state.m_c='0xff2962';}
else if(tf.hx_s.feel_m>=tf.hx_max.s_exm){tf.hx_tx_state.m_c='0xfc4bac';}
else{tf.hx_tx_state.m_c='0xf76fe0';}
[endscript]

[xy x=1365 y=710 y_add=30 x_add=95][btn/xy x=2]
	[tx_img l=x y=&f.y.bace-tf.hx_tx_state.v c=&tf.hx_tx_state.v_c tx1='❤' s=&tf.hx_tx_state.v]
	[tx_img l=x y=&f.y.bace-tf.hx_tx_state.c c=&tf.hx_tx_state.c_c tx1='❤' s=&tf.hx_tx_state.c ]
	[tx_img l=x y=&f.y.bace-tf.hx_tx_state.b c=&tf.hx_tx_state.b_c tx1='❤' s=&tf.hx_tx_state.b ]
	[tx_img l=x y=&f.y.bace-tf.hx_tx_state.m c=&tf.hx_tx_state.m_c tx1='❤' s=&tf.hx_tx_state.m ]

[xy y=558 s=20 ][btn/xy]
;	[tx_img l=y tx1=兴奋度/ n=tf.hx_state.wet ]
	[add_y_blank]	
	[tx_img l=y tx1='射精/' n=tf.hx_y.ex_in+tf.hx_y.ex_out ]
	[tx_img tx1='中出し/' n=tf.hx_y.ex_in ][eval exp="f.x.bace+=f.x.add+5" ]
	[tx_img l=y tx1='ぶっかけ/' n=tf.hx_y.ex_out ][eval exp="f.x.bace-=f.x.add+5" ]
	[eval exp="f.y.bace+=10" ]
	[tx_img l=y tx1='希尔薇绝顶/' n=tf.hx_s.ex_sum ]
		[eval exp="f.x.bace+=35" ]
		[tx_img l=y tx1='阴道/' n=tf.hx_s.ex_v ][eval exp="f.x.bace+=f.x.add ,f.y.bace-=f.y.add" ]
		[tx_img l=y tx1='ｸﾘ/' n=tf.hx_s.ex_c ][eval exp="f.x.bace-=f.x.add" ]
		[tx_img l=y tx1='胸/' n=tf.hx_s.ex_b ][eval exp="f.x.bace+=f.x.add ,f.y.bace-=f.y.add" ]
		[tx_img l=y tx1='口/' n=tf.hx_s.ex_m ][eval exp="f.x.bace-=f.x.add" ]
		[eval exp="f.x.bace-=35" ]

	[eval exp="f.y.bace+=10" ]
	[tx_img l=y tx1='精力(♂)/' n=tf.hx_tx_state.y_h ]
	[tx_img l=y tx1='精力(♀)/' n=tf.hx_tx_state.s_h ]

;	[tx_img l=y tx1='夜' n=tf.hx_time tx2=深夜]

;[xy x=1360 y=680 x_add=95 s=16][btn/xy x=2]
;[tx_img l=x c=yellow tx1=&tf.hx_extx.b ]
;[tx_img l=x c=yellow tx1=&tf.hx_extx.c ]
;[tx_img l=x c=yellow tx1=&tf.hx_extx.v ]
;[tx_img l=x c=yellow tx1=&tf.hx_extx.m ]


[if exp="f.g_config.repeat_mode==1 && tf.hx_act.last!='vf_in' && tf.hx_act.last!='vp_in' && tf.hx_act.last!='ex'" ]
[eval exp="tf.hx_act.act=tf.hx_act.last" ][eval exp="tf.hx_act.act='kiss_s'" cond="tf.hx_act.act=='kiss'"][jump/ tg=*man_pt_mod ][endif]
[if exp="f.g_config.repeat_mode=='done'" ][eval exp="f.g_config.repeat_mode=0" ][jump/ tg=*act_menu ][endif]

;;選択範囲/正常位
*clickable_menu
[cm]
;[cancelskip]
[xy tip_x=150 tip_y=813 tip_preg=menu/Hx//]
[eval exp="f.tg[1]='*clickable_'+tf.hx_state.style" ]
[jump/ tg=1 ]

*clickable_mngr
;[if exp="tf.hx_state.style=='mngr'" ]
;M
[if exp="f.hx_conf.sel_type=='part' || f.hx_select.man_act=='mouth'" ][xy tip1=m_m tg1=*click_m]
	[btn/click tg=1 wi=34 hi=26 x=503 y=268 ex=1 ][btn_ex]
	[btn/click tg=1 wi=29 hi=26 x=519 y=258 ex=1 ][btn_ex]
[endif]
;B
[if exp="f.hx_conf.sel_type=='part' || f.hx_select.man_act=='hands' || f.hx_select.man_act=='mouth' && (f.d_dress.type=='onp' && f.d_dress.n=='non' || f.d_dress.type=='up' && f.d_dress_a.n=='non')" ]
	[xy tip1=b_h cond="f.hx_conf.sel_type=='action' && f.hx_select.man_act=='hands' || f.hx_conf.sel_type=='part' && f.hx_select.lb_act=='touch'"]
	[xy tip1=b_m cond="f.hx_conf.sel_type=='action' && f.hx_select.man_act=='mouth' || f.hx_conf.sel_type=='part' && f.hx_select.lb_act=='lick'"]
	[if exp="tf.hx_mpt.right=='b'" ]
	[btn/click tg=*click_rb wi=152 hi=110 x=593 y=261 ex=1 ]
	[elsif exp="tf.hx_mpt.m_mouth=='bl'" ]
	[btn/click tg=*click_rb wi=90 hi=88 x=588 y=268 ex=1 ][else]
	[btn/click tg=*click_rb wi=81 hi=72 x=588 y=284 ex=1 ][endif][btn_ex]
	
	[xy tip1=b_h cond="f.hx_conf.sel_type=='action' && f.hx_select.man_act=='hands' || f.hx_conf.sel_type=='part' && f.hx_select.rb_act=='touch'"]
	[xy tip1=b_m cond="f.hx_conf.sel_type=='action' && f.hx_select.man_act=='mouth' || f.hx_conf.sel_type=='part' && f.hx_select.rb_act=='lick'"]
	[if exp="tf.hx_mpt.left=='b'" ]
	[btn/click tg=*click_lb wi=115 hi=140 x=457 y=353 ex=1 ]
	[elsif exp="tf.hx_mpt.m_mouth=='br'" ]
	[btn/click tg=*click_lb wi=97 hi=79 x=471 y=350 ex=1 ][else]
	[btn/click tg=*click_lb wi=76 hi=79 x=492 y=350 ex=1 ][endif][btn_ex]
[endif] 

;V
[if exp="f.hx_conf.sel_type=='part' || f.hx_select.man_act=='ppp' || f.hx_select.man_act=='hands'" ]
	[xy tg1=*click_v]
	[if exp="tf.hx_mpt.ppp==1" ][xy tip1=v_pp][btn/click tg=1 wi=89 hi=96 x=719 y=563 ex=1 ]
	[elsif exp="tf.hx_mpt.right=='v_f'" ][xy tip1=v_pp][btn/click tg=1 wi=115 hi=132 x=719 y=567 ex=1 ]
	[else]
	[xy tip1=v_p cond="f.hx_conf.sel_type=='action' && f.hx_select.man_act=='ppp' || f.hx_conf.sel_type=='part' && f.hx_select.v_act=='sex'"]
	[xy tip1=v_f cond="f.hx_conf.sel_type=='action' && f.hx_select.man_act=='hands' || f.hx_conf.sel_type=='part' && f.hx_select.v_act=='finger'"]
	[btn/click tg=1 wi=63 hi=65 x=722 y=566 ex=1 ][endif]
	[btn_ex]
[endif]

;C
[if exp="f.hx_conf.sel_type=='part' || f.hx_select.man_act=='mouth' || f.hx_select.man_act=='hands'" ]
	[xy tip1=c_h cond="f.hx_conf.sel_type=='action' && f.hx_select.man_act=='hands' || f.hx_conf.sel_type=='part' && f.hx_select.c_act=='touch'"]
	[xy tip1=c_m cond="f.hx_conf.sel_type=='action' && f.hx_select.man_act=='mouth' || f.hx_conf.sel_type=='part' && f.hx_select.c_act=='lick'"]
	[if exp="tf.hx_mpt.left=='c'" ]
	[btn/click tg=*click_c wi=29 hi=32 x=716 y=556 ex=1 ][btn_ex]
	[btn/click tg=*click_c wi=107 hi=99 x=612 y=556 ex=1 ][btn_ex]
	[elsif exp="tf.hx_mpt.m_mouth=='c'" ]
	[btn/click tg=*click_c wi=52 hi=61 x=710 y=514 ex=1 ][btn_ex][else]
	[btn/click tg=*click_c wi=27 hi=25 x=715 y=556 ex=1 ][btn_ex][endif]
[endif]

;H
	[if exp="tf.hx_mpt.right!='hand' && (f.hx_conf.sel_type=='part' || f.hx_select.man_act=='hands')" ]
	[btn/click tg=*hands_hands_l wi=84 hi=109 x=745 y=112 ex=h_h ][btn_ex][endif]
	[if exp="tf.hx_mpt.left!='hand' && (f.hx_conf.sel_type=='part' || f.hx_select.man_act=='hands')" ]
	[btn/click tg=*hands_hands_r wi=87 hi=115 x=290 y=344 ex=h_h ][btn_ex][endif]
;L
	[if exp="tf.hx_mpt.right!='leg' && (f.hx_conf.sel_type=='part' || f.hx_select.man_act=='hands')" ]
	[btn/click tg=*hands_legs_l wi=148 hi=138 x=829 y=182 ex=l_h ][btn_ex][endif]
	[if exp="tf.hx_mpt.left!='leg' && (f.hx_conf.sel_type=='part' || f.hx_select.man_act=='hands')" ]
	[btn/click tg=*hands_legs_r wi=128 hi=165 x=310 y=537 ex=l_h ][btn_ex][endif]
[eval exp="tf.r='stop'" ][s]

;;選択範囲/背面座位
*clickable_himn
;[elsif exp="tf.hx_state.style=='himn'" ]
;L
	[if exp="tf.hx_mpt.right!='leg' && (f.hx_conf.sel_type=='part' || f.hx_select.man_act=='hands')" ]
	[btn/click tg=*hands_legs_l wi=169 hi=170 x=488 y=679 ex=l_h ][btn_ex][endif]
	[if exp="tf.hx_mpt.left!='leg' && (f.hx_conf.sel_type=='part' || f.hx_select.man_act=='hands')" ]
	[btn/click tg=*hands_legs_r wi=201 hi=104 x=852 y=575 ex=l_h ][btn_ex][endif]

;B
[if exp="f.hx_conf.sel_type=='part' || f.hx_select.man_act=='hands'" ]
	[xy tip1=b_h ]
	[if exp="tf.hx_mpt.right=='b'" ]
	[btn/click tg=*click_lb wi=125 hi=155 x=692 y=323 ex=1 ][else]
	[btn/click tg=*click_lb wi=103 hi=94 x=671 y=327 ex=1 ][endif][btn_ex]
	
	[xy tip1=b_h ]
	[if exp="tf.hx_mpt.left=='b'" ]
	[btn/click tg=*click_rb wi=145 hi=175 x=524 y=401 ex=1 ][else]
	[btn/click tg=*click_rb wi=87 hi=94 x=554 y=383 ex=1 ][endif][btn_ex]
[endif] 

;V
[if exp="f.hx_conf.sel_type=='part' || f.hx_select.man_act=='ppp' || f.hx_select.man_act=='hands'" ]
	[xy tg1=*click_v]
	[if exp="tf.hx_mpt.ppp==1" ][xy tip1=v_pp][btn/click tg=1 wi=109 hi=125 x=763 y=715 ex=1 ]
	[elsif exp="tf.hx_mpt.right=='v_f'" ][xy tip1=v_pp][btn/click tg=1 wi=142 hi=134 x=701 y=630 ex=1 ]
	[else]
	[xy tip1=v_p cond="f.hx_conf.sel_type=='action' && f.hx_select.man_act=='ppp' || f.hx_conf.sel_type=='part' && f.hx_select.v_act=='sex'"]
	[xy tip1=v_f cond="f.hx_conf.sel_type=='action' && f.hx_select.man_act=='hands' || f.hx_conf.sel_type=='part' && f.hx_select.v_act=='finger'"]
	[btn/click tg=1 wi=77 hi=68 x=765 y=723 ex=1 ][endif]
	[btn_ex]
[endif]

;C
[if exp="f.hx_conf.sel_type=='part' || f.hx_select.man_act=='hands'" ]
	[xy tip1=c_h ]
	[if exp="tf.hx_mpt.left=='c'" ]
	[btn/click tg=*click_c wi=125 hi=149 x=755 y=558 ex=1 ][btn_ex]
	[btn/click tg=*click_c wi=38 hi=55 x=800 y=691 ex=1 ][btn_ex]
	[elsif exp="tf.hx_mpt.right!='v_f'"]
	[btn/click tg=*click_c wi=24 hi=22 x=793 y=719 ex=1 ][btn_ex][endif]
[endif]
[eval exp="tf.r='stop'" ][s]

;;選択範囲/バック
*clickable_back

[if exp="f.hx_conf.sel_type=='part' || f.hx_select.man_act=='hand_l' || f.hx_select.man_act=='hand_r'" ]
[btn/click tg=*click_hip wi=184 hi=143 x=645 y=534 ex=hp_h ][btn_ex]
[btn/click tg=*click_hand wi=139 hi=90 x=1045 y=580 ex=h_h ][btn_ex]
[btn/click tg=*click_b wi=84 hi=106 x=986 y=443 ex=b_h ][btn_ex]
[endif]

;V
[if exp="f.hx_conf.sel_type=='part' || f.hx_select.man_act=='ppp' || f.hx_select.man_act=='hand_r'" ]
	[xy tg1=*click_v]
	[if exp="tf.hx_mpt.ppp==1" ][xy tip1=v_pp]
		[btn/click tg=1 wi=314 hi=241 x=47 y=620 ex=1 ][btn_ex]
		[btn/click tg=1 wi=185 hi=334 x=438 y=556 ex=1 ][btn_ex]
	[elsif exp="tf.hx_mpt.right=='v_f'" ][xy tip1=v_pp]
		[btn/click tg=1 wi=314 hi=241 x=47 y=620 ex=1 ][btn_ex]
		[btn/click tg=1 wi=171 hi=360 x=467 y=441 ex=1 ][btn_ex]
	[else]
	[xy tip1=v_p cond="f.hx_conf.sel_type=='action' && f.hx_select.man_act=='ppp' || f.hx_conf.sel_type=='part' && f.hx_select.v_act=='sex'"]
	[xy tip1=v_f cond="f.hx_conf.sel_type=='action' && f.hx_select.man_act=='hands' || f.hx_conf.sel_type=='part' && f.hx_select.v_act=='finger'"]
	[btn/click tg=1 wi=200 hi=80 x=104 y=645 ex=1 ][btn_ex]
	[btn/click tg=1 wi=83 hi=134 x=568 y=656 ex=1 ][btn_ex][endif]
[endif]

;C
[if exp="f.hx_conf.sel_type=='part' || f.hx_select.man_act=='hand_l'" ]
	[xy tip1=c_h ]
	[btn/click tg=*click_c wi=83 hi=119 x=774 y=709 ex=1 ][btn_ex]
	[if exp="tf.hx_mpt.left=='c'" ]
	[btn/click tg=*click_c wi=232 hi=368 x=177 y=188 ex=1 ][btn_ex]
	[btn/click tg=*click_c wi=157 hi=337 x=153 y=320 ex=1 ][btn_ex]
;	[elsif exp="tf.hx_mpt.right!='v_f'"]
	[else]
	[btn/click tg=*click_c wi=61 hi=53 x=175 y=620 ex=1 ][btn_ex][endif]
[endif]

[eval exp="tf.r='stop'" ][s]

;[endif]



;;クリック後
*click_b
[if exp="f.hx_conf.sel_type=='action'" ]
	[if exp="f.hx_select.man_act=='hand_l'" ]
	[jump/ tg=*click_lb ][else][jump/ tg=*click_rb ][endif]
[else]
	[if exp="f.hx_select.b_hand=='touch_l'" ]
	[jump/ tg=*click_lb ][else][jump/ tg=*click_rb ][endif]
[endif]

*click_hip
[if exp="f.hx_conf.sel_type=='action'" ]
	[if exp="f.hx_select.man_act=='hand_l'" ]
	[jump/ tg=*hands_legs_r ][else][jump/ tg=*hands_legs_l ][endif]
[else]
	[if exp="f.hx_select.hip_hand=='touch_l'" ]
	[jump/ tg=*hands_legs_r ][else][jump/ tg=*hands_legs_l ][endif]
[endif]

*click_hand
[if exp="f.hx_conf.sel_type=='action'" ]
	[if exp="f.hx_select.man_act=='hand_l'" ]
	[jump/ tg=*hands_hands_r ][else][jump/ tg=*hands_hands_l ][endif]
[else]
	[if exp="f.hx_select.h_hand=='touch_l'" ]
	[jump/ tg=*hands_hands_r ][else][jump/ tg=*hands_hands_l ][endif]
[endif]

*hands_hands_r
[Hx/man you=left syl=hand][set_hc_mpt][jump/ tg=*clickable_menu ]
*hands_legs_r
[Hx/man you=left syl=leg][set_hc_mpt][jump/ tg=*clickable_menu ]
*hands_hands_l
[Hx/man you=right syl=hand][jump/ tg=*f_off cond="tf.hx_mpt.right=='v_f'" ]
[set_hc_mpt][jump/ tg=*clickable_menu ]
*hands_legs_l
[Hx/man you=right syl=leg][jump/ tg=*f_off cond="tf.hx_mpt.right=='v_f'" ]
[set_hc_mpt][jump/ tg=*clickable_menu ]

*v_off
[if exp="tf.hx_mpt.ppp==1" ]
[eval exp="tf.hx_act.act='tx_p_off', tf.hx_act.menu_reload='need'" ]
[p_show p=off][jump/ st=H/Hx_text tg=*tx_p_off ][endif]

*f_off
[eval exp="f.act.system=1, tf.hx_act.menu_reload='need'" ][se/ st=s-wet2 ]
[if exp="tf.hx_mpt.right=='v_f'" ]
	[if exp="tf.hx_state.style=='mngr'" ][Hx/man you=right syl=non]
	[else][Hx/man you=right syl=leg][endif][endif]
[set_hc_mpt][jump/ tg=*act_menu ]

*click_m
[iscript]
if(tf.hx_act.act=='kiss'){tf.hx_act.act='kiss_s';}
else{tf.hx_act.act='kiss';}
[endscript]
[jump/ tg=*man_pt_mod ]
*click_c
[iscript]
if(f.hx_conf.sel_type=='action' && f.hx_select.man_act=='mouth' || f.hx_conf.sel_type=='part' &&  (f.hx_select.c_act=='lick' || f.hx_conf.lock==1 && tf.hx_mpt.mouth=='c'))
{tf.hx_act.act='lick_c';}
else
{tf.hx_act.act='touch_c';}
[endscript]
[jump/ tg=*man_pt_mod ]
*click_rb
[iscript]
if(f.hx_conf.sel_type=='action' && f.hx_select.man_act=='mouth' || f.hx_conf.sel_type=='part' && (f.hx_select.lb_act=='lick' || f.hx_conf.lock==1 && tf.hx_mpt.mouth=='lb'))
{tf.hx_act.act='lick_lb';}
else
{tf.hx_act.act='touch_lb';}
[endscript]
[jump/ tg=*man_pt_mod ]
*click_lb
[iscript]
if(f.hx_conf.sel_type=='action' && f.hx_select.man_act=='mouth' || f.hx_conf.sel_type=='part' && (f.hx_select.rb_act=='lick' || f.hx_conf.lock==1 && tf.hx_mpt.mouth=='rb'))
{tf.hx_act.act='lick_rb';}
else
{tf.hx_act.act='touch_rb';}
[endscript]
[jump/ tg=*man_pt_mod ]
*click_v
[iscript]
if(f.hx_conf.sel_type=='action' && (f.hx_select.man_act=='ppp' || f.hx_conf.lock==1 && tf.hx_mpt.ppp==1) || f.hx_conf.sel_type=='part' && f.hx_select.v_act=='sex')
	{if(tf.hx_mpt.ppp==1){tf.hx_act.act='vp_move';}else{tf.hx_act.act='vp_in';}}
else
	{if(tf.hx_mpt.right=='v_f'){tf.hx_act.act='vf_move';}else{tf.hx_act.act='vf_in';}}
[endscript]
[jump/ tg=*man_pt_mod ]

*man_pt_mod
[cm][btn/fix n=blank st=H/Hx_sys tg=*blank gr=menu/Hx/_limited x=1350 y=0 cond="f.g_config.repeat_mode!=1"]
[_ cond="f.g_config.repeat_mode!=1"][eval exp="tf.r=0" ]
[if exp="tf.hx_act.act=='kiss' || tf.hx_act.act=='kiss_s'" ]
	[Hx/man you=m_mouth syl=non cond="tf.hx_mpt.m_mouth=='bl'"]
	[Hx/man you=m_mouth syl=non cond="tf.hx_mpt.m_mouth=='br'"]
	[Hx/man you=m_mouth syl=non cond="tf.hx_mpt.m_mouth=='c'"]
	[Hx/man you=m_mouth syl=kiss]
[elsif exp="tf.hx_act.act=='touch_lb'" ]
	[if exp="tf.hx_mpt.right=='v_f'" ][se/ st=s-wet2][eval exp="tf.hx_act.menu_reload='need'" ][endif]
	[Hx/man you=m_mouth syl=non cond="tf.hx_mpt.m_mouth=='bl'"][Hx/man you=right syl=b]
[elsif exp="tf.hx_act.act=='touch_rb'" ]
	[Hx/man you=m_mouth syl=non cond="tf.hx_mpt.m_mouth=='br'"][Hx/man you=left syl=b]
[elsif exp="tf.hx_act.act=='lick_lb'" ]
	[Hx/man you=right syl=non cond="tf.hx_mpt.right=='b' || tf.hx_mpt.right=='leg'"][Hx/man you=m_mouth syl=bl]
[elsif exp="tf.hx_act.act=='lick_rb'" ]
	[Hx/man you=left syl=non cond="tf.hx_mpt.left=='b' || tf.hx_mpt.left=='leg'"][Hx/man you=m_mouth syl=br]
[elsif exp="tf.hx_act.act=='touch_c'" ]
	[Hx/man you=m_mouth syl=non cond="tf.hx_mpt.m_mouth=='c'"][Hx/man you=left syl=c]
[elsif exp="tf.hx_act.act=='lick_c'" ]
	[p_show p=off cond="tf.hx_mpt.ppp==1"][Hx/man you=right syl=non cond="tf.hx_mpt.right!='v_f' && tf.hx_mpt.right!='leg'"]
	[Hx/man you=left syl=non cond="tf.hx_mpt.left!='leg'"][Hx/man you=m_mouth syl=c]
[elsif exp="tf.hx_act.act=='vf_in'" ][eval exp="tf.hx_act.menu_reload='need'" ]
	[Hx/man you=left syl=leg cond="tf.hx_mpt.left=='non' || tf.hx_mpt.left=='hand'"]
	[se/ st=s-wet2 ][Hx/man you=right syl=v_f sp=''][Hx/man you=ppp syl=0 sp='']
[elsif exp="tf.hx_act.act=='vf_move' && f.hx_select.v_spd=='normal'" ]
	[se/ l=t st=l-wet0 ][Hx/man you=right syl=v_f sp=m]
[elsif exp="tf.hx_act.act=='vf_move' && f.hx_select.v_spd=='fast'" ]
	[se/ l=t st=l-wet2 ][Hx/man you=right syl=v_f sp=mm]
[elsif exp="tf.hx_act.act=='vp_in'" ][eval exp="tf.hx_act.menu_reload='need'" ]
	[Hx/man you=left syl=leg cond="tf.hx_mpt.left=='non' || tf.hx_mpt.left=='hand'"]
	[Hx/man you=right syl=leg cond="tf.hx_mpt.right=='non' || tf.hx_mpt.right=='hand' || tf.hx_mpt.right=='v_f'"]
	[p_show p=show][se/ st=s-wet1 ][Hx/man you=ppp syl=v]
[elsif exp="tf.hx_act.act=='vp_move' && f.hx_select.v_spd=='normal'" ][se/ l=t st=l-wet1 ][Hx/man you=ppp syl=v sp=m]
[elsif exp="tf.hx_act.act=='vp_move' && f.hx_select.v_spd=='fast'" ][se/ l=t st=l-wet2 ][Hx/man you=ppp syl=v sp=mm]
[endif]
;[skipstart]
;[if exp="f.hx_select.auto=='on'" ][eval exp="f.hx_select.auto=1" ][autostop][autostart][endif]
;[if exp="f.hx_select.skip=='on'" ][eval exp="f.hx_select.skip=1" ][skipstop][skipstart][endif]
[eval exp="f.tg[1]='tx_'+tf.hx_act.act" ][jump/ st=H/Hx_text tg=1 ]

;;after_tx
*tx_end
[set_hc_mpt]
[iscript]
tf.hx_state.act+=1, tf.r=0

if(tf.hx_act.act=='vf_in' && tf.hx_act.act=='vp_in' && tf.hx_act.act=='tx_p_off'){tf.hx_act.menu_reload='need';}
;{f.act.system==1;}
else{
	if(tf.hx_mpt.left=='hand'){tf.hx_s.feel+=1;}
	if(tf.hx_mpt.right=='hand'){tf.hx_s.feel+=1;}
	if(tf.hx_mpt.left=='c'){tf.hx_s.feel+=5, f.h_state.c+=1, tf.hx_s.feel_c+=1;}
	if(tf.hx_mpt.left=='b'){tf.hx_s.feel+=2, f.h_state.b+=1;}
	if(tf.hx_mpt.right=='b'){tf.hx_s.feel+=2, f.h_state.b+=1;}
	if(tf.hx_mpt.m_mouth=='br' || tf.hx_mpt.m_mouth=='bl'){tf.hx_s.feel+=2, f.h_state.b+=1;}
	if(tf.hx_mpt.right=='f'){tf.hx_s.feel+=7, f.h_state.v+=1, tf.hx_s.feel_v+=1;}
	if(tf.hx_mpt.ppp==1){tf.hx_s.feel+=5, tf.hx_y.feel+=5, f.h_state.v+=1, tf.hx_s.feel_v+=1;}
	if(tf.hx_mpt.left=='b' || tf.hx_mpt.right=='b' || tf.hx_mpt.m_mouth=='br' || tf.hx_mpt.m_mouth=='bl'){tf.hx_s.feel_b+=1;}
	}

if(tf.hx_act.act=='kiss' || tf.hx_act.act=='kiss_s' ){f.h_count.d_kiss+=1, f.state.love+=1
	f.h_state.m+=1, tf.hx_s.feel_m+=1, tf.hx_s.feel+=2, tf.hx_state.wet+=5
	if(f.h_state.m>=1000){tf.r+=20;} else{tf.r=f.h_state.m/50;}
	if(tf.hx_act.act=='kiss_s'){f.h_state.m+=1, tf.hx_s.feel_m+=1, tf.hx_s.feel+=2, tf.hx_state.wet+=2
		if(f.h_state.m>=1000){tf.r+=20;} else{tf.r=f.h_state.m/50;}}
	}
if(tf.hx_act.act=='touch_rb' || tf.hx_act.act=='touch_lb' ||tf.hx_act.act=='lick_rb' || tf.hx_act.act=='lick_lb'){
	f.h_state.b+=1, tf.hx_s.feel_b+=1, tf.hx_s.feel+=3, tf.hx_state.wet+=5
	if(f.h_state.b>=360){tf.r=20;} else{tf.r=f.h_state.b/18;}
	}
if(tf.hx_act.act=='touch_c' || tf.hx_act.act=='lick_c'){f.h_state.c+=1, tf.hx_s.feel_c+=1
	tf.hx_s.feel+=5, tf.hx_state.wet+=5
	if(f.h_state.c>=200){tf.r=20;} else{tf.r=f.h_state.c/10;}
	}
if(tf.hx_act.act=='vf_in'){f.h_state.v+=1
	if(f.h_state.v>=200){tf.r=10;} else{tf.r=f.h_state.v/20;}
	}
if(tf.hx_act.act=='vp_in'){f.h_state.v+=1
	if(f.h_state.v>=200){tf.r=20;} else{tf.r=f.h_state.v/10;}
	}
if(tf.hx_act.act=='vf_move'){
	f.h_state.v+=1, tf.hx_s.feel_v+=1, tf.hx_s.feel+=5, tf.hx_state.wet+=4
	if(f.hx_select.v_spd=='fast'){tf.hx_s.feel+=5, tf.hx_state.wet+=2;}
	if(f.h_state.v>=1000){tf.r=20;} else{tf.r=f.h_state.v/50;}
	}
if(tf.hx_act.act=='vp_move'){
	f.h_state.v+=1, tf.hx_s.feel_v+=1, tf.hx_s.feel+=10, tf.hx_state.wet+=6, tf.hx_y.feel+=5
	if(f.hx_select.v_spd=='fast'){tf.hx_s.feel+=5, tf.hx_state.wet+=2, tf.hx_y.feel+=5;}
	if(f.h_state.v>=1000){tf.r=20;} else{tf.r=f.h_state.v/50;}
	}

tf.r=Math.floor(tf.r)
tf.hx_s.feel+=tf.r, tf.hx_state.wet+=tf.r
if(tf.hx_act.act=='vp_move' || tf.hx_act.act=='vp_in'){tf.hx_y.feel+tf.r;}

tf.hx_act.last=tf.hx_act.act

[endscript][clearfix name=blank]
[jump/ tg=*act_menu cond="tf.hx_act.menu_reload=='need'"][jump/ tg=*h_def ]


[s]
;;絶頂
*exx
[set_feel][if exp="tf.hx_y.feel>=tf.hx_max.y_ex" ]
	（差不多到极限了…[p]
	[jump/ tg=*cum_in cond="sf.h_effect.fin_choice=='in'"]
	[jump/ tg=*cum_out cond="sf.h_effect.fin_choice=='out'"]
	[choice_xy][btn/ l=y tg=*cum_in gr=ch/in_cum ][btn/ tg=*cum_out gr=ch/out_cum ][s]
[endif]

[_]（希尔薇的身体跳得很大，震颤到了极点。[p]
[add_syl_ext][call storage="TF/H/Hx_text.ks" target="*tx_s_ex" ]
[eval exp="tf.hx_y.feel+=20" cond="tf.hx_mpt.ppp==1"][set_feel]
[if exp="tf.hx_y.feel>=tf.hx_max.y_ex" ]
	[_]（在希尔薇的顶峰[Hxn n=p]被勒紧，我也忍不住了。[p]
	[jump/ tg=*cum_in_ cond="sf.h_effect.fin_choice=='in'"]
	[jump/ tg=*cum_out_ cond="sf.h_effect.fin_choice=='out'"]
	[choice_xy][btn/ l=y tg=*cum_in_ gr=ch/in_cum ][btn/ tg=*cum_out gr=ch/out_cum ][s]
[endif]
[jump/ tg=*after_ex ]


*cum_out_
[eval exp="tf.hx_act.last='ex_y_after_s'" ]
*cum_out
[cm][clearstack][_]
[if exp="tf.hx_state.style=='mngr'" ]（达到极限的瞬间[Hxn n=p]抽出，在希尔薇的身体里吐出精液。
[elsif exp="tf.hx_state.style=='himn' || tf.hx_state.style=='back'" ]（达到极限的瞬间[Hxn n=p]抽出精液，吐出精液。[endif]
[p][p_show p=cum]
[if exp="tf.hx_s.feel>=tf.hx_max.s_ex || tf.hx_s.feel_v>=tf.hx_max.s_exv || tf.hx_s.feel_c>=tf.hx_max.s_exc || tf.hx_s.feel_b>=tf.hx_max.s_exb || tf.hx_s.feel_m>=tf.hx_max.s_exm" ]
	[add_syl_ext][p_cum_after]
	[call storage="TF/H/Hx_text.ks" target=*tx_ex_both ]
	（射精的同时希尔薇也吹起了潮水，从两个生殖器中喷出的体液在空中弹出。[p]
[elsif exp="tf.hx_act.last=='ex_y_after_s'" ][p_cum_after]
	[call storage="TF/H/Hx_text.ks" target="*tx_y_ex_after_s_out" ]
[else][p_cum_after]
	[call storage="TF/H/Hx_text.ks" target="*tx_y_ex_out" ]
[endif]
[eval exp="tf.hx_act.last='cum_out'" ]
[_]（被泼出的精液在余韵中颤抖的希尔薇的身体上闪闪发光…。[p]
[jump/ tg=*after_ex ]


*cum_in_
[eval exp="tf.hx_act.last='ex_y_after_s'" ]
*cum_in
[cm][clearstack][_]
[if exp="tf.hx_state.style=='mngr' || tf.hx_state.style=='back'" ]（狠狠地打了一下腰，发抖[Hxn n=iv]在…的深处注入精液。
[elsif exp="tf.hx_state.style=='himn'" ]（狠狠地抬起腰，发抖[Hxn n=iv]在…的深处注入精液。[endif]
[p][cum_in]
[if exp="tf.hx_s.feel>=tf.hx_max.s_ex || tf.hx_s.feel_v>=tf.hx_max.s_exv || tf.hx_s.feel_c>=tf.hx_max.s_exc || tf.hx_s.feel_b>=tf.hx_max.s_exb || tf.hx_s.feel_m>=tf.hx_max.s_exm" ]
	[add_syl_ext][call storage="TF/H/Hx_text.ks" target=*tx_ex_both ]
	（在射精的同时，希尔薇也在绝顶发抖[r]
	颤抖的肉褶[Hxn n=p]精液[p]
[elsif exp="tf.hx_act.last=='ex_y_after_s'" ]
	[call storage="TF/H/Hx_text.ks" target="*tx_y_ex_after_s_in" ]
[else]
	[call storage="TF/H/Hx_text.ks" target="*tx_y_ex_in" ][eval exp="tf.hx_s.feel+=20"]
[endif]
[set_feel]
[if exp="tf.hx_s.feel>=tf.hx_max.s_ex || tf.hx_s.feel_v>=tf.hx_max.s_exv" ]
（接受了流入子宫的精子的热的希尔薇的下腹部咯吱咯吱地颤抖。[p]
[add_syl_ext][call storage="TF/H/Hx_text.ks" target="*tx_s_ex" ][endif]
[jump/ tg=*after_ex ]


*after_ex
[Hx/ squi=00 exx=00][set_hc_mpt]
[jump/ st=H/Hx_text tg=*tx_end_s cond="tf.hx_s.ex_rest<=0"]
[jump/ st=H/Hx_text tg=*tx_end_y cond="tf.hx_y.ex_rest<=0"]
[eval exp="tf.hx_act.last='ex'" ][jump/ tg=*act_menu ]


;;サブメニュー
*2nd_act_menu
[cm][clearfix][c_mod n=win st=Hx/act_2nd ef2=00][eval exp="tf.r='non'" ]
[xy tip1=while_2nd_act ][btn/click tg=*return_to_act_menu wi=1350 hi=900 x=0 y=0 ex=1 ][btn_ex]

[xy y=4 tg1='*config_menu' tg2='*undress' preg1='menu/Hx/' ]
	[btn/ tg=*return_to_act_menu g=1 gr=tab_act sw=tab.main swm=act exp="f.tab.main='act'" x=1423 ]
	[btn/ tg=1 g=1 gr=tab_config sw=tab.main swm=config exp="f.tab.main='config', tf.r='jump_to_conf'" x=1531 ]
	[btn/ tg=*stop g=1 gr=quit x=1346 y=866]

[xy x=1355 y=123 x_add=122 y_add=40 preg1='menu/Hx/2nd_act/undress/'][btn/xy x=2]
	[if exp="f.d_pin.n!='non'" ][btn/ l=x tg=2 g=1 gr=pin exp="tf.r='pin'" ][else][add_x_blank][endif]
	[if exp="f.d_ribbon.n!='non'" ][btn/ l=x tg=2 g=1 gr=ribbon exp="tf.r='ribbon'" ][else][add_x_blank][endif]
	[if exp="f.d_hat.n!='non'" ][btn/ l=x tg=2 g=1 gr=acce exp="tf.r='hat'" ][else][add_x_blank][endif]
	[if exp="f.d_glasses.n!='non'" ][btn/ l=x tg=2 g=1 gr=glasses exp="tf.r='glasses'" ][else][add_x_blank][endif]
	[if exp="f.d_dress.type=='onp'" ]
		[if exp="f.d_dress.n!='non'" ][btn/ l=x tg=2 g=1 gr=dress_onp exp="tf.r='dress'" ][add_x_blank]
		[else][add_x_blank][add_x_blank][endif]
	[else]
		[if exp="f.d_dress_a.n!='non'" ][btn/ l=x tg=2 g=1 gr=dress_up exp="tf.r='dress_up'" ][else][add_x_blank][endif]
		[if exp="f.d_dress_b.n!='non'" ][btn/ l=x tg=2 g=1 gr=dress_btm exp="tf.r='dress_btm'" ][else][add_x_blank][endif]
	[endif]
[xy x_add=80 ]
;	[if exp="f.d_kata.n!='non'" ][btn/ l=x tg=2 g=1 gr=kata exp="tf.r='d_kata'" ][else][add_x_blank][endif]
	[if exp="f.d_under_b.n!='non'" ][btn/ l=x tg=2 g=1 gr=under_b exp="tf.r='under_b'" ][else][add_x_blank][endif]
	[if exp="f.d_socks.n!='non'" ][btn/ l=x tg=2 g=1 gr=socks exp="tf.r='socks'" ][else][add_x_blank][endif]

[xy x=1355 y=312 preg1='menu/Hx/2nd_act/'][btn/xy x=2]
[if exp="tf.hx_state.z_out>=1 && (f.d_dress.type=='onp' && f.d_dress.n=='non' || f.d_dress.type=='up' && f.d_dress_a.n=='non')" ]
	[btn/ l=x tg=*wipe_z g=1 gr=z_up exp="tf.hx_state.z_out=0" ][else][add_x_blank][endif]
[if exp="tf.hx_state.z_iout>=1" ][btn/ l=x tg=*wipe_z g=1 gr=z_btm exp="tf.hx_state.z_iout=0" ][else][add_x_blank][endif]

[if exp="f.hx_conf.light=='on'" ][btn/ y=366 tg=*light_switch g=1 gr=light_off exp="f.hx_conf.light='off'" ]
[else][btn/ y=366 tg=*light_switch g=1 gr=light_on exp="f.hx_conf.light='on'" ][endif]

[xy x=1355 y=441 y_add=38][btn/xy x=2]


[if exp="tf.hx_state.style!='himn'" ]
[btn/ l=y tg=*change_style g=1 gr=style_himn exp="tf.r2='himn'"][endif]
[if exp="tf.hx_state.style!='mngr'" ]
[btn/ l=y tg=*change_style g=1 gr=style_mngr exp="tf.r2='mngr'"][endif]
[if exp="tf.hx_state.style!='back'" ]
[btn/ l=y tg=*change_style g=1 gr=style_back exp="tf.r2='back'"][endif]

[btn/ y=531 tg=*return_to_act_menu g=1 gr=return ]
[s]



;;Hxコンフィグメニュ
*repeat_Hx
[clearstack][clearfix][c_mod n=win st=Hx/repeat ef2=00][eval exp="tf.role_name='role_repeat'" ]
[btn/fix gr=frame/role/repeat- st=sys tg=*repeat_Hx exp="f.g_config.repeat_mode='done'" x=1353 y=3 ]
[jump/ tg=*clickable_menu ]

*config_menu
[cm][clearfix][free_tx][c_mod n=win st=Hx/config ef2=00]
[eval exp="tf.role_name='config_tab'" ]
[xy y=4 tg1='*config_menu' preg1='menu/Hx/' ]
	[btn/fix tg=*return_to_act_menu g=1 gr=tab_act sw=tab.main swm=act exp="f.tab.main='act'" x=1423 ]
	[btn/fix tg=1 g=1 gr=tab_config sw=tab.main swm=config exp="f.tab.main='config', tf.r='jump_to_conf'" x=1531 ]
	[btn/fix tg=*stop g=1 gr=quit x=1346 y=866]

*config_menu_bace
[clearfix name='config_bace'][eval exp="tf.role_name='config_bace'" ]
[xy x=1355 y=83 x_add=120 y_add=39 tg1='*config_menu_bace' preg1='menu/Hx/config/' ][btn/xy x=2]
	[btn/fix l=x tg=1 g=1 gr=z_sel sw=h_effect.fin_choice swm=select exp="sf.h_effect.fin_choice='select'" ]
	[add_x_blank]
	[btn/fix l=x tg=1 g=1 gr=z_in sw=h_effect.fin_choice swm=in exp="sf.h_effect.fin_choice='in'" ]
	[btn/fix l=x tg=1 g=1 gr=z_out sw=h_effect.fin_choice swm=out exp="sf.h_effect.fin_choice='out'" ]

[xy x=1355 y=198 ][btn/xy]
	[btn/fix l=y tg=1 g=1 gr=act_part sw=Hx_sel_type swm=part exp="f.hx_conf.sel_type='part'" ]
	[btn/fix l=y tg=1 g=1 gr=act_action sw=Hx_sel_type swm=action exp="f.hx_conf.sel_type='action'" ]
[jump/ cond="tf.r!='jump_to_conf'" tg=*config_stop ]

[wt/]
*config_menu_bgm
[clearfix name='config_bgm'][eval exp="tf.role_name='config_bgm'" ]
[xy x=1368 y=596 x_add=16 sw1='config.bgm' tg1='*bgm_vol_set' preg1='menu/Hx/vol/'][btn/xy]
	[btn/fix l=x mo=2 tg=1 g=1 gr=0 sw=1 swm=0 exp="sf.config.bgm=0" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=2 sw=1 swm=0.2 exp="sf.config.bgm=0.2" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=5 sw=1 swm=0.5 exp="sf.config.bgm=0.5" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=10 sw=1 swm=1 exp="sf.config.bgm=1" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=20 sw=1 swm=2 exp="sf.config.bgm=2" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=30 sw=1 swm=3 exp="sf.config.bgm=3" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=40 sw=1 swm=4 exp="sf.config.bgm=4" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=50 sw=1 swm=5 exp="sf.config.bgm=5" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=60 sw=1 swm=6 exp="sf.config.bgm=6" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=70 sw=1 swm=7 exp="sf.config.bgm=7" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=80 sw=1 swm=8 exp="sf.config.bgm=8" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=90 sw=1 swm=9 exp="sf.config.bgm=9" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=100 sw=1 swm=10 exp="sf.config.bgm=10" ]
[xy x=1368 y=654 tg1='*bgm_se_set' sw1='config.se'][btn/xy]
	[btn/fix l=x mo=2 tg=1 g=1 gr=0 sw=1 swm=0 exp="sf.config.se=0" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=2 sw=1 swm=0.2 exp="sf.config.se=0.2" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=5 sw=1 swm=0.5 exp="sf.config.se=0.5" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=10 sw=1 swm=1 exp="sf.config.se=1" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=20 sw=1 swm=2 exp="sf.config.se=2" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=30 sw=1 swm=3 exp="sf.config.se=3" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=40 sw=1 swm=4 exp="sf.config.se=4" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=50 sw=1 swm=5 exp="sf.config.se=5" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=60 sw=1 swm=6 exp="sf.config.se=6" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=70 sw=1 swm=7 exp="sf.config.se=7" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=80 sw=1 swm=8 exp="sf.config.se=8" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=90 sw=1 swm=9 exp="sf.config.se=9" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=100 sw=1 swm=10 exp="sf.config.se=10" ]
[jump/ cond="tf.r!='jump_to_conf'" tg=*config_stop ]
;[if exp="tf.r!='jump_to_conf'" ][set_bgm_vol][set_se_vol][jump/ tg=*config_stop ][endif]


[wt/]
*config_menu_text
[clearfix name='config_text_sp'][eval exp="tf.role_name='config_text_sp'" ]
[xy x=1380 y=726 x_add=19 sw1='config.text_sp' tg1='*text_sp_set' preg1='menu/Hx/vol/'][btn/xy]
	[btn/fix l=x mo=2 tg=1 g=1 gr=10 sw=1 swm=1 exp="sf.config.text_sp=1" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=20 sw=1 swm=2 exp="sf.config.text_sp=2" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=30 sw=1 swm=3 exp="sf.config.text_sp=3" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=40 sw=1 swm=4 exp="sf.config.text_sp=4" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=50 sw=1 swm=5 exp="sf.config.text_sp=5" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=60 sw=1 swm=6 exp="sf.config.text_sp=6" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=70 sw=1 swm=7 exp="sf.config.text_sp=7" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=80 sw=1 swm=8 exp="sf.config.text_sp=8" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=90 sw=1 swm=9 exp="sf.config.text_sp=9" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=100 sw=1 swm=10 exp="sf.config.text_sp=10" ]
[xy x=1380 y=784 tg1='*auto_sp_set' sw1='config.auto_sp'][btn/xy]
	[btn/fix l=x mo=2 tg=1 g=1 gr=10 sw=1 swm=1 exp="sf.config.auto_sp=1" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=20 sw=1 swm=2 exp="sf.config.auto_sp=2" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=30 sw=1 swm=3 exp="sf.config.auto_sp=3" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=40 sw=1 swm=4 exp="sf.config.auto_sp=4" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=50 sw=1 swm=5 exp="sf.config.auto_sp=5" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=60 sw=1 swm=6 exp="sf.config.auto_sp=6" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=70 sw=1 swm=7 exp="sf.config.auto_sp=7" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=80 sw=1 swm=8 exp="sf.config.auto_sp=8" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=90 sw=1 swm=9 exp="sf.config.auto_sp=9" ]
	[btn/fix l=x mo=2 tg=1 g=1 gr=100 sw=1 swm=10 exp="sf.config.auto_sp=10" ]
[jump/ cond="tf.r!='jump_to_conf'" tg=*config_stop ]


*config_stop
[cm][clearstack]
[xy tip1=while_config ][btn/click tg=*return_to_act_menu wi=1350 hi=900 x=0 y=0 ex=1 ][btn_ex]
[eval exp="tf.r='stop'" ][s]

*return_to_act_menu
[c_mod n=win ef2=00]
[cm][clearstack][eval exp="f.act.system='return_from_config', f.tab.main='act'" ][jump/ tg=*act_menu ]

*wipe_z
;[Hx/ z_b=show z_a=show][jump/ tg=*act_menu_select ]
[Hx/ z_b=show z_a=show][jump/ tg=*2nd_act_menu ]
*light_switch
[Hx_light_ef][jump/ tg=*2nd_act_menu ]

*bgm_vol_set
[cm][set_bgm_vol][jump/ tg=*config_menu_bgm ]
*bgm_se_set
[cm][set_se_vol][jump/ tg=*config_menu_bgm ]
*auto_sp_set
[cm][set_auto_speed][jump/ tg=*config_menu_text ]
*text_sp_set
[cm][set_text_speed][jump/ tg=*config_menu_text ]


*xr_switch
[cm][if exp="sf.h_effect.xr==0" ][eval exp="sf.h_effect.xr=1" ][Hx/ xr=show cond="tf.hx_mpt.ppp==1" ]
[else][eval exp="sf.h_effect.xr=0" ][Hx/ xr=00][endif][jump/ tg=*act_menu_select_btm ]
*ef_switch
[cm][if exp="sf.h_effect.ef==0" ][eval exp="sf.h_effect.ef=1" ][set_Hx_body][hx/shake]
[else][eval exp="sf.h_effect.ef=0" ][Hx/ ef=00 heart=00][endif][jump/ tg=*act_menu_select_btm ]
*tx_switch
[cm][if exp="sf.h_effect.tx==0" ][eval exp="sf.h_effect.tx=1" ][Hx/ tx=&tf.hx_img.tx]
[else][eval exp="sf.h_effect.tx=0" ][Hx/ tx=00][endif][jump/ tg=*act_menu_select_btm ]
;[jump/ tg=*config_menu_bace ]

*act_menu_select_top
[eval exp="f.act.system='act_menu_top'" ][jump/ tg=*act_menu_top ]
*act_menu_select_mid
[eval exp="f.act.system='act_menu_mid'" ][jump/ tg=*act_menu_mid ]
*act_menu_select_btm
[eval exp="f.act.system='act_menu_btm'" ][jump/ tg=*act_menu_btm ]
*act_menu_select_stop
[cm][clearstack][eval exp="f.act.system=0" ][jump/ tg=*clickable_menu ]

*act_menu_select
[cm][clearstack][eval exp="f.act.system=1, f.tab.main='act'" ][jump/ tg=*act_menu ]

*blank
[return][s]

*undress
[cm][eval exp="tf.hx_act.act='undress'" ]
;[if exp="tf.hx_mpt.ppp==1 && (tf.r=='dress' || tf.r=='dress_btm')" ][Hx/man you=ppp syl=0][p_show p=off][endif]
[if exp="tf.hx_mpt.ppp==1 && (tf.r=='dress' || tf.r=='dress_up' || tf.r=='dress_btm')" ][p_show p=off][endif]
[set_black][Hx/man you=left syl=leg ][Hx/man you=right syl=leg][Hx/man you=m_mouth syl=non][set_hc_mpt][stop_se]

[if exp="tf.r=='dress' || tf.r=='dress_up'" ]
	[eval exp="f.d_eri.n='non', f.d_eri.sub_c=0, f.d_eri.sub_p=0, f.d_eri.type='non'" ][eri_set][endif]

[if exp="tf.r=='dress'" ][eval exp="f.d_dress.n='non', f.d_dress.sub_c=0, f.d_dress.slv=0, f.d_dress.h='xxx'" ][dress_set]
[elsif exp="tf.r=='dress_up'" ][eval exp="f.d_dress_a.n='non', f.d_dress_a.sub_c=0, f.d_dress_a.slv=0, f.d_dress_a.h='xxx', f.d_dress_a.sub_p=0" ][dress_set]
[elsif exp="tf.r=='dress_btm'" ][eval exp="f.d_dress_b.n='non', f.d_dress_b.sub_c=0, f.d_dress_b.h='xxx', f.d_dress_b.type='non'" ][dress_set]
;[elsif exp="tf.r=='neck'" ][eval exp="f.d_eri.n='non', f.d_dress_b.sub_c=0, f.d_dress_b.type='non'" ][eri_set]
[elsif exp="tf.r=='pin'" ][eval exp="f.d_pin.n='non', f.d_pin.sub_c=0, f.d_pin.type='nr'" ][f_hair_set]
[elsif exp="tf.r=='ribbon'" ][eval exp="f.d_ribbon.n='non', f.d_ribbon.type='nr', f.d_ribbon.sub_c=0" ][hair_set]
[elsif exp="tf.r=='glasses'" ][eval exp="f.d_glasses.n='non', f.d_glasses.sub_c=0" ][glasses_set]
[elsif exp="tf.r=='under_b'" ][eval exp="f.d_under_b.n='non', f.d_under_b.sub_c=0" ][under_b_set]
[elsif exp="tf.r=='hat'" ][eval exp="f.d_hat.n='non', f.d_hat.type='non', f.d_hat.sub_c=0" ][hat_set]
[elsif exp="tf.r=='socks'" ][eval exp="f.d_socks.n='non', f.d_socks.sub_c=0, f.d_hat.type='non'" ][socks_set]
[endif][wt/ t=100][xf/ m=en e=def][hide_black]
[jump/ tg=*2nd_act_menu ]

;体位変更
*change_style
[cm][_][p_show p=off cond="tf.hx_mpt.ppp==1"]
[clearfix][black][set_black][stop_se]
[eval exp="tf.hx_act.act='change_style', tf.hx_state.z_iout=0, tf.hx_state.style=tf.r2" ]
[_]（希尔薇
[if exp="tf.hx_state.style=='himn'" ]跨过膝盖
[elsif exp="tf.hx_state.style=='back'" ]我站在床的深渊里背对着他。
[elsif exp="tf.hx_state.style=='mngr'" ]仰面躺在床上…。[endif][p_]
[jump/ tg=*show_Hx ]


*stop
[cm][_][stop_se][free_tx][p_show p=off cond="tf.hx_mpt.ppp==1"]
[Hx/man you=left syl=leg][Hx/man you=right syl=leg][Hx/man you=m_mouth syl=non]
[jump/ st=H/Hx_text tg=*tx_stop ]

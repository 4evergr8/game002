;;以下改行禁止。save行数固定
*save
[showsave]
;
;
;
;
;
;
[macro name="reload_macro"][call storage="ALL/pre/macro_bace.ks" ]
[call storage="TF/pre/macro_TF.ks" ][call storage="TF/pre/set_show.ks" ][endmacro]

[eval exp="tf.r=0" ]
[if exp="f.g_state.ver!=sf.system_ver.TF" ]
#系统
	正在更新新版本的信息…。[reload_macro]
	[iscript]
	f.g_info.ks='TF/sys/system.ks', f.bgm.plays=0, f.g_info.fol='TF/'
	f.g_info.playing='TeachingFeeling', sf.playing='TeachingFeeling'
	[endscript]
	[call storage=TF/pre/exp.ks target=*update_exp ]
	[load_d_info_all]
	[title name="TeachingFeeling_ver4.0.0" ]
	[eval exp="tf.r='reload'" ]
[endif]
;開発用
;[reload_macro]


[game_ver_reload re=load]
[if exp="tf.r=='reload'" ][return_bace]
[else]
	[hide_message_w][chara_ptext name='=システム='][delay speed=1]
	[r]--------------数据加载--------------[resetdelay][cm][show_message_w][return_menu]
[endif]

[s]


;;初期設定&変数定義
*first
[clearstack][title name="TeachingFeeling_ver4.0.0" ]
[call storage="TF/pre/macro_TF.ks" ][call storage="TF/pre/set_show.ks" ]
[c_mod n=black ][chara_show name="black" layer=1 time="0" wait="true" left="-1" zindex=500 ]

;消息层设置
[if exp="sf.system_ver.ArtBook>=1" ][else][mov_logo][endif]
[layopt layer="message0" visible=false][reset_frame][stop_keyconfig]

[iscript]
f.g_info.ks='TF/sys/system.ks', f.bgm.plays=0, f.g_info.fol='TF/'
f.g_info.playing='TeachingFeeling', sf.playing='TeachingFeeling'
[endscript]
[dialog_set][saveload_ex_set]
[jump/ st=sys/system tg=*title ]


*first_exp
[iscript]
;設定
f.g_state ={ awake:'awake', m_shape:'', m_move:'', y_height:''}
f.g_state.ver=sf.system_ver.TF
f.g_config = {H_setting:1, key_shortcut:1, d_daily_change:0, d_col_btn:'preset', 
			touch_way:'touch', room_bgm:'SG', x_speak:0, repeat_mode:0,
			pourri_use:'non', pourri_time:1, touch_command:0, touch_direct:1}	
f.fol_info= { fol:'non', fol_h:'non', pict_cap:'non', scene:'non', scene_h:'non' }
f.sel={}, f.temp={ }

f.hx_select= {man_act:'hands', rb_act:'touch', lb_act:'touch', c_act:'touch', v_act:'finger', v_spd:'normal'}
f.hx_conf= {tx_word:'sf', sel_type:'part', lock:0, light:'on' }
f.name ={ call:'主人', c_kana:'多谢款待', name:'未設定', kana:'未設定', n_add:'さん', sub:'主人人様', s_kana:'多谢款待', type:'other' }
f.name_h ={ call:'主人', c_kana:'多谢款待', n_add:'さん',  sub:'主人', s_kana:'多谢款待', type:'other' }

f.Hxn_v=[3,'性器','秘所','秘部',''], f.Hxn_iv=[3,'中','膣','肉壁',''], f.Hxn_c=[2,'阴道','クリ','',''], f.Hxn_u=[1,'子宮','','','']
f.Hxn_b=[1,'胸','','',''], f.Hxn_m=[1,'口','','',''], f.Hxn_x=[2,'行為','性交','性交',''], f.Hxn_p=[2,'竿','物品','','']
f.Hxn_z=[1,'精液','','',''], f.Hxn_o=[2,'口淫','口交','',''], f.Hxn_w=[2,'愛液','蜜','',''], f.Hxn_ex=[1,'絶頂','','','']
f.Hxn_num={v:0, iv:0, c:0, u:0, b:0, m:0, x:0, p:0, z:0, o:0, w:0, ex:0 }
f.Hxns_v=[0,'','','',''], f.Hxns_iv=[1,'中','','',''], f.Hxns_c=[0,'','','',''], f.Hxns_u=[0,'','','',''], f.Hxns_b=[0,'','','','']
f.Hxns_x=[0,'','','',''], f.Hxns_p=[0,'','','',''], f.Hxns_z=[0,'','','',''], f.Hxns_o=[0,'','','',''], f.Hxns_w=[0,'','','','']
f.Hxns_m=[0,'','','',''], f.Hxns_ex=[0,'','','','']
f.call_ct={v:0, p:0, z:0, x:0, iv:0, c:0, u:0, b:0, o:0, w:0, ex:0 }


f.ondr_tx_a1=[''], f.ondr_tx_b1=[''], f.ondr_tx_c1=[''],
f.ondr_tx_a2=[''], f.ondr_tx_b2=[''], f.ondr_tx_c2=[''],
f.ondr={ when:'non', sw_a:0, sw_b:0, sw_c:0, a1_max:0, a2_max:0, b1_max:0, b2_max:0, c1_max:0, c2_max:0 }

;初始事件进度管理
f.intro ={ trust:0, ex_trust:0, intro_t:1, nade_t:1, hiroba_t:1, flag:0, cafe:0, d_shop:0, wear:0, rape:0}

;状态
f.state = {love:0, lust:0, step:1, sexless:0, mood:'def' }

;１日限定変数
f.act = {time:0, last:0, system:0, wine:0, lust:0, }
f.temp_flg = {jealous:0, bed_agree:0, drunk:0, lust_c:0, commu_c:0, sexless_c:0, }
f.daily= { talk:0, nade:0, act:'non', communicate:0, out:0, d_shop:0, forest:0,
			market:0, hiroba:0, tea:0, work:0, d_shop_n:0, lunch:0}

;持有物品
f.item= { miyage:'non', p_wine:0, book:0, 
	flower_p:0, flower_b:0, aroma_p:0, aroma_b:0, popuri_p:0, popuri_b:0 }


;回数記録
f.count= { day:1, talk:0, nade:0, out:0, town:0, forest:0, market:0,
			cafe:0, dinner:0, tea:0, wine:0, d_shop_n:0, d_shop:0, Aur_t:0, Neph_t:0, Ferr_t:0 }
f.sub_chara= { Aur:0, Neph:0, Ferr:0, Kcas:0 }
f.commu={}
;食事
f.count_cafe={}, f.count_dinner={}, f.count_tea_snack={}
;H回数記録
f.h_count= { ext:0, cum:0, kake:0, drink:0, oral:0, kiss:0, d_kiss:0, ext_b:0, ext_v:0, ext_c:0, ext_m:0 }
f.x_count= { sex:0, forest:0, work:0, drunk:0, sleep:0, self:0 }
;oral
;感度
f.h_state= { m:0, b:0, c:0, v:0 }
;H回想
f.h_memory= { xxx1:0, xxx2:0, xxx3:0, morning:0, forest:0, mouth:0, nurse:0, drunk:0, missional:0}

;現在の服
;d_dress n=衣装名, type=(onp/up), sub_c=色数(1~3), sub_p=３色目(0/a~c), slv=袖(なし=0/半1色=0.5/長1色=1/半2色=1.5/長2色=2)
;d_dress_b type=(ls/ss/p)
;d_eri type=(neck/eri/ep), sub_p=３色目(0/a~c)
f.d_dress={n:'boro', type:'onp', sub_p:'0', sub_c:0, c1:2, c1b:20, c2:2, c2b:0, c3:7, c3b:0, slv:0, h:'def' }
f.d_dress_a={n:'first', type:'non', sub_p:'0', sub_c:3, c1:7, c1b:0, c2:2, c2b:20, c3:7, c3b:0, slv:1, h:'def' }
f.d_dress_b={n:'first', type:'ls', sub_c:3, c1:2, c1b:20, c2:7, c2b:0, c3:7, c3b:0, h:'def' }
f.d_eri={n:'non', type:'n', sub_p:'0', sub_c:0, c1:7, c1b:0, c2:7, c2b:0, c3:7, c3b:0 }
f.d_kata={n:'non', type:'n', sub_p:'0', sub_c:0, c1:7, c1b:0, c2:7, c2b:0, c3:7, c3b:0 }
f.d_under_b={n:'non', type:'n', sub_c:0, c1:7, c1b:0, c2:7, c2b:0, h:'xxx' }
f.d_under_p={n:'non', type:'n', sub_c:0, c1:7, c1b:0, c2:7, c2b:0, h:'xxx' }
f.d_socks={n:'non', type:'s', sub_c:0, c1:7, c1b:0, c2:7, c2b:0 }
f.d_body={n:'non', type:'n', sub_c:0, c1:7, c1b:0, c2:7, c2b:0 }
f.d_gloves={n:'non', type:'n', sub_c:0, c1:7, c1b:0, c2:7, c2b:0 }
f.d_hat={n:'non', type:'n', sub_c:0, c1:7, c1b:0, c2:7, c2b:0 }
f.d_pin={n:'non', type:'nr', sub_c:0, c1:2, c1b:10, c2:2, c2b:10 }
f.d_ribbon={n:'non', type:'nr', sub_c:0, c1:2, c1b:10, c2:7, c2b:0 }
f.d_glasses={n:'non', type:'n', sub_c:0, c1:7, c1b:20, c2:7, c2b:0 }
f.d_color={dress:1, dress_b:1, eri:1, kata:1, hair:1, glasses:1, under:1, socks:1, pin:1, ribbon:1, hat:1, color:1}

f.d_all_color={sub_c:3, c1:7, c1b:0, c2:7, c2b:0, c3:7, c1b:0, c2b:0, c3b:0 }

;服/所持
f.got_dress1={ }, f.got_dress2={ }, f.got_dress3={ }
f.got_dress1x={ }, f.got_dress2x={ }, f.got_dress3x={ }
f.got_pin={ }, f.got_ribbon={ }, f.got_glasses={ }
f.got_head={ }, f.got_eri={ }, f.got_kata={ }, f.got_hat={ }
f.got_gloves={ }, f.got_socks={ }
f.got_under={ }
f.got_under_x={ }

;トーク記録
f.t_market=[], f.t_hiroba=[], f.t_forest=[], f.t_work=[]
f.t_tea=[], f.t_wine_a=[], f.t_wine_b=[], f.t_wine_c=[]
f.t_wine_head_t=[], f.t_wine_head_dlust=[]
f.t_wine_head_lust=[], f.t_wine_head_drunk=[]
f.t_room_a=[], f.t_room_b=[], f.t_room_c=[]
f.t_nade_a=[], f.t_nade_b=[], f.t_nade_c=[]
f.t_Nephy=[], f.t_Ferrum=[], f.t_Aurelia=[]

;着せ替えコーディネート
f.sav_dress_n=[], f.sav_dress_sub_p=[], f.sav_dress_type=[]
;, f.sav_dress_sub_c=[]
f.sav_dress_c1=[], f.sav_dress_c2=[], f.sav_dress_c3=[]
f.sav_dress_c1b=[], f.sav_dress_c2b=[], f.sav_dress_c3b=[]
;f.sav_dress_slv=[], f.sav_dress_h=[]
f.sav_dressa_n=[], f.sav_dressa_sub_p=[]
;, f.sav_dressa_type=[], f.sav_dressa_sub_c=[]
f.sav_dressa_c1=[], f.sav_dressa_c2=[], f.sav_dressa_c3=[]
f.sav_dressa_c1b=[], f.sav_dressa_c2b=[], f.sav_dressa_c3b=[]
;f.sav_dressa_slv=[], f.sav_dressa_h=[]
f.sav_dressb_n=[]
;, f.sav_dressb_type=[], f.sav_dressb_h=[], f.sav_dressb_sub_c=[]
f.sav_dressb_c1=[], f.sav_dressb_c2=[], f.sav_dressb_c3=[]
f.sav_dressb_c1b=[], f.sav_dressb_c2b=[], f.sav_dressb_c3b=[]
f.sav_eri_n=[], f.sav_eri_sub_p=[]
;, f.sav_eri_type=[], f.sav_eri_sub_c=[]
f.sav_eri_c1=[], f.sav_eri_c2=[], f.sav_eri_c3=[]
f.sav_eri_c1b=[], f.sav_eri_c2b=[], f.sav_eri_c3b=[]
f.sav_kata_n=[], f.sav_kata_sub_p=[]
;, f.sav_kata_type=[], f.sav_kata_sub_c=[]
f.sav_kata_c1=[], f.sav_kata_c2=[], f.sav_kata_c3=[]
f.sav_kata_c1b=[], f.sav_kata_c2b=[], f.sav_kata_c3b=[]
f.sav_socks_n=[]
;, f.sav_socks_sub_c=[], f.sav_socks_type=[]
f.sav_socks_c1=[], f.sav_socks_c1b=[], f.sav_socks_c2=[], f.sav_socks_c2b=[]
f.sav_under_b_n=[]
;, f.sav_under_b_h=[], f.sav_under_b_sub_c=[]
f.sav_under_b_c1=[], f.sav_under_b_c1b=[], f.sav_under_b_c2=[], f.sav_under_b_c2b=[]
f.sav_under_p_n=[]
;, f.sav_under_p_h=[], f.sav_under_p_sub_c=[]
f.sav_under_p_c1=[], f.sav_under_p_c1b=[], f.sav_under_p_c2=[], f.sav_under_p_c2b=[]
f.sav_hat_n=[]
;, f.sav_hat_type=[], f.sav_hat_sub_c=[]
f.sav_hat_c1=[], f.sav_hat_c1b=[], f.sav_hat_c2=[], f.sav_hat_c2b=[]
f.sav_pin_n=[], f.sav_pin_type=[], f.sav_pin_sub_c=[]
f.sav_pin_c1=[], f.sav_pin_c1b=[], f.sav_pin_c2=[], f.sav_pin_c2b=[]
f.sav_ribbon_n=[], f.sav_ribbon_type=[], f.sav_ribbon_sub_c=[]
f.sav_ribbon_c1=[], f.sav_ribbon_c1b=[], f.sav_ribbon_c2=[], f.sav_ribbon_c2b=[]
f.sav_glasses_n=[]
;, f.sav_glasses_type=[], f.sav_glasses_sub_c=[]
f.sav_glasses_c1=[], f.sav_glasses_c1b=[], f.sav_glasses_c2=[], f.sav_glasses_c2b=[]

f.d_sav_n=[], f.sav_auto=[], f.sav_color=[]
;for (var i=0; i<101; i++) f.d_sav_n[i]='ｺｰﾃﾞｨﾈｰﾄ' + i, f.sav_color[i]='black';
for (var i=0; i<101; i++) f.d_sav_n[i]='ｺｰﾃﾞｨﾈｰﾄ' + i, f.sav_color[i]=0;
[endscript]
[return]


;[jump/ st=sys/system tg=*first_config ]



;;序盤スキップ
*skip_intro
[cm]
[iscript]
;delete f.intro;
;f.state.step=6, 
f.state.love=180, f.count_cafe= {pancake:3, cake:2}
f.count= {day:36, talk:100, nade:60, out:8, town:8, forest:0, market:0, cafe:5, dinner:0, tea:0, wine:0, d_shop_n:0, d_shop:0}
f.d_dress= {n:'boro', type:'up', sub_c:0, sub_p:0, c1:2, c2:2, c3:7, c1b:20, c2b:0, c3b:0, slv:0, h:'def'}	
f.d_dress_a= {n:'first', type:'non', sub_c:3, sub_p:0, c1:7, c2:2, c3:7, c1b:0, c2b:20, c3b:0, slv:1}	
f.d_dress_b= {n:'first', c1:2, c2:7, c3:7, c1b:20, c2b:0, c3b:0 }
f.d_eri= {n:'first__a', c1:7, c2:2, c3:2, c1b:0, c2b:20, c3b:10}
;f.d_dress_a= {n:'first', type:'non', sub_c:3, sub_p:0, c1:7, c2:2, c3:7, c1b:0, c2b:20, c3b:0, slv:1, h:'def'}	
;f.d_dress_b= {n:'first', type:'ls', sub_c:3, c1:2, c2:7, c3:7, c1b:20, c2b:0, c3b:0, h:'def'}	
;f.d_eri= {n:'eri/first', type:'eri', sub_c:2, sub_p:'a', c1:2, c2:7, c3:7, c1b:20, c2b:0, c3b:0}	
f.d_under_b= {n:'simple', type:'n', sub_c:1, c1:7, c2:7, c1b:0, c2b:0, h:'def'}	
f.d_under_p= {n:'simple', type:'n', sub_c:1, c1:7, c2:7, c1b:0, c2b:0, h:'def'}	
f.d_socks= {n:'simple_s', type:'s', sub_c:1, c1:7, c2:7, c1b:0, c2b:0}	
f.d_pin= {n:'thin', type:'single', sub_c:2, c1:2, c2:2, c1b:10, c2b:10}
f.d_ribbon= {n:'thin', type:'poney', sub_c:1, c1:2, c2:7, c1b:10, c2b:0}	

if(f.g_config.H_setting>=1){f.h_count.ext=1, f.h_count.cum=1, f.h_count.ext_v=1, f.h_count.kiss=1, f.x_count.sex=1;}
if(f.g_config.H_setting==1){f.state.lust=1;}
else if(f.g_config.H_setting==2){f.state.lust=5;}
else if(f.g_config.H_setting==3){f.state.lust=10;}
else if(f.g_config.H_setting==4){f.state.lust=50;}

if(tf.first_conf.book==1){f.item.book=1;}
if(tf.first_conf.flower_p==1){f.item.flower_p=100;}
if(tf.first_conf.flower_b==1){f.item.flower_b=100;}

if(tf.first_conf.memory==1){f.x_count.self=2, f.h_memory= {xxx1:1, xxx2:1, xxx3:1, morning:3, forest:3, mouth:3, nurse:2, drunk:2, missional:1}}

;服購入
if(tf.first_conf.dress==1){
	f.got_dress1={ribbon:1, onepiece:1, seiso:1, wafuku:1, maid:1, nurse:1, peacock:1, yin:1, gara_onp:1, reijou:1, alice:1}
	f.got_dress2={hanako:1, blazer:1, sailor_l:1, sailor_s:1, Yshirt_l:1, Yshirt_s:1}
	f.got_dress3={skirt_s:1, skirt_l:1, skirt_check_s:1, skirt_check_l:1, genes_l:1, genes_m:1, pants_m:1}
	f.got_pin={egg:1, flower:1, star:1, heart:1, clover:1, skull:1}
	f.got_ribbon={bold:1, bees:1, shsh:1}
	f.got_glasses={round:1, rectangle:1, half:1, square:1, circle_l:1, circle_s:1}
	
;	f.got_head={xxxxxxx:1, xxxxxxx:1, xxxxxxx:1}
	f.got_eri={Y_eri:1, frill:1, acc_bold:1, acc_juel:1, acc_tie_s:1, acc_thin:1, hanako:1}
	f.got_kata={epr:1, muff:1, muff_check:1, peacock:1}

	f.got_hat={kemo:1, catu:1, catu_stripe:1, casquette:1, silk:1, race:1}
;	f.got_gloves={xxxxxxx:1, xxxxxxx:1, xxxxxxx:1}
	f.got_socks={simple_m:1, simple_l:1, stripe:1, suke_l:1}
	f.got_under={stripe:1, marble:1, race:1, swim_m:1, swim_m_smsm:1, race_xs:1}
}

if(tf.first_conf.dress_x==1){
	f.got_dress2x={bdoll_a:1, bdoll_b:1}
	f.got_dress3x={genes_s:1}
	f.got_under_x={swim_s:1, swim_xs:1, swim_s_smsm:1, race_xs:1}
}


;Aur_t:0,Neph_t:0,Ferr_t:0	
[endscript]
[load_d_info_dress][load_d_info_dress_b][load_d_info_eri]
[jump/ st=talk/room tg=*intro_step6 ]



;;ver-up追加
*update_exp
[iscript]
;if(f.h_count.ext_v>=0){;}else{f.h_count.ext_v=0;}
;if(f.h_count.ext_b>=0){;}else{f.h_count.ext_b=0;}
;if(f.h_count.ext_c>=0){;}else{f.h_count.ext_c=0;}
;if(f.h_count.ext_m>=0){;}else{f.h_count.ext_m=0;}
;if(f.h_count.d_kiss>=0){;}else{f.h_count.d_kiss=0;}
if(sf.system_ver.TF<=4.4000){
	f.got_dress2x={}, f.got_dress3x={}, f.got_under_x={}
	f.hx_select= {man_act:'hands', rb_act:'touch', lb_act:'touch', c_act:'touch', v_act:'finger', v_spd:'normal'}
	f.hx_conf= {tx_word:'sf', sel_type:'part', lock:0, light:'on' }
	f.Hxn_v=[3,'性器','秘所','秘部',''], f.Hxn_iv=[3,'中','膣','肉壁',''], f.Hxn_c=[2,'阴道','クリ','',''], f.Hxn_u=[1,'子宮','','','']
	f.Hxn_b=[1,'胸','','',''], f.Hxn_m=[1,'口','','',''], f.Hxn_x=[2,'行為','性交','性交',''], f.Hxn_p=[2,'竿','物品','','']
	f.Hxn_z=[1,'精液','','',''], f.Hxn_o=[2,'口淫','口交','',''], f.Hxn_w=[2,'愛液','蜜','',''], f.Hxn_ex=[1,'絶頂','','','']
	f.Hxn_num={v:0, iv:0, c:0, u:0, b:0, m:0, x:0, p:0, z:0, o:0, w:0, ex:0 }
	f.Hxns_v=[0,'','','',''], f.Hxns_iv=[1,'中','','',''], f.Hxns_c=[0,'','','',''], f.Hxns_u=[0,'','','',''], f.Hxns_b=[0,'','','','']
	f.Hxns_x=[0,'','','',''], f.Hxns_p=[0,'','','',''], f.Hxns_z=[0,'','','',''], f.Hxns_o=[0,'','','',''], f.Hxns_w=[0,'','','','']
	f.Hxns_m=[0,'','','',''], f.Hxns_ex=[0,'','','','']
	f.call_ct={v:0, p:0, z:0, x:0, iv:0, c:0, u:0, b:0, o:0, w:0, ex:0 }
	f.t_forest=[]
	}
[endscript]

;ver3.1{
;[if exp="f.g_state.ver>=3100" ][else]ver情報更新中…[wt5]
;[name_call_set][dialog_set gr=TF][endif]
;[if exp="f.ver<=2500" ][eval exp="f.ver=2510" ]
;
;[jump storage="TF/sys/system.ks" target="*reload" ]
;[if exp="f.ver<=2350" ][eval exp="f.ver=2351" ]
;[jump storage="TF/sys/system.ks" target="*reload" ][endif]
;[eval exp="f.g_state.ver=sf.system_ver.TF" ][name_call_set]
;[title name="TeachingFeeling_ver4.β.16" ]
[return]




[return]


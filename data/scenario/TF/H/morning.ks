
*morning_decide
[cm][call storage=TF/H/Hcg_set.ks target="*ktn_set" ]
[if exp="tf.hist_mode==11" ][jump/ tg=*ktn_a_cg ]
[elsif exp="tf.hist_mode==12" ][jump/ tg=*ktn_b_cg ]
[elsif exp="tf.hist_mode==13" ][jump/ tg=*ktn_c_cg ][endif]
[show_message_w]
[if exp="tf.hist_mode==3" ][jump/ tg=*ktn_xxx ]
[elsif exp="tf.hist_mode==2" ][jump/ tg=*ktn_xx ]
[elsif exp="tf.hist_mode==1" ][jump/ tg=*ktn_x ][endif]

*end_cg
[cm][return_memory]


;;導入
*ktn_morning
[cm][black][stop_bgm]
[_]（早上醒来时、我发现希尔薇已经先一步起床了。[p]
…[p]
（离开居室后我在厨房看到了希露薇的背影。[p]
（她似乎正在准备早餐、[r]
[if exp="f.d_dress.type=='onp' && f.d_dress.h=='xxx' || f.d_dress.type=='up' && f.d_dress_a.h=='xxx' && f.d_dress_b.h=='xxx'" ]
她身上除了围裙以外什么衣服都没穿。。
[elsif exp="f.d_dress.type=='up' && f.d_dress_a.h=='xxx'" ]
她只穿了那件薄的室内装。
[elsif exp="f.d_dress.type=='up' && f.d_dress_b.h=='xxx'" ]
她身上什么都没穿。
[endif][p]
（前倾着手伸向厨房里面时的希尔薇[r]
露出的那可爱的小屁股进入视线之中。[p]
[choice_xy][btn/ l=y tg=*ktn_hold gr=ch/hold ][btn/ tg=*ktn_hi gr=ch/call ][s]


*ktn_hi
[cm][eval exp="f.act.time=0" ]
（我抑制住了性冲动用理性向希露薇招呼。[p]
[set_stand][f/ m=sn][bg/ g=bg/ st=room][show_stand]
[syl][m/re]啊、早上好、[name]。[lr_]
[f/ e=smile m=s]我在准备早餐、请稍等一下。[p_]
[black]…[p][bgm_room][return_bace]

;;分岐
*ktn_hold
[cm][bgm st=MT][save_dress]
[call storage=TF/H/Hcg_set.ks target="*ktn_set" ]
[if exp="f.h_memory.morning>=2 && (f.state.lust>=600 || f.state.mood=='lust')" ][jump/ tg=*ktn_xxx ]
[elsif exp="f.h_memory.morning>=1 && (f.state.mood=='calm' && f.state.lust>=600 || f.state.lust>=200 && f.state.mood!='calm' || f.state.mood=='lust' )" ][jump/ tg=*ktn_xx ]
[else][jump/ tg=*ktn_x ][endif]

;;シーン1
*ktn_x
[Hx/ev face=a1 ef=1-1 p=p_show body=0 hand_L=leg hand_R=leg ][set_h_cg_role][hide_black]
	[syl]哎！?[p]
[Hx/ev face=a2 ef=00 ]
	啊[name]。你起來…了啊。[p]
;	[_]（看到了希露薇魅力的背面让我[Hxn n=p]忍不住把阴茎贴到了她的后面。[p]
	[_]（我现在在做早饭[Hxn n=p]那个你...。[p]
	[syl]朝食の準備をしているんですけど、その…。[p]
	呃、那个。[lr]
	难道说…是要…[Hxns n=x ex=1 ]吗…在这里?[p]
[Hx/ev face=a3 ]
	…那好请、请…使用。[p]
	[_]（感到羞耻的同时她把屁股向上翘了一起来。[p]
	（没有准备的希露薇似乎[Hxn n=p]也因为阴茎持续摩擦着屁股而感到兴奋。[p]
（[Hxn n=v]私处开始渐渐湿润起来。[p]
[Hx/ev face=a4 p=v xr=0 tear=1 se=1-4 tx=1-4 ef=1-4 ][se/ st=s-wet1 ]
	[syl]嗯…啊[p]
	[_]（我猛力的把[Hxn n=v]阴茎[Hxn n=p]插入了她的小腹中。[p]
[Hx/ev face=a5 tx=00 se=1-5 ef=1-5 ]
	[syl]呼哦〜。[p]
	[_]（希露薇也慢慢的[Hxn n=p]接受了阴茎。[p]
	（看來可以慢慢的提高速度了。[p]
[Hx/ev face=a6 body=1 p=vm xr=0m exx=1 se=1-6 tx=1-6 ef=1-6 ][se/ l=t st=l-wet1 ]
	（我慢慢的开始享受她的子宫。[p]
	[syl]嗯…唔！呀……[Hxns n=p ex=1 y=の]♡[p]
	[_]（似乎是因为她的腿合上了[Hxn n=v]所以感觉比平时更紧了。[p]
	（[Hxn n=iv]每次我的阴茎在希露薇阴道内的摩擦[r]
	都让希露薇拼命的不叫出声音来。[p]
	[syl]…唔！嗯…♡咿！♡[p]
	（我继续慢慢地加快插抽运动。[p]
[Hx/ev face=a7 body=2 p=vmm xr=0mm tear=2 exx=2 tx=1-7 ef=1-7 ][se/ l=t st=l-wet2 ]
	[syl]咕！♡…咿嗯！！♡[p]
	[_]（已经润湿了的希露薇的下腹部[Hxn n=w]开始溢出爱液顺着她的脚流到了地面。[p]
	（活塞运动的频率已经进行地非常快、[r]
	[Hxn n=w]被爱液润湿的腰和臀部相撞发出了愉快的声音。[p]
	（开始发出呼吸的娇喘声[r]
	以及希尔薇无法抑制的淫叫声开始在屋里回响。[p]
[Hx/ev face=a8 body=3 se=1-8 tx=1-8 ef=1-8 ][se/ l=t st=l-wet3 ]
	[syl]啊！[name h=1]っ！！♡♡我、已经！♡[p]
	[_]（希尔薇的膝盖颤个不停就像开始要无法支撑她的体重一样。[p]
[Hx/ev face=a9 exx=3 p=v z_b=1 xr=1 se=1-9 tx=1-9 ef=1-9 ][se/ st=fin1 ]
	[syl]嗯唔…！！[if exp="f.g_config.x_speak==1" ][Hxns n=v ex=1 ]高潮了[endif]！♡！♡♡[p]
	[_]（我摆腰的同时使劲摇晃希露薇的身体[r]
	把精子流入了[Hxn n=z]她子宫的最深处。[p]
[Hx/ev face=a10 se=00 tx=1-10 ef=1-10 ]
	[syl]哈ー…♡哈ー♡[p]
[jump/ tg=*ktn_end cond="tf.hist_mode>=1"]
[eval exp="f.h_state.v+=1, f.state.lust+=3, f.act.time='morning'" ]
[eval exp="f.state.love+=5, f.h_count.ext+=1, f.h_count.ext_v+=1" ]
[if exp="f.h_memory.morning>=1" ][else][eval exp="f.h_memory.morning=1" ][endif]
[jump/ tg=*ktn_end ]


;;シーン2
*ktn_xx
[Hx/ev face=b1 ef=2-1 p=p_show body=0 hand_L=leg hand_R=leg ][set_h_cg_role][hide_black]
	[syl]嗯…！[p]
[Hx/ev face=b2 ef=2-2 ]
	啊、[name h=1]…。[p]
	[Hxns n=x ex=1 ]难道…难道要?[p]
	…那个。[p]
	[_]（希尔薇什么多余的对话都没说地把屁股翘了起来。[p]
	（[Hxn n=p]阴茎[Hxn n=v]在臀部的摩擦[Hxn n=w]很快地让她溢出了爱液。[p]
[Hx/ev face=b3 p=v xr=0 se=2-3 tx=2-3 ef=2-3 ][se/ st=s-wet1 ]
	[syl]哈啊〜♡嗯…[Hxns n=p ex=1 y=の]!♡[p]
	[_]（阴茎顺利[Hxn n=iv]进入到了希露薇[Hxn n=p]的阴道、[r]
	仅是插入就让她叫出声来。[p]
[Hx/ev face=b4 body=1 p=vm xr=0m tear=1 exx=1 se=2-4 tx=2-4 ef=2-4 ][se/ l=t st=l-wet2 ]
	（看起来不需要什么顾虑了。[p]
	（我开始以一定的速度摆动着腰。[p]
	[syl]啊…嗯！♡唔！♡♡[p]
	[_]（似乎是[Hxn n=v]因为腿合上了[Hxn n=p]所以感觉压迫感比平时要强。[p]
	（[Hxn n=iv]阴道内侧给予腹部的震荡让希露薇的嘴中发出了声音。[p]
[Hx/ev face=b5 body=2 tear=2 tx=2-5 ef=2-5 ]
	[syl]啊゛…！♡[if exp="f.g_config.x_speak==1" ][Hxns n=v ex=1 ]高潮……嗯〜！♡！♡♡[else]啊啊！♡！♡♡[endif][p]
	[_]（希露薇自己轻轻震动着身体。[lr]
	看样子已经[Hxn n=ex]轻微的高潮了。[p]
	（我不断揉捏着阴道[Hxn n=iv]慢突着子宫[Hxn n=u]彼此的快感都高涨起来。[p]
	[syl]啊゛…！♡啊゛…♡！♡啊゛啊…！♡♡♡[p]
	（希露薇的下腹部[Hxn n=w]溢出的液滴已经积成了一滩。[p]
[Hx/ev face=b6 body=3 p=vmm xr=0mm exx=2 se=2-6 tx=2-6 ef=2-6 ][se/ l=t st=l-wet3 ]
	[syl]唔嗚！！♡…嗚〜！！♡[p]
	[_]（活塞运动已经进行到了很快的速度[r]
	[Hxn n=w]被爱液润湿的腰和臀部碰撞发出的声音在居室里回响。[p]
	（凹凸不平[Hxn n=iv]的肉裂缠绕着[Hxn n=p]阴茎也让希露薇的娇声越来越大。[p]
[Hx/ev face=b7 tx=2-7 ef=2-7 ]
	[syl]啊！[name h=1]の[Hxns n=p ex=1 ]！♡！♡我、[Hxns n=v ex=1 ]感觉要高潮了！♡！♡♡[p]
	[_]（希尔薇颤抖的膝盖现在终于支撑不住。[p]
[Hx/ev face=b8 p=v xr=1 z_b=1 tear=3 exx=3 se=2-8 tx=2-8 ef=2-8 ][se/ st=fin1 ]
	[syl]啊゛啊！！♡[if exp="f.g_config.x_speak==1" ][Hxns n=v ex=1 ]高潮…[Hxns n=v ex=1 ]高潮[endif]！♡！♡♡[p]
	[_]（希露薇的膝盖在颤个不停的同时我把腰紧的贴了上去、[r]
	把精子尽情[Hxn n=z]注入了她的最深处。[p]
[Hx/ev face=b9 se=00 tx=2-9 ef=2-9 ]
	[syl]呼〜…♡哈〜…♡♡♡♡[p]
[if exp="tf.hist_mode>=1" ][jump/ tg=*ktn_end ][endif]
[eval exp="f.h_state.v+=3, f.state.lust+=7, f.act.time='morning'" ]
[eval exp="f.state.love+=10, f.h_count.ext+=3, f.h_count.ext_v+=3" ]
[if exp="f.h_memory.morning<=1" ][eval exp="f.h_memory.morning=2" ][endif]
[jump/ tg=*ktn_end ]

;;シーン3
*ktn_xxx
[Hx/ev face=c1 p=p_show body=0 hand_L=leg hand_R=leg ][set_h_cg_role][hide_black]
	[syl]啊嗯！[p]
	[_]（不打招呼的突然接触、让希尔薇发出了淫甜的声音。[p]
[Hx/ev face=c2 xr=00 ef=3-2 ]
	[syl]啊、[name h=1]の[Hxns n=p ex=1 ]。[Hxns n=x ex=1 ]。要做吗？[p]
	[_]（我不断突进地腰部到她屁股上、[r]
	小巧的臀部左右摇晃着。[p]
	（[Hxn n=v]秘部已经湿润了[Hxn n=w]蜜汁都留到了腿上。[p]
[Hx/ev face=c3 body=1 p=v xr=0 se=3-3 tx=3-3 ef=3-3 ][se/ st=s-wet1 ]
	[syl]啊゛啊〜♡啊゛…！[Hxns n=p ex=1 ]♡♡[p]
	[_]（我把阴茎快速的[Hxn n=v]插入到了她[Hxn n=p]的蜜壶中。[p]
	[syl]嗯嗯…！♡呼唔〜！♡♡！♡♡[p][if exp="f.g_config.x_speak==1" ]更…好的结合在一起了♡♡[p][endif]
	[_]（仅仅是插入[Hxn n=ex]就让她的身体开始痉挛。[p]
[Hx/ev face=c4 body=3 p=vmm xr=0mm tear=1 exx=1 se=3-4 tx=3-4 ef=3-4 ][se/ l=t st=l-wet2 ]
	（就像为了开始追击一样、我开始做起活塞运动。[p]
[Hx/ev face=c5 tear=2 tx=3-5 ef=3-5 ]
	[syl]啊゛♡…啊゛唔♡！♡高潮了…！♡！♡♡[p]
	[_]（肉褶就像在要求[Hxn n=v]阴茎[Hxn n=p]射精一样开始抖动着。[p]
	（[Hxn n=iv]子宫内给予着咕吱咕吱的刺激让希尔薇的身体大幅地跳动。[p]
	[syl]啊♡[Hxns n=v ex=1 ]啊゛嘿゛…！♡♡啊！♡♡♡[p]
	[_]（她就像无法再用腿支持起身体一样把腰弯了下去。[p]
	（已经迎接了一个[Hxn n=ex]小程度的高潮吧、[r]
	（[Hxn n=iv]感觉到了她的子宫开始小幅地震荡。[p]
[Hx/ev face=c6 tear=3 exx=2 se=3-6 tx=3-6 ef=3-6 ][se/ l=t st=l-wet3 ]
	[syl]啊゛啊〜！♡♡…啊゛啊゛〜！♡！♡♡[p][if exp="f.g_config.x_speak==1" ]啊゛♡又高潮[Hxns n=v ex=1 ]又在高潮了♡♡[Hxns n=v ex=1 ]高潮♡♡[p][endif]
	[_]（从下腹部溢出的[Hxn n=w]爱液已经在地上流成了小摊。[p]
	（活塞运动已经进行到了相当快的速度、[r]
	[Hxn n=w]在爱液的润湿下的腰和臀部碰撞的声音回响着。[p]
	[syl]啊゛啊゛〜！♡！♡！♡♡[Hxns n=p ex=1 y=の]喔゛啊！♡！♡♡♡[p]
	（希尔薇就像野兽一样叫了出来、仅仅是因为快感。[p]
[Hx/ev face=c7 ]
	[syl]啊゛〜！♡高潮♡♡！！[Hxns n=v ex=1 ]…强力的高潮！♡♡[r]
	啊゛！！♡啊゛啊゛！♡♡[p]
	[_]（希露薇的身体大幅度地摇动着。[p]
	（我这边尽极限地加速活塞运动的频率、[r]
	阴茎粗暴[Hxn n=p]地殴打[Hxn n=u]着她的子宫[p]
[Hx/ev face=c8 p=v xr=1 z_b=2 exx=3 se=3-8 tx=3-8 ef=3-8 ][se/ st=fin1 ]
	[syl][if exp="f.g_config.x_speak==1" ]高…♡高潮！♡♡[Hxns n=v ex=1 ]♡[r][endif][Hxns n=v ex=1 ]高潮了了了了了…！！♡！♡！！♡！♡♡♡♡[p]
	[_]（在希尔薇的身体震动了一下的同时我把腰贴了上去、[r]
	把精子尽情地[Hxn n=z]灌入了最深处。[p]
[Hx/ev face=c9 se=3-9 tx=3-9 ef=3-9 ]
	[syl]啊゛〜！♡♡…啊゛啊゛〜！♡！♡名堂汉化组♡♡[p]

[if exp="tf.hist_mode>=1" ][jump/ tg=*ktn_end ][endif]
[eval exp="f.h_state.v+=5, f.state.lust+=10, f.act.time='morning'" ]
[eval exp="f.state.love+=15, f.h_count.ext+=5, f.h_count.ext_v+=5" ]
[if exp="f.h_memory.morning>=3" ][else][eval exp="f.h_memory.morning=3" ][endif]
[jump/ tg=*ktn_end ]

;;エンド
*ktn_end
[hide_role][black][stop_bgm]
;[load_dress]
[_]（我把手拿开和希尔薇一起坐在了地上。[p]
（然后我们两个今天都没吃成早饭。[p]
…[p]
[return_memory cond="tf.hist_mode>=1" ]
[eval exp="f.h_count.cum+=1, f.x_count.sex+=1, f.h_count.kitchen+=1, f.daily.out=0" ]
[return_bace]

;;CG1
*ktn_a_cg
[cm][Hx/ev face=a1 ef=1-1 p=p_show body=0 hand_L=leg hand_R=leg ][set_h_cg_role][hide_black]
[h_back tg=*end_cg][h_next tg=*ktn_a_cg2][s]
*ktn_a_cg1
[cm][Hx/ev face=a1 ef=1-1 p=p_show body=0 hand_L=leg hand_R=leg ]
[h_back tg=*end_cg][h_next tg=*ktn_a_cg2][s]
*ktn_a_cg2
[cm][Hx/ev face=a2 ef=00 ]
[h_back tg=*ktn_a_cg1][h_next tg=*ktn_a_cg3][s]
*ktn_a_cg3
[cm][Hx/ev face=a3 p=p_show xr=00 tear=00 se=00 tx=00 ef=00 ]
[h_back tg=*ktn_a_cg2][h_next tg=*ktn_a_cg4][s]
*ktn_a_cg4
[cm][Hx/ev face=a4 p=v xr=0 tear=1 se=1-4 tx=1-4 ef=1-4 ]
[h_back tg=*ktn_a_cg3][h_next tg=*ktn_a_cg5][s]
*ktn_a_cg5
[cm][Hx/ev face=a5 p=v body=0 xr=0 se=1-5 tx=00 ef=1-5 ]
[h_back tg=*ktn_a_cg4][h_next tg=*ktn_a_cg6][s]
*ktn_a_cg6
[cm][Hx/ev face=a6 body=1 p=vm xr=0m exx=1 se=1-6 tx=1-6 ef=1-6 ]
[h_back tg=*ktn_a_cg5][h_next tg=*ktn_a_cg7][s]
*ktn_a_cg7
[cm][Hx/ev face=a7 body=2 p=vmm xr=0mm exx=2 se=1-6 tx=1-7 ef=1-7 ]
[h_back tg=*ktn_a_cg6][h_next tg=*ktn_a_cg8][s]
*ktn_a_cg8
[cm][Hx/ev face=a8 body=3 p=vmm xr=0mm se=1-8 tx=1-8 ef=1-8 exx=00 z_b=00 ]
[h_back tg=*ktn_a_cg7][h_next tg=*ktn_a_cg9][s]
*ktn_a_cg9
[cm][Hx/ev face=a9 p=v xr=1 se=1-9 tx=1-9 ef=1-9 exx=3 z_b=1 ]
[h_back tg=*ktn_a_cg6][h_next tg=*ktn_a_cg10][s]
*ktn_a_cg10
[cm][Hx/ev face=a10 se=00 tx=1-10 ef=1-10 ]
[h_back tg=*ktn_a_cg9][h_next tg=*end_cg][s]

;;CG2
*ktn_b_cg
[cm][Hx/ev face=b1 ef=2-1 p=p_show body=0 hand_L=leg hand_R=leg ][set_h_cg_role][hide_black]
[h_back tg=*end_cg][h_next tg=*ktn_b_cg2][s]
*ktn_b_cg1
[cm][Hx/ev face=b1 ef=2-1 p=p_show body=0 hand_L=leg hand_R=leg ]
[h_back tg=*end_cg][h_next tg=*ktn_b_cg2][s]
*ktn_b_cg2
[cm][Hx/ev face=b2 p=p_show xr=00 se=00 tx=00 ef=2-2 ]
[h_back tg=*ktn_b_cg1][h_next tg=*ktn_b_cg3][s]
*ktn_b_cg3
[cm][Hx/ev face=b3 body=0 p=v xr=0 tear=00 exx=00 se=2-3 tx=2-3 ef=2-3 ]
[h_back tg=*ktn_b_cg2][h_next tg=*ktn_b_cg4][s]
*ktn_b_cg4
[cm][Hx/ev face=b4 body=1 p=vm xr=0m tear=1 exx=1 se=2-4 tx=2-4 ef=2-4 ]
[h_back tg=*ktn_b_cg3][h_next tg=*ktn_b_cg5][s]
*ktn_b_cg5
[cm][Hx/ev face=b5 body=2 p=vm xr=0m tear=2 exx=1 se=2-4 tx=2-5 ef=2-5 ]
[h_back tg=*ktn_b_cg4][h_next tg=*ktn_b_cg6][s]
*ktn_b_cg6
[cm][Hx/ev face=b6 body=3 p=vmm xr=0mm exx=2 se=2-6 tx=2-6 ef=2-6 ]
[h_back tg=*ktn_b_cg5][h_next tg=*ktn_b_cg7][s]
*ktn_b_cg7
[cm][Hx/ev face=b7 p=vmm xr=0mm z_b=00 tear=2 exx=2 se=2-6 tx=2-7 ef=2-7 ]
[h_back tg=*ktn_b_cg6][h_next tg=*ktn_b_cg8][s]
*ktn_b_cg8
[cm][Hx/ev face=b8 p=v xr=1 z_b=1 tear=3 exx=3 se=2-8 tx=2-8 ef=2-8 ]
[h_back tg=*ktn_b_cg7][h_next tg=*ktn_b_cg9][s]
*ktn_b_cg9
[cm][Hx/ev face=b9 se=00 tx=2-9 ef=2-9 ]
[h_back tg=*ktn_b_cg8][h_next tg=*end_cg][s]

;;CG3
*ktn_c_cg
[cm][Hx/ev face=c1 p=p_show body=0 hand_L=leg hand_R=leg ][set_h_cg_role][hide_black]
[h_back tg=*end_cg][h_next tg=*ktn_c_cg2][s]
*ktn_c_cg1
[cm][Hx/ev face=c1 p=p_show body=0 hand_L=leg hand_R=leg ef=00 ]
[h_back tg=*end_cg][h_next tg=*ktn_c_cg2][s]
*ktn_c_cg2
[cm][Hx/ev face=c2 p=p_show body=0 xr=00 se=00 tx=00 ef=3-2 ]
[h_back tg=*ktn_c_cg1][h_next tg=*ktn_c_cg3][s]
*ktn_c_cg3
[cm][Hx/ev face=c3 body=1 p=v xr=0 tear=00 exx=00 se=3-3 tx=3-3 ef=3-3 ]
[h_back tg=*ktn_c_cg2][h_next tg=*ktn_c_cg4][s]
*ktn_c_cg4
[cm][Hx/ev face=c4 body=3 p=vmm xr=0mm tear=1 exx=1 se=3-4 tx=3-4 ef=3-4 ]
[h_back tg=*ktn_c_cg3][h_next tg=*ktn_c_cg5][s]
*ktn_c_cg5
[cm][Hx/ev face=c5 tear=2 exx=1 se=3-4 tx=3-5 ef=3-5 ]
[h_back tg=*ktn_c_cg4][h_next tg=*ktn_c_cg6][s]
*ktn_c_cg6
[cm][Hx/ev face=c6 tear=3 exx=2 se=3-6 tx=3-6 ef=3-6 ]
[h_back tg=*ktn_c_cg5][h_next tg=*ktn_c_cg7][s]
*ktn_c_cg7
[cm][Hx/ev face=c7 p=vmm xr=0mm z_b=00 exx=2 se=3-6 tx=3-6 ef=3-6 ]
[h_back tg=*ktn_c_cg6][h_next tg=*ktn_c_cg8][s]
*ktn_c_cg8
[cm][Hx/ev face=c8 p=v xr=1 z_b=2 exx=3 se=3-8 tx=3-8 ef=3-8 ]
[h_back tg=*ktn_c_cg7][h_next tg=*ktn_c_cg9][s]
*ktn_c_cg9
[cm][Hx/ev face=c9 se=3-9 tx=3-9 ef=3-9 ]
[h_back tg=*ktn_c_cg8][h_next tg=*end_cg][s]

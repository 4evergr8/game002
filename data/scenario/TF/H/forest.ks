;;介绍
*wd_f_select_c
[cm][black][bgm st=MT]
;[choice_xy][btn/ l=y tg=*wd_f_jump gr=ch/wear ]
;[btn/ tg=*wd_f_jump gr=ch/unwear exp="tf.r='strip'" ][s]

*wd_f_jump
[cm][call storage=TF/H/Hcg_set.ks target="*wd_f_set" ][call storage=TF/H/Hcg_set.ks target="*wd_f_show_set" ]
[if exp="tf.hist_mode==1" ][jump/ tg=*wd_f_x ]
[elsif exp="tf.hist_mode==2" ][jump/ tg=*wd_f_xx ]
[elsif exp="tf.hist_mode==3" ][jump/ tg=*wd_f_xxx ][endif]

[if exp="f.state.mood=='calm' && f.state.lust>=600 && f.h_memory.forest>=1" ][jump/ tg=*wd_f_xx ]
[elsif exp="f.state.mood=='calm'" ][jump/ tg=*wd_f_x ]
[elsif exp="f.h_memory.forest>=2 && (f.state.lust>=600 || f.state.mood=='lust')" ][jump/ tg=*wd_f_xxx ]
[elsif exp="f.h_memory.forest>=1 && (f.state.lust>=200 || f.state.mood=='lust')" ][jump/ tg=*wd_f_xx ]
[else][jump/ tg=*wd_f_x ][endif]

*wd_b_select_c
[cm][black][bgm st=MT]
;[eval exp="f.d_dress.temp=f.d_dress.tt" ]
让希尔薇站起来，在树荫下向后看…。
;[choice_xy][btn/ l=y tg=*wd_b_jump gr=ch/wear ]
;[btn/ tg=*wd_b_jump gr=ch/unwear exp="tf.r='strip'" ][s]

*wd_b_jump
[cm][call storage=TF/H/Hcg_set.ks target="*wd_b_set" ]
[if exp="tf.hist_mode==1" ][jump/ tg=*wd_b_x ]
[elsif exp="tf.hist_mode==2" ][jump/ tg=*wd_b_xx ]
[elsif exp="tf.hist_mode==3" ][jump/ tg=*wd_b_xxx ][endif]

[if exp="f.state.mood=='calm' && f.state.lust>=600 && f.h_memory.forest>=1" ][jump/ tg=*wd_b_xx ]
[elsif exp="f.state.mood=='calm' && f.state.lust>=200" ][jump/ tg=*wd_b_x ][endif]
[if exp="f.state.lust>=600 && f.h_memory.forest>=2 || f.state.mood=='lust' && f.h_memory.forest>=2" ][jump/ tg=*wd_b_xxx ]
[elsif exp="f.state.lust>=200 && f.h_memory.forest>=1 || f.state.mood=='lust' && f.h_memory.forest>=1" ][jump/ tg=*wd_b_xx ]
[else][jump/ tg=*wd_b_x ][endif]

*wd_f_decide
[cm]
[if exp="tf.hist_mode>=11" ][call storage=TF/H/Hcg_set.ks target="*wd_f_set" ][call storage=TF/H/Hcg_set.ks target="*wd_f_show_set" ][endif]
[if exp="tf.hist_mode==11" ][jump/ tg=*wd_f_a_cg ]
[elsif exp="tf.hist_mode==12" ][jump/ tg=*wd_f_b_cg ]
[elsif exp="tf.hist_mode==13" ][jump/ tg=*wd_f_c_cg ][endif]
[bgm st=MT][show_message_w][jump/ tg=*wd_f_jump ]

*wd_b_decide
[cm][if exp="tf.hist_mode>=11" ][call storage=TF/H/Hcg_set.ks target="*wd_b_set" ][endif]
[if exp="tf.hist_mode==11" ][jump/ tg=*wd_b_a_cg ]
[elsif exp="tf.hist_mode==12" ][jump/ tg=*wd_b_b_cg ]
[elsif exp="tf.hist_mode==13" ][jump/ tg=*wd_b_c_cg ][endif]
[bgm st=MT][show_message_w][jump/ tg=*wd_b_jump ]

*end_cg
[cm][return_memory]

;;frontシーン1
*wd_f_x
[Hx/ev face=a1 p=a0 ][set_h_cg_role][hide_black]
	[_]（让希尔薇的脚轻轻地打开。[p]
	（虽然嘴上说可以，但是希尔薇的脸被羞耻的染红了。[p]
	[syl]没关系。[p]
[Hx/ev face=a2 p=b0 ]
	[_]（爱抚在她的阴道中[Hxn n=p]申请。[p]
[Hx/ev face=a3 p=b1 ][se/ st=s-wet1 ][Hx/ev se=1-3 tx=1-3 ef=1-3 xr=1 ]
	[syl]嗯...嗯...[p]
	[_]（紧闭的阴道稍微一触碰，里面就开始潮湿了。[p]
	（至少不会因为紧张而淋湿。[p]
[Hx/ev body=b1 head=h1 face=a4 p=b2 ][se/ l=t st=l-wet1 ][Hx/ev se=1-4 tx=1-4 ef=1-4 xr=2 ef2=1 ]
	[_]（开始慢慢移动你的臀部，这样你的体重就不会落在希尔薇身上。。[p]
	[syl]嗯...嗯...[p]
	[_]（也许是因为是野外，所以每一个风和虫子发出的声音都会引起注意[r]
	她似乎不安。[p]
	（但是上下起伏很深[Hxn n=b]渐渐地[Hxn n=w]开始弄湿了[Hxn n=v]は[r]
	明确表示快感和兴奋。[p]
[Hx/ev body=b2 head=h2 face=a5 ][Hx/ev ef2=2 ]
	[syl]嗯…嗯……啊…[p]
	[_]（希尔薇咬着嘴唇，想办法抑制快要叫出来的娇声[r]
	[Hxn n=u]压在上面反复深入，忍不住小声地叫了起来。[p]
[Hx/ev body=b3 head=h3 face=a6 p=b3 ][se/ l=t st=l-wet2 ][Hx/ev se=1-6 tx=1-6 ef=1-6 xr=3 ef2=3 ]
	[syl]啊…！♡…嗯…！♡[p]
	[_]（持续了一段时间く[Hxn n=x]希尔薇的娇声也变大了[r]
	感觉彼此的界限越来越近了。[p]
[Hx/ev face=a7 ]
	[syl]啊…[name h=1]…我差不多该…♡[p]
	啊啊啊！♡♡[p]
[Hx/ev face=a8 p=b1 ][se/ st=fin1 ][Hx/ev se=1-8 tx=1-8 ef=1-8 xr=4 ]
	[syl][if exp="f.g_config.x_speak==1" ][Hxns n=v ex=1 ]イクっ…[endif]
	嗯…嗯～！♡！♡♡[p]
	[_]（最后，我压紧了腰部。[r]
	[Hxn n=p]全部都是希尔薇的[Hxn n=iv]沉入[Hxn n=z]吐出。[p]
[Hx/ev face=a9 p=b4 ][Hx/ev se=00 tx=1-9 ef=1-9 xr=5 ]
	[syl]啊…！♡啊…♡[p]
	我…在外面…[name h=1]打开…[Hxns n=x ex=1 ]做了…♡[p]

[jump/ tg=*wd_f_end cond="tf.hist_mode>=1"]
[if exp="f.h_memory.forest>=1" ][else][eval exp="f.h_memory.forest=1" ][endif]

[eval exp="f.h_count.ext+=1, f.h_count.ext_v+=1" ]
[eval exp="f.h_state.v+=1, f.state.lust+=4, f.state.love+=6" ]
[jump/ tg=*wd_f_end ]

;;frontシーン2
*wd_f_xx
[Hx/ev body=b1 head=h1 face=b1 p=a1 ][Hx/ev ef=2-1 ef2=1 ]
	[set_h_cg_role][hide_black]
	[_]（希尔薇自己打开了腿[Hxn n=v]露出了。[p]
[Hx/ev face=b2 p=b0 ]
	（在张开的腿间变硬了[Hxn n=p]をあらわにすると、[r]
	她用充满期待的目光注视着它。[p]
	[syl]在外面[Hxns n=x ex=1 ]做的时候心跳加速，一开始很害怕……总觉得会变成习惯…。[p]
	[_]（我害羞地染上了脸颊，好像在周围。[r]
	你看起来好像开始享受那个了。[p]
[Hx/ev face=b3 p=b1 ][se/ st=s-wet1 ][Hx/ev se=2-3 tx=2-3 ef=2-3 xr=1 ]
	（已经[Hxn n=w]在她潮湿的阴道中[Hxn n=p]を挿入する。[p]
	[syl]啊…[Hxns n=p ex=1 y=の]啊♡啊~♡[p]
	[_]（温暖的[Hxn n=v]很顺利地接受了[Hxn n=p]同时希尔薇的表情也染上了恍惚。[p]
[Hx/ev body=b2 head=h2 face=b4 p=b2 ][se/ l=t st=l-wet1 ][Hx/ev se=2-4 tx=2-4 ef=2-4 xr=2 ef2=2 ]
	（为了享受希尔薇的体温，慢慢地开始活动。[p]
	[syl]嗯…♡嗯…♡[p]
	[_]（虽然对在打开的地方进行的性行为感到不协调[r]
	希尔薇似乎已经开始把自己交给快乐了[p]
[Hx/ev face=b5 ][Hx/ev tx=2-5 ef=2-5 ]
	[syl]啊…♡[Hxns n=v ex=1 ]……嗯…！♡蒽！♡♡[p]
	[_]（如果你继续仔细地拨开肉褶[Hxn n=iv]继续深入的话[r]
	希尔薇慢慢地开始发出微微抑制的娇声。[p]
[Hx/ev body=b3 head=h3 face=b6 p=b3 ][se/ l=t st=l-wet2 ][Hx/ev se=2-6 tx=2-6 ef=2-6 xr=3 ef2=3 ]
	（像邀请一样[Hxn n=iv]的褶皱吸引着腰的动作越来越激烈く[p]
	[syl]啊！♡…啊！♡♡[name h=1]っ！♡！♡♡[p]
	[_]（从在野外等不介意的声音的粗暴的方法[r]
	希尔薇的[Hxn n=ex]接近。[p]
	（这里的界限也就在那里。[p]
	[syl]啊！♡啊！[if exp="f.g_config.x_speak==1" ]已经…[Hxns n=v ex=1 ]好球…[endif]♡♡[p]
[Hx/ev face=b7 p=b1 ][se/ st=fin1 ][Hx/ev se=2-7 tx=2-7 ef=2-7 xr=4 ]
	[_]（最后用力推着腰[r]
	[Hxn n=p]全部都是希尔薇的[Hxn n=iv]沉入水中[Hxn n=z]吐出。[p]
	[syl]哇…！！♡！♡♡[r]
	啊゛っ…！♡[if exp="f.g_config.x_speak==1" ][Hxns n=v ex=1 ]イ…ぐゅ[endif]ぅ゛…！！♡！♡♡♡[p]
[Hx/ev face=b8 p=b4 ][Hx/ev se=00 tx=2-8 ef=2-8 xr=5 ]
	啊…♡嗯…♡[r]
	[name h=1]…♡♡[p]

[jump/ tg=*wd_f_end cond="tf.hist_mode>=1"]
[if exp="f.h_memory.forest>=2" ][else][eval exp="f.h_memory.forest=2" ][endif]
[eval exp="f.h_count.ext+=2, f.h_count.ext_v+=2" ]
[eval exp="f.h_state.v+=2, f.state.lust+=7, f.state.love+=10" ]
[jump/ tg=*wd_f_end ]

;;front场景3
*wd_f_xxx
[Hx/ev body=b1 head=h1 face=c1 p=a2 ][Hx/ev ef=3-1 ef2=1 ]
[set_h_cg_role][hide_black]
	希尔薇毫不犹豫地张开腿，懒洋洋地伸了出来。[p]
	[syl]啊~…♡啊~…♡[p]
[Hx/ev face=c2 p=b0 ]
	[_]（变硬了[Hxn n=p]希尔薇用充满期待的目光注视着它。[p]
	[syl]啊～…[Hxns n=p ex=1 ]♡[name h=1]打开[Hxns n=p ex=1 ]…♡♡[p]
	[_]（羞耻心好像也依然感觉到了[r]
	更兴奋的是她满脑子的样子。[p]
	（已经[Hxn n=w]在她开始滴落的阴道中[Hxn n=p]打中。[p]
[Hx/ev body=b2 head=h2 face=c3 p=b1 ][se/ st=s-wet1 ][Hx/ev se=3-3 tx=3-3 ef=3-3 xr=1 ef2=2 ]
	[syl]嗯…！♡！♡♡[p]
	[_]（慢慢地插入的话就发热了[Hxn n=iv]表示[Hxn n=p]缠绕[r]
	希尔薇发出恍惚的声音。[p]
[Hx/ev face=c4 p=b2 ][se/ l=t st=l-wet2 ][Hx/ev se=3-4 tx=3-4 ef=3-4 xr=2 ]
	（即使现在照顾希尔薇，也只会让她着急吧。[p]
	（从一开始就以腰部撞击的声音响起的气势敲打[Hxn n=u]を叩く。[p]
	[syl]啊！♡…啊！♡♡[name h=1]っ！♡！♡♡[p]
	[_]（她不顾在野外的情况，开始尽情地喘息。[p]
	（圆润的眼睛似乎沉醉在开放感中。[p]
[Hx/ev body=b3 head=h3 face=c5 p=b3 ][se/ l=t st=l-wet3 ][Hx/ev se=3-5 tx=3-5 ef=3-5 xr=3 ef2=3 ]
	[syl]啊！♡好可爱…！♡啊！♡！♡♡♡[p]
	[_]（再加快速度，她喉咙更是大得发抖。。[p]
	（与在天空下发出野兽般声音的希尔薇做爱是[r]
	正是动物的交尾本身。。[p]
	[syl]嗯…！♡…♡♡…[Hxns n=v ex=1 ]是我的产品！♡♡♡[p]
	[_]（本能的驱使下蹂躏希尔薇的[Hxn n=iv]互相贪图快乐[p]
	（全力攻击希尔薇，气喘吁吁[r]
	在向希尔薇吐出[Hxn n=z]之前，动作越来越激烈。[p]
[Hx/ev face=c6 ]
	[syl]哦[Hxns n=v ex=1 ]っ！！♡！♡♡[r]
	啊！♡啊…！！♡！♡♡♡[p]
	[_]（专心致志的长蛇也确实接近[Hxn n=ex]的时候[r]
	而且快感达到了抱不住的量。[p]
[Hx/ev face=c7 p=b1 ][se/ st=fin1 ][Hx/ev se=3-7 tx=3-7 ef=3-7 xr=4 ]
	[syl]啊゛啊゛啊！あ゛！っ♡！啊゛♡♡！っ♡♡[if exp="f.g_config.x_speak==1" ][Hxns n=v ex=1 ]中…中♡！♡♡！啊！♡♡♡[[endif]♡！♡♡[p]
	[_]（狠狠地把腰撞到希尔薇的[Hxn n=v]上[r]
	把煮熟的[Hxn n=z]深深地射进她的[Hxn n=u]里。[p]
	[syl]啊`灬.°！[Hxns n=p ex=1 ]中…中♡！♡♡！啊！♡♡♡[p]
	[_]（希尔薇的腰在[Hxn n=ex]的痉挛中跳来跳去[r]
	被狠狠地推到地上的她的身体几乎动弹不得，只是发抖。[p]
[Hx/ev face=c8 p=b4 ][Hx/ev se=3-8 tx=3-8 ef=3-8 xr=5 ]
	[syl]啊～！♡啊~！♡♡[p]

[jump/ tg=*wd_f_end cond="tf.hist_mode>=1"]
[if exp="f.h_memory.forest>=3" ][else][eval exp="f.h_memory.forest=3" ][endif]
[eval exp="f.h_count.ext+=3, f.h_count.ext_v+=3" ]
[eval exp="f.h_state.v+=6, f.state.lust+=12, f.state.love+=16" ]
[jump/ tg=*wd_f_end ]

;;front前端
*wd_f_end
[hide_role][black]
[_]（两人暂时无法动弹，连在一起已经过了几分钟[r]
调整了呼吸之后，希尔薇也站不起来了。[p]
[stop_bgm]…[p]
[return_memory cond="tf.hist_mode>=1" ]
[eval exp="f.x_count.sex+=1, f.x_count.forest+=1, f.h_count.cum+=1" ]
[if exp="f.act.time<=3" ][hide_role][black][stop_bgm]…[p]
[eval exp="f.act.last='sex',f.act.time='morning_forest'" ][return_bace][endif]
[eval exp="f.act.time='forest'" ][day_end]

;;front_CG1
*wd_f_a_cg
[Hx/ev face=a1 p=a0 ]
;[if exp="f.d_dress.tt=='non'" ][Hx/ev dress=00 sleeve_b=00 sleeve=g_non ][endif]
[set_h_cg_role][hide_black]
[h_back tg=*end_cg][h_next tg=*wd_f_a_cg2][s]

*wd_f_a_cg1
[cm][Hx/ev face=a1 p=a0 ]
[h_back tg=*end_cg][h_next tg=*wd_f_a_cg2][s]
*wd_f_a_cg2
[cm][Hx/ev face=a2 p=b0 ][Hx/ev se=00 tx=00 ef=00 xr=00 ]
[h_back tg=*wd_f_a_cg1][h_next tg=*wd_f_a_cg3][s]
*wd_f_a_cg3
[cm][Hx/ev body=b0 head=h0 face=a3 p=b1 ][Hx/ev se=1-3 tx=1-3 ef=1-3 xr=1 ef2=00 ]
[h_back tg=*wd_f_a_cg2][h_next tg=*wd_f_a_cg4][s]
*wd_f_a_cg4
[cm][Hx/ev body=b1 head=h1 face=a4 p=b2 ][Hx/ev se=1-4 tx=1-4 ef=1-4 xr=2 ef2=1 ]
[h_back tg=*wd_f_a_cg3][h_next tg=*wd_f_a_cg5][s]
*wd_f_a_cg5
[cm][Hx/ev body=b2 head=h2 face=a5 p=b2 ][Hx/ev se=1-4 tx=1-4 ef=1-4 xr=2 ef2=2 ]
[h_back tg=*wd_f_a_cg4][h_next tg=*wd_f_a_cg6][s]
*wd_f_a_cg6
[cm][Hx/ev body=b3 head=h3 face=a6 p=b3 ][Hx/ev se=1-6 tx=1-6 ef=1-6 xr=3 ef2=3 ]
[h_back tg=*wd_f_a_cg5][h_next tg=*wd_f_a_cg7][s]
*wd_f_a_cg7
[cm][Hx/ev face=a7 p=b3 ][Hx/ev se=1-6 tx=1-6 ef=1-6 xr=3 ]
[h_back tg=*wd_f_a_cg6][h_next tg=*wd_f_a_cg8][s]
*wd_f_a_cg8
[cm][Hx/ev face=a8 p=b1 ][Hx/ev se=1-8 tx=1-8 ef=1-8 xr=4 ]
[h_back tg=*wd_f_a_cg7][h_next tg=*wd_f_a_cg9][s]
*wd_f_a_cg9
[cm][Hx/ev face=a9 p=b4 ][Hx/ev se=00 tx=1-9 ef=1-9 xr=5 ]
[h_back tg=*wd_f_a_cg8][h_next tg=*end_cg][s]

;;front_CG2
*wd_f_b_cg
[Hx/ev body=b1 head=h1 face=b1 p=a1 ][Hx/ev ef=2-1 ef2=1 ]
;[if exp="f.d_dress.tt=='non'" ][Hx/ev dress=00 sleeve_b=00 sleeve=g_non ][endif]
[set_h_cg_role][hide_black]

*wd_f_xx_cg
[h_back tg=*end_cg][h_next tg=*wd_f_b_cg2][s]
*wd_f_b_cg1
[cm][Hx/ev face=b1 ef=2-1 ]
[h_back tg=*end_cg][h_next tg=*wd_f_b_cg2][s]

*wd_f_b_cg2
[cm][Hx/ev face=b2 p=b0 ][Hx/ev se=00 tx=00 ef=00 xr=00 ]
[h_back tg=*wd_f_b_cg1][h_next tg=*wd_f_b_cg3][s]
*wd_f_b_cg3
[cm][Hx/ev body=b1 head=h1 face=b3 p=b1 ][Hx/ev se=2-3 tx=2-3 ef=2-3 xr=1 ef2=1 ]
[h_back tg=*wd_f_b_cg2][h_next tg=*wd_f_b_cg4][s]
*wd_f_b_cg4
[cm][Hx/ev body=b2 head=h2 face=b4 p=b2 ][Hx/ev se=2-4 tx=2-4 ef=2-4 xr=2 ef2=2 ]
[h_back tg=*wd_f_b_cg3][h_next tg=*wd_f_b_cg5][s]
*wd_f_b_cg5
[cm][Hx/ev body=b2 head=h2 face=b5 p=b2 ][Hx/ev se=2-4 tx=2-5 ef=2-5 xr=2 ef2=2 ]
[h_back tg=*wd_f_b_cg4][h_next tg=*wd_f_b_cg6][s]
*wd_f_b_cg6
[cm][Hx/ev body=b3 head=h3 face=b6 p=b3 ][Hx/ev se=2-6 tx=2-6 ef=2-6 xr=3 ef2=3 ]
[h_back tg=*wd_f_b_cg5][h_next tg=*wd_f_b_cg7][s]
*wd_f_b_cg7
[cm][Hx/ev face=b7 p=b1 ][Hx/ev se=2-7 tx=2-7 ef=2-7 xr=4 ]
[h_back tg=*wd_f_b_cg6][h_next tg=*wd_f_b_cg8][s]
*wd_f_b_cg8
[cm][Hx/ev face=b8 p=b4 ][Hx/ev se=00 tx=2-8 ef=2-8 xr=5 ]
[h_back tg=*wd_f_b_cg7][h_next tg=*end_cg][s]

;;front_CG3
*wd_f_c_cg
[Hx/ev body=b1 head=h1 face=c1 p=a2 ][Hx/ev ef=3-1 ef2=1 ]
;[if exp="f.d_dress.tt=='non'" ][Hx/ev sleeve_b=00 sleeve=g_non ][endif]
[set_h_cg_role][hide_black]

*wd_f_xxx_cg
[h_back tg=*end_cg][h_next tg=*wd_f_c_cg2][s]
*wd_f_c_cg1
[cm][Hx/ev face=c1 ][Hx/ev ef=3-1 ]
[h_back tg=*end_cg][h_next tg=*wd_f_c_cg2][s]
*wd_f_c_cg2
[cm][Hx/ev body=b1 head=h1 face=c2 p=b0 ][Hx/ev se=00 tx=00 ef=00 xr=00 ef2=1 ]
[h_back tg=*wd_f_c_cg1][h_next tg=*wd_f_c_cg3][s]
*wd_f_c_cg3
[cm][Hx/ev body=b2 head=h2 face=c3 p=b1 ][Hx/ev se=3-3 tx=3-3 ef=3-3 xr=1 ef2=2 ]
[h_back tg=*wd_f_c_cg2][h_next tg=*wd_f_c_cg4][s]
*wd_f_c_cg4
[cm][Hx/ev body=b2 head=h2 face=c4 p=b2 ][Hx/ev se=3-4 tx=3-4 ef=3-4 xr=2 ef2=2 ]
[h_back tg=*wd_f_c_cg3][h_next tg=*wd_f_c_cg5][s]
*wd_f_c_cg5
[cm][Hx/ev body=b3 head=h3 face=c5 p=b3 ][Hx/ev se=3-5 tx=3-5 ef=3-5 xr=3 ef2=3 ]
[h_back tg=*wd_f_c_cg4][h_next tg=*wd_f_c_cg6][s]
*wd_f_c_cg6
[cm][Hx/ev face=c6 p=b3 ][Hx/ev se=3-5 tx=3-5 ef=3-5 xr=3 ]
[h_back tg=*wd_f_c_cg5][h_next tg=*wd_f_c_cg7][s]
*wd_f_c_cg7
[cm][Hx/ev face=c7 p=b1 ][Hx/ev se=3-7 tx=3-7 ef=3-7 xr=4 ]
[h_back tg=*wd_f_c_cg6][h_next tg=*wd_f_c_cg8][s]
*wd_f_c_cg8
[cm][Hx/ev face=c8 p=b4 ][Hx/ev se=3-8 tx=3-8 ef=3-8 xr=5 ]
[h_back tg=*wd_f_c_cg7][h_next tg=*end_cg][s]


;;back背景场景1
*wd_b_x
[Hx/ev face=a2 p=p_show body=0 hand_L=leg hand_R=leg ][set_h_cg_role][hide_black]
	[_]（让希尔薇站起来，把手放在旁边的树上。[p]
	（虽然嘴上说可以，但希尔薇的脸被羞辱得通红。[p]
	[syl]没关系。[p]
;[Hx/ev face=a2 ef=00 ]
;[Hx/ev face=a2 ]
	[_]（爱抚也马马虎虎地给她的[Hxn n=v]に[Hxn n=p]打[p]
[Hx/ev face=a5 body=1 p=v xr=0 se=1-4 tx=1-4 ef=1-4 ][se/ st=s-wet1 ]
	[syl]嗯…嗯…[p]
	[_]（稍微推开紧闭的裂缝，里面开始潮湿。[p]
	（至少不会因为紧张而淋湿[p]
[Hx/ev face=a4 p=vm xr=0m tear=1 se=1-6 tx=2-3 ef=2-3 ][se/ l=t st=l-wet1 ]
	[_]（为了不让希尔薇体重增加，慢慢地开始活动腰。[p]
	[syl]嗯……嗯……[p]
	[_]（也许是因为是野外，所以每一个风和虫子发出的声音都会引起注意[r]
	好象不沉着。[p]
	（但是深深地上下的肩膀和渐渐地开始淋湿了[Hxn n=v]表示[r]
	明确表示快感和兴奋。[p]
[Hx/ev face=a5 body=2 ]
	[syl]嗯…♡嗯……啊…♡[p]
	[_]（希尔薇想办法抑制住快要漏掉的娇声[r]
	重复着像打屁股一样深的活塞，忍不住小声地说了起来。[p]
[Hx/ev face=a6 tx=1-7 ef=1-7 ][se/ l=t st=l-wet2 ]
	[syl]あっ…！♡…ふぁっ…！♡[p]
	[_]（しばらく[Hxn n=x]希尔薇的娇声也变大了[r]
	我感觉彼此的界限越来越近了。[p]
[Hx/ev face=b7 tear=2 ]
	[syl]啊…[name h=1]……我差不多该…♡[p]
	啊啊！♡♡[p]
[Hx/ev face=a10 body=3 p=v xr=1 z_b=1 se=1-9 tx=1-9 ef=1-9 ][se/ st=fin1 ]
	[syl][if exp="f.g_config.x_speak==1" ]イクっ…[endif]
	嗯…嗯～！♡！♡♡[p]
	[_]（最后狠狠地把腰压住[r]
	[Hxn n=p]全部都是希尔薇的[Hxn n=iv]沉入[Hxn n=z]吐出。[p]
[Hx/ev face=c3 se=00 tx=1-10 ef=1-10 ]
	[syl]啊…！♡啊…♡[p]
	我…在外面…[name h=1]和…[Hxns n=x]做了…♡[p]

[jump/ tg=*wd_b_end cond="tf.hist_mode>=1"]
[if exp="f.h_memory.forest>=1" ][else][eval exp="f.h_memory.forest=1" ][endif]
[if exp="f.x_count.forest>=1" ][else][eval exp="f.x_count.forest=0" ][endif]
[eval exp="f.h_count.ext+=1, f.h_count.ext_v+=1" ]
[eval exp="f.h_state.v+=1, f.state.lust+=4, f.state.love+=6" ]
[jump/ tg=*wd_b_end ]

;;back场景2
*wd_b_xx
[Hx/ev face=b7 ef=2-2 p=p_show body=0 hand_L=leg hand_R=leg ][set_h_cg_role][hide_black]
[_]（让希尔薇站起来，把手放在旁边的树上，希尔薇自己伸了出来。[p]
;[Hx/ev face=b2 ef=2-2 ]
	（像是邀请似的，在突出的屁股上变硬了[Hxn n=p]添加的话[r]
	她向这边望去。[p]
	[syl]在外面[Hxns n=x]做的时候心跳加速，一开始很害怕……总觉得会上瘾…。[p]
	[_]（害羞地染上脸颊，好像很在意周围的情况[r]
	你看起来好像开始享受那个了。[p]
[Hx/ev face=b3 body=1 p=v xr=0 se=2-3 tx=1-4 ef=2-3 ][se/ st=s-wet1 ]
	（已经[Hxn n=w]在她潮湿的裂缝中[Hxn n=p]を挿入する。[p]
	[syl]啊…[Hxns n=v ex=1 ]♡啊~♡[p]
	[_]（温暖的[Hxn n=v]顺利地[Hxn n=p]接受，同时希尔薇的表情也染上了恍惚。[p]
[Hx/ev face=b5 body=2 p=vm xr=0m tear=1 se=2-4 tx=2-3 ef=2-4 ][se/ l=t st=l-wet1 ]
	（为了享受希尔薇的体温，慢慢地开始活动腰。[p]
	[syl]嗯…♡嗯…♡[p]
	[_]（虽然对在打开的地方进行的性行为感到不协调[r]
	希尔薇似乎已经开始把自己交给快乐了[p]
[Hx/ev face=c3 tear=2 tx=2-5 ef=2-5 ]
	[syl]啊…♡[Hxns n=p ex=1 ]…嗯…！♡哦！♡♡[p]
	[_]（如果你继续仔细地拨开肉褶[Hxn n=iv]继续挖的话[r]
	希尔薇迟疑地开始发出微微抑制的娇声。[p]
[Hx/ev face=b8 body=3 p=vmm xr=0mm se=2-6 tx=2-6 ef=2-6 ][se/ l=t st=l-wet2 ]
	（像邀请一样[Hxn n=iv]的褶皱吸引着腰的动作越来越激烈く[p]
	[syl]啊！♡…啊！♡♡[name h=1]啊！♡！♡♡[p]
	[_]（从在野外等不介意的声音的粗暴的方法[r]
	希尔薇的[Hxn n=ex]接近。[p]
	（这里的界限也就在那里。[p]
	[syl]啊！♡啊！[if exp="f.g_config.x_speak==1" ]好球…[endif]♡♡[p]
[Hx/ev face=b9 p=v xr=1 z_b=1 tear=3 se=2-8 tx=2-8 ef=2-8 ][se/ st=fin1 ]
	[_]（最后用力推着腰[r]
	[Hxn n=p]全部都是希尔薇的[Hxn n=iv]沉入[Hxn n=z]吐出。[p]
	[syl]哇…！！♡！♡♡[r]
	啊…！♡[if exp="f.g_config.x_speak==1" ]李[endif]嗯…！！♡！♡♡♡[p]
[Hx/ev face=c3 se=3-9 tx=2-9 ef=2-9 ]
	啊…♡嗯…♡[r]
	[name h=1]…♡♡[p]

[jump/ tg=*wd_b_end cond="tf.hist_mode>=1"]
[if exp="f.h_memory.forest>=2" ][else][eval exp="f.h_memory.forest=2" ][endif]
[eval exp="f.h_count.ext+=2, f.h_count.ext_v+=2" ]
[eval exp="f.h_state.v+=2, f.state.lust+=7, f.state.love+=10" ]
[jump/ tg=*wd_b_end ]


;;back场景3
*wd_b_xxx
[Hx/ev face=c1 ef=2-2 p=p_show body=0 hand_L=leg hand_R=leg ][set_h_cg_role][hide_black]
	希尔薇毫不犹豫地挺起腰，懒洋洋地摇晃着屁股。[p]
	[syl]啊~…♡啊~…♡[p]
[Hx/ev face=c2 body=2 ef=3-2 ]
	[_]（变硬了[Hxn n=p]希尔薇用充满期待的目光回头看这边。[p]
	[syl]啊~…♡[name h=1]的[Hxns n=p]…♡♡[p]
	[_]（羞耻心好像也依然感觉到了[r]
	更兴奋的是她满脑子的样子。[p]
	（已经，已经[Hxn n=w]在她开始滴落的裂缝中[Hxn n=p]打中。[p]
[Hx/ev face=c3 p=v xr=0 tear=1 se=3-3 tx=3-3 ef=3-3 ][se/ st=s-wet1 ]
	[syl]嗯…！♡！♡♡[p]
	[_]（慢慢地插入的话就发烧了[Hxn n=iv]表示[Hxn n=p]缠绕[r]
	希尔薇发出恍惚的声音。[p]
[Hx/ev face=c4 body=3 tear=2 p=vmm xr=0mm se=3-4 tx=3-4 ef=3-4 ][se/ l=t st=l-wet2 ]
	（现在就算你关心希尔薇也只会让她着急啊。[p]
	（从一开始就有打腰的声音响起的气势[Hxn n=u]的总和。[p]
	[syl]啊！♡…啊！♡♡[name h=1]啊！♡！♡♡[p]
	[_]（她不顾在野外的情况，开始尽情地喘息。[p]
	（甜美的娇声似乎沉醉在开放感中。[p]
[Hx/ev face=c5 se=3-6 tx=3-5 ef=3-5 ][se/ l=t st=l-wet3 ]
	[syl]啊！♡好可爱…！♡啊！♡！♡♡♡[p]
	[_]（当她进一步加快速度时，她的喉咙格外剧烈地颤抖。[p]
	（和在天空下发出野兽般声音的希尔薇做爱[r]
	正是动物的交尾本身。[p]
	[syl]啊…！♡啊`灬.°！♡♡♡[p]
	[_]（在本能的驱使下[Hxn n=iv]蹂躏快乐[p]
	（用全力的腰攻击希尔薇，气喘吁吁[r]
	希尔薇[Hxn n=z]在吐出之前，动作越来越激烈。[p]
[Hx/ev face=b8 tear=3]
	[syl]哇！！♡！♡♡[r]
	啊！♡啊…！！♡！♡♡♡[p]
	[_]（一心一意的长蛇也确实[Hxn n=ex]时间临近[r]
	而且快感达到了抱不住的量。[p]
[Hx/ev face=c6 p=v xr=1 z_b=3 se=3-8 tx=3-8 ef=3-8 ][se/ st=fin1 ]
	[syl]啊`灬.°！啊！哦♡！啊♡！♡[if exp="f.g_config.x_speak==1" ]喂……喂…[endif]♡！♡♡[p]
	[_]（你可以尽情地把你的体重[Hxn n=u]碰撞[r]
	煮熟的[Hxn n=z]打到她的深处。[p]
	[syl]啊…啊♡！♡啊…♡！♡♡！啊！♡♡♡[p]
	[_]（希尔薇的屁股[Hxn n=ex]因痉挛而颤抖失去控制的脚也折断了膝盖[r]
	她的下半身被狠狠地推着腰，不允许姿势崩溃。[p]
[Hx/ev face=c9 se=3-9 tx=3-9 ef=3-9 ]
	[syl]啊～！♡啊~！♡♡[p]

[jump/ tg=*wd_b_end cond="tf.hist_mode>=1"]
[if exp="f.h_memory.forest>=3" ][else][eval exp="f.h_memory.forest=3" ][endif]
[eval exp="f.h_count.ext+=3, f.h_count.ext_v+=3" ]
[eval exp="f.h_state.v+=6, f.state.lust+=12, f.state.love+=16" ]
[jump/ tg=*wd_b_end ]


;;back结束
*wd_b_end
[hide_role][black]
[_]（[Hxn n=ex]的僵直融化后，希尔薇当场崩溃[r]
调整了呼吸之后，她也站不起来了。[p]
[stop_bgm]…[p]
[return_memory cond="tf.hist_mode>=1" ]
[eval exp="f.x_count.sex+=1, f.x_count.forest+=1, f.h_count.cum+=1" ]

[if exp="f.act.time<=3" ][hide_role][black][stop_bgm]…[p]
[eval exp="f.act.last='sex',f.act.time='morning_forest'" ][return_bace][endif]
[eval exp="f.act.time='forest'" ][day_end]


;;back_CG1
*wd_b_a_cg
[Hx/ev face=a2 p=p_show xr=00 se=00 tx=00 ef=00 body=0 hand_L=leg hand_R=leg ][set_h_cg_role][hide_black]
;[call storage=TF/H/Hcg_set.ks target="*wd_b_show_set" ]
[set_h_cg_role][hide_black]
[h_back tg=*end_cg][h_next tg=*wd_b_a_cg2][s]

*wd_b_a_cg1
[cm][Hx/ev face=a2 p=p_show xr=00 se=00 tx=00 ef=00 body=0 hand_L=leg hand_R=leg ]
[h_back tg=*end_cg][h_next tg=*wd_b_a_cg2][s]
*wd_b_a_cg2
[cm][Hx/ev face=a5 body=1 p=v xr=0 tear=00 se=1-4 tx=1-4 ef=1-4 ]
[h_back tg=*wd_b_a_cg1][h_next tg=*wd_b_a_cg3][s]
*wd_b_a_cg3
[cm][Hx/ev face=a4 body=1 p=vm xr=0m tear=1 se=1-6 tx=2-3 ef=2-3 ]
[h_back tg=*wd_b_a_cg2][h_next tg=*wd_b_a_cg4][s]
*wd_b_a_cg4
[cm][Hx/ev face=a5 body=2 tx=2-3 ef=2-3 ]
[h_back tg=*wd_b_a_cg3][h_next tg=*wd_b_a_cg5][s]
*wd_b_a_cg5
[cm][Hx/ev face=a6 tear=1 tx=1-7 ef=1-7 ]
;[Hx/ev face=a5 ][Hx/ev se=1-6 tx=2-3 ef=2-3 xr=2 ef2=2 ]
[h_back tg=*wd_b_a_cg4][h_next tg=*wd_b_a_cg6][s]
*wd_b_a_cg6
[cm][Hx/ev face=b7 body=2 tear=2 p=vm xr=0m z_b=00 se=1-6 tx=1-7 ef=1-7 ]
;[Hx/ev body=b2 arm=ab1 face=a6 ][Hx/ev tx=1-7 ef=1-7 xr=3 ef2=3 ]
[h_back tg=*wd_b_a_cg5][h_next tg=*wd_b_a_cg7][s]
*wd_b_a_cg7
[cm][Hx/ev face=a10 body=3 p=v xr=1 z_b=1 se=1-9 tx=1-9 ef=1-9 ]
;[Hx/ev body=b3 arm=ab2 face=a7 ][Hx/ev se=1-8 tx=1-8 ef=1-8 xr=3 ]
[h_back tg=*wd_b_a_cg6][h_next tg=*wd_b_a_cg8][s]
*wd_b_a_cg8
[cm][Hx/ev face=c3 se=00 tx=1-10 ef=1-10 ]
;[Hx/ev face=a8 ][Hx/ev se=00 tx=1-9 ef=1-9 xr=4 ]
[h_back tg=*wd_b_a_cg7][h_next tg=*end_cg][s]

;[h_back tg=*wd_b_a_cg7][h_next tg=*wd_b_a_cg9][s]
;*wd_b_a_cg9
;[cm][Hx/ev face=a9 ][Hx/ev se=00 tx=1-10 ef=1-10 xr=5 ]
;[h_back tg=*wd_b_a_cg8][h_next tg=*end_cg][s]

;;back_CG2
*wd_b_b_cg
[Hx/ev face=b7 ef=2-2 p=p_show xr=00 se=00 tx=00 ef=00 body=0 hand_L=leg hand_R=leg ][set_h_cg_role][hide_black]
;[Hx/ev body=b0 arm=ab0 face=b1 ][Hx/ev ef2=1 ]
;[call storage=TF/H/Hcg_set.ks target="*wd_b_show_set" ]
;[set_h_cg_role][hide_black]

;*wd_b_xx_cg
;[h_back tg=*end_cg][h_next tg=*wd_b_b_cg2][s]
*wd_b_b_cg1
[cm][Hx/ev face=b7 ef=2-2 p=p_show xr=00 se=00 tx=00 ef=00 body=0 hand_L=leg hand_R=leg ]
;[Hx/ev face=b1 ][Hx/ev ef=00 ]
[h_back tg=*end_cg][h_next tg=*wd_b_b_cg2][s]

*wd_b_b_cg2
[cm][Hx/ev face=b3 body=1 p=v xr=0 tear=00 se=2-3 tx=1-4 ef=2-3 ]
;[Hx/ev face=b2 body=b0 ][Hx/ev se=00 tx=00 ef=2-2 xr=00 ]
[h_back tg=*wd_b_b_cg1][h_next tg=*wd_b_b_cg3][s]
*wd_b_b_cg3
[cm][Hx/ev face=b5 body=2 p=vm xr=0m tear=1 se=2-4 tx=2-3 ef=2-4 ]
;[Hx/ev body=b1 arm=ab0 face=b3 ][Hx/ev se=2-3 tx=1-4 ef=2-3 xr=1 ef2=1 ]
[h_back tg=*wd_b_b_cg2][h_next tg=*wd_b_b_cg4][s]
*wd_b_b_cg4
[cm][Hx/ev face=c3 body=2 p=vm xr=0m tear=2 se=2-4 tx=2-5 ef=2-5 ]
;[Hx/ev body=b2 arm=ab1 face=b4 ][Hx/ev se=2-4 tx=2-3 ef=2-4 xr=2 ef2=2 ]
[h_back tg=*wd_b_b_cg3][h_next tg=*wd_b_b_cg5][s]
*wd_b_b_cg5
[cm][Hx/ev face=b8 body=3 p=vmm xr=0mm z_b=00 tear=2 se=2-6 tx=2-6 ef=2-6 ]
;[Hx/ev body=b2 arm=ab1 face=b5 ][Hx/ev se=2-4 tx=2-5 ef=2-5 xr=2 ef2=2 ]
[h_back tg=*wd_b_b_cg4][h_next tg=*wd_b_b_cg6][s]
*wd_b_b_cg6
[cm][Hx/ev face=b9 p=v xr=1 z_b=1 tear=3 se=2-8 tx=2-8 ef=2-8 ]
;[Hx/ev body=b3 arm=ab2 face=b6 ][Hx/ev se=2-6 tx=2-6 ef=2-6 xr=3 ef2=3 ]
[h_back tg=*wd_b_b_cg5][h_next tg=*wd_b_b_cg7][s]
*wd_b_b_cg7
[cm][Hx/ev face=c3 se=3-9 tx=2-9 ef=2-9 ]
;[Hx/ev face=b7 ][Hx/ev se=2-8 tx=2-8 ef=2-8 xr=4 ]
[h_back tg=*wd_b_b_cg6][h_next tg=*end_cg][s]
;[h_back tg=*wd_b_b_cg6][h_next tg=*wd_b_b_cg8][s]
;*wd_b_b_cg8
;[cm]
;[Hx/ev face=b8 ][Hx/ev se=00 tx=2-9 ef=2-9 xr=5 ]
;[h_back tg=*wd_b_b_cg7][h_next tg=*end_cg][s]

;;back_CG3
*wd_b_c_cg
[Hx/ev face=c1 ef=2-2 p=p_show body=1 ef=00 hand_L=leg hand_R=leg ][set_h_cg_role][hide_black]
;[Hx/ev body=b0 face=c1 ][Hx/ev ef2=1 ef=2-2 ]
;[call storage=TF/H/Hcg_set.ks target="*wd_b_show_set" ]
;[set_h_cg_role][hide_black]

;*wd_b_xxx_cg
;[h_back tg=*end_cg][h_next tg=*wd_b_c_cg2][s]
*wd_b_c_cg1
[cm][Hx/ev face=c1 ef=2-2 p=p_show body=1 ef=00 hand_L=leg hand_R=leg ]
;[Hx/ev face=c1 ][Hx/ev ef=2-2 ]
[h_back tg=*end_cg][h_next tg=*wd_b_c_cg2][s]
*wd_b_c_cg2
[cm][Hx/ev face=c2 body=2 p=p_show xr=00 tear=00 se=00 tx=00 ef=3-2 ]
;[Hx/ev body=b0 face=c2 ][Hx/ev se=00 tx=00 ef=3-2 xr=00 ef2=1 ]
[h_back tg=*wd_b_c_cg1][h_next tg=*wd_b_c_cg3][s]

*wd_b_c_cg3
[cm][Hx/ev face=c3 body=2 p=v xr=0 tear=1 se=3-3 tx=3-3 ef=3-3 ]
;[Hx/ev body=b1 arm=ab0 face=c3 ][Hx/ev se=3-3 tx=3-4 ef=3-3 xr=1 ef2=2 ]
[h_back tg=*wd_b_c_cg2][h_next tg=*wd_b_c_cg4][s]
*wd_b_c_cg4
[cm][Hx/ev face=c4 body=3 tear=2 p=vmm xr=0mm se=3-4 tx=3-4 ef=3-4 ]
;[Hx/ev body=b2 arm=ab1 face=c4 ][Hx/ev se=3-4 tx=3-3 ef=3-4 xr=3 ef2=2 ]
[h_back tg=*wd_b_c_cg3][h_next tg=*wd_b_c_cg5][s]
*wd_b_c_cg5
[cm][Hx/ev face=c5 tear=2 se=3-6 tx=3-5 ef=3-5 ]
;[Hx/ev body=b3 arm=ab2 face=c5 ][Hx/ev se=3-6 tx=3-5 ef=3-5 xr=3 ef2=3 ]
[h_back tg=*wd_b_c_cg4][h_next tg=*wd_b_c_cg6][s]
*wd_b_c_cg6
[cm][Hx/ev face=b8 tear=3 p=vmm xr=0mm z_b=00 se=3-6 tx=3-5 ef=3-5 ]
;[Hx/ev face=c6 ][Hx/ev se=3-6 tx=3-6 ef=3-6 ]
[h_back tg=*wd_b_c_cg5][h_next tg=*wd_b_c_cg7][s]
*wd_b_c_cg7
[cm][Hx/ev face=c6 p=v xr=1 z_b=3 se=3-8 tx=3-8 ef=3-8 ]
;[Hx/ev face=c7 ][Hx/ev se=3-8 tx=3-8 ef=3-8 xr=4 ]
[h_back tg=*wd_b_c_cg6][h_next tg=*wd_b_c_cg8][s]
*wd_b_c_cg8
[cm][Hx/ev face=c9 se=3-9 tx=3-9 ef=3-9 ]
;[Hx/ev face=c8 ][Hx/ev se=3-9 tx=3-9 ef=3-9 xr=5 ]
[h_back tg=*wd_b_c_cg7][h_next tg=*end_cg][s]

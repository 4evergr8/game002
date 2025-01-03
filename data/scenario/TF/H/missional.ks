;;missional_decide
*missional_decide
[cm][call storage=TF/H/Hcg_set.ks target="*missional_set" ][call storage=TF/H/Hcg_set.ks target="*missional_show_set" ]
[if exp="tf.hist_mode==11" ][jump/ tg=*a_cg ]
[elsif exp="tf.hist_mode==12" ][jump/ tg=*b_cg ]
[elsif exp="tf.hist_mode==13" ][jump/ tg=*c_cg ][endif]
[bgm st=MT][show_message_w][jump/ tg=*jump ]

;;導入
*select_c
[cm][jump/ st=talk/room tg=*before_menu cond="f.g_config.H_setting==0"]
[save_dress][stop_bgm][black][syl]抱我♡[p]
[_]抱起希露薇娇小的躯体放到寝室的床上。[p][bgm st=MT]

;[choice_xy]
;[if exp="f.d_dress.tt=='g' || f.d_dress.tt=='j' || f.d_dress.tt=='k' || f.d_dress.tt=='jx' || f.d_dress.tt=='kx' || f.d_dress.cc=='ssx' || f.d_dress.cc=='slx'" ]
;[btn/ l=y tg=*jump gr=ch/wear ][endif][btn/ tg=*unwear gr=ch/unwear exp="tf.r=='strip'" ][s]

;*unwear
;[eval exp="f.d_dress.tt='non',f.d_dress.cc='non',f.d_dress.tc='nonnon',f.d_dress.sub='single'" ]

*jump
[cm][call storage=TF/H/Hcg_set.ks target="*missional_set" ]
[call storage=TF/H/Hcg_set.ks target="*missional_show_set" ]
[if exp="tf.hist_mode==1" ][jump/ tg=*x ]
[elsif exp="tf.hist_mode==2" ][jump/ tg=*drunk1 ]
[elsif exp="tf.hist_mode==3" ][jump/ tg=*drunk2 ][endif]

[if exp="f.act.last=='drunk1'" ][jump/ tg=*drunk1 ]
[elsif exp="f.act.last=='drunk2'" ][jump/ tg=*drunk2 ]
[else][jump/ tg=*x ][endif]

;;通常押し倒し
*x
[hcg/ eyes=a1 head=h1 ][h_ef/ tx=1-1 ef=1-1 ]
[show_effect][hide_black]
	[syl][name h=1]…♡[p]
	[_]（她抬起双脚、随性的盘绕起来。[p]
	（眼前的希露薇目光中闪耀着快乐诱惑着这里。[p]
	[syl]那么…麻烦…[Hxns n=p ex=1 ]♡…[Hxns n=x ex=1 ]开始…[name h=1]♡[p]
	[hcg/ h=2 ][h_ef/ se=1-1.5 tx=1-1.5 ef=1-1.5 ]
	[_]（有馀地的插入[Hxn n=v]希露薇那敞开的裂口之中[p]
[hcg/ eyes=a2 h=4 body=b1b ][se/ st=s-wet1 ]
[h_ef/ se=1-2 tx=1-2 ef=1-2 xr=1 ]
	[syl]啊♡啊啊♡♡[name h=1]の…[Hxns n=p ex=1 ]♡♡♡[p]
	[_]（感觉比平时时段更热[Hxn n=iv]的阴道而停止了侵入。[p]
[hcg/ eyes=a3 ][h_ef/ se=1-3 tx=1-3 ef=1-3 ]
	[syl]嗯…♡…[Hxns n=p ex=1 ]继续、再深入[Hxns n=v ex=1 ]里面…♡♡♡[p]
[hcg/ eyes=a4 h=5 body=b1c ][se/ st=s-wet1 ]
[h_ef/ se=1-4 tx=1-4 ef=1-4 xr=2 ]
	嗯…♡啊…っ♡♡[p]
	[_]（根部就这样被邀请样的沉入了进去、[r]
	然后希露薇的身体开始了震荡。[p]
	[syl]啊…♡嗯唔…[Hxns n=p ex=1 ]好厉害♡♡[p]
[hcg/ eyes=a5 ][h_ef/ se=1-5 tx=1-5 ef=1-5 ]
	哈啊…♡[name h=1]…♡♡[p]
	随意…动吧…[Hxns n=v ex=1 ]请使用喜欢…♡♡[p]
	[_]（一边听着私语一边握着希露薇的手。[p]
[hcg/ eyes=a6 h=6 ][se/ l=t st=l-wet2 ][h_ef/ se=1-6 tx=1-6 ef=1-6 xr=3 ]
	[syl]啊…[Hxns n=p ex=1 ]咿呜♡!♡♡咿…♡[p]
	[_]（骚动妩媚的姿态进入眼中、无法忍受的[Hxn n=v]持续用腰拍打着秘部。[p]
[hcg/ eyes=a7 body=b2c arm=a2 ][se/ l=t st=l-wet3 ][h_ef/ se=1-7 tx=1-7 ef=1-7 ]
	[syl]啊"♡!♡啊啊…!♡!♡♡[p]
	[_]（希露薇在激烈的活塞运动产生[Hxn n=ex]小小的绝顶反映而开始甜美的喘声。[p]
	[syl][name h=1]…啊"…♡…[Hxns n=v ex=1 b=私の]!♡♡[p]
	[_]（一边感受着希露薇逐渐升高的体温一边体会着[Hxn n=iv]阴道内部震荡产生的快乐。[p]
[hcg/ eyes=a8 ][h_ef/ se=1-8 tx=1-8 ef=1-8 ]
	[syl]唔嗯…♡嗯"…♡呼唔♡♡[p]
	[_]（…不久后就渐渐地到达临界点附近[p]
[hcg/ eyes=a9 h=7 body=b3d arm=a3 ][h_ef/ se=1-9 tx=1-9 ef=1-9 xr=4 ]
[se/ st=fin1 ]
	[syl]啊"…!♡已经…[Hxns n=v ex=1 b=私の]啊"…♡!♡♡[p]
	[_]（腰部拍打着以最后的气势突入希露薇的[Hxn n=u]深处激烈的释放着欲望。[p]
[hcg/ eyes=a10 ][h_ef/ se=1-10 tx=1-10 ef=1-10 ]
	[syl]嗯"…♡啊"…!♡…[Hxns n=v ex=1 ]ッ
	[if exp="f.g_config.x_speak==1" ]高潮…[Hxns n=v ex=1 ]高潮吧[endif]〜!♡♡!♡[p]
	[_]（虽然过程中[Hxn n=ex]希露薇的身体经历了数次绝顶[r]
	但是注入精液[Hxn n=z]还是对她的身体造成了极大的震动[p]
	[syl]啊"……♡[name h=1]…♡♡[p]
	[_]（一阵阵的痉挛收缩、说出一个字都要竭尽全力、[r]
	希露薇的手与腰部更紧的缠绕着这里。[p]
[hcg/ eyes=a11 h=8 ][h_ef/ se=1-11 tx=1-11 ef=1-11 xr=5 ]
	[syl]哈啊……[Hxns n=v ex=1 ]♡♡咿…♡♡[p]
	[_]（希露薇的表情变得迷迷煳煳、[r]
	少许的抽出部分体力开始调整呼吸。[p]
	（她继续紧密的缠绕结合在一起沉浸在余韵快乐时间里…。[p]

[if exp="tf.hist_mode>=1" ][jump/ tg=*end ][endif]
[if exp="f.h_memory.missional>=1" ][else][eval exp="f.h_memory.missional=1" ][endif]

[eval exp="f.state.lust+=4, f.state.love+=10" ]
[eval exp="f.h_state.v+=3, f.h_count.ext+=3, f.h_count.ext_v+=3, f.h_count.cum+=1, f.x_count.sex+=1" ]

[if exp="f.act.time<=3" ][hide_role][black][stop_bgm]…[p]
;[load_dress]
[eval exp="f.act.last='sex',f.act.time='morning_missional'" ][return_bace][endif]
[eval exp="f.act.time='sex'" ][jump/ tg=*end ]

;;酔い1
*drunk1
[hcg/ eyes=b1 head=h2 h=2 ][h_ef/ se=2-1 tx=2-1 ef=2-1 ]
[show_effect][hide_black]
	[syl][name h=1]…♡[p]
	[_]（抬起她双脚、随性的盘绕起来。[lr]
	（眼前的希露薇湿润的目光中闪耀着快乐诱惑着这里。[p]
	[syl][name h=1]♡♡[Hxns n=x ex=1 ]…[Hxns n=p ex=1 ]快点…♡♡♡[p]
	[_]（在希露薇色气的撒娇方式下腰部被诱惑着沉入。[p]
[hcg/ h=4 body=b1b eyes=b2 ][h_ef/ se=2-1.5 tx=2-1.5 ef=2-1.5 xr=1 ][se/ st=s-wet2 ][p]
[hcg/ h=5 body=b1c ][h_ef/ se=2-2 tx=2-2 ef=2-2 xr=2 ][se/ st=s-wet1 ]
	[syl]嗯…♡啊…[Hxns n=p ex=1 ]进来了啊♡♡[p]
	[_]（东西逐渐的沉入到[Hxn n=p]根部使希露薇小小的身体开始颤抖。[p]
	[syl]啊…♡嗯…♡[Hxns n=v ex=1 ]…好舒服♡♡[p]
	[_]（她的阴道[Hxn n=iv]比平时时段更温暖、温柔的包裹着[Hxn n=p]包裹着阴茎。[p]
[hcg/ eyes=b3 ][h_ef/ se=2-3 tx=2-3 ef=2-3 ]
	[syl]哈啊…♡♡[name h=1]…♡♡[lr]
	[Hxns n=v ex=1 ]喜欢刺激…♡的做[Hxns n=x ex=1 ]可以吗？♡♡♡♡[p]
	[_]（一边听着私语一边握着希露薇的手。[p]
[hcg/ eyes=b4 h=6 ][se/ l=t st=l-wet3 ]
[h_ef/ se=2-4 tx=2-4 ef=2-4 xr=3 ]
	[syl]啊"…♡!♡♡咿…!♡♡♡[p]
	[_]（酒精融合深入在她的吐息当中、[r]
	腰部强势的付打着[Hxn n=v]带有炽热的秘部。[p]
[hcg/ eyes=b5 body=b2c arm=a2 ][h_ef/ se=2-5 tx=2-5 ef=2-5 ]
	[syl]啊"♡…♡!♡
	[if exp="f.g_config.x_speak==1" ]啊゛♡……[Hxns n=v ex=1 ]高潮♡♡[Hxns n=v ex=1 ]再来高潮吧♡♡[r][endif]
	啊啊…!♡♡!♡啊!♡♡♡[p]
	[_]（希露薇激烈的噗呲噗呲的[Hxn n=ex]绝顶反映着[r]
	表情像是被奖励一般提升着甜美的喘声。[p]
	[syl][name h=1]…っ啊"♡♡啊"…♡!♡♡[p]
	[_]（一边体验从阴道一阵阵的持续震动中带来的[Hxn n=iv]快乐一边感受着希露薇的体温。[p]
[hcg/ eyes=b6 ][h_ef/ se=2-6 tx=2-6 ef=2-6 ]
	[syl]唔嗯…♡♡嗯"…♡♡啊…♡!♡!♡!♡♡[p]
	[_]（…不久后就渐渐地到达临界点附近。[p]
[hcg/ eyes=b7 h=7 body=b3d arm=a3 ][se/ st=fin1 ]
[h_ef/ se=2-7 tx=2-7 ef=2-7 xr=4 ]
	[syl]啊"…!♡♡啊…[Hxns n=v ex=1 ]♡!♡♡[p]
	[if exp="f.g_config.x_speak==1" ]高潮…[Hxns n=v ex=1 ]高潮[endif]！♡！♡♡[p]
	[_]（腰部拍打着以最后的气势突入希露薇的[Hxn n=u]深处激烈的释放着欲望。[p]
[hcg/ eyes=b8 ][h_ef/ se=2-8 tx=2-8 ef=2-8 ]
	[syl]嗯…♡♡[Hxns n=v ex=1 ]咿"…!♡…〜!♡!!♡♡!♡♡[p]
	[_]（虽然过程中[Hxn n=ex]希露薇的身体经历了数次绝顶、[r]
	但是注入[Hxn n=z]精液还是对她的身体造成了极大的震动。[p]
[hcg/ eyes=b9 h=8 ][h_ef/ se=2-9 tx=2-9 ef=2-9 xr=5 ]
	[syl]啊"……♡♡[name h=1]…♡♡♡[p]
	[_]（一阵阵的痉挛收缩、说出一个字都要竭尽全力、[r]
	希露薇的手与腰部更紧的缠绕着这里。[p]
[hcg/ eyes=b10 ]
	[syl]哈啊…[Hxns n=p ex=1 ]…♡♡[Hxns n=x ex=1 ]好喜欢…♡♡咿唔…♡♡♡[p]
	[_]（希露薇的表情变得迷迷煳煳[r]
	她的[Hxn n=iv]蜜壶[Hxn n=p]继续缠绕着脉动痉挛中的阴茎。[p]
	（在余韵快乐时间里继续紧密[Hxn n=x]的缠绕结合在一起沉浸。[p]

[if exp="tf.hist_mode>=1" ][jump/ tg=*end ][endif]
[eval exp="f.state.lust+=10, f.state.love+=15" ]
[eval exp="f.h_state.v+=8, f.h_count.ext+=6, f.h_count.ext_v+=5, f.h_count.ext_m+=1" ]
[eval exp="f.x_count.sex+=3, f.h_count.cum+=3, f.act.time='drunk1'" ]
[if exp="f.h_memory.drunk>=1" ][else][eval exp="f.h_memory.drunk=1" ][endif]
[jump/ tg=*end ]

;;酔い2
*drunk2
[hcg/ eyes=c1 head=h3 h=2 ][h_ef/ se=3-1 tx=3-1 ef=3-1 ]
[show_effect][hide_black]
[syl][name h=1]…♡[p]
[_]（她抬起双脚、随性的盘绕起来。[lr]
（眼前的希露薇目光中闪耀着愉悦诱惑着这里。[p]
[syl][name h=1]…♡[Hxns n=p ex=1 ]♡[Hxns n=p ex=1 ]♡快点吧…♡♡♡[p]
[_]（持续着发出甜美的声音希露薇的色气引诱着腰部无法回避的下沉。[p]

[hcg/ h=4 body=b1b ][h_ef/ se=3-1.5 tx=3-1.5 ef=3-1.5 xr=1 ]
[se/ st=s-wet2 ][p]

[hcg/ eyes=c2 h=5 body=b1c ][se/ st=s-wet1 ]
[h_ef/ se=3-2 tx=3-2 ef=3-2 xr=2 ]
[syl]嗯…♡咿啊♡っ[Hxns n=p ex=1 ]微信公众号：名堂游戏！♡♡♡[p]
[_]（东西逐渐的沉入到根部使希露薇的[Hxn n=ex]身体开始颤抖。[p]
[syl]啊…♡啊啊…♡[name h=1]の[Hxns n=p ex=1 ]的[Hxns n=v ex=1 b=私の]…全部的♡♡[p]
[_]（她的[Hxn n=iv]阴道变得比平常时更热、[r]
柔软的褶皱[Hxn n=p]紧紧的盘绕在阴茎上。[p]

[hcg/ eyes=c3 ][h_ef/ se=3-3 tx=3-3 ef=3-3 ]
[syl]哈啊〜♡♡♡[name h=1]…♡♡♡[p]
…[Hxns n=v ex=1 ]♡♡我的[Hxns n=v ex=1 ]…♡♡[r]
[name h=1]的[Hxns n=p ex=1 ]在里面…咕噜…♡♡咕噜咕噜…？♡♡♡[p]
[_]（希露薇一边发出诱惑的甜美声音一边用脚紧紧的盘绕在腰部上。[p]

[hcg/ eyes=c4 h=6 ][se/ l=t st=l-wet3 ]
[h_ef/ se=3-4 tx=3-4 ef=3-4 xr=3 ]
[syl]啊"…!♡[Hxns n=p ex=1 ]咿咕…!♡♡♡…っ!♡♡[p]
[_]（她的呼吸混合着酒精中毒、[r]
深入激烈、腰部[Hxn n=v]想要融化一般拍打着秘部。[p]

[hcg/ eyes=c5 body=b2c arm=a2 ]
[h_ef/ se=3-5 tx=3-5 ef=3-5 ]
[syl]啊"♡♡
[if exp="f.g_config.x_speak==1" ][Hxns n=v ex=1 ]高潮！♡…[Hxns n=v ex=1 ]高潮！♡♡[r][endif]
高…!♡♡!♡啊啊"…!♡♡!♡…[Hxns n=v ex=1 ]♡!♡♡[p]
[_]（希露薇一边粗暴的进行着活塞一边[Hxn n=ex]反复的绝顶、[r]
恍惚的表情提升着妖艳的喘声。[p]
[syl][name h=1]…っ♡♡♡啊"♡!♡♡啊"…♡…!!♡!♡♡♡[p]
[_]（一边体验从蜜壶一阵阵的持续震动中带来的[Hxn n=iv]快乐一边感受着希露薇的体温。[p]

[hcg/ eyes=c6 ][h_ef/ se=3-6 tx=3-6 ef=3-6 ]
[syl]唔咕…!♡♡嗯"…♡♡咿…♡!♡!♡♡!!♡♡[p]
[_]（…不久后就渐渐地到达临界点附近。[p]

[hcg/ eyes=c7 h=7 body=b3d arm=a3 ][se/ st=fin1 ]
[h_ef/ se=3-7 tx=3-7 ef=3-7 xr=4 ]
[syl]啊啊"…!♡♡!♡啊"…!♡!♡♡[r]
[if exp="f.g_config.x_speak==1" ][Hxns n=v ex=1 ]高潮！♡♡[Hxns n=v ex=1 ]高潮吧吧..！！♡！♡！♡♡♡♡[p][endif]
[_]（将最后全部的体重交付入希露薇臀部[r]
欲望在[Hxn n=u]她的最深之处爆发。[p]

[hcg/ eyes=c8 ][h_ef/ se=3-8 tx=3-8 ef=3-8 ]
[syl]嗯"…♡♡啊来"…!♡…〜!♡♡!!!♡[r]
…♡♡…っ!!!!♡♡!♡♡[p]
[_]（长时间绵延不断的[Hxn n=ex]性交让希露薇重复的绝顶痉挛[r]
最后的射精对她的身体造成了极大的震动。[p]

[hcg/ eyes=c9 h=8 ][h_ef/ se=3-9 tx=3-9 ef=3-9 xr=5 ]
[syl]啊"……♡♡♡[name h=1]…♡♡♡♡[p]
[_]（希露薇的痉挛暂时停住、[r]
勉强的说出了她自己也不确定包含何意的话。[p]
（但是希露薇的手脚却不忍释手的盘绕着这里、[r]
一丝也不愿意分离的样子。[p]

[hcg/ eyes=c10 h=9 ][se/ l=t st=l-wet3 ]
[h_ef/ se=3-10 tx=3-10 ef=3-10 xr=6 ]
[syl]啊"……?!♡♡♡[Hxns n=p ex=1 y=の]还要…?!♡![r]♡
♡♡啊"啊……♡…っ…!♡!♡啊"……♡♡[p]
[_]（因为被肉壁[Hxn n=iv]吸附而瞬间恢复硬度的[Hxn n=p]东西[r]
再次[Hxn n=v]被她接纳。[p]

[hcg/ eyes=c11 ]
[h_ef/ se=3-11 tx=3-11 ef=3-11 ]
[syl]啊〜……[Hxns n=v ex=1 ]っ♡♡♡!啊"啊〜!♡!♡……!!♡♡♡[p]
[if exp="f.g_config.x_speak==1" ][Hxns n=v ex=1 ]高潮！♡高潮！♡♡[r]ま"だ[Hxns n=v ex=1 ]高潮吧……！♡！♡♡♡[p][endif]
[_]（冲动持续在腰部流动思考被溶、[r]
一整晚都和[Hxn n=x]她持续在高潮之中…。[p]

[stop_se]
[if exp="tf.hist_mode>=1" ][jump/ tg=*end ][endif]
[eval exp="f.state.lust+=20, f.state.love+=30" ]
[eval exp="f.h_count.ext+=15, f.h_count.ext_v+=10, f.h_count.ext_m+=5" ]
[eval exp="f.x_count.sex+=5, f.h_count.cum+=5, f.h_state.v+=15, f.act.time='drunk2'" ]
[if exp="f.h_memory.drunk>=2" ][else][eval exp="f.h_memory.drunk=2" ][endif]
[jump/ tg=*end ]

;;エンド
*end
[hide_role][black][stop_bgm]…[p]
[return_memory cond="tf.hist_mode>=1" ]
;[load_dress]
[day_end]

;;通常押し倒しCG
*a_cg
[hcg/ eyes=a1 head=h1 ][h_ef/ tx=1-1 ef=1-1 ][show_effect][hide_black]
[h_back tg=*end_cg][h_next tg=*a_cg1.5][s]

*a_cg1
[cm][h_ef/ se=00 tx=1-1 ef=1-1 ]
[h_back tg=*end_cg][h_next tg=*a_cg1.5][s]
*a_cg1.5
[cm][hcg/ eyes=a1 h=2 ][h_ef/ se=1-1.5 tx=1-1.5 ef=1-1.5 xr=00 ]
[h_back tg=*a_cg1][h_next tg=*a_cg2][s]
*a_cg2
[cm][hcg/ eyes=a2 h=4 body=b1b ][h_ef/ se=1-2 tx=1-2 ef=1-2 xr=1 ]
[h_back tg=*a_cg1.5][h_next tg=*a_cg3][s]
*a_cg3
[cm][hcg/ eyes=a3 h=4 ][h_ef/ se=1-3 tx=1-3 ef=1-3 xr=1 ]
[h_back tg=*a_cg2][h_next tg=*a_cg4][s]
*a_cg4
[cm][hcg/ eyes=a4 h=5 body=b1c ][h_ef/ se=1-4 tx=1-4 ef=1-4 xr=2 ]
[h_back tg=*a_cg3][h_next tg=*a_cg5][s]
*a_cg5
[cm][hcg/ eyes=a5 h=5 ][h_ef/ se=1-5 tx=1-5 ef=1-5 xr=2 ]
[h_back tg=*a_cg4][h_next tg=*a_cg6][s]
*a_cg6
[cm][hcg/ eyes=a6 h=6 ][h_ef/ se=1-6 tx=1-6 ef=1-6 xr=3 ]
[h_back tg=*a_cg5][h_next tg=*a_cg7][s]
*a_cg7
[cm][hcg/ eyes=a7 body=b2c arm=a2 ][h_ef/ se=1-7 tx=1-7 ef=1-7 ]
[h_back tg=*a_cg6][h_next tg=*a_cg8][s]
*a_cg8
[cm][hcg/ eyes=a8 h=6 ]
[h_ef/ se=1-8 tx=1-8 ef=1-8 xr=3 ][h_back tg=*a_cg7][h_next tg=*a_cg9][s]
*a_cg9
[cm][hcg/ eyes=a9 h=7 body=b3d arm=a3 ][h_ef/ se=1-9 tx=1-9 ef=1-9 xr=4 ]
[h_back tg=*a_cg8][h_next tg=*a_cg10][s]
*a_cg10
[cm][hcg/ eyes=a10 h=7 ][h_ef/ se=1-10 tx=1-10 ef=1-10 xr=4 ]
[h_back tg=*a_cg9][h_next tg=*a_cg11][s]
*a_cg11
[cm][hcg/ eyes=a11 h=8 ][h_ef/ se=1-11 tx=1-11 ef=1-11 xr=5 ]
[h_back tg=*a_cg10][h_next tg=*end_cg][s]

;;酔い1
*b_cg
[hcg/ eyes=b1 head=h2 h=2 ][h_ef/ se=2-1 tx=2-1 ef=2-1 ]
[show_effect][hide_black]
[h_back tg=*end_cg][h_next tg=*b_cg1.5][s]

*b_cg1
[cm][hcg/ eyes=b1 body=b1a h=2 ][h_ef/ se=2-1 tx=2-1 ef=2-1 xr=00 ]
[h_back tg=*end_cg][h_next tg=*b_cg1.5][s]
*b_cg1.5
[cm][hcg/ eyes=b2 h=4 body=b1b ][h_ef/ se=2-1.5 tx=2-1.5 ef=2-1.5 xr=1 ]
[h_back tg=*b_cg1][h_next tg=*b_cg2][s]
*b_cg2
[cm][hcg/ eyes=b2 h=5 body=b1c ][h_ef/ se=2-2 tx=2-2 ef=2-2 xr=2 ]
[h_back tg=*b_cg1.5][h_next tg=*b_cg3][s]
*b_cg3
[cm][hcg/ eyes=b3 h=5 ][h_ef/ se=2-3 tx=2-3 ef=2-3 xr=2 ]
[h_back tg=*b_cg2][h_next tg=*b_cg4][s]
*b_cg4
[cm][hcg/ eyes=b4 h=6 body=b1c ][h_ef/ se=2-4 tx=2-4 ef=2-4 xr=3 ]
[h_back tg=*b_cg3][h_next tg=*b_cg5][s]
*b_cg5
[cm][hcg/ eyes=b5 body=b2c arm=a2 ][h_ef/ se=2-5 tx=2-5 ef=2-5 ]
[h_back tg=*b_cg4][h_next tg=*b_cg6][s]
*b_cg6
[cm][hcg/ eyes=b6 h=6 ][h_ef/ se=2-6 tx=2-6 ef=2-6 xr=3 ]
[h_back tg=*b_cg5][h_next tg=*b_cg7][s]
*b_cg7
[cm][hcg/ eyes=b7 h=7 body=b3d arm=a3 ][h_ef/ se=2-7 tx=2-7 ef=2-7 xr=4 ]
[h_back tg=*b_cg6][h_next tg=*b_cg8][s]
*b_cg8
[cm][hcg/ eyes=b8 h=7 ][h_ef/ se=2-8 tx=2-8 ef=2-8 xr=4 ]
[h_back tg=*b_cg7][h_next tg=*b_cg9][s]
*b_cg9
[cm][hcg/ eyes=b9 h=8 ][h_ef/ se=2-9 tx=2-9 ef=2-9 xr=5 ]
[h_back tg=*b_cg8][h_next tg=*b_cg10][s]
*b_cg10
[cm][hcg/ eyes=b10 ]
[h_back tg=*b_cg9][h_next tg=*end_cg][s]

;;酔い2
*c_cg
[hcg/ eyes=c1 head=h3 h=2 ][h_ef/ se=3-1 tx=3-1 ef=3-1 ]
[show_effect][hide_black]
[h_back tg=*end_cg][h_next tg=*c_cg1.5][s]

*c_cg1
[cm][hcg/ eyes=c1 h=3 body=b1a ][h_ef/ se=3-1 tx=3-1 ef=3-1 xr=00 ]
[h_back tg=*end_cg][h_next tg=*c_cg1.5][s]
*c_cg1.5
[cm][hcg/ eyes=c1 h=4 body=b1b ][h_ef/ se=3-1.5 tx=3-1.5 ef=3-1.5 xr=1 ]
[h_back tg=*c_cg1][h_next tg=*c_cg2][s]
*c_cg2
[cm][hcg/ eyes=c2 h=5 body=b1c ][h_ef/ se=3-2 tx=3-2 ef=3-2 xr=2 ]
[h_back tg=*c_cg1.5][h_next tg=*c_cg3][s]
*c_cg3
[cm][hcg/ eyes=c3 h=5 ][h_ef/ se=3-3 tx=3-3 ef=3-3 xr=2 ]
[h_back tg=*c_cg2][h_next tg=*c_cg4][s]
*c_cg4
[cm][hcg/ eyes=c4 h=6 body=b1c ][h_ef/ se=3-4 tx=3-4 ef=3-4 xr=3 ]
[h_back tg=*c_cg3][h_next tg=*c_cg5][s]
*c_cg5
[cm][hcg/ eyes=c5 body=b2c arm=a2 ][h_ef/ se=3-5 tx=3-5 ef=3-5 ]
[h_back tg=*c_cg4][h_next tg=*c_cg6][s]
*c_cg6
[cm][hcg/ eyes=c6 ][hcg/ h=6 ][h_ef/ se=3-6 tx=3-6 ef=3-6 xr=3 ]
[h_back tg=*c_cg5][h_next tg=*c_cg7][s]
*c_cg7
[cm][hcg/ eyes=c7 h=7 body=b3d arm=a3 ][h_ef/ se=3-7 tx=3-7 ef=3-7 xr=4 ]
[h_back tg=*c_cg6][h_next tg=*c_cg8][s]
*c_cg8
[cm][hcg/ eyes=c8 h=7 ][h_ef/ se=3-8 tx=3-8 ef=3-8 xr=4 ]
[h_back tg=*c_cg7][h_next tg=*c_cg9][s]
*c_cg9
[cm][hcg/ eyes=c9 h=8 ][h_ef/ se=3-9 tx=3-9 ef=3-9 xr=5 ]
[h_back tg=*c_cg8][h_next tg=*c_cg10][s]
*c_cg10
[cm][hcg/ eyes=c10 h=9 ][h_ef/ se=3-10 tx=3-10 ef=3-10 xr=6 ]
[h_back tg=*c_cg9][h_next tg=*c_cg11][s]
*c_cg11
[cm][hcg/ eyes=c11 ][h_ef/ se=3-11 tx=3-11 ef=3-11 ]
[h_back tg=*c_cg10][h_next tg=*end_cg][s]

*end_cg
[cm][return_memory]


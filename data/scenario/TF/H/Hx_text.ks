;;接吻文字
*tx_kiss
[jump/ tg=*m_calc cond="tf.hx_act.act==tf.hx_act.last" ]
[if exp="tf.hx_mpt.ppp==1 && tf.hx_mpt.left=='c'" ]
（刺激胸部[Hxn n=v]的同时[Hxn n=p]舌头还在纠缠着。
[elsif exp="tf.hx_mpt.ppp==1 && (tf.hx_mpt.right=='b' || tf.hx_mpt.left=='b')" ]
（在刺激胸部和阴蒂的同时我轻吻了上去。
[elsif exp="tf.hx_mpt.ppp==1" ]
（和希尔薇相连，堵住希尔薇的嘴唇。
[elsif exp="tf.hx_mpt.right=='f' && tf.hx_mpt.left=='b'" ]
（和希露薇的嘴唇重叠在了一起
[elsif exp="tf.hx_mpt.right=='f' && tf.hx_mpt.left=='c'" ]
（舌头[Hxn n=iv]缠绕[Hxn n=c]了起来。
[elsif exp="tf.hx_mpt.right=='f'" ]
（亲吻的同时[Hxn n=iv]给予着胸部刺激。
[elsif exp="tf.hx_mpt.right=='b' && tf.hx_mpt.left=='b'" ]
（刺激胸部的同时舌头还在纠缠着。
[elsif exp="tf.hx_mpt.right=='b' && tf.hx_mpt.left=='c'" ]
（[Hxn n=b]と[Hxn n=c]在刺激胸部和阴蒂的同时我轻吻了上去。
[elsif exp="tf.hx_mpt.right=='b' || tf.hx_mpt.left=='b'" ]
（[Hxn n=b]我用手指抚弄着乳头和阴蒂品尝着她舌头的味道。
[elsif exp="tf.hx_mpt.left=='c'" ]
（[Hxn n=c]我没有放在在阴蒂上的手同时亲吻着她的嘴唇。
[else]
（一般爱抚着阴蒂一边给予着她激烈的舌吻。
[endif][p][jump/ tg=*m_calc ]

*tx_kiss_s
[jump/ tg=*m_calc cond="tf.hx_act.act==tf.hx_act.last" ]
[if exp="tf.hx_mpt.ppp==1 && (tf.hx_mpt.right=='b' || tf.hx_mpt.left=='b')" ]
（希露薇我没有停止刺激她的性感带同时亲吻了上去。
[elsif exp="tf.hx_mpt.ppp==1 && tf.hx_mpt.left=='c'" ]
（[Hxn n=v]不停刺激胸部的阴道的同时舌头也纠缠了上去。
[elsif exp="tf.hx_mpt.ppp==1" ][eval exp="tf.r='tx_vm_'" ]
（希尔薇的[Hxn n=v]手指在阴道里游动的同时我的嘴唇与她重叠。
[elsif exp="tf.hx_mpt.right=='f' && tf.hx_mpt.left=='b'" ]
（[Hxn n=b]と[Hxn n=iv]手指在秘部动着的同时亲吻也在继续着。
[elsif exp="tf.hx_mpt.right=='f'" ]
（[Hxn n=v]我和希露薇连在了一起同时亲吻住了她的嘴唇。
[elsif exp="tf.hx_mpt.right=='b' && tf.hx_mpt.left=='b'" ]
（用腰部拍打希露薇的同时舌头也缠住了她。
[elsif exp="tf.hx_mpt.right=='b' && tf.hx_mpt.left=='c'" ]
（乳头和[Hxn n=c]不断用阴茎和手指侵犯着她的私处的[Hxn n=m]同时用吻堵住了她的嘴唇。
[elsif exp="tf.hx_mpt.right=='b' || tf.hx_mpt.left=='b'" ]
（[Hxn n=b]攻击秘部的同时希露薇的舌头也变得兴奋起来。
[elsif exp="tf.hx_mpt.left=='c'" ]
（[Hxn n=c]手上和腰部动作没有停下来的情况下我夺取了希露薇的嘴唇。
[else]
（我继续着手上和腰部动作的同时仔细品尝着她的舌头。
[endif][p][jump/ tg=*m_calc ]


;;キスセリフ
*m_calc
[Hx_text_5sep r=2]
[syl][xf/ m=kiss][random n=5]
[if exp="tf.r2==1" ]
	[if exp="tf.r==1" ]姆…。[p]
	[elsif exp="tf.r==2" ]嗯啊。[p]
	[elsif exp="tf.r==3" ]嗯…。[p]
	[elsif exp="tf.r==4" ]秋…。[p]
	[elsif exp="tf.r==5" ]呜嗯…。[p][endif]
	[random n=4]
	[if exp="tf.r==1" ][_]（温柔的亲吻下希露薇紧张的身体逐渐放松。[p]
	[elsif exp="tf.r==2" ][_]（希露薇的舌头也紧紧缠住了我。[p][endif]
[elsif exp="tf.r2==2" ]
	[if exp="tf.r==1" ]嗯…♡[p]
	[elsif exp="tf.r==2" ]呼啊…。[p]
	[elsif exp="tf.r==3" ]嗯、沏…。[p]
	[elsif exp="tf.r==4" ]啊姆…。哈啊…。[p]
	[elsif exp="tf.r==5" ]呼呜…、啊…。[p][endif]
	[random n=4]
	[if exp="tf.r==1" ][_]（舌头进去了之后希露薇也用她的舌头回应着我。[p]
	[elsif exp="tf.r==2" ][_]（连起来的嘴唇互相交换着对方的唾液。[p][endif]
[elsif exp="tf.r2==3" ]
	[if exp="tf.r==1" ]嗯…♡[p]
	[elsif exp="tf.r==2" ]哇…♡[Hxns n=v ex=1 a=……很痛♡][p]
	[elsif exp="tf.r==3" ]嗯、沏…♡[p]
	[elsif exp="tf.r==4" ]啊姆…。哈啊…♡[p]
	[elsif exp="tf.r==5" ]呼呜…、啊…♡[p][endif]
	[random n=4]
	[if exp="tf.r==1" ][_]（舌头进去了之后希露薇也用她的舌头回应着我。[p]
	[elsif exp="tf.r==2" ][_]（连起来的嘴唇互相交换着对方的唾液。[p][endif]
[elsif exp="tf.r2==4" ]
	[if exp="tf.r==1" ]嗯唔！♡[p]
	[elsif exp="tf.r==2" ]休…揪噜噜♡[p]
	[elsif exp="tf.r==3" ]啊姆…♡嗯ん…♡[p]
	[elsif exp="tf.r==4" ]揪…唔…♡[p]
	[elsif exp="tf.r==5" ]呼唔…♡嗯…♡[p][endif]
	[random n=4]
	[if exp="tf.r==1" ][_]（我把舌头伸到希露薇口中、贪婪地舔舐起来。[p]
	[elsif exp="tf.r==2" ][_]（我们贪求着对方的嘴唇、不停地交换唾液。[p][endif]
[else]
	[if exp="tf.r==1" ]嗯～！！♡♡[p]
	[elsif exp="tf.r==2" ]哼～…！♡♡[p]
	[elsif exp="tf.r==3" ]嗯゛呼♡[p]
	[elsif exp="tf.r==4" ]哈啊…♡嗯…♡[p]
	[elsif exp="tf.r==5" ]哈啊〜♡♡休…♡[p][endif]
	[random n=4]
	[if exp="tf.r==1" ][_]（身体震动的同时希露薇把舌头吸了进来。[p]
	[elsif exp="tf.r==2" ][_]（希露薇的舌头急不可耐地把舌头进到我的口中。[p][endif]
[endif][call target=*nedari cond="tf.hx_y.feel==0" ][jump/ tg=*desc_calc ]

;;行动文本
;胸
*tx_touch_rb
*tx_touch_lb
[jump/ tg=*tx_calc cond="tf.hx_act.act==tf.hx_act.last" ]
[if exp="tf.hx_mpt.ppp==1 && tf.hx_mpt.left=='b' && tf.hx_mpt.right=='b'" ]
（我[Hxn n=iv]用手抚摸着希露[Hxn n=p]突起的[Hxn n=b]胸部。
[elsif exp="tf.hx_mpt.ppp==1 && tf.hx_mpt.left=='c' && tf.hx_mpt.right=='b'" ]
（[Hxn n=iv]继续揉着[Hxn n=b]希尔薇[Hxn n=c]小小的胸部。
[elsif exp="tf.hx_mpt.ppp==1 && (tf.hx_mpt.left=='b' || tf.hx_mpt.right=='b')" ]
（我用空闲的手[Hxn n=b]抚摸胸部给予着进一步的刺激感。
[elsif exp="tf.hx_mpt.ppp==1 && tf.hx_mpt.left=='c'" ]
（[Hxn n=iv]我用两手[Hxn n=c]抚摸着希露薇未熟[Hxn n=b]的胸部。
[elsif exp="tf.hx_mpt.ppp==1" ][eval exp="tf.r='tx_b_vb'" ]
（我用空闲的手[Hxn n=b]抚摸胸部给予着进一步的刺激感。
[elsif exp="tf.hx_mpt.right=='f' && tf.hx_mpt.left=='b'" ]
（[Hxn n=iv]同时爱抚着[Hxn n=b]胸部和阴蒂。
[elsif exp="tf.hx_mpt.right=='f'" ][left_b]
（我用空闲的手[Hxn n=b]抚摸胸部给予着进一步的刺激感。
[elsif exp="tf.hx_mpt.left=='b' && tf.hx_mpt.right=='b'" ]
（一边来回在[Hxn n=b]阴道里摩擦一边用手揉弄胸部。
[elsif exp="tf.hx_mpt.left=='c' && tf.hx_mpt.right=='b'" ]
（[Hxn n=c]和希露薇[Hxn n=b]连在一起的情况下用手抚弄起胸部。
[elsif exp="tf.hx_mpt.right=='b' || tf.hx_mpt.left=='b'" ]
（我用空闲的手[Hxn n=b]抚摸胸部给予着进一步的刺激感。
;[elsif exp="tf.hx_mpt.left=='c'" ][left_b][eval exp="tf.r='tx_b_b'" ]
;[elsif exp="tf.hx_mpt.left=='c'" ][right_b][eval exp="tf.r='tx_b_bc'" ]
;（我用两手抚摸着希露薇未熟的胸部。
[else]
;（阴道和阴蒂同时责备的同时用空闲的手抚摸起胸部。
（慢慢突进阴道里突起的[Hxn n=b]同时用手爱抚着胸部。
[endif][p][jump/ tg=*tx_calc ]


;;舔舐
*tx_lick_rb
*tx_lick_lb
[random n=4][jump/ tg=*tx_calc cond="tf.r==1 && (f.g_config.repeat_mode==1 || tf.hx_act.act==tf.hx_act.last)" ]
[random n=4][_][if exp="tf.r==1" ]
（用舌头舔希尔薇的小[Hxn n=b]的尖端。
[elsif exp="tf.r==2" ]
（一边吸着[Hxn n=b]的突起。
[elsif exp="tf.r==3" ]
（用舌头和牙齿温柔地把乳头压碎。
[elsif exp="tf.r==4" ]
（对爱抚有反应，用舌头滚动张开的突起。
[endif][p][jump/ tg=*tx_calc ]

;クリ
*tx_touch_c
[jump/ tg=*tx_calc cond="tf.hx_act.act==tf.hx_act.last" ]
[if exp="tf.hx_mpt.ppp==1 && tf.hx_mpt.left=='c' && tf.hx_mpt.right=='b'" ]
（我开始同时爱抚着胸部和阴蒂。
[elsif exp="tf.hx_mpt.ppp==1 && tf.hx_mpt.left=='b' && tf.hx_mpt.right=='b'" ]
（指尖摆弄着敏感的突起。
[elsif exp="tf.hx_mpt.ppp==1 && tf.hx_mpt.right=='b'" ][eval exp="tf.r='tx_c_vbc'" ]
爱抚着胸部的同时在阴蒂上也施加了爱抚。
[elsif exp="tf.hx_mpt.ppp==1 && tf.hx_mpt.left!='c'" ][eval exp="tf.r='tx_c_vc'" ]
（[Hxn n=iv]上半身与下半身[Hxn n=p]的[Hxn n=c]敏感突起同时[Hxn n=v]被我爱抚着。
[elsif exp="tf.hx_mpt.ppp==1" ][eval exp="tf.r='tx_c_vc_'" ]
（[Hxn n=v]手指在阴道里[Hxn n=p]来回的同时也爱抚起阴蒂。
[elsif exp="tf.hx_mpt.right=='f' && tf.hx_mpt.left!='c'" ]
（私处的[Hxn n=iv]性感带[Hxn n=c]被我两手进攻着。
[elsif exp="tf.hx_mpt.right=='f'" ]
（[Hxn n=v]阴茎被阴道刺激的同时我用手揉搓起了阴蒂。
;[elsif exp="tf.hx_mpt.left=='b' && tf.hx_mpt.right=='f'" ][eval exp="tf.r='tx_c_cf'" ]
[elsif exp="tf.hx_mpt.right=='b' && tf.hx_mpt.left!='c'" ]
（[Hxn n=b]希露薇的私处[Hxn n=c]被我用手指和阴茎持续进攻着。
[elsif exp="tf.hx_mpt.right=='b'" ]
（在给予希露薇快感的同时我把手放到了阴蒂上。
;[elsif exp="tf.hx_mpt.left=='b' && tf.hx_mpt.right=='b'" ][eval exp="tf.r='tx_c_bc'" ]
[elsif exp="tf.hx_mpt.left=='c'" ]
（在给予希露薇快感的同时我把手放到了阴蒂上。
[else]（[Hxn n=c]希露薇的性感带被我持续进攻着。
[endif][p]
[jump/ tg=*tx_calc ]

*tx_lick_c
[random n=4][jump/ tg=*tx_calc cond="tf.r==1 && (f.g_config.repeat_mode==1 || tf.hx_act.act==tf.hx_act.last)" ]
[random n=4][_][if exp="tf.r==1" ]
（希尔薇的小[Hxn n=c]用舌头舔。
[elsif exp="tf.r==2" ]
（一边吸着[Hxn n=c]刺激。
[elsif exp="tf.r==3" ]
（用舌头和牙齿温柔地[Hxn n=c]嘲弄。
[elsif exp="tf.r==4" ]
（ヒクつく[Hxn n=c]用舌头滚动。
[endif][p][jump/ tg=*tx_calc ]


;;插入文本
*tx_vf_in
[xf/ m=ein e=half]
[if exp="tf.hx_state.wet<=100" ]（还没完全湿透的希露薇[Hxn n=v]的私处被我伸入了进去。
[elsif exp="tf.hx_state.wet<=200" ]（[Hxn n=w]手指在里面的搅动让[Hxn n=v]希露薇开始流出爱汁。
[elsif exp="tf.hx_state.wet<=500" ]（我把手指伸入[Hxn n=v]希露薇早已准备好的秘部内。
[elsif exp="tf.hx_state.wet<=800" ]（[Hxn n=w]被爱液儒湿的[Hxn n=iv]希露薇的阴道缠着手指。
[else]（我把手指伸入[Hxn n=v]已经变得急不可耐的阴道中。[endif]
[p][jump/ tg=*tx_calc ]

*tx_vp_in
[if exp="tf.hx_state.wet<=100" ][xf/ m=ein e=half]
	（我把阴茎插进了希露薇[Hxn n=v]早已湿润[Hxn n=p]的阴道中。[p]
	[syl][xf/ m=ein e=half]咕唔…[p]
[elsif exp="tf.hx_state.wet<=200" ][xf/ m=ein e=half]
	（[Hxn n=w]希露薇充满蜜液[Hxn n=v]的阴道紧紧[Hxn n=p]缠绕住了阴茎。[p]
	[syl][xf/ m=ein e=half]嗯…。[Hxns n=p ex=1 y=の]…呼呜…。[p]
[elsif exp="tf.hx_state.wet<=500" ][xf/ m=en e=half]
	（我把阴茎插进了[Hxn n=v]に[Hxn n=p]希露薇早已准备好的阴道中。[p]
	[syl][xf/ m=en e=half]嗯…[Hxns n=p ex=1 y=の]♡[p]
[elsif exp="tf.hx_state.wet<=800" ][xf/ m=oea]
	（[Hxn n=w]不还没完全湿透的希露薇[Hxn n=iv]的[Hxn n=p]私处被我伸入了手指。[p]
	[syl][xf/ m=oea]啊啊〜呼唔〜♡[p]
[else][xf/ m=oea]
	（我的阴茎在希露薇[Hxn n=v]的[Hxn n=p]阴道里咕揪咕揪地突进。[p]
	[syl][xf/ m=oea]啊♡[Hxns n=p ex=1 y=の a=っ]♡啊~♡[p]
[endif]
[jump/ st=H/Hx_sys tg=*tx_end ]

;*tx_f
*tx_vf_move
[jump/ tg=*tx_calc cond="tf.hx_act.act==tf.hx_act.last" ]
[if exp="f.hx_select.v_spd=='fast'" ]
	[if exp="tf.hx_mpt.left=='b'" ]
	（小小的[Hxn n=b]胸部和阴道[Hxn n=v]内都被轻柔爱抚着。
	[elsif exp="tf.hx_mpt.left=='c'" ]
	[Hxn n=iv]我温柔地爱抚着秘部的内外。
	[else][eval exp="tf.r='tx_ff_f'" ]
	（我因探寻着希露薇[Hxn n=iv]的敏感点而兴奋。[endif]
[else]
	[if exp="tf.hx_mpt.left=='b'" ]
	（小小的[Hxn n=b]胸部和阴道[Hxn n=iv]内都被轻柔爱抚着。
	[elsif exp="tf.hx_mpt.left=='c'" ]
	（[Hxn n=v]我给予着秘部内外激烈摩擦。
	[else]
	（我给予着因快感而蠕动[Hxn n=iv]的阴道咕吱咕吱的刺激。。
	[endif]
[endif][p][jump/ tg=*tx_calc ]

;;活塞文本
;*tx_v
*tx_vp_move
[jump/ tg=*v_calc cond="tf.hx_act.act==tf.hx_act.last" ]
;[H_text_non_repeat_v]
[if exp="f.hx_select.v_spd=='fast'" ]
	[if exp="tf.hx_mpt.left=='c' && tf.hx_mpt.right=='b'" ]
	（慢慢揉着希露薇小小胸部的同时阴茎在她的体内慢慢出入着。
	[elsif exp="tf.hx_mpt.left=='c'" ]
	（希露薇敏感的地方[Hxn n=p]被我慢慢爱抚着[Hxn n=c]同时缓慢地扭动着腰。
	[elsif exp="tf.hx_mpt.left=='b' || tf.hx_mpt.right=='b'" ]
	（手指在小豆上抚摸[Hxn n=b]的同时阴茎缓慢移动快感全部在希露薇的阴道上集中。
	[else]
	（希露薇仔细地品尝着[Hxn n=p]阴茎在阴道[Hxn n=iv]里的味道。
	[endif]
[else]
	[if exp="tf.hx_mpt.left=='c' && tf.hx_mpt.right=='b'" ]
	（抚摸着希露薇小小胸部的同时阴茎激烈地突进着。
	[elsif exp="tf.hx_mpt.left=='c'" ]
	（就像责备希露薇[Hxn n=c]敏感的部分一样我的腰[Hxn n=v]大幅度地动着。
	[elsif exp="tf.hx_mpt.left=='b' || tf.hx_mpt.right=='b'" ]
	（大幅度动腰[Hxn n=b]的同时我把手[Hxn n=p]按在了小豆上。
	[else]（[Hxn n=p]激烈的腰振让阴茎[Hxn n=iv]在小小的阴道中来回着。
	[endif]
[endif][p][jump/ tg=*v_calc ]

;;抜きテキスト
*tx_p_off
[cm][if exp="tf.hx_state.wet<=300" ][xf/ m=ein e=half][else][xf/ m=all][endif]
[_]（我把阴茎[Hxn n=p]从希露薇体内抽了出来。[p]
;[Hx/ z_b=&tf.hx_state.z_iout][se/ st=s-wet1 ]
[if exp="tf.hx_img.ppp_out>=6" ]
	（[Hxn n=v]秘部的痉挛让子宫中的[Hxn n=u]精液[Hxn n=z]一波一波地溢出。[lr]
	（希露薇膨胀的腹部又再次平了下来。[p]
[elsif exp="tf.hx_img.ppp_out>=5" ]
	（[Hxn n=p]拔出来的瞬间、子宫持续的抽搐[Hxn n=z]が[Hxn n=v]从私处吐出精液。[p]
[elsif exp="tf.hx_img.ppp_out>=4" ]
	（[Hxn n=u]小小的身体[Hxn n=z]无法存储如此大量的精液[Hxn n=v]从希露薇的私处流了出来。[p]
[elsif exp="tf.hx_img.ppp_out>=3" ]
	（[Hxn n=u]精液不断的从子宫[Hxn n=z]的[Hxn n=v]缝流出在屁股周围积聚成浑浊的一滩。[p]
[elsif exp="tf.hx_img.ppp_out>=2" ]
	（[Hxn n=u]在里面射出的[Hxn n=z]精液[Hxn n=v]慢慢地流了出来。[p]
[else][endif][jump/ tg=*desc_calc ]

;;ピストンセリフ
*v_calc
[cm][random n=3][jump/ tg=*tx_calc_ cond="tf.r>=2"]
[syl][Hx_text_5sep r=2]
[if exp="tf.r2==1" ][random n=3]
	[if exp="tf.r==1" ][xf/ m=en][name h=1]…[Hxns n=v ex=1 b=私の]舒服…了吗？[p]
	[elsif exp="tf.r==2" ][xf/ m=oea]啊…♡[Hxns n=p ex=1]…好大啊♡[p]
	[else][xf/ m=non_i][name h=1]的[Hxns n=p ex=1]…好大…♡[p]
	[endif]
[elsif exp="tf.r2==2" ][random n=4]
	[if exp="tf.r==1" ][xf/ m=oea]我…和[name h=1 k=1]做[Hxns n=x ex=1]了…♡[r][Hxns n=v ex=1 a=と]…[Hxns n=p ex=1]结合在一起了♡♡[p]
	[elsif exp="tf.r==2" ][xf/ m=non_o][name h=1]也…[Hxns n=p ex=1]很舒服吧？[p]
	[elsif exp="tf.r==3" ][xf/ m=all][name h=1 sepa=…]的[Hxns n=p ex=1]很…嗯…♡[p]
	[else][xf/ m=non_i]啊啊…[Hxns n=p ex=1 y=のが]啊…♡[p]
	[endif]
[elsif exp="tf.r2==3" ][random n=4]
	[if exp="tf.r==1" ][xf/ m=non_i][name h=1]と[Hxns n=x ex=1]…♡[r]好舒服…啊♡♡[p]
	[elsif exp="tf.r==2" ][xf/ m=non_o][name h=1]你…我的…[Hxns n=v ex=1 b=私の]好舒服的…是吗？♡♡[p]
	[elsif exp="tf.r==3" ][xf/ m=oea][name h=1 k=1]的[Hxns n=p ex=1]…啊嗯…♡♡[p]
	[else][xf/ m=oea]啊…♡[Hxns n=v ex=1]♡很…很舒服呢…♡♡[p]
	[endif]
[elsif exp="tf.r2==4" ][random n=4]
	[if exp="tf.r==1" ][xf/ m=oea]啊〜♡♡想要♡[name h=1 k=1][Hxns n=x ex=1 b=と]想要…！♡♡[p]
	[elsif exp="tf.r==2" ][xf/ m=oea]啊゛♡[Hxns n=p ex=1 y=の]好棒…♡♡[r]
					啊[Hxns n=v ex=1 b=の]…已经凌乱了…♡！♡♡[p]
	[elsif exp="tf.r==3" ][xf/ m=oea][name h=1 k=1]的[Hxns n=p ex=1]好…啊啊！♡♡[p]
	[else][xf/ m=oea]啊♡啊…！♡[Hxns n=v ex=1]♡♡非常…[Hxns n=p ex=1 y=の]非常舒服…♡♡[p]
	[endif]
[else][random n=5]
	[if exp="tf.r==1" ][xf/ m=oea]啊゛〜♡♡[Hxns n=p ex=1]喜欢…[Hxns n=x ex=1]喜欢…！♡♡[p]
	[elsif exp="tf.r==2" ][xf/ m=oea][Hxns n=x ex=1]想要…♡♡[Hxns n=p ex=1]更多！♡♡♡[p]
	[elsif exp="tf.r==3" ][xf/ m=oea]啊゛〜！♡♡[Hxns n=v ex=1]狼藉♡♡…♡…♡[r]已经不行了…啊♡！♡♡[p]
	[elsif exp="tf.r==4" ][xf/ m=oea][name h=1 k=1]的[Hxns n=p ex=1]♡♡…♡啊啊！♡♡[p]
	[else][xf/ m=oea]啊゛〜！♡[Hxns n=v ex=1]♡…[Hxns n=v ex=1]啊♡…♡♡[r]啊゛〜〜！♡！♡♡♡[p]
	[endif]
[endif][jump/ tg=*desc_calc ]

;;共通セリフ
*tx_calc
[cm][random n=3][jump/ tg=*v_calc cond="tf.hx_mpt.ppp==1 && tf.r==1"]
*tx_calc_
[call target=*nedari cond="tf.hx_y.feel==0" ]

[Hx_text_5sep r=2][syl]
[if exp="tf.r2==1" ][random n=11]
;1
	[if exp="tf.r==1" ][xf/ m=en]嗯…！ [lr][xf/ m=en]啊…没、没关系。[p]
	[elsif exp="tf.r==2" ][xf/ m=en]呼…[lr][xf/ m=en]请、慢一点。[p]
	[elsif exp="tf.r==3" ][xf/ m=en]呼唔…嗯……。[p]
	[elsif exp="tf.r==4" ][xf/ m=en]嗯…温柔的、拜托了。[p]
	[elsif exp="tf.r==5" ][xf/ m=oea]呼呼…。[name h=1]…[p]
	[elsif exp="tf.r>=10" ][xf/ m=ein]嗯…。[p]
	[elsif exp="tf.r>=8" ][xf/ m=in][name h=1]…嗯…。[p]
	[elsif exp="tf.r>=6" ][xf/ m=non_o]啊…唔。[p]
	[endif]
[elsif exp="tf.r2==2" ][random n=10]
;2
	[if exp="tf.r==1" ][xf/ m=oea]好温柔啊…♡[p]
	[elsif exp="tf.r==2" ][xf/ m=oea][name h=1]♡更多的、抚摸我……♡[p]
	[elsif exp="tf.r==3" ][xf/ m=non_i]慢慢地、[Hxns n=v h=1]变得舒服起来了…。[p]
	[elsif exp="tf.r==4" ][xf/ m=ein]嗯…[name h=1]…♡[p]
	[elsif exp="tf.r==5" ][xf/ m=non_i]啊…呼…。[name h=1]…♡[p]
	[elsif exp="tf.r==6" ][xf/ m=en][name h=1]…。[p]
	[elsif exp="tf.r==7" ][xf/ m=oea]啊…♡[p]
	[elsif exp="tf.r==8" ][xf/ m=ein]嗯…♡[p]
	[elsif exp="tf.r==9" ][xf/ m=non_i]唔…♡[p]
	[elsif exp="tf.r==10" ][xf/ m=oea]啊…唔♡[p]
	[endif]
[elsif exp="tf.r2==3" ][random n=10]
;3
	[if exp="tf.r==1" ][xf/ m=oea]啊♡哈啊♡[p]
	[elsif exp="tf.r==2" ][xf/ m=all]啊嗯♡呼♡[p]
	[elsif exp="tf.r==3" ][xf/ m=non_o]啊啊啊！♡[name h=1]♡[p]
	[elsif exp="tf.r==4" ][xf/ m=non_i][name h=1]♡[r]这样[Hxns n=v h=1]很…舒服♡[p]
	[elsif exp="tf.r==5" ][xf/ m=all]我、[name h=1]和…[Hxns n=x h=1]♡[p]
	[elsif exp="tf.r==6" ][xf/ m=non_i]一直、和[name h=1 k=1]一直做[Hxns n=x h=1]这样的事…♡[p]
	[elsif exp="tf.r==7" ][xf/ m=non_o]嗯嗯…♡[p]
	[elsif exp="tf.r==8" ][xf/ m=non_o]唔唔…♡[p]
	[elsif exp="tf.r==9" ][xf/ m=non_i]啊…唔♡[p]
	[elsif exp="tf.r==10" ][xf/ m=non_i]啊♡嗯♡♡[p]
	[endif]
[elsif exp="tf.r2==4" ][random n=11]
;4
	[if exp="tf.r==1" ][xf/ m=oea]啊゛〜♡♡♡[p]
	[elsif exp="tf.r==2" ][xf/ m=oea]唔〜〜♡…啊啊〜〜♡♡♡[p]
	[elsif exp="tf.r==3" ][xf/ m=all][name h=1]っ♡[name h=1 k=1]♡♡[p]
	[elsif exp="tf.r==4" ][xf/ m=all]啊〜♡♡[Hxns n=x h=1]好舒服♡[r][Hxns n=v h=1]很舒服゛啊゛っ♡♡[p]
	[elsif exp="tf.r==5" ][xf/ m=all][name h=1 k=1]♡♡[Hxns n=v h=1]好舒服♡我快要♡♡[p]
	[elsif exp="tf.r==6" ][xf/ m=oea]啊啊啊♡♡[p]
	[elsif exp="tf.r==7" ][xf/ m=all]嗯〜♡♡[p]
	[elsif exp="tf.r==8" ][xf/ m=all]啊゛♡[name h=1 k=1]那里♡[Hxns n=v h=1]♡被♡♡[p]
	[elsif exp="tf.r==9" ][xf/ m=all]啊啊嗯♡唔♡[p]
	[elsif exp="tf.r==10" ][xf/ m=oea]啊唔唔！[lr][xf/ m=oa]啊゛♡[Hxns n=p h=1]♡♡[p]
	[elsif exp="tf.r==11" ][xf/ m=all]哈〜♡呼〜♡♡[p]
	[endif]
[else][random n=15]
;5
	[if exp="tf.r==1" ][xf/ m=all]唔♡哈啊゛♡呼吸♡[p]
	[elsif exp="tf.r==2" ][xf/ m=all][name h=1]！！♡[name h=1 k=1]！！！♡♡[p]
	[elsif exp="tf.r==3" ][xf/ m=all]啊゛〜♡♡[Hxns n=v h=1]好舒゛服゛♡[r][Hxns n=x h=1]好舒服゛服♡♡[p]
	[elsif exp="tf.r==4" ][xf/ m=all][Hxns n=x h=1]好舒服♡[Hxns n=v h=1]变得好奇怪啊♡♡[p]
	[elsif exp="tf.r==5" ][xf/ m=all]啊゛♡[name h=1 k=1]♡额♡那里♡♡[p]
	[elsif exp="tf.r>=14" ][xf/ m=oea]啊゛[Hxns n=v h=1]啊゛啊〜♡♡[p]
	[elsif exp="tf.r>=12" ][xf/ m=non_o]嗯゛呼〜！！♡[lr]呼呜゛〜！！！♡♡[p]
	[elsif exp="tf.r>=10" ][xf/ m=non_o]哈〜♡呼唔゛〜♡♡[p]
	[elsif exp="tf.r>=8" ][xf/ m=all][Hxns n=p h=1]咿゛咿〜！！♡♡ゔ呼〜！！！！！♡♡♡[p]
	[elsif exp="tf.r>=6" ][xf/ m=oea]啊゛〜♡♡啊゛〜っ♡♡♡[p]
	[endif]
[endif][jump/ tg=*desc_calc ]

;;ねだりセリフ
*nedari
[cm][syl][if exp="f.state.lust>=2000 && tf.hx_state.act==6 || f.state.lust<=1999 && f.state.lust>=1000 && tf.hx_state.act==9 || f.state.lust<=999 && f.state.lust>=500 && tf.hx_state.act==12 || f.state.lust<=499 && f.state.lust>=250 && tf.hx_state.act==15" ]
	[f/x ei=nh m=e y=conf]
	[name h=1]…？[lr]
	那个…我的那个[Hxns n=v]还没…用[Hxns n=x ex=1]...不使用一下吗？♡[p]
	[clearstack][jump/ st=H/Hx_sys tg=*tx_end ]
[elsif exp="f.state.lust>=2000 && tf.hx_state.act==11 || f.state.lust<=1999 && f.state.lust>=1000 && tf.hx_state.act==16 || f.state.lust<=999 && f.state.lust>=500 && tf.hx_state.act==21 || f.state.lust<=499 && f.state.lust>=250 && tf.hx_state.act==26" ]
	[f/x e=half ei=nh m=e y=conf]
	[name h=1]…、已经差不多[name h=1]的…[Hxns n=p ex=1]可以放进去吗？…♡♡[lr]
	那个…[Hxns n=x ex=1]那个…想要…。[p]
	[clearstack][jump/ st=H/Hx_sys tg=*tx_end ]
[elsif exp="f.state.lust>=2000 && tf.hx_state.act==16 || f.state.lust<=1999 && f.state.lust>=1000 && tf.hx_state.act==24 || f.state.lust<=999 && f.state.lust>=500 && tf.hx_state.act==30 || f.state.lust<=499 && f.state.lust>=250 && tf.hx_state.act==40" ]
	[f/x ei=nh m=e y=unc]
	唔…请[name h=1]的[Hxns n=p ex=1]那个[Hxns n=x]吧…♡[lr]
	[name h=1]的[Hxns n=p]用…♡[Hxns n=v ex=1 b=私の]…[Hxns n=x ex=1]做[Hxns n=z ex=1]吧♡♡♡[p]
	[clearstack][jump/ st=H/Hx_sys tg=*tx_end ][endif]
[return]

;;形容テキスト
*desc_calc
[cm][random n=4]
[jump/ st=H/Hx_sys tg=*tx_end cond="tf.r>=3 || f.g_config.repeat_mode==1 && tf.r==1"]
[Hx_text_5sep r=2 ][_]
[if exp="tf.r2==1" ][random n=7]
	[if exp="tf.hx_mpt.left=='hands' || tf.hx_mpt.right=='hands'" ][else][eval exp="tf.r=tf.r+1" ][endif]
	[if exp="tf.r==1" ]（握着希露薇的手从连接处从来微微的紧张感。[p]
	[elsif exp="tf.r==2" ]（即使我笨手笨脚希露薇也接受了这样的我了。[p]
	[elsif exp="tf.r==3" ]（希露薇的反应结结巴巴的。[p]
	[elsif exp="tf.r==4" ]（希露薇还很紧张吧、身体稍微有点僵硬。[p]
	[elsif exp="tf.r==5" ]（希露薇还是很紧张吧、好像比较安静下来了。[p]
	[elsif exp="tf.r==6" ]（比起兴奋更是紧张吧、私处有一点点湿但是没有很湿。[p]
	[elsif exp="tf.r==7" ]（紧握的手掌中传来希露薇微微的恐惧、但是没有表情上的流露。[p]
	[endif]

[elsif exp="tf.r2==2" ]
	[if exp="tf.hx_mpt.left=='hands' && tf.hx_mpt.right=='hands'" ][random n=15]
	[elsif exp="tf.hx_mpt.left=='hands' || tf.hx_mpt.right=='hands'" ][random n=13]
	[else][random n=11][endif]
	
	[if exp="tf.r==1" ]（能感到希露薇投来的信任的眼神。[p]
	[elsif exp="tf.r==2" ]（平静下来了吧呼吸平稳了点。[p]
	[elsif exp="tf.r==3" ]（希露薇的[Hxn n=v]私处渐渐湿润起来了。[p]
	[elsif exp="tf.r==4" ]（希露薇好像放松了浑身没什么力气的样子。[p]
	[elsif exp="tf.r==5" ]（希露薇注意力似乎都集中在被爱抚上。[p]
;	6,7,8
	[elsif exp="tf.r==9" ]（对我的爱抚偶尔有痉挛的反应。。[p]
	[elsif exp="tf.r==10" ]（能够听到希露薇微微的呻吟。[p]
	[elsif exp="tf.r==11" ]（希露薇就这样接受着我的爱抚。[p]
	[elsif exp="tf.r==12" ]（希露薇好像开始有快感了、身体微微出汗了。[p]
	[elsif exp="tf.r>=13" ]（紧握着希露薇的手也开始轻微出汗[p]
	[endif]

[elsif exp="tf.r2==3" ]
	[if exp="tf.hx_mpt.left=='hands' && tf.hx_mpt.right=='hands'" ][random n=23]
	[elsif exp="tf.hx_mpt.left=='hands' || tf.hx_mpt.right=='hands'" ][random n=21]
	[else][random n=20][endif]
	[if exp="tf.r==1" ]（希露薇开始深呼吸、好像在享受每次碰撞的快感。[p]
	[elsif exp="tf.r==2" ]（希露薇的呼吸开始变得沉重了。[p]
	[elsif exp="tf.r==3" ]（不久就感受到了希露薇吐出的热气。[p]
	[elsif exp="tf.r==4" ]（能够清楚的[Hxn n=v]到从希露薇[Hxn n=w]私密处溢出来的爱液。[p]
	[elsif exp="tf.r==5" ]（从希露薇的[Hxn n=v]花蕾中溢出来的蜜汁[Hxn n=w]沿着脚浸湿了床单。[p]
	[elsif exp="tf.r==6" ]（深呼吸着希露薇快融化了的神情。[p]
	[elsif exp="tf.r==7" ]（希露薇用朦胧的眼睛看向了我。[p]
	[elsif exp="tf.r==8" ]（希露薇偶尔谄媚般扭动着身体。[p]
	[elsif exp="tf.r==9" ]（发出了急促的呻吟。[p]
	[elsif exp="tf.r==10" ]（希露薇发出了诱惑的喘息声。[p]
	[elsif exp="tf.r==11" ]（希露薇弓起了身子。[p]
	[elsif exp="tf.r==12" ]（房间充满了诱惑情欲的荷尔蒙。[p]
	[elsif exp="tf.r==13" ]（缺氧的希露薇小小的[Hxn n=b]胸部上下起伏。[p]
;	14,15,16
	[elsif exp="tf.r==17" ]（希露薇的身体时不时的颤动着。[p]
	[elsif exp="tf.r==18" ]（希露薇开始发出妖艳妩媚的喘息声。[p]
	[elsif exp="tf.r==19" ]（希露薇的身体好像感受到切实的快感。[p]
	[elsif exp="tf.r==20" ]（希露薇完全沈浸在快乐中的样子。[p]
	[elsif exp="tf.r>=21" ]（与希露薇相扣的手指传来了确切的信任。[p]
	[endif]
	[jump/ st=H/Hx_sys tg=*tx_end ]

[elsif exp="tf.r2==4" ]
	[if exp="tf.hx_mpt.left=='hands' && tf.hx_mpt.right=='hands'" ][random n=27]
	[elsif exp="tf.hx_mpt.left=='hands' || tf.hx_mpt.right=='hands'" ][random n=25]
	[else][random n=21][endif]
	[if exp="tf.r==1" ]（希露薇的身体在燃烧着。[p]
	[elsif exp="tf.r==2" ]（希露薇一边呻吟一边吐着热气。[p]
	[elsif exp="tf.r==3" ]（[Hxn n=v]从私密处溢出来的[Hxn n=w]爱液慢慢流出。[p]
	[elsif exp="tf.r==4" ]（希露薇的[Hxn n=v]私处滴落着黏着的液体、染湿了大片床单。[p]
	[elsif exp="tf.r==5" ]（希露薇渐渐地自己扭动腰部。[p]
	[elsif exp="tf.r==6" ]（希露薇没有想要隐藏自己散漫的表情。[p]
	[elsif exp="tf.r==7" ]（迷蒙陶醉的表情诉说着她的快乐。[p]
	[elsif exp="tf.r==8" ]（希露薇享受快感的呻吟声持续着。[p]
	[elsif exp="tf.r==9" ]（希露薇的身体不断的回应我给她的快感没有思考的空闲。[p]
;	10,11,12
	[elsif exp="tf.r==13" ]（シ希露薇时不时向后仰像是[Hxn n=ex]迎来了小高潮。[p]
	[elsif exp="tf.r==14" ]（希露薇的身体颤抖着反应着快感。[p]
	[elsif exp="tf.r==15" ]（现在也[Hxn n=ex]反应出达到高潮的样子。[p]
	[elsif exp="tf.r==16" ]（肌肤与肌肤的接触发出的下流的水声渐渐变大。[p]
	[elsif exp="tf.r==17" ]（每次强烈的快感袭来的时候希露薇都拱起了腰。[p]
	[elsif exp="tf.r==18" ]（希露薇被快感吞没、小小身躯散发出来的雌性荷尔蒙弥漫满屋。[p]
	[elsif exp="tf.r==19" ]（黏黏的汗珠在相互摩擦的皮肤间流动。[p]
	[elsif exp="tf.r==20" ]（希露薇开始积极的回应着我带给她的快感。[p]
	[elsif exp="tf.r==21" ]（已经不再抑制喘息声喉咙激烈的颤动着。[p]
	
	[elsif exp="tf.r==22 || tf.r==24 || tf.r==26" ]（握着希露薇的手偶尔会用力紧握起来。[p]
	[elsif exp="tf.r==23 || tf.r==25 || tf.r==27" ]（从与希露薇紧扣的手能够感受到她身上传来的火热。[p]
	[endif]
[elsif exp="tf.r2==5" ]
;	[if exp="tf.hx_act=='off' || tf.hx_act=='hands' || tf.hx_act=='legs' || tf.hx_act=='open' || tf.hx_act=='non'" ][random n=9]
	[if exp="tf.hx_mpt.left=='hands' && tf.hx_mpt.right=='hands'" ][random n=27]
	[elsif exp="tf.hx_mpt.left=='hands' || tf.hx_mpt.right=='hands'" ][random n=25]
	[else][random n=21][endif]
	
	[if exp="tf.r==1" ]（已经湿透了的私密处追求着更大的快感而颤抖着。[p]
	[elsif exp="tf.r==2" ]（因为不断溢出的[Hxn n=w]爱液使得希露薇的下半身都湿透了。[p]
	[elsif exp="tf.r==3" ]（从希露薇虚无的眼神中已经感受不到任何理性。[p]
	[elsif exp="tf.r==4" ]（湿透的[Hxn n=w]床上已经分辨不出那些是汗液哪些是爱液了。[p]
	[elsif exp="tf.r==5" ]（希露薇被强烈的快感巨浪吞噬辛苦的喘息着。[p]
	[elsif exp="tf.r==6" ]（不知道什么时候开始自己的身体已经被[Hxn n=w]希露薇的汗水和爱液浸湿。[p]
	[elsif exp="tf.r==7" ]（彼此互相混合所有的体液已经无法区分。[p]
	[elsif exp="tf.r==8" ]（希露薇的意识已经变得模煳但是看不出有拒绝的意思。[p]
	[elsif exp="tf.r==9" ]（新鲜的汗水[Hxn n=w]と[Hxn n=z]爱液和精液的味道充斥着整个房间。[p]
;	10,11,12
	[elsif exp="tf.r==13" ]（希露薇疲惫的伸着舌头看不出是痛苦还是幸福的表情[r]欢愉声持续着。[p]
	[elsif exp="tf.r==14" ]（反复达到[Hxn n=ex]高潮那般身体持续痉挛颤动着。[p]
	[elsif exp="tf.r==15" ]（希露薇的身体还在不断着痉挛享受着快感。[p]
	[elsif exp="tf.r==16" ]（希露薇贪图快感的样子和平常判若两人。[p]
	[elsif exp="tf.r==17" ]（被刺激到敏感部位的希露薇放肆的呻吟着。[p]
	[elsif exp="tf.r==18" ]（在像野兽一样的喘息声中不断挣扎的希露薇的表情似乎很幸福。[p]
	[elsif exp="tf.r==19" ]（彼此激烈的相互需求产生的水声在房间里回响。[p]
	[elsif exp="tf.r==20" ]（像要鱼儿一样的张开嘴巴喘息、胸部也[Hxn n=b]正在激烈上下起伏。[p]
	[elsif exp="tf.r==21" ]（不管触碰希露薇身体的哪个部位都像刺激到敏感地带一样。[p]
	
	[elsif exp="tf.r==22 || tf.r==24 || tf.r==26" ]（缠绕的手掌被相互的汗水打湿。[p]
	[elsif exp="tf.r==23 || tf.r==25 || tf.r==27" ]（握着的手指在不规则的颤动[r]一时大力紧握一时放松。[p]
	[endif]
[endif][jump/ st=H/Hx_sys tg=*tx_end ]

;;絶頂テキスト
*tx_s_ex
[Hx_text_5sep r=2]

[random n=4][syl][xf/ex]
[if exp="tf.hx_s.ex_sum<=2 && tf.r<=2" ][xf/ m=ein e=non]
	嗯…[if exp="f.g_config.x_speak>=1" ][Hxns n=v h=1]我高潮…！♡[endif]嗯〜！♡[p]
	
[elsif exp="tf.hx_s.ex_sum<=2" ][xf/ m=ein e=non]
	嗯[if exp="f.g_config.x_speak>=1" ][Hxns n=v h=1]…高[endif]潮了…♡♡♡[p]

[elsif exp="(tf.hx_s.ex_sum<=4 || tf.r3<=3) && tf.r<=2" ][xf/ m=all e=non]
	嗯…♡[if exp="f.g_config.x_speak>=1" ][Hxns n=v h=1]高高潮"…！！♡♡
			[else]啊゛…！♡啊啊゛♡♡[endif][p]
[elsif exp="tf.hx_s.ex_sum<=4 || tf.r3<=3" ][xf/ m=oea e=non]
	啊゛…！♡啊啊゛…！♡[Hxns n=p h=1 y=の]♡♡[lr]
	[xf/ex][xf/ m=all e=non]哈…♡♡咿…♡♡♡[p]

[elsif exp="tf.r==1" ][xf/ m=all e=non]
	啊゛っ！！♡[if exp="f.g_config.x_speak>=1" ][Hxns n=v h=1]要高潮…[Hxns n=v h=1]高潮゛…！！♡♡[else]♡啊啊゛っ！！！♡♡♡[endif][p]
[elsif exp="tf.r==2" ][xf/ m=oea e=non]
	啊[Hxns n=p h=1 y=の][Hxns n=z]♡啊゛〜っ！♡♡！♡♡！[lr]
	[xf/ex][xf/ m=non_i e=non] 啊゛…！♡啊啊゛…！♡！♡♡♡[p]
[elsif exp="tf.r==3" ][xf/ m=all e=non]
	啊゛…[Hxns n=p h=1 y=ので]…
	[if exp="f.g_config.x_speak>=1" ][Hxns n=v h=1]…高゛[endif]高潮゛…♡！！♡♡♡[lr]
	[xf/ex][xf/ m=non_i e=non]呜呜゛…啊♡啊♡♡…♡♡[p]
[elsif exp="tf.r==4" ][xf/ m=oea e=non]
	啊啊゛[Hxns n=v h=1]啊啊゛♡♡啊゛啊゛！！♡♡[lr]
	[xf/ m=non_o e=non][xf/ m=in e=non]高゛…♡♡潮…！♡♡♡[p]
	[eval exp="tf.hx_y.feel+=60" cond="tf.hx_mpt.ppp==1" ]
[endif]

[if exp="tf.hx_mpt.ppp==1" ]
	[if exp="tf.r2==1" ][eval exp="tf.hx_y.feel+=20"]
	[elsif exp="tf.r2==2" ][eval exp="tf.hx_y.feel+=30"]
	[elsif exp="tf.r2==3" ][eval exp="tf.hx_y.feel+=40"]
	[elsif exp="tf.r2==4" ][eval exp="tf.hx_y.feel+=50"]
	[elsif exp="tf.r2==5" ][eval exp="tf.hx_y.feel+=60"][endif]
[endif]
[Hx/ squi=00][return]


*tx_ex_both
[Hx_text_5sep r=2][random n=4]
[syl][if exp="tf.r2==1" ]
	[xf/ex][xf/ m=in e=non]
	啊…[if exp="f.g_config.x_speak>=1" ][Hxns n=v ex=1]要高潮了…！♡[else]嗯〜！♡[endif][p]
[elsif exp="tf.r2==2" ]
	[xf/ex][xf/ m=in e=non]
	嗯[if exp="f.g_config.x_speak>=1" ][Hxns n=v ex=1]…高[endif]高潮…♡♡♡[p]
[elsif exp="tf.r2==3 && tf.r<=2" ]
	[xf/ex][xf/ m=ein e=non]
	嗯゛呜…♡
	[if exp="f.g_config.x_speak>=1" ][Hxns n=v ex=1]高潮"…！！♡♡
	[else]嗯゛呜…♡咿！！♡♡[endif][p]
[elsif exp="tf.r2==3" ]
	[xf/ex][xf/ m=oea e=non]
	啊゛…！♡啊啊゛…！♡[Hxns n=p y=の][Hxns n=z]っ♡♡[lr]
	[xf/ex][xf/ m=oea e=non]哈…♡♡咿…♡♡♡[p]

[elsif exp="tf.r==1" ]
	[xf/ex][xf/ m=oea e=non]
	啊゛！！♡
	[if exp="f.g_config.x_speak>=1" ][Hxns n=v]高潮…[Hxns n=v ex=1高潮゛…！！♡♡
	[else]♡啊啊゛っ！！！♡♡♡[endif][p]
[elsif exp="tf.r==2" ]
	[xf/ex][xf/ m=oea e=non]
	啊゛っ[Hxns n=p y=の]…♡啊゛〜っ！♡♡！♡♡！[lr]
	[xf/ex][xf/ m=oea e=non]啊゛…！♡啊啊゛…！♡♡♡[p]
[elsif exp="tf.r==3" ]
	[xf/ex][xf/ m=non_o e=non]
	[if exp="f.g_config.x_speak>=1" ][Hxns n=v ex=1]…高゛[endif]潮゛…♡！！♡♡♡[lr]
	[xf/ex][xf/ m=oea e=non]唔唔゛…啊♡啊♡♡…♡♡[p]
[else]
	[xf/ex][xf/ m=oea e=non]
	啊゛啊゛！！♡！♡♡[lr]
	[xf/ex][xf/ m=oea e=non]高゛…♡♡高潮…！♡♡♡[p]
[endif]
[Hx/ squi=00][return]

*tx_y_ex_in
[syl][if exp="tf.hx_state.wet<=150" ]
	[Hx/ ef2=ex0][xf/ex][xf/ m=all e=non]
	哈♡呜…！！[name h=1]的[Hxns n=p ex=1][Hxns n=z ex=1]…里面…♡[p]
	[eval exp="tf.hx_s.feel+=30" ]
[elsif exp="tf.hx_state.wet<=250" ]
	[xf/ex][xf/ m=ein e=non]
	咿゛〜！…！[name h=1]…[name h=1 k=1]…♡[p]
	[eval exp="tf.hx_s.feel+=30" ]
[elsif exp="tf.hx_state.wet<=600" ]
	[xf/ex][xf/ m=non_o e=non]
	嗯呜…！♡♡[name h=1 k=1][Hxns n=p ex=1]から[Hxns n=z ex=1]里面…♡♡♡[p]
	[eval exp="tf.hx_s.feel+=40" ]
[elsif exp="tf.hx_state.wet<=1000" ]
	[xf/ex][xf/ m=oea e=non]
	啊゛〜！♡[name h=1 k=1]〜♡♡♡♡[p]
	[eval exp="tf.hx_s.feel+=50" ]
[else]
	[xf/ex][xf/ m=en e=non]
	啊゛〜！♡♡ 啊゛〜！♡[Hxns n=p ex=1]♡♡♡[p]
	[eval exp="tf.hx_s.feel+=60" ]
[endif][Hx/ squi=00][return]

*tx_y_ex_out
[if exp="tf.hx_state.wet<=150" ]
	[Hx/ ef2=ex0][xf/ m=ein]
	嗯…！[lr]…哈♡呜、[Hxns n=p ex=1]舒服…舒服吗？[name h=1]♡[p]
[elsif exp="tf.hx_state.wet<=250" ]
	[xf/ m=non_i]
	[name h=1]…♡[Hxns n=z ex=1]进来了♡[p]
[elsif exp="tf.hx_state.wet<=600" ]
	[xf/ m=non_i]
	[name h=1]の[Hxns n=z ex=1 a=の]全部…♡♡[lr]
	私…[name h=1][Hxns n=p ex=1 a=の][Hxns n=z ex=1]全部进来了…♡♡[p]
[elsif exp="tf.hx_state.wet<=1000" ]
	[xf/ m=non_i]
	啊啊゛〜♡♡[Hxns n=p ex=1][Hxns n=z ex=1]啊…[Hxns n=p ex=1][Hxns n=z ex=1]…♡♡♡[p]
[else]
	[xf/ m=oea]
	啊啊゛〜…♡啊啊゛〜…♡♡[p]
[endif][return]


*tx_y_ex_after_s_in
[syl][if exp="tf.hx_state.wet<=250" ]
	[xf/ex][xf/ m=oea e=non]
	嗯…呜…呼唔…！[Hxns n=z ex=1]♡[Hxns n=v ex=1 a=の]…进来了♡…[Hxns n=z ex=1]♡♡[p]
[elsif exp="tf.hx_state.wet<=600" ]
	[xf/ex][xf/ m=non_i e=non]
	[name h=1]的[Hxns n=z ex=1]…的…全部♡[Hxns n=p ex=1][Hxns n=z ex=1]♡[lr]
	[xf/ m=all ]我的[Hxns n=v ex=1]…进来了…♡♡♡[p]
[elsif exp="tf.hx_state.wet<=1000" ]
	[xf/ex][xf/ m=in e=non]
	啊゛〜！♡♡啊゛〜！♡♡[name h=1]の[Hxns n=p ex=1][Hxns n=z ex=1]啊゛〜！♡啊゛〜！♡♡♡[p]
[else]
	[xf/ex][xf/ m=oea e=non]
	啊啊…[Hxns n=v ex=1]♡♡啊啊゛…♡♡♡[p]
[endif]
[Hx/ squi=00][return]


*tx_y_ex_after_s_out
[syl][if exp="tf.hx_state.wet<=250" ]
	[xf/ex][xf/ m=all e=non]
	舒服…舒服吗？…♡[p]
[elsif exp="tf.hx_state.wet<=600" ]
	[xf/ex][xf/ m=non_i e=non]
	这么多♡！♡♡[name h=1]…♡♡♡[p]
[elsif exp="tf.hx_state.wet<=1000" ]
	[xf/ex][xf/ m=in e=non]
	啊啊゛〜♡♡んぅっ…！！♡♡♡[p]
[else]
	[xf/ex][xf/ m=oea e=non]
	啊啊゛〜[Hxns n=p ex=1]…♡♡啊啊゛…♡♡♡[p]
[endif]
[Hx/ squi=00][return]

;;終了
*tx_stop
[syl][eval exp="f.act.time='nonp'" ]

[if exp="tf.hx_state.wet<=80" ]
	[f/x ei=nh m=e y=def]嗯…。已经、结束了吗？[p]
	[f/x e=half ei=nh m=n]…好的、我知道了。[p]
[elsif exp="tf.hx_state.wet<=150" ]
	[f/x ei=nh m=e y=def]欸…。已经、结束了吗？[lr]
	[f/x y=conf]我、还没…[p]
	[f/x e=half ei=nh m=n]…没、我知道了。[p]
[elsif exp="tf.hx_state.wet<=250" ]
	[f/x ei=nh m=e y=def]呼…。诶、诶…结束了吗？[lr]
	[f/x e=half ei=nh m=n]嗯…、我…我知道了…[p]
	[f/x y=conf][name h=1]的捉弄…[p]
[elsif exp="tf.hx_state.wet<=600" ]
	[f/x e=half ei=nh m=et y=conf]服唔…。呼…、啊、结束了吗？[p]
	怎么那样啊…。[p]
[elsif exp="tf.hx_state.wet<=1000" ]
	[f/x e=half ei=nh m=et y=conf]呼唔…。呼…、啊、结束了吗？[p]
	还没…明明没问题…[p]
[else]
	[xf/ m=oea]はぁ゛〜♡はぁ゛〜♡♡[p]
	[_]（もう限界だ…今日はここまでにしよう[p]
	[eval exp="f.act.time='sex'" ]
[endif]
[jump/ tg=*end ]


*tx_end_y
[_]（已经到极限了…今天就到这吧。[p]
[eval exp="f.act.time='nonp'" ][jump/ tg=*end ]

*tx_end_s
[if exp="tf.hx_state.style=='mngr'" ][Hx/man you=left syl=non][Hx/man you=right syl=non]
[else][Hx/man you=left syl=leg][Hx/man you=right syl=leg][endif]
[p_show p=off cond="tf.hx_mpt.ppp==1"]
[syl][if exp="tf.hx_state.wet>=1500" ]啊゛…唔゛♡啊…啊゛♡゛♡♡
[elsif exp="tf.hx_state.wet>=1000" ]啊啊゛〜♡啊啊゛〜♡♡
[elsif exp="tf.hx_state.wet>=500" ]啊啊…♡咿唔…♡
[else]呼唔…♡啊啊……♡[endif]
[p]
[_]（希露薇好像不行、今天就做到这吧。[p]
[eval exp="f.act.time='sex'" ]
[jump/ tg=*end ]

*morning
[Hx/man you=left syl=leg][Hx/man you=right syl=leg]
[p_show p=off cond="tf.hx_mpt.ppp==1"]
[syl]啊゛…呜゛♡啊…啊゛♡♡[p]
[_]（天已经快亮了。两人都气喘吁吁…。[p]
[black]
像滩泥水一样是失去意识般的睡着了…。[p]
[eval exp="f.act.time='sexmax'" ]
[jump/ tg=*end ]

*end
[cm][cancelskip][black][stop_bgm][load_dress][clearfix][clearstack][free_tx]
[iscript]
if(tf.hx_s.ex_sum>=1){f.state.sexless=0, f.temp_flg.sexless_c=0;}
else{f.state.sexless+=2;}

f.h_count.ext+=tf.hx_s.ex_sum
f.h_count.cum+=tf.hx_y.ex_in, f.h_count.kake+=tf.hx_y.ex_out

f.h_count.ext_v+=tf.hx_s.ex_v, f.h_count.ext_c+=tf.hx_s.ex_c
f.h_count.ext_b+=tf.hx_s.ex_b, f.h_count.ext_m+=tf.hx_s.ex_m


if(tf.hx_state.wet>=100){f.state.lust+=1;}
if(tf.hx_state.wet>=300){f.state.lust+=1;}
if(tf.hx_state.wet>=600){f.state.lust+=1;}
if(tf.hx_state.wet>=900){f.state.lust+=1;}
if(tf.hx_state.wet>=1200){f.state.lust+=1;}
if(tf.hx_state.wet>=1500){f.state.lust+=1;}

tf.hx_y.ex_in+=tf.hx_y.ex_out
if(tf.hx_s.ex_sum==tf.hx_y.ex_in){f.x_count.sex+=tf.hx_s.ex_sum;}
else if(tf.hx_s.ex_sum>tf.hx_y.ex_in){f.x_count.sex+=tf.hx_y.ex_in;}
else if(tf.hx_s.ex_sum<tf.hx_y.ex_in){f.x_count.sex+=tf.hx_s.ex_sum;}

f.fol_info.scene='room'
[endscript]
[reload_file_path]
[set_win_frame]…。[p][day_end]

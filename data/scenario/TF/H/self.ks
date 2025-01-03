;;回想分岐
*self_decide
[cm][if exp="tf.hist_mode==1" ][jump/ tg=*H_self_first ]
[elsif exp="tf.hist_mode==2" ][jump/ tg=*H_self ][endif]
[call storage=TF/H/Hcg_set.ks target="*self_set" ]
[if exp="tf.hist_mode==11" ][jump/ tg=*a_cg ]
[elsif exp="tf.hist_mode==12" ][jump/ tg=*b_cg ][endif]
;[bgm st=MT][show_message_w][call storage=TF/H/Hcg_set.ks target="*self_set" ]

*end_cg
[cm][return_memory]

;;初回
*H_self_first
[cm][save_dress][stop_bgm][black][show_message_w][_]…[p]
[bg/ g=bg/ st=door]
（打开了房门、希露薇却似乎不在玄关的四周。[p]
（买来的东西放在一旁寻找希露薇的身影。[p]
[bg/ g=bg/ st=room]
…。[p]
（因为附近没有迹象所以就向卧室的方走去。[p]
[black]
（…半开了卧室的门的前一站、从中希露薇小小的声音漏了出来。[p]
[syl]嗯…呼呜……[p]
[call storage=TF/H/Hcg_set.ks target="*self_set" ][bgm st=MT]
[hcg/ eyes=a1 body=b2 head=h2 ef2=2 ][h_ef/ se=0-1 tx=0-1 ef=0-1 xr=00 ]
[call storage=TF/H/Hcg_set.ks target="*self_show_set" ]

[show_effect][hide_black]
[_]（从门的缝隙中窥视希露薇是半裸的在床上躺着。[p]
[se/ l=t  st=l-wet1 ][syl]…哈啊♡…嗯……[name]♡[p]
[_]（不记得给过希露薇什么大的过头的男士衬衫、[r]
但是把那个放在洗衣筐的记忆特别清晰。[p]
（她把衬衫的剩下的袖子在嘴边握紧、[r]
空着的右手好几次都没法穿上衣服向着下半身拖着。[p]
[se/ l=t  st=oral2 ]
[syl]呼呜ー…哈啊…♡[p]
[_]（耳朵注意力集中吸入希露薇的气息、[r]
细长的手指[Hxn n=v]摸索着润湿的秘部时听到细小的水声。[p]
[syl][name]…♡[name h=1]…♡♡[p]
[_]（耳朵注意力集中吸入希露薇的气息。[p]
（像是沉迷于这一行为没有注意到这里的视缐。[p]
[hcg/ ef2=move ][se/ l=t  st=oral3 ]
[syl]啊…嗯唔♡…[name h=1]…♡♡[p]
[_]（希露薇的喘息气息和[Hxn n=v]秘部回响着水的声音变大激烈起来。[p]
（快到极限时手指的动作已经像是来回搅动那样的深入和激烈。[p]
[syl]嗯♡♡…[name h=1]♡♡…[name h=1]♡[p]
[_]（细小的手指[Hxn n=iv]朝缝隙来回插入、然后拔出[r]
揪谑揪谑的爱液[Hxn n=w]溢出的声音回响着。[p]

[hcg/ eyes=a2 ef2=squi ][se/  st=squi ][h_ef/ se=0-2 tx=0-2 ef=0-2 ]
[syl]っ！♡…呼呜…♡♡嗯…♡♡♡！[p]
[_]（希露薇紧紧地僵着身体、[Hxn n=ex]绝顶快感让身体板起了。[p]
[syl]嗯…呼…♡[p]

[bg/ t=0 g=H/ st=auto2 ]
[hcg/ eyes=a3 ef2=2 ][h_ef/ se=0-3 tx=0-3 ef=0-3 ]
[_]（手指插在[Hxn n=v]秘部无力拔出的希露薇的四肢在狼狈的颤抖、[r]
空洞的眼睛的视缐让沉浸在馀韵中[p]
[syl]哈啊…哈啊…♡[name h=1]…♡[p]

[hcg/ eyes=a4 ][h_ef/ tx=00 ef=0-4 ]
…………[p]
………哎…[name]？[p]
[_]（摇摇晃晃的视缐忽然望向这边、[r]
希露薇睁开双眼时就这样僵住了。[p]
[syl]那…那个…[name]…这是…[p]
[_]（尽管通红着的、但也有点害怕的为难的样子、[r]
表情复杂的希露薇蜷缩在床上。[p]
[hide_role][set_win_frame][black]
（因为把希露薇放着不管了一段时间[r]
泪眼朦胧的视缐看着我同时支起上半身。[p]
[jump/ tg=*end cond="tf.hist_mode>=1"]

[save_dress]
[iscript]
f.situ.situ='room'
f.d_dress.type='up', f.d_dress_b.n='non', f.d_eri.n='non', f.d_eri.sub_p=0
f.d_under_b.n='non', f.d_under_p.n='non', f.d_hat.n='non'
f.d_pin.n='non', f.d_ribbon.n='non'
f.d_dress_a	={ n:'kare', type:'non', sub_p:0, c1:7, c2:2, c3:7, c1b:0, c2b:20, c3b:0}	
f.d_kata.n='non'

[endscript]
[load_d_info_all][set_stand][bg/ g=bg/ st=bed]
[f/ y=c c=p m=n][show_stand]
[m/re][syl]那个、我想洗衣服了…。[r]
[m/re]那个、[name]的衬衫…总觉得有点奇怪…。[p_]
[m/re]个、啊…这个…[r]
[m/re]这个…自己也不明白…。[p_]
[f/ y=c e=cl c=p]那个…对不起…对不起。[p_]
[choice_xy][btn/ l=y tg=*ok gr=ch/ok ][btn/ tg=*cute gr=ch/was_cute ][s]

*cute
[cm][f/ y=c c=p]哎…？[p_]
…。[p_]
[m/re]如果不被讨厌、那就最好了…。[p_]
[f/ y=c e=cl c=p]呼呼…。[p_]
[_]（我不知道怎么解释才好[r]
脸就这么变得通红尽管心情复杂也只好低头先走开了[p_]
[if exp="tf.hist_mode>=1" ][else][eval exp="f.state.lust+=10" ][endif]
[jump/ tg=*end ]

*ok
[cm][f/ y=c c=p]…心情没有变得不好？[lr_]
[m/re]真的不讨厌我吗？…真的吗？[p_]
[f/ y=c e=cl c=p m=n]…[p]
[f/ y=c c=p]对不起…说的都乱七八糟了。[lr_]
[m/re]如果被讨厌的话该怎么办呢、好害怕…。[p_]
[if exp="tf.hist_mode>=1" ][jump/ tg=*end ][endif]
[eval exp="f.state.love+=10" ]

*end
[black][load_dress][stop_bgm]
[return_memory cond="tf.hist_mode>=1" ]
[eval exp="f.x_count.self=1, f.h_count.ext+=1, f.h_count.ext_v+=1" ]
[eval exp="f.state.sexless-=1" cond="f.temp_flg.sexless_c>=1"]
[jump/ st=talk/town tg=*after_town ]

;;2回目以降
*H_self
[cm][stop_bgm][black][show_message_w][_]…[p][bgm st=MT][call storage=TF/H/Hcg_set.ks target="*self_set" ]
（希露薇躺在床上、用手指轻轻的抚摸自己[Hxn n=v]私处的一部分。[p]
（一时间用在意的视缐监视着我这边、[r]
像是死心了那样慢慢地开始动手指。[p]
[hcg/ eyes=b1 ][call storage=TF/H/Hcg_set.ks target="*self_show_set" ]
[h_ef/ se=1-1,2 tx=1-1,2 ef=1-1,2 xr=00 ]
	[show_effect][hide_black]
	[syl]…嗯[p]
	[_]（刚开始像是当初看见希尔微自慰的时候一样[r]
	她用左边剩下的袖子一边按住口鼻一边用右手动作。[p]
	[syl]呼…[p]
	[_]（慢慢地深深地呼吸着好象吸着衬衫的气味。[p]
	[syl]嗯呼…♡[p]
[hcg/ eyes=b2 body=b1 head=h1 ][se/ l=t  st=l-wet1 ]
	[_]（从床上开始听到她的呼吸以外的声音。[p]
	（用保守的动作玩弄着[Hxn n=v]秘部的希露薇的指尖开始湿润、[r]
	搅拌那样子似的小的水的搅拌声在屋子里回响着。[p]
	[syl]呼呜…♡嗯っ♡[p]
	（渐渐地手指的动作大幅度地深入、[r]
	希露薇的呼吸和水声也非常清楚地听到。[p]
[hcg/ eyes=b3 ][h_ef/ se=1-3-6 tx=1-3,4 ef=1-3,4 ]
	（想确定本人[Hxn n=v]秘部回响的下流的声音被听见了吗、[r]
	看了看这一遍的情况。[p]
[hcg/ eyes=b4 body=b2 head=h2 ef2=2 ][se/ l=t  st=oral2 ]
	（视缐碰到的话希露薇的表情也染上了羞耻[r]
	马上就把眼睛闭上了。[p]
	[syl][if exp="f.x_count.self>=50" ]
		[name]你看着的话…我[Hxns n=v ex=1 ]总有一种奇怪的感觉…[p]
	[elsif exp="f.x_count.self>=25" ]
		我、明明这么害羞…胸部却那么…[p]
	[endif]
	[_]（脸颊越来越变红的原因并不是都由羞耻和兴奋那两方面而定的、[r]
	她就这样指头动着而后呼吸更加地急促。[p]
[hcg/ eyes=b5 ef2=move ][h_ef/ tx=1-5,6 ef=1-5,6 ]
	[syl]哈啊…♡…呼唔…♡♡[p]
	[_]（爱液[Hxn n=w]滴在床单上张开、身体开始享受真正的快乐。[p]
	[syl]啊…嗯唔♡…[name h=1]…♡♡[p]
	[_]（希露薇起来叫我之后不再继续说有意义的话。。[lr]
	或许那种表达方式是她「行为」的一个部分。[p]
	[syl]嗯♡…[name h=1]♡♡…[name h=1]♡[p]

[hcg/ eyes=b6 ]
	[_]（希露薇再次向这边注视。[p]
	（这次对上眼后也摆正视缐朝这边定睛而视。[p]
	[syl][name h=1]…♡哈啊…♡…嗯♡[p]
	[_]（和平时重叠身体的时候不一样、[r]
	失去对焦的湿润瞳孔里倾诉着渴望。[p]
	[syl]啊…嗯唔♡…[name h=1]…♡♡[p]
[se/ l=t  st=oral3 ]
	[_]（希露薇透露出的呼吸和[Hxn n=v]秘部回响的水的声音变得很大地激烈起来。[p]
	[syl]嗯♡…[name h=1]♡♡…[name h=1]♡[p]
	[if exp="f.x_count.self>=25" ][name h=1]…看见了♡[p][endif]
	[if exp="f.x_count.self>=50" ][name h=1]...♡♡你♡♡听得见吗？♡[lr]私の[Hxns n=v ex=1 ]…♡害羞的声音、传出来了♡♡[p][endif]
	[_]（这里即使看希露薇淫乱的行为也无妨[r]
	细长的手指[Hxn n=iv]在目光的深处来回转动、揪揪谑谑的[Hxn n=w]爱液溢出的声音回荡着。[p]
	（[Hxn n=ex]在绝顶的时候手指的动作也接近极限了。[p]

[hcg/ eyes=b7 ef2=squi ][h_ef/ se=1-7 tx=1-7 ef=1-7 ]
[se/  st=squi ][bg/ t=0 g=H/ st=auto2 ]
	[syl]っ！♡…呼唔…♡♡嗯…♡♡♡！
	[if exp="f.g_config.x_speak==1" ][lr][Hxns n=v ex=1 ]高潮…唔……♡！♡♡[endif][p]
	[_]（希露薇紧紧地着僵身体、[Hxn n=ex]绝顶快感让身体板起了。[p]

[hcg/ eyes=b8 ef2=2 ][h_ef/ se=1-8 tx=1-8 ef=1-8 ]
[syl]哈啊…哈啊……嗯…唔…♡[p]
……[name h=1]♡[r]
満足…了吗？[p]

[return_memory cond="tf.hist_mode>=1" ]
[if exp="f.x_count.self>=100" ][eval exp="f.state.lust+=5" ]
[elsif exp="f.x_count.self>=75" ][eval exp="f.state.lust+=4" ]
[elsif exp="f.x_count.self>=50" ][eval exp="f.state.lust+=3" ]
[elsif exp="f.x_count.self>=25" ][eval exp="f.state.lust+=2" ]
[elsif exp="f.x_count.self>=10" ][eval exp="f.state.lust+=1" ][endif]

[eval exp="f.state.lust+=5, f.state.love+=10, f.x_count.self+=1" ]
[eval exp="f.h_count.ext+=1, f.h_count.ext_v+=1" ]
[jump/ st=H/Hx_sys tg=*self_after ]


;;CG1
*a_cg
[hcg/ eyes=a1 body=b2 head=h2 ef2=move ][h_ef/ se=0-1 tx=0-1 ef=0-1 xr=00 ]
[call storage=TF/H/Hcg_set.ks target="*self_show_set" ]
[show_effect][hide_black]
[h_back tg="*end_cg"][h_next tg="*a_cg2"][s]

*a_cg1
[cm][hcg/ eyes=a1 ef2=move ][h_ef/ se=0-1 tx=0-1 ef=0-1 xr=00 ]
[h_back tg="*end_cg"][h_next tg="*a_cg2"][s]
*a_cg2
[cm][hcg/ eyes=a2 ef2=squi ][h_ef/ se=0-2 tx=0-2 ef=0-2 ][bg/ t=0 g=H/ st=auto1 ]
[h_back tg="*a_cg1"][h_next tg="*a_cg3"][s]
*a_cg3
[cm][hcg/ eyes=a3 ef2=2 ][h_ef/ se=0-3 tx=0-3 ef=0-3 ][bg/ t=0 g=H/ st=auto2 ]
[h_back tg="*a_cg2"][h_next tg="*a_cg4"][s]
*a_cg4
[cm][hcg/ eyes=a4 ][h_ef/ tx=00 ef=0-4 ]
[h_back tg="*a_cg3"][h_next tg="*end_cg"][s]

;;CG2
*b_cg
[hcg/ eyes=b1 ][h_ef/ se=1-1,2 tx=1-1,2 ef=1-1,2 xr=00 ]
[call storage=TF/H/Hcg_set.ks target="*self_show_set" ]
[show_effect][hide_black]
[h_back tg="*end_cg"][h_next tg="*b_cg2"][s]

*b_cg1
[cm][hcg/ eyes=b1 body=b0 head=h0 ][h_ef/ se=1-1,2 tx=1-1,2 ef=1-1,2 xr=00 ]
[h_back tg="*end_cg"][h_next tg="*b_cg2"][s]

*b_cg2
[cm][hcg/ eyes=b2 body=b1 head=h1 ][h_ef/ se=1-1,2 tx=1-1,2 ef=1-1,2 ]
[h_back tg="*b_cg1"][h_next tg="*b_cg3"][s]
*b_cg3
[cm][hcg/ eyes=b3 body=b1 head=h1 ef2=1 ][h_ef/ se=1-3-6 tx=1-3,4 ef=1-3,4 ]
[h_back tg="*b_cg2"][h_next tg="*b_cg4"][s]
*b_cg4
[cm][hcg/ eyes=b4 body=b2 head=h2 ef2=2 ][h_ef/ tx=1-3,4 ef=1-3,4 ]
[h_back tg="*b_cg3"][h_next tg="*b_cg5"][s]
*b_cg5
[cm][hcg/ eyes=b5 ef2=move ][h_ef/ tx=1-5,6 ef=1-5,6 ]
[h_back tg="*b_cg4"][h_next tg="*b_cg6"][s]
*b_cg6
[cm][hcg/ eyes=b6 ef2=move ][h_ef/ se=1-3-6 tx=1-5,6 ef=1-5,6 ]
[bg/ t=0 g=H/ st=auto1 ]
[h_back tg="*b_cg5"][h_next tg="*b_cg7"][s]
*b_cg7
[cm][hcg/ eyes=b7 ef2=squi ][h_ef/ se=1-7 tx=1-7 ef=1-7 ]
[bg/ t=0 g=H/ st=auto2 ]
[h_back tg="*b_cg6"][h_next tg="*b_cg8"][s]
*b_cg8
[cm][hcg/ eyes=b8 ef2=2 ][h_ef/ se=1-8 tx=1-8 ef=1-8 ]
[h_back tg="*b_cg7"][h_next tg="*end"][s]



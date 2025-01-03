;;wine_intro
*wine
[cm][eval exp="f.temp_flg.drunk=0, f.act.wine=0, f.situ.situ='drink'" ]
[eval exp="f.count.p_wine+=1" ][eval exp="f.touch_c=0" ]
[last_act exp=add_wine ][c_mod n=win st=room/drink ]


[_][if exp="f.count.p_wine>=1" ][else]
（把买来的酒拿给希尔薇试一试。[p_]
[syl][f/]酒…？[lr_]
[f/ m=s]可以一起吃吗？[p_]
[_]（小心地倒进玻璃杯里，用少许水稀释后交给希尔薇。[p_]
[syl][f/]嗯，总觉得很甜的味道。[lr_]
[f/ m=s]好香啊。[p_]
[f/]…甜甜的带有果香味的酒，用水果浸泡出来的？[lr_]
[m/re]也有那样的东西吗？[p_]
[f/ m=s]那我就不客气了。[lr_]
[f/ e=smile m=s]嗯…干杯。[p_]
[f/ e=cl]嗯。[p_]
[f/ m=s]总觉得很甜，像果汁一样，也有酒的香味。[lr_]
[f/ e=smile m=s]很容易喝，味道很好。[p_][eval exp="f.act.wine=1" ]
[else]
（和希尔薇一起喝点酒吧。[p_]
[syl][f/ m=s]可以一起喝吗？[lr_]
[m/re]好的，我开动了。[p_]
[_]（小心地倒进玻璃杯里，用少许水稀释后交给希尔薇。[p_]
[endif]
[eval exp="f.item.p_wine-=1, f.temp_flg.drunk+=1" ]

*choice
[cm][if exp="f.act.wine==0" ][eval exp="f.act.wine=1" ]
[syl][f/ e=smile m=s]那么，干杯。[p_]
[f/ e=cl]んく…。[lr_][f/ e=smile c=p m=s]おいしい。[p_][endif]

[_][if exp="f.act.wine>=8" ]（天已经很晚了。[p_][jump/ tg=*stop ][endif]
[mood_calc][set_time]
[jump/ tg=*talk cond="f.g_config.repeat_mode==1 && f.act.last=='wine_talk'"]

[clickable_touch][if exp="f.temp_flg.drunk<=3" ][clickable_touch_scar][clickable_touch_hair][endif]
[xy x=895 y=164 y_add=73 preg1='menu/s_menu/wine_' ]
[btn/ l=y tg=*talk g=1 gr=talk ][btn/ l=y tg=*add g=1 gr=add ]
[btn/ y=646 tg=*stop g=1 gr=stop ]
[cancelskip][s]

*choice_
[cm][eval exp="f.act.wine+=1, f.state.love+=1" ][jump/ tg=*choice ]

*add
[cm][last_act exp=add_wine ]
[_][if exp="f.item.p_wine<=0" ][eval exp="f.act.wine-=1" ]（酒已经没了。[p_][jump/ tg=*choice_ ][endif]
[if exp="f.temp_flg.drunk>=4" ][eval exp="f.act.wine-=1" ]（今天最好不要再让她喝了。[p_][jump/ tg=*choice_ ][endif]

[syl][if exp="f.temp_flg.drunk>=3" ][f/ c=p m=s][else][f/ m=s][endif]
可以再来一杯吗？[lr_]
[if exp="f.temp_flg.drunk>=3" ][f/ e=smile c=p m=s][else][f/ e=smile m=s][endif]
谢谢。那我就不客气了。[p_]
[_]（我把酒倒进希尔薇的玻璃杯里。[p_]
[syl]
[if exp="f.temp_flg.drunk>=3" ][f/ e=cl c=p m=sn][else][f/ e=cl m=sn][endif]嗯…[lr_]
[eval exp="f.temp_flg.drunk+=1, f.item.p_wine-=1" ]
[if exp="f.temp_flg.drunk>=3" ][f/ e=smile c=p m=s][else][f/ e=smile m=s][endif]嗯…很好喝。[p_]
[jump/ tg=*choice ]

;;トークリード
*talk
[cm][last_act exp=wine_talk ]
[if exp="f.temp_flg.drunk>=3 && f.state.mood>='lust'" ][random n=3][jump/ tg=*wine_c_lead cond="tf.r==1" ][endif]
[if exp="f.temp_flg.drunk>=3" ][jump/ tg=*wine_b_lead ]
[else][jump/ tg=*wine_a_lead ][endif]

;;トークa
*wine_a_lead
[cm][eval exp="f.tg[1]='*wine_a_loop',f.tg[2]='*talk_wine_a'" ]
[eval exp="tf.loop=0, tf.t_name='wine_a', tf.t_number=20" ][random n=20]
*wine_a_loop
[if exp="tf.loop>=2" ][eval exp="f.t_wine_a=[]" ][jump/ tg=*wine_a_lead ][endif]
[talk_loop]

*talk_wine_a
[syl][if exp="tf.r==1" ]
	[f/]酒也有很多种类呢。[lr_]
	[f/ m=s]也有这种甜的，就像果汁一样好喝。[p_]
[elsif exp="tf.r==2" ]
	[f/]我以前只喝过一口红酒。[r]
	[f/ y=c e=cl]很涩，感觉不太好喝。[p_]
	[f/ m=s]但是，有一种很好的香味。[r]
	[m/re]我想如果有一天我变得更成熟的话，也能享受葡萄酒吧。[p_]
[elsif exp="tf.r==3" ]
	[f/ e=smile m=s]喝了酒总觉得像长大了一样。[p_]
[elsif exp="tf.r==4" ]
	[f/ e=cl m=s]感觉身体有点发热了。[p_]
[elsif exp="tf.r==5" ]
	[f/ e=cl m=s]虽然是冷饮，但一过喉咙就暖和了。[lr_]
	[f/ m=s]真的很不可思议。[p_]
[elsif exp="tf.r==6" ]
	[f/ m=s][name]喜欢什么样的酒呢？[lr_]
	[f/ e=smile m=s][name]如果有喜欢的东西的话，我也想什么时候尝试一下……什么？[p_]
[elsif exp="tf.r==7" ]
	[f/ e=smile c=p m=sn]…嘿嘿♡[p_]
[elsif exp="tf.r==8" ]
	[f/ e=smile m=s]以前都不敢想，总觉得和谁一起喝酒，是一件很奢侈的事。[p_]
[elsif exp="tf.r==9" ]
	[f/ e=cl]んく…。[lr_]
	[f/ e=smile c=p m=s]很好喝呢。♡[p_]
[elsif exp="tf.r==10" ]
	[f/ m=s]喝酒的时候还能有一些食物。[lr_]
	[m/re]奶酪啦花生啦。[p_]
	[f/]根据酒的不同，搭配的东西也不同。[r]
	[f/ m=s]什么样的食物适合这种酒呢？。[p_]
[elsif exp="tf.r==11" ]
	[f/]我还从来没有吃过下酒菜[lr_]
	[f/ e=cl]和茶点不同，我几乎没有吃过好吃的东西。[p_]
	[f/]这大概就是我的品位？[p_]
[elsif exp="tf.r==12" ]
	[f/ e=cl c=p]嗯…只是有一点点，我觉得有点困了。[lr_]
	[f/ c=p]…是因为喝醉了吗？[p_]
[elsif exp="tf.r==13" ]
	[f/ e=smile m=s]非常好喝的酒，谢谢你[name]。[p_]
[elsif exp="tf.r==14" ]
	[f/ e=cl]在我闻到瓶子里酒的味道的时候，我非常紧张。[lr_]
	[f/ m=s]就算是用水稀释过，我也以为我喝不下去[p_]
[elsif exp="tf.r==15" ]
	[f/ e=cl]我听过一些不好的事，好像以前有人因为喝酒猝死。[lr_]
	[f/ m=s]我还有点担心。[p_]
[elsif exp="tf.r==16" ]
	[f/ m=s]我从来没想过原来是这么好喝的清酒。[lr_]
	[f/ e=cl m=s]当然，肯定也还有许多我没有听说过的酒类。[p_]
[elsif exp="tf.r==17" ]
	[f/]因为酒不一样，所以酒精的含量也不一样[r]
	这个酒多少度？[lr_]
	[f/ m=s]我猜应该不会很高，因为我可以喝。[p_]
[elsif exp="tf.r==18" ]
	[f/ m=s]说起酒就是玻璃瓶呢。[lr_]
	[m/re]有各种各样的大小，形状，颜色，很漂亮呢。[p_]
	[m/re]就是酒喝光了，一想到要扔掉玻璃瓶就觉得很浪费。[p_]
[elsif exp="tf.r==19" ]
	顺便一提[if exp="f.count.p_wine!=0" ]
	[f/ m=s]我觉得我也没有喝太多酒[r]
	喝酒以后的第二天，我从来没有头疼过。[p_][endif]
	[f/]好像喝了好多酒的人第二天还会头晕。[p_]
[elsif exp="tf.r==20" ]
	[f/ e=cl]刚开始喝酒的时候，和喝果汁不一样。会感到不适[lr_]
	[f/ m=s]不知道在什么时候我已经习惯了。[p_]
[endif][talk_done][jump/ tg=*choice_ ]


;;トークb
*wine_b_lead
[cm][eval exp="f.tg[1]='*wine_b_loop',f.tg[2]='*talk_wine_b'" ]
[eval exp="tf.loop=0, tf.t_name='wine_b', tf.t_number=22" ][random n=22]
*wine_b_loop
[if exp="tf.loop>=2" ][eval exp="f.t_wine_b=[]" ][jump/ tg=*wine_b_lead ][endif]
[talk_loop]

*talk_wine_b
[syl][if exp="tf.r==1" ]
	[f/ c=p m=s][name]？[lr_]
	[f/ e=smile c=p m=s]…嘿嘿…没什么♡[p_]
[elsif exp="tf.r==2" ]
	[f/ e=smile c=p m=s]这酒真好喝…[name]♡[p_]
[elsif exp="tf.r==3" ][eval exp="f.t_wine_b[3]=1" ]
	[f/ e=smile c=p m=s][name]〜♡[lr_]
	[f/ e=half c=p m=s]…[name]♡[p_]
[elsif exp="tf.r==4" ]
	[f/ e=smile c=p m=s]我爱你[name]♡[lr_]
	[m/re]我爱你，为什么不说我很喜欢你呢？[p_]
[elsif exp="tf.r==5" ]
	[f/ c=p m=s]我可以再更粘着你一点吗？[lr_]
	[f/ e=smile c=p m=s]粘在一起了呢♡[p_]
	[_]（像猫狗一样蹭来蹭去…。[p_]
[elsif exp="tf.r==6" ]
	[f/ e=cl c=p m=s]幸福，我真的好幸福哦♡[lr_]
	[f/ c=p m=s]因为[name]有你啊♡[p_]
[elsif exp="tf.r==7" ]
	[f/ e=cl c=p]（打嗝…）。[lr_]
	[f/ e=smile c=p m=s]对不起♡[p_]
[elsif exp="tf.r==8" ]
	[f/ c=p][name]你想做什么吗[p_]
	[f/ ei=h m=s]是我啊？[lr_]
	[f/ e=smile c=p m=s][name]的要求我什么都会听哦♡[p_]
[elsif exp="tf.r==9" ]
	[f/ e=cl c=p]有点热…、[lr_]
	[f/ ei=h m=s]你热吗？[p_]
[elsif exp="tf.r==10" ]
	[f/ c=p m=s][name]怎么不多喝一点？[lr_]
	[f/ e=smile c=p m=s]啊，让我来给你倒吧♡[p_]
[elsif exp="tf.r==11" ]
	[f/ e=smile c=p m=s][name]…请多摸摸我的头♡[lr_]
	[f/ c=p m=s]嗯…继续摸♡[p_]
[elsif exp="tf.r==12" ]
	[f/ e=smile c=p m=s]我将来也想成为一名医生[name]，帮助你工作。[p_]
	[f/ y=c c=p]…啊，不是的。[lr_]
	[f/ e=smile c=p m=s]做个护士[name]给你帮忙♡[p_]
[elsif exp="tf.r==13" ]
	[f/ e=smile c=p m=s][name]…♡[p_]
	[_]（希尔薇从背后将我抱住）[p_]
[elsif exp="tf.r==14" ]
	[f/ e=smile c=p m=s][name]〜♡[p_]
	[_]（幸福的嬉戏着）[p_]
[elsif exp="tf.r==15" ]
	[f/ e=cl c=p][name]…♡[p_]
	[_]（通红的脸颊在我怀里蹭来蹭去）[p_]
	[syl][f/ y=c e=half c=p][name]唔…请对我做更多。[p_]
[elsif exp="tf.r==16" ]
	[f/ e=smile c=p m=s]你要去什么地方吗？[lr_]
	[m/re]我会永远陪着你的…♡[p_]
[elsif exp="tf.r==17" ]
	[f/ e=cl c=p m=s]总觉得有点困了…♡[p_]
[elsif exp="tf.r==18" ]
	[f/ e=smile c=p m=s]身体和心灵都很温暖…♡[p_]
[elsif exp="tf.r==19" ]
	[f/ e=cl c=p m=s]不知道为什么。[lr_]
	[m/re]mua~[p_]
[elsif exp="tf.r==20" ]
	[f/ e=cl c=p m=s][name]…♡[p_]
	[_]（把脸埋在这边的胸口。[p_]
	qiu~[l]
	[f/ e=smile c=p m=s]嘿嘿嘿…[name]的味道♡[p_]
[elsif exp="tf.r==21" ]
	[f/ e=smile c=p m=s][name]〜♡[lr_]
	[m/re]真是太棒了♡好棒♡[p_]
[elsif exp="tf.r==22" ]
	[f/ c=p m=s]身体暖暖的。[lr_]
	[m/re][name]也暖和一下吧♡[lr_]
	[f/ e=smile c=p m=s]えいっ♡[p_]
	[_]（从抱着我的希尔薇那里传来温暖的体温。）[p_]
[endif][jump/ tg=*choice_ ]


;;トークc
*wine_c_lead
[cm][eval exp="f.tg[1]='*wine_c_loop',f.tg[2]='*talk_wine_c'" ]
[eval exp="tf.loop=0, tf.t_name='wine_c', tf.t_number=9" ][random n=9]
*wine_c_loop
[if exp="tf.loop>=2" ][eval exp="f.t_wine_c=[]" ][jump/ tg=*wine_c_lead ][endif]
[talk_loop]

*talk_wine_c
[syl][if exp="tf.r==1" ]
	[f/ e=smile c=p m=s][name]请…请吻我。[p_]
	[f/ e=cl c=p m=sn]…唔！[p_]
	[_]闭上眼睛，耐心等待[p_]
[elsif exp="tf.r==2" ]
	[f/ y=c c=p][name]在服装店的时候一直在看老板娘。[lr_]
	[f/ e=cl c=p]因为是在店里所以不是理所当然的…。[p_]
	[f/ y=c c=p]那样可以吗，那种事情[p_]
	[m/re]我将来也会变成那样的。[lr_]
	[f/ y=c e=half ei=h]所以请只看着我。[p_]
[elsif exp="tf.r==3" ]
	[f/ e=cl c=p]…[name]♡[p_]
	[_]（抱着她的脸深深地亲吻）[p_]
	[syl]…唔…[p_]
	嗯～嗯…唔…啊…[p_]
[elsif exp="tf.r==4" ]
	[f/ e=smile c=p m=s]嗯…♡[p_]
	[_]（抱着希尔薇的时候，她抱着我的脖子吮吸了起来）[p_]
	[syl][f/ e=half c=p m=s]唔…嗯…[name]的味道♡[p_]
[elsif exp="tf.r==5" ]
	[f/ c=p m=s]酒那么好喝吗？[lr_]
	[f/ e=half c=p m=s]这里的酒很好喝哦，看♡[p_]
	[_]（希尔薇把酒含在嘴里，嘴唇就这样重叠起来了。）[p_]
	[syl][f/ e=cl c=p m=n]唔～唔~嗯♡[p_]
	[_]（喝了希尔薇嘴里流出的清酒，舌头纠缠在了一起）[p_]
	[syl]嗯～唔[lr_]
	[f/ e=half ei=h]好吃吗？[p_]
	[m/re]…[name]？[lr_]
	[f/ e=smile c=p m=s]接下来是我喝[name]的酒[p_]
[elsif exp="tf.r==6" ]
	[f/ e=half ei=h][name]？[r]
	您可以更喜欢我哦♡[p_]
	[_]（希尔薇一边这么说着，一边把身体靠过来）[p_]
[elsif exp="tf.r==7" ]
	[f/ y=c e=half ei=h]总觉得身体很热呢[name]…。[p_]
	[_]（静静的盯着这边看）[p_]
[elsif exp="tf.r==8" ]
	[f/ y=c e=half ei=h][name]…♡[name]…♡♡[p_]
	[_]（在我的臂弯里发出一声小小的嘤咛的声音。)[p_]
[elsif exp="tf.r==9" ]
	[f/ y=c e=half ei=h][name]摸我…[p_]
	[m/re]请触摸我[p_]
[endif]
[jump/ tg=*choice_ ]

;;stpo
*stop
[cm][eval exp="f.count.p_wine+=1" ]
（今天就到此为止吧）。[p_]
[if exp="f.temp_flg.drunk>=3" ][eval exp="f.act.time='wine'" ][else][eval exp="f.act.time='non'" ][endif]

[syl][if exp="f.temp_flg.drunk>=3 && f.state.lust>=300 && f.state.mood=='lust' || f.temp_flg.drunk>=4 && f.temp_flg.sexless_c>=3" ]
[eval exp="f.state.sexless+=1" ][eval exp="f.act.last='drunk2'" ]
[f/ y=c c=p]好吧，已经结束了吗？[lr_]
[f/ y=c c=p m=s]撒娇还没够呢。[p_]
[f/ y=c e=half c=p]不可以吗？[lr_]
[m/re]但是我身体很热，好像很难入睡。[p_]
[f/ e=half c=p]…那么[name]请帮我降降温。♡[lr_]
[f/ e=half ei=h]用非常激烈的方法~♡[p_]
[f/ e=smile c=p m=s]那样的话我也马上休息♡[lr_]
[f/ y=c e=half ei=h m=s]喂…[name h=1]♡♡[p_]
[_]希尔薇把衣服脱下来，爬到这边来了。[p]
[choice_xy][btn/ l=y tg=*missional_select_c gr=ch/to_bed ][btn/ tg=*no2 gr=ch/sleep ][s]

[elsif exp="f.temp_flg.drunk>=1 && f.state.lust>=150 && f.state.mood=='lust' || f.temp_flg.drunk>=2 && f.temp_flg.sexless_c>=3" ]
[eval exp="f.act.last='drunk1'" ]
[f/ c=p][f/]嗯，结束了吗？[lr_]
[f/ y=c c=p]…那个[name][p_]
[f/ e=cl c=p]也许是因为喝酒的原因，我的身体很热。[lr_]
[f/ y=c ei=h]在睡觉之前，请[name]帮我降温♡[p_]
[f/ y=c e=half ei=h][name h=1]不行吗？[p_]
[choice_xy][btn/ l=y tg=*missional_select_c gr=ch/to_bed ][btn/ tg=*no1 gr=ch/sleep ][s]

[elsif exp="f.temp_flg.drunk>=3" ]
[eval exp="f.state.sexless+=1" ]
[f/ c=p]今天结束了吗？[lr_]
[f/ e=smile c=p m=s]好的，那我就收拾玻璃杯了。[p_]
[f/ c=p]哎呀哎呀…（摇摇晃晃）[p_]
[f/ e=cl c=p]腿有点软。。[lr_]
[f/ c=p m=s]没有问题的。[p_]
[stop_bgm][black]
[_]（…过了一会儿希尔薇就睡着了。)[p_]
（把她搬到床上，自己也准备睡觉。)[p_]
…。[p_][day_end]

[else]
[cm][eval exp="f.act.wine='done'" ]
[f/]嗯，结束了吗？[lr_]
[f/ e=smile m=s]好的，那谢谢您的款待。[p_]
[f/ m=s]玻璃杯我来收拾吧。[p_]
[_][set_black]…。[p_][f/ m=sn][set_time][hide_black]
[jump/ st=talk/room tg=*night ][endif]

*missional_select_c
[cm][jump/ st=H/missional tg=*select_c ]

*no1
[cm][f/ e=cl c=p]我知道了，我今天会乖乖睡觉的。lr_]
[f/ e=half c=p]我不记得那之后的事。[p_]
[stop_bgm][black]
[_]希尔薇看起来有点不满意，但还是在床上依偎着我[r]
一段时间后，她平静的陷入睡眠[p]
[eval exp="f.state.sexless+=1" ]
…。[p_][day_end]

*no2
[cm][f/ y=c e=half c=p]嘿嘿…[name]那么～[p_]
[stop_bgm][black]
[_]希尔薇抱怨了一会儿[r]
一躺在床上就发出了鼾声[p]
[eval exp="f.state.sexless+=1" ]
…。[p_][day_end]

;;頭
*head
[cm][if exp="f.act.last!='head_touch'" ][_]（抚摸着希尔薇的头）[p][endif]
[eval exp="f.act.last='head_touch'" ]

[if exp="f.state.mood=='lust' && f.temp_flg.drunk>=3" ][jump/ tg=*wine_head_dlust_lead ]
[elsif exp="f.temp_flg.drunk>=3" ][jump/ tg=*wine_head_drunk_lead ]
[elsif exp="f.state.mood=='lust'" ][jump/ tg=*wine_head_lust_lead ][endif]

*wine_head_t_lead
[cm][eval exp="f.tg[1]='*wine_head_t_loop',f.tg[2]='*talk_wine_head_t'" ]
[eval exp="tf.loop=0, tf.t_name='wine_head_t', tf.t_number=27" ][random n=27]
*wine_head_t_loop
[if exp="tf.loop>=2" ][eval exp="f.t_wine_head=[]" ][jump/ tg=*wine_head_t_lead ][endif]
[talk_loop]

*talk_wine_head_t
[syl][if exp="tf.r==1" ]
	[f/ e=cl m=sn]…。[p_]
	[f/ e=smile m=s]嘿嘿…好喜欢你。[p_]
[elsif exp="tf.r==2" ]
	[f/ e=cl m=sn]…。[p_]
	[f/ y=c m=s]可以再拜托你嘛？[p_]
[elsif exp="tf.r==3" ]
	[f/ e=cl m=sn]…。[p_]
	[f/ e=smile m=s]呵呵…[name]？[p_]
	[_]（露出开心的笑容）[p_]
[elsif exp="tf.r==4" ]
	[f/ e=cl m=sn]…。[p_]
	[m/re]暖暖的～[p_]
[elsif exp="tf.r==5" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=cl c=p m=s]快要融化了。[p_]
[elsif exp="tf.r==6" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re][name]的手，好喜欢。[p_]
[elsif exp="tf.r==7" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re]这样做让我觉得很平静。[p_]
[elsif exp="tf.r==8" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re][name]很温暖[r]
	特别的…[p_]
[elsif exp="tf.r==9" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re]我感到很开心[p_]
[elsif exp="tf.r==10" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re][name]给我的东西都很温暖呢。[p_]
[elsif exp="tf.r==11" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re]这样的话，我就放心了。[p_]
[elsif exp="tf.r==12" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re]我希望可以一直这样。[p_]
[elsif exp="tf.r==13" ]
	[f/ e=cl m=n]…。[p_]
	[f/ y=c c=p]请不要离开我[p_]
[elsif exp="tf.r==14" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re][name]我好喜欢[p_]
[elsif exp="tf.r==15" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re]请尽可能多的触摸我。[p_]
[elsif exp="tf.r==16" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re]可以抚摸我的头吗[p_]
[elsif exp="tf.r==17" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=cl c=p m=s][name]…。[p_]
[elsif exp="tf.r==18" ]
	[f/ e=cl m=sn]…。[p_]
	[m/re][name]你给我的一切都令我感到温暖。[p_]
[elsif exp="tf.r==19" ]
	[f/ e=smile c=p m=sn]…。[p_]
	[m/re]呵呵…最喜欢你了～♡。[p_]
[elsif exp="tf.r==20" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ c=p m=s]…[name]在你抚摸我的时候，我感到很安心。[p_]
[elsif exp="tf.r==21" ]
	[f/ e=cl m=n]…。[p_]
	[f/ e=cl c=p]这样做的话，会非常平静。[p_]
[elsif exp="tf.r==22" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=smile c=p m=s][name]的手，好喜欢。[p_]
[elsif exp="tf.r==23" ]
	[f/ e=cl c=p m=n]…。[p_]
	[m/re]好像要被融化成软软的样子。[p_]
[elsif exp="tf.r==24" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=cl c=p m=s][name]非常温暖[p_]
[elsif exp="tf.r==25" ]
	[f/ e=smile c=p m=sn]…。[p_]
	[f/ e=smile c=p m=s]这令我感到非常幸福[p_]
[elsif exp="tf.r==26" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=cl c=p m=s]我也想要一起玩。[p_]
	[f/ y=c c=p m=s]像猫或狗一样[p_]
[elsif exp="tf.r==27" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ c=p m=s]你抚摸着我。[p_]
	[f/ e=smile c=p m=s]我最喜欢[name]了。[p_]
[endif][talk_done][jump/ tg=*end_touch ]

;;頭-エロ
*wine_head_lust_lead
[cm][eval exp="f.tg[1]='*wine_head_lust_loop',f.tg[2]='*talk_wine_head_lust'" ]
[eval exp="tf.loop=0, tf.t_name='wine_head_lust', tf.t_number=22" ][random n=22]
*wine_head_lust_loop
[if exp="tf.loop>=2" ][eval exp="f.t_wine_head_lust=[]" ][jump/ tg=*wine_head_lust_lead ][endif]
[talk_loop]

*talk_wine_head_lust
[syl][if exp="tf.r==1" ]
	[f/ e=cl m=n]…。[p_]
	[f/ e=cl c=p]我想一直这样。一直。[p_]
[elsif exp="tf.r==2" ]
	[f/ e=cl m=n]…。[p_]
	[f/ e=cl c=p]呼——[p_]
[elsif exp="tf.r==3" ]
	[f/ e=smile c=p m=sn]…♡[p_]
[elsif exp="tf.r==4" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re]温柔又温暖[p_]
[elsif exp="tf.r==5" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ y=c ei=h]我的身体好像在被火烧。[p_]
[elsif exp="tf.r==6" ]
	[f/ e=cl m=n]…。[p_]
	[f/ y=c c=p]最近[name]对我有点冷淡，我有点不安。[p_]
[elsif exp="tf.r==7" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ c=p m=s]请再多触碰我一点。[lr_]
	[f/ e=cl c=p]在我心满意足之前，一直一直…[p_]
[elsif exp="tf.r==8" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ e=cl c=p]…唔…[p_]
[elsif exp="tf.r==9" ]
	[f/ e=cl m=n]…。[p_]
	[f/ ei=h]请再多给我一点。给我更多…[p_]
[elsif exp="tf.r==10" ]
	[f/ e=cl m=n]…。[p_]
	[f/ y=c ei=h]不仅仅是抚摸我的头，请…更多…的触摸我[p_]
[elsif exp="tf.r==11" ]
	[f/ e=cl m=n]…。[p_]
	[f/ y=c c=p]如果仅仅是这样的话，反而会让我变得更难受[lr_]
	[f/ y=c e=half c=p]喂，[name]…？[p_]
[elsif exp="tf.r==12" ]
	[f/ e=cl m=sn]…。[p_]
	[f/ c=p m=s][name]的手，我最喜欢的。[p_]
[elsif exp="tf.r==13" ]
	[f/ e=cl m=n]…。[p_]
	[f/ c=p][name]如果是这样的话，稍微粗暴的对待也可以…[p_]
[elsif exp="tf.r==14" ]
	[f/ e=cl m=n]…。[p_]
	[f/ e=cl c=p]只是这样，我就觉得自己轻飘飘的[p_]
[elsif exp="tf.r==15" ]
	[f/ e=cl m=n]…。[p_]
	[f/ y=c e=half c=p]明明被触摸的只有一部分，身体却变得很热[p_]
[elsif exp="tf.r==16" ]
	[f/ e=cl m=n]…。[p_]
	[f/ y=c e=half ei=h]请不要欺负我…[p_]
[elsif exp="tf.r==17" ]
	[f/ e=cl m=n]…。[p_]
	[f/ y=c e=half ei=h]我想要更加强烈的刺激…[p_]
[elsif exp="tf.r==18" ]
	[f/ y=c e=half ei=h m=s]嗯…（呻吟声）[p_]
	[_]（她的眼神变得迷离，呼吸也不规则了起来）[p_]
[elsif exp="tf.r==19" ]
	[f/ e=cl m=n]…。[p_]
	[f/ y=c ei=h][name]…。[name]…。[p_]
	[_]（一脸焦急的扭动着身体）[p_]
[elsif exp="tf.r==20" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re]能带给我幸福的手…[lr_]
	[f/ y=c e=half ei=h m=s]让我心情愉悦的手。[p_]
[elsif exp="tf.r==21" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ ei=h]我是[name]的东西，所以做什么都可以啊？[p_]
[elsif exp="tf.r==22" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=cl c=p m=s]我的身体的每一个角落，都是[name]的东西。[p_]
[endif][talk_done][jump/ tg=*end_touch ]

;;頭-酔い
*wine_head_drunk_lead
[cm][eval exp="f.tg[1]='*wine_head_drunk_loop',f.tg[2]='*talk_wine_head_drunk'" ]
[eval exp="tf.loop=0, tf.t_name='wine_head_drunk', tf.t_number=19" ][random n=19]
*wine_head_drunk_loop
[if exp="tf.loop>=2" ][eval exp="f.t_wine_head_drunk=[]" ][jump/ tg=*wine_head_drunk_lead ][endif]
[talk_loop]

*talk_wine_head_drunk
[syl][if exp="tf.r==1" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=smile c=p m=s]呼呼--喜欢♡[p_]
[elsif exp="tf.r==2" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=smile c=p m=s]请多一点，再给我更多♡[p_]
[elsif exp="tf.r==3" ]
	[f/ e=cl c=p m=sn]…んふふ♪[p_]
	[m/re]…[name]♡[p_]
	[_]（露出开心的笑容）[p_]
[elsif exp="tf.r==4" ]
	[f/ e=cl m=sn]…。[p_]
	[m/re]又温柔，又温暖[p_]
[elsif exp="tf.r==5" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ c=p m=s]快要融化了…♪[p_]
[elsif exp="tf.r==6" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=half c=p m=s][name]的手，最喜欢了♪[p_]
[elsif exp="tf.r==7" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re]被这样做会令我感到很平静。[p_]
[elsif exp="tf.r==8" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=smile c=p m=s]好暖和，暖烘烘的♪[p_]
[elsif exp="tf.r==9" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=cl c=p m=s]嗯…很幸福♪[p_]
[elsif exp="tf.r==10" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re]想摸多久都可以♪[p_]
[elsif exp="tf.r==11" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re]还是这样最令人安心。[p_]
[elsif exp="tf.r==12" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=cl c=p m=s]想一直这样…一直[p_]
[elsif exp="tf.r==13" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ y=c c=p][name]千万不要抛弃我哦？[p_]
[elsif exp="tf.r==14" ]
	[f/ e=cl c=p m=n]…。[p_]
	[m/re]快要融化成软软的样子了♡[p_]
[elsif exp="tf.r==15" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ e=cl c=p m=s][name]好温暖啊。非常温暖。[p_]
[elsif exp="tf.r==16" ]
	[f/ e=cl c=p m=sn]んー…。[p_]
	[f/ e=smile c=p m=s]请再抚摸我一点♪[p_]
[elsif exp="tf.r==17" ]
	[f/ e=smile c=p m=sn]…。[p_]
	[m/re]…喜欢♪最喜欢♡。[p_]
[elsif exp="tf.r==18" ]
	[f/ e=cl c=p m=sn]んー…。[p_]
	[f/ e=smile c=p m=s]ごろにゃ〜♪[p_]
[elsif exp="tf.r==19" ]
	[f/ e=cl c=p m=sn]んー…。[p_]
	[f/ e=smile c=p m=s]再多抚摸我一点♪[lr_]
	[f/ e=smile c=p m=s]蹭蹭～♪[p_]
[endif][talk_done][jump/ tg=*end_touch ]

;;頭-エロ酔い
*wine_head_dlust_lead
[cm][eval exp="f.tg[1]='*wine_head_dlust_loop',f.tg[2]='*talk_wine_head_dlust'" ]
[eval exp="tf.loop=0, tf.t_name='wine_head_dlust', tf.t_number=21" ][random n=21]
*wine_head_dlust_loop
[if exp="tf.loop>=2" ][eval exp="f.t_wine_head_dlust=[]" ][jump/ tg=*wine_head_dlust_lead ][endif]
[talk_loop]

*talk_wine_head_dlust
[syl][if exp="tf.r==1" ]
	[f/ e=cl m=n]…。[p_]
	[f/ e=cl c=p]我想一直这样下去…一直…[p_]
[elsif exp="tf.r==2" ]
	[f/ e=cl m=n]…。[p_]
	[f/ e=cl c=p]ふぅー…。[p_]
[elsif exp="tf.r==3" ]
	[f/ e=smile c=p m=sn]…♡[p_]
[elsif exp="tf.r==4" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[m/re]又温柔，又温暖[p_]
[elsif exp="tf.r==5" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ y=c ei=h]身体像被火烧一样。呐…？[p_]
[elsif exp="tf.r==6" ]
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ y=c e=half ei=h m=s]我的身体的每一处都是[name]的东西哦？[p_]
[elsif exp="tf.r==7" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ c=p m=s]请随便触碰我吧？[lr_]
	[f/ e=half ei=h]很大，满满的…[p_]
[elsif exp="tf.r==8" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ y=c e=half ei=h]嗯…我…啊[p_]
[elsif exp="tf.r==9" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ ei=h]啊…请再更多的疼爱我…[p_]
[elsif exp="tf.r==10" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ y=c ei=h]不仅仅是摸头，请更多的抚摸我。[p_]
[elsif exp="tf.r==11" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ y=c c=p]这样的话会很寂寞的哦。[lr_]
	[f/ y=c e=half ei=h]那个[name]…？[p_]
[elsif exp="tf.r==12" ][
	[f/ e=cl c=p m=sn]…。[p_]
	[f/ ei=h m=s][name]的手，我好喜欢…。[p_]
[elsif exp="tf.r==13" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ ei=h][name]那么，做什么都可以哦？[p_]
[elsif exp="tf.r==14" ]
	[f/ c=p m=n]…。[p_]
	[f/ e=cl c=p]光是这样，我就觉得自己轻飘飘的[p_]
[elsif exp="tf.r==15" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ y=c e=half ei=h]明明被触碰的只是一部分，但整个身体都燥热了起来[p_]
[elsif exp="tf.r==16" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ y=c e=half ei=h]不要欺负我…[p_]
[elsif exp="tf.r==17" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ y=c e=half ei=h]请更多的疼爱我[p_]
[elsif exp="tf.r==18" ]
	[f/ y=c e=half ei=h m=s]ふぅ…ん…。[p_]
	[_]（她的眼神变得迷离，呼吸也不规则了起来）[p_]
[elsif exp="tf.r==19" ]
	[f/ e=cl c=p m=n]…。[p_]
	[f/ y=c ei=h][name]…。[name]…。[p_]
	[_]（一脸焦急的扭动着身体）[p_]
[elsif exp="tf.r==20" ]
	[f/ c=p m=sn]…。[p_]
	[m/re]让我开心的手。[lr_]
	[f/ y=c e=half ei=h m=s]给我幸福的手。[p_]
[elsif exp="tf.r==21" ]
	[f/ c=p m=n]…。[p_]
	[f/ ei=h]我是[name]的，所以可以对我做任何事情哦？[p_]
[endif][talk_done][jump/ tg=*end_touch ]

;;目
*eyes
[cm][syl]
;[if exp="tf.r==1" ]
	[f/ c=p m=s]嗯？怎么了[p_]
	[f/ e=half c=p]喜…[lr_]
	[f/ e=smile c=p m=s]呼呼-…♪[p_]
;[endif]
[jump/ tg=*end_touch ]

;;口
*mouth
[cm][if exp="f.x_count.sex>=1" ]
	[pre_touch_link]
	[btn/ l=x tg=*mouth_touch g=1 gr=touch ][btn/ l=x tg=*mouth_kiss g=1 gr=kiss ]
	[btn/ l=x tg=*return g=1 gr=quit ][cancelskip][s]
[else][jump/ tg=*mouth_touch ][endif]




*mouth_touch
[cm][last_act exp=touch ][random n=4]
[_]（触摸希尔薇柔软的嘴唇）[p_]
[syl][if exp="tf.r==1" ]
	[f/ c=p m=n]唔？嗯…[p_]
[elsif exp="tf.r==2" ]
	[f/ c=p m=s]嗯？吃手指了呦？[lr_]
	[f/ e=smile c=p m=s]吮吸♪[p_]
[elsif exp="tf.r==3" ]
	[f/ c=p]你的嘴里有东西吗？[lr_]
	[f/ e=cl c=p]唔…喝酒喝的嘴巴里有点涩。[p_]
[else]
	[f/ c=p m=n]…。[lr_]
	[f/ e=smile c=p m=sn]吮吸♪[p_][endif]
[jump/ tg=*end_touch ]

*mouth_kiss
[cm][eval exp="f.state.love+=1" ]
[if exp="f.state.mood=='lust'" ][random n=4][eval exp="tf.r=tf.r+4" ]
[elsif exp="f.state.lust>=800" ][random n=8][else][random n=4][endif]
[syl][if exp="tf.r==1" ]
	[f/ e=cl c=p m=s]唔…[lr_]
	[f/ c=p m=s]接吻，好喜欢♡[p_]
[elsif exp="tf.r==2" ]
	[f/ e=cl c=p m=s]嗯…啾～[lr_]
	[f/ e=smile c=p m=s]呼呼--♡[p_]
[elsif exp="tf.r==3" ]
	[f/ e=cl c=p m=s]唔…哼…[lr_]
	[f/ c=p m=s][name]我要更多♡[p_]
[elsif exp="tf.r==4" ]
	[f/ e=cl c=p m=s]唔…嗯…[lr_]
	[f/ e=smile c=p m=s]…[name]最喜欢♡[p_]

[elsif exp="tf.r==5 || tf.r==6" ][last_act exp=lust_touch ]
	[f/ e=cl c=p m=s]唔…[p_]
	[_]（嘴唇重叠后，潮湿的舌头带有酒精的香味。）[p_]
	[syl][m/re]啾~。[lr_]
	嗯…嗯…啾…[p_]
	[m/re]呼呼-[lr_]
	[f/ y=c e=half ei=h m=s]…[name]〜♡[p_]
[else][last_act exp=lust_touch ]
	[f/ e=cl c=p m=sn]嘿嘿…[p_]
	[_]夹杂着甜味的吐息和舌头一起进入口腔[p_]
	[syl]唔…嗯～呼呼-[lr_]
	[m/re]嗯…嗯…唔…[lr_]
	啾～[p_]
	[m/re]呼呼-[p_]
	[f/ y=c e=half ei=h m=s]嘿嘿嘿嘿…♡[p_]
[endif][jump/ tg=*end_touch ]

;;肩
*shoulder_touch
[cm][last_act exp=touch ][random n=3]
[syl][if exp="tf.r==1" ]
	[f/ e=cl c=p m=s]可以抱抱我吗？[p_]
[elsif exp="tf.r==2" ]
	[f/ e=cl c=p m=n]嗯…[lr_]
	[f/ e=smile c=p m=s]我希望你能把我抱起来♪[p_]
[else]
	[f/ e=smile c=p m=s]好啊，要做什么？（没头没尾纯粹瞎翻，后期按剧情改）[p_]
[endif]
[jump/ tg=*end_touch ]

*shoulder_hug
[cm][last_act exp=touch ][random n=6]
[syl][if exp="tf.r==1" ]
	[f/ e=smile c=p m=sn]呼呼-…♪[lr_]
	[f/ c=p m=s]再多做一点♡[p_]
[elsif exp="tf.r==2" ]
	[f/ e=smile c=p m=s]不要♡[lr_]
	[f/ c=p m=s]嗯…我并不讨厌～♪[p_]
[elsif exp="tf.r==3" ]
	[f/ e=cl c=p m=s]嘿…[name]好暖和♡[p_]
[elsif exp="tf.r==4" ]
	[f/ e=smile c=p m=sn]ん〜♡[p_]
	[_]（希尔薇用纤细的手臂抱了过来）[p_]
[elsif exp="tf.r==5" ]
	[f/ e=cl c=p m=s]谢谢你～♡[p_]
[else]
	[f/ e=smile c=p m=s][name]〜♡[p_]
[endif][jump/ tg=*end_touch ]

;;手
*hands
[random n=5]
[syl][if exp="tf.r==1" ]
	[f/ e=smile c=p m=sn]唔～♪[p_]
	[_]（希尔薇握住我的手）[p_]
[elsif exp="tf.r==2" ]
	[f/ c=p m=s][name]的手好大啊。[lr_]
	[f/ c=p]我的手很小吗[p_]
[elsif exp="tf.r==3" ]
	[f/ e=smile c=p m=s][name]的手很温暖，我很喜欢它♪[p_]
[elsif exp="tf.r==4" ]
	[f/ e=smile c=p m=s]可以一直握着吗？[p_]
[else]
	[f/ e=smile c=p m=s]ふふ…♪[p_]
	[_]（希尔薇和我十指相扣)[p_]
[endif][jump/ tg=*end_touch ]

;;胸
*bust
[if exp="f.state.lust>=600 && f.h_state.b>=250 || f.state.mood=='lust'" ][random n=7][eval exp="tf.r=tf.r+6" ]
[else][random n=6][endif]

[if exp="tf.r==1" ]
	[f/ y=c e=half c=p m=s]那个[name]啊～♪[p_]
[elsif exp="tf.r==2" ]
	[f/ e=half c=p][name]你真的很喜欢胸部呢。[p_]
[elsif exp="tf.r==3" ]
	[f/ e=half c=p m=s]因为是[name]所以并不讨厌[p_]
[elsif exp="tf.r==4" ]
	[f/ y=c e=half c=p m=s][name]唉？♡[lr_]
[elsif exp="tf.r==5" ]
	[f/ y=c e=half c=p]摸我的胸部能让你感到开心吗？[lr_]
	[f/ e=half c=p]无论如何，还是服装店老板娘的胸部才感觉更好吧。[p_]
[elsif exp="tf.r==6" ]
	[f/ c=p m=s]嗯…请随便♡[p_]
;淫乱度/胸感度-高
[elsif exp="tf.r==7" ]
	[f/ y=c e=half ei=h m=s][name]请随便♡[p_]
[elsif exp="tf.r==8" ]
	[f/ y=c e=half ei=h][name]嗯…再多摸一点♡[p_]
[elsif exp="tf.r==9" ]
	[f/ y=c ei=h m=s]嗯~♡请再触摸更多…[p_]
[elsif exp="tf.r==10" ]
	[f/ y=c e=half ei=h m=n]唔嗯~♡…[l]
	[f/ e=cl c=p]嗯…嗯…♡♡[p_]
[elsif exp="tf.r==11" ]
	[f/ y=c e=cl c=p]嗯…♡…嗯♡[p_]
	[f/ e=half ei=h]可以更激烈一点…♡[p_]
[elsif exp="tf.r==12" ]
	[f/ y=c e=half ei=h]那样的话，我…嗯…♡[p_]
[else]
	[f/ y=c e=half ei=h][name]…。[lr_]
	[f/ y=c e=cl c=p]っん！♡[p_]
[endif][jump/ tg=*end_touch ]

;;お腹
*stomach
[cm][last_act exp=touch ][random n=5]
[syl][if exp="tf.r==1" ]
	[f/ c=p m=s]比以前稍微有了一点肉了吧。[lr_]
	[f/ c=p]不是吗？[p_]
[elsif exp="tf.r==2" ]
	[f/ e=smile c=p m=s]呼呼-好痒啊♪[p_]
[elsif exp="tf.r==3" ]
	[f/ c=p]我觉得我的肚子既不软也不硬。[p_]
	[f/ e=smile c=p m=s][name]如果你喜欢柔软的肚子，我会多吃一点，拼命的吃很多[p_]
[elsif exp="tf.r==4" ]
	[f/ c=p]我觉得我的肚子即不软也不硬。[p_]
	[f/ e=smile c=p m=s][name]如果喜欢硬硬的肚子，那我就努力锻炼身体[p_]
[else]
	[f/ c=p m=s]你肚子饿了吗？
	[f/ e=cl c=p]嗯…可能有点饿了吧[p_]
[endif][jump/ tg=*end_touch ]



*foot
[cm][random n=4]
[syl][if exp="tf.r==1" ]
[elsif exp="tf.r==2" ]
[f/]
[elsif exp="tf.r==3" ]
[f/ m=s]
[else]
[f/st]
[endif][jump/ tg=*end_touch ]
*hip
[cm][random n=4]
[syl][if exp="tf.r==1" ]
[elsif exp="tf.r==2" ]
[f/]
[elsif exp="tf.r==3" ]
[f/ m=s]
[else]
[f/st]
[endif][jump/ tg=*end_touch ]
*scar
[cm][random n=4]
[syl][if exp="tf.r==1" ]
[elsif exp="tf.r==2" ]
[f/]
[elsif exp="tf.r==3" ]
[f/ m=s]
[else]
[f/st]
[endif][jump/ tg=*end_touch ]
*hair
[cm][random n=4]
[syl][if exp="tf.r==1" ]
[elsif exp="tf.r==2" ]
[f/]
[elsif exp="tf.r==3" ]
[f/ m=s]
[else]
[f/st]
[endif][jump/ tg=*end_touch ]


;;end
*end_touch
[if exp="f.act.last=='lust_touch'" ][add_lust_act][endif]
[if exp="f.touch_c>=0 && f.touch_c<=4" ][else][eval exp="f.touch_c=0" ][endif]
[eval exp="f.touch_c+=1" ]
[if exp="f.touch_c>=4" ][eval exp="f.touch_c=0" ][eval exp="f.act.wine+=1" ][endif]

*return
[cm][_][jump/ tg=*choice ]

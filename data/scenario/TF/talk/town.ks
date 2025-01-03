;;外出選択肢
*out_choice
[cm][c_mod n=win st=room/go_out ]
[xy x=895 y=155 y_add=85 preg1='menu/room/s_menu/out_' tg1='*talk_before_go'][btn/xy]
[if exp="f.act.time<=4" ]
	[if exp="f.daily.out==0" ]
	[btn/ l=y tg=1 g=1 gr=town eval exp="f.tg[1]='town'" ]
	[btn/ l=y tg=1 g=1 gr=forest eval exp="f.tg[1]='forest'" cond="f.state.step>=6" ][endif]
	[btn/ l=y tg=*alone g=1 gr=alone ]
[else]
	[btn/ l=y tg=1 g=1 gr=dinner ]
	[btn/ l=y tg=*alone g=1 gr=alone cond="f.state.lust>=50 || f.count.shop_n>=1"]
[endif]
[btn/ y=646 tg=*remind_go g=1 gr=remind ][s]

*remind_go
[cm][eval exp="f.act.system=1" ][return_menu]

*talk_before_go
[cm][if exp="f.d_dress.type=='onp' && f.d_dress.h!='def' || f.d_dress.type=='up' && (f.d_dress_a.h!='def' || f.d_dress_b.h!='def') || f.state.step==6 && f.d_dress.type=='onp' && f.d_dress.n=='boro'" ]
[_]（让我换上能够出门的衣服…。[p_][eval exp="f.act.system=1" ][return_menu][endif]

[eval exp="f.daily.out=1" ][set_stand][bg/ g=bg/ st=door][syl]
;序盤
[if exp="f.intro.flag=='alone'" ][eval exp="f.intro.flag=0" ]
	[f/ m=n][show_stand]…。[lr_]
	[m/re]我也、一起去吗？[p_]
	[f/ e=cl m=n]…。[lr_]
	[f/]我明白了。[lr_]
	[m/re]虽然我提不起太重的东西、但、我会尽量帮忙的…。[p_]
[elsif exp="f.state.step==3" ][f/][show_stand]
	我也、可以再和你一起吗？[p_]
[elsif exp="f.state.step==4" ][f/][show_stand]
	要出去吗。[lr_]
	[m/re]好的、请带上我一起吧。[p_]
[elsif exp="f.state.step==5" ][f/ m=s][show_stand]
	好的、要出去吗。[lr_]
	[m/re]…我很开心。[p_]
;step6
[elsif exp="f.state.step==6 && f.act.time>=5" ][f/ m=s][show_stand]
	今天的晚餐在外面吗？[p_]
	[f/ m=s]好的，我知道了。很期待。[p_]
	[jump/ st=talk/cafe tg=*dinner ]
[elsif exp="f.state.love>500 && f.x_count.sex>=1" ][f/ e=smile c=p m=s][show_stand]
	好的、一起去吧。[lr_]
	[m/re]不管你去哪里、都不要离开我…。[p_]
[elsif exp="f.state.step==6" ][f/ e=smile m=s][show_stand]
	好的。出去请带上我一起。[lr_]
	[f/ e=smile m=s][name]一起、去哪里我都是快乐的。[p_]
[endif][set_black]

[if exp="f.tg[1]=='forest'" ][jump/ st=talk/forest tg=*forest ][else][jump/ tg=*town ][endif]

*return_to_town
[cm][cancelskip][black][set_black][bgm st=ST][show_repeat_role st=out]
[bg/ st=town][_][set_time]
[if exp="f.state.step<=4" ][f/ m=n][elsif exp="f.state.step==5" ][f/ m=sn]
[elsif exp="f.state.step==6" ][f/ m=sn][elsif exp="f.state.love>1000 && f.state.step>=6" ][f/ c=p m=sn][endif]
[show_stand][hide_black]
（回到了广场。[p][jump/ tg=*town_choise ]

;;街
*town
[cm][stop_bgm][bg/ st=town][last_act exp=town ][show_repeat_role st=out]
[eval exp="f.count.town+=1, f.count.out+=1, f.situ.situ='outside', f.situ.place='hiroba'" ]
[if exp="f.state.step<=4" ][f/ m=n][elsif exp="f.state.step==5" ][f/ m=sn]
[elsif exp="f.state.step==6" ][f/ m=sn][elsif exp="f.state.love>1000 && f.state.step>=6" ][f/ c=p m=sn][endif]
[bgm st=OB][set_weather][hide_black]
[_]到城镇上了、要去哪里呢。[l]

[if exp="f.act.time<=3" ][eval exp="f.daily.lunch=1" ][else][eval exp="f.daily.lunch=2" ][endif]

;街中選択肢
*town_choise
[jump/ st=talk/intro tg=*went_town cond="f.state.step<=5"][set_time]
[jump/ tg=*hiroba_re cond="f.g_config.repeat_mode==1 && f.act.last=='hiroba'"]
[cm][_][set_weather][c_mod n=win st=outside/town]
[xy x=1196 y=102 y_add=61 preg1='menu/s_menu/' ][btn/xy]
[if exp="f.act.last=='town'" ]
[btn/ l=y tg=*hiroba_re g=1 gr=rest_town ][else]
[btn/ l=y tg=*hiroba_re g=1 gr=talk ][endif]
[btn/ l=y tg=*market g=1 gr=market ]

[if exp="f.act.time>=2 && f.act.time<=4 && f.daily.lunch!=0" ]
[btn/ l=y exp="f.st[0]='talk/cafe',f.tg[0]='*cafe'" g=1 gr=cafe ][else][add_y][endif]
[if exp="f.act.time<=4 && f.daily.d_shop!=1" ]
[btn/ l=y exp="f.st[0]='talk/d_shop',f.tg[0]='*d_shop'" g=1 gr=dress_shop ][else][add_y][endif]
[if exp="f.act.last=='town'" ]
[btn/ l=y tg=*back_home g=1 gr=go_home ][else]
[btn/ l=y tg=*go_home g=1 gr=go_home ][endif]
[s]

*back_home
[cm][c_mod n=win ]
[_]（买些生活必需品今天就回去吧…。[p_][jump/ tg=*after_town ]
*go_home
[cm][c_mod n=win ]
[_]（今天就到这里了差不多应该要回家了。[p_]
[f/ m=s][syl]好的、那我们现在回家吧。[p_][jump/ tg=*after_town ]

;;広場
*hiroba_re
[cm][c_mod n=win st=00 ]
[if exp="f.act.last=='town'" ][eval exp="f.count.hiroba+=1" ]
	[bgm st=ST][_]坐在喷水池的边缘向希尔薇招手让她坐在我身边。[p_][endif]
[last_act exp=hiroba ]


;トークループ
*hiroba_lead
[cm][xy tg1=*hiroba_loop tg2='*hiroba_talk' ]
[eval exp="tf.loop=0, tf.t_name='hiroba', tf.t_number=23" ][random n=23]
*hiroba_loop
[if exp="tf.loop>=2" ][eval exp="f.t_hiroba=[]" ][jump/ tg=*hiroba_lead ][endif]
[talk_loop]

;トーク
*hiroba_talk
[syl][if exp="tf.r==1" ]
	[f/ m=s]就这样子、走在寂静街上觉得很新鲜。[lr_]
	[m/re][name]来到地方之前是没有这样的机会的啊。[p_]
[elsif exp="tf.r==2" ]
	[f/ m=s]和市场相比这一带人的流动缓慢。[p_]
[elsif exp="tf.r==3" ]
	[f/ m=s]…就这样眺望着街道的风景总觉得有一种不可思议的感觉。[p_]
[elsif exp="tf.r==4" ]
	[f/ e=cl]这个广大的世界各种各样的人生存着。[lr_]
	[f/]我到[name]的地方来之前的生活很狭窄不自由、[r]
	知道这样没有真实感。[p_]
[elsif exp="tf.r==5" ]
	[f/ m=s]人群中有[name]旁边、不至于那么不安。[p_]
[elsif exp="tf.r==6" ]
	[f/ y=c]我不能阔步而行、走长得路有点累。[lr_]
	[f/ e=smile m=s]但是、这是第一次注意到疲惫才发觉的[name]和我一起出门是快乐的。[p_]
[elsif exp="tf.r==7" ]
	[f/ m=s]喷泉好漂亮啊。[p_]
	[m/re]水喷流出来…[r]
	只是这样就感觉到永远都会看下去。[p_]
[elsif exp="tf.r==8" ]
	[f/]第一次来这个街道看喷泉。[lr_]
	[f/ e=cl]我在以前的地方…。[p_]
	[f/]没有机会看到城里的情况、所以我不知道。[p_]
[elsif exp="tf.r==9" ]
	[f/]这个街道的气氛真是不可思议啊。[lr_]
	[f/ e=cl m=s]建筑物也有很多、人的流动也不慢、[r]
	总感觉好像慢慢的时间流逝了。[p_]
[elsif exp="tf.r==10" ]
	[f/ m=sn]…[p_]
	[_]（希尔薇神色平静的眺望着街道。[p_]
[elsif exp="tf.r==11" ]
	[f/ e=smile m=s]…[name][p_]
	[_]（希尔薇悄悄地握住了我的手。[p_]
[elsif exp="tf.r==12" ]
	[f/ e=cl]仔细看这个街上也有贫困的差异。[lr_]
	[f/ m=s]但是、偶尔会有人注意到比较有钱人的人、而穷苦潦倒的人却不怎么看到的。[p_]
[elsif exp="tf.r==13" ]
	[_]（希尔薇眺望着流动的云。[p_]
	[f/ m=s]…清楚的看见天空、漂亮的广场。[p_]
[elsif exp="tf.r==14" ]
	[f/ e=cl]从前、「和人打交道是让人恐怖的事情」、[r]
	在遇到不认识的人的时候我会很害怕。[p_]
	[f/ m=s]现在那样的事情并不是消失了、[r]
	不过旁边有[name]在就少许放心。[p_]
[elsif exp="tf.r==15" ]
	[f/ e=cl m=s]虽然离开了店但也很开心、[r]
	就这样在行人少的地方慢慢地走、坐着休息的人也很平静。[p_]
[elsif exp="tf.r==16" ]
	[_][f/ m=n]（突然与希尔薇的视缐相接。[p_]
	[syl][f/ m=sn]…？[p_]
[elsif exp="tf.r==17" ]
	[f/]现在的我就这样和你走在空无一人的街上。[lr_]
	[f/ e=cl m=s]不是谁的奴隶、就是普通的人。[p_]
[elsif exp="tf.r==18" ]
	[f/][name]的家是街道开始稍微偏了的地方呢。[lr_]
	[m/re]住在人多的地方也有困难的事情吗？[p_]
[elsif exp="tf.r==19" ]
	[f/]我的穿着打扮和街上其他人是完全不同的风格呢。[p_]
	[f/ e=cl]那条街上有一副可怕的脸和满脸疲惫的人很多、[r]
	时常听到了怒吼的声音和打架的声音。[lr_]
	[f/]能自由出门了也不太想过去…。[p_]
[elsif exp="tf.r==20" ]
	[f/ m=s]有人在路上演奏乐器吗。[lr_]
	[f/]是小提琴…吧？[p_]
	[f/ m=s]音乐和乐器的事不了解、不过声音好动听的。[p_]
[elsif exp="tf.r==21" ]
	[f/ m=sn]…。[p_]
	[_]（微风撩动着希尔薇的头发[p_]
[elsif exp="tf.r==22" ]
	[f/ m=sn]…。[lr]
	[_]（希尔薇坐在喷泉边上摆动着双脚。[p_]
[elsif exp="tf.r==23" ]
	[_][f/ e=cl m=sn]（从侧面吹的风让希尔薇轻轻地的闭上了双眼。[p_]
[endif][talk_done]

[eval exp="f.act.time+=1, f.state.love+=1, f.daily.hiroba+=1" ]
[_][if exp="f.act.time==6" ][set_weather]（渐渐地太阳开始落山了。[p_][jump/ tg=*go_home ][endif]
[jump/ tg=*town_choise ]

;;市場
*market
[cm][set_black][c_mod n=win st=00 ][f/ m=sn]
[bg/ st=market][bgm st=AS][last_act exp=market ][hide_black]
[if exp="f.count.market==0" ][eval exp="f.count.market=1" ]
[_]（我们来到了从食品到工艺品各种各样的东西都能买到的集市。[p_]
（虽然普通的生活用品在附近就能直接买到、[r]
但是和希尔薇一起的话就算只是看看珍奇的东西也很不错呢。[p_]
[syl][f/]这里居然有一个市场啊。[lr_]
[m/re]人好多…。[p_]
[f/ m=s]好像会有好多东西啊。[p_]
[else][eval exp="f.count.market+=1" ][_]（来到了市场。[p_][endif]

*market_choice
[cm][set_time][set_weather]
[jump/ cond="f.g_config.repeat_mode==1 && f.act.last=='market'" tg=*market_re ]
[c_mod n=win st=outside/town ]
[xy x=1196 y=102 y_add=61 preg1='menu/s_menu/' ][btn/xy]
[btn/ l=y tg=*market_re g=1 gr=look_around ]
[btn/ l=y tg=*return_to_town g=1 gr=return_center ]
[if exp="(f.act.time==3 || f.act.time==4) && f.daily.lunch!=0" ]
[btn/ l=y exp="f.st[0]='talk/cafe',f.tg[0]='*cafe'" g=1 gr=cafe ][else][add_y_blank][endif]
[if exp="f.act.time<=4 && f.daily.d_shop!=1" ]
[btn/ l=y exp="f.st[0]='talk/d_shop',f.tg[0]='*d_shop'" g=1 gr=dress_shop ][else][add_y_blank][endif]
[btn/ l=y tg=*go_home g=1 gr=go_home ]
[s]


*market_re
[cm][last_act exp=market ][c_mod n=win st=00 ][jump/ tg=*market_lead ]

*market_go_home
[cm][c_mod n=win st=00 ]
[_]（今天就这样结束吧。[p_]
[f/ m=s][syl]好的、那我们现在回去吧。[p_]
[black]…[p_][bgm st=room][return_bace]

*market_lead
[cm][xy tg1='*market_loop' tg2='*talk_market' ]
[eval exp="tf.loop=0, tf.t_name='market', tf.t_number=30" ][random n=30]
*market_loop
[if exp="tf.loop>=2" ][eval exp="f.t_market=[]" ][jump/ tg=*market_lead ][endif]
[talk_loop]

;トーク
*talk_market
[syl][if exp="tf.r==1" ]
	[f/]这里居然还卖酒呢。[p_]
	[if exp="f.count.p_wine>=1" ]
	[f/ m=s]你问我有喝过吗？[p_]
	[else][m/re]我虽然没有喝过酒、不过应该很好喝吧？[p_]
	[m/re]等以后长大了真想尝一尝呢。[p_][endif]
[elsif exp="tf.r==2" ]
	[f/ y=c]这个地瓜？又长又红呢。[p_]
	[f/]甜薯？[lr_]
	[m/re]地瓜、是甜的吧？[p_]
	[m/re]ど要怎么用它做菜呢…。[p_]
[elsif exp="tf.r==3" ]
	[f/]这里在卖西红柿呢。[p_]
	[f/ y=c]生的西红柿…、我不太喜欢呢。[p_]
	[m/re]如果是西红柿酱的话倒可以。[p_]
[elsif exp="tf.r==4" ]
	[f/ m=s]咖啡的味道好香…。[lr_]
	[m/re]这里在卖咖啡豆呢。[p_]
	[f/ y=c]明明闻起来很香、泡出的咖啡却那么苦…。[p_]
	[m/re]好羡慕能把它美味地喝下去的人。[p_]
[elsif exp="tf.r==5" ]
	[f/]这里有红萝卜呢…。[p_]
	[m/re]红萝卜是十字花科植物吧？[lr_]
	[f/ m=s]橙黄色的根茎、真是不可思议呢。[p_]
[elsif exp="tf.r==6" ]
	[f/]好多种颜色的辣椒呢…。[p_]
	[f/ m=s]明明都是辣椒颜色却这么丰富好有趣呢。[p_]
	[m/re]而且这颜色看上去像是用油画颜料涂上去呢。[lr_]
	[f/ e=cl]是不是用颜料作肥料来…怎么可能。[p_]
[elsif exp="tf.r==7" ]
	[f/ y=c]人真的好多啊。[lr_]
	[f/ c=p]可以、牵一下我的手吗？[p_]
[elsif exp="tf.r==8" ]
	[f/ m=s]在卖各种各样的东西呢。[lr_]
	[m/re]蔬菜、果物、罐头还有其它小玩意。[p_]
	[m/re]货架上的东西、丰富多彩散发出各种味道…。[p_]
[elsif exp="tf.r==9" ]
	[f/ m=s]好多样啊。[lr_]
	[m/re]很多种的菜都会用到它吧？[p_]
	[m/re]我也好想以后能做很多种菜。[p_]
[elsif exp="tf.r==10" ]
	[f/ m=s]好大的南瓜呀。[p_]
	[f/]不过想来想去它只能做馅饼这一种东西呢、[r]
	还有什么其它做法吗？[p_]
	[f/ e=smile m=s]如果把一个南瓜都做成馅饼的话我和[name]是绝对吃不完的呢。[p_]
[elsif exp="tf.r==11" ]
	[f/]这里有好多的香料呢。[p_]
	[m/re]只有一点的话味道很棒、[r]
	[m/re]但是这里的味道好浓呢。[p_]
	[f/ y=c]各种意义上我都要被熏晕了。[p_]
[elsif exp="tf.r==12" ]
	[f/ y=c]芹菜。…说实话不喜欢它的味道呢。[p_]
	[f/ e=cl]竹笋什么的、也有像这样的青草味道吧？[lr_]
	[f/ y=c]不太喜欢草一样的味道…。[p_]
[elsif exp="tf.r==13" ]
	[f/ m=s]啊、摆着各种的果酱呢…。[p_]
	[f/ e=smile m=s]瓶子里的果酱有各种各样的颜色真漂亮啊、[r]
	只是想想它的味道都好开心、让人忍不住了呢。[p_]
[elsif exp="tf.r==14" ]
	[f/]啊、有个橙子落在了这里…。[lr_]
	[m/re]嘿休、[p_]
	[f/ m=s]把它放回原来的地方吧。[p_]
[elsif exp="tf.r==15" ]
	[f/]这个是橙子[lr_]
	[m/re]…不是呢。[p_]
	[f/ y=c]橘子？[lr_]
	[m/re]看起来比橙子小、这个好吃吗？[p_]
[elsif exp="tf.r==16" ]
	[f/ m=s]红彤彤的苹果、味道好好闻呢。[p_]
	[m/re]苹果就这样排在一起看着的话、[r]
	真想不削皮就那样直接咬下去呢[p_]
[elsif exp="tf.r==17" ]
	[f/ m=s]啊、哈密瓜好便宜啊。[p_]
	[f/ e=cl]但是提着会好重[r]
	[m/re]不是散步时顺便买的东西呢。[p_]
[elsif exp="tf.r==18" ]
	[f/]完整的菠萝…好大呢。[p_]
	[f/ y=c]这个、即使就这样买回家的话似乎也很难削皮…。[lr_]
	[m/re]不用特殊工具之类的能削掉吗。[p_]
[elsif exp="tf.r==19" ]
	[f/ m=s]这里摆着好多葡萄呢…。[p_]
	[m/re]诶、可以尝一口吗？[p_]
	[f/ e=smile c=p m=s]…嗯、好甜…♡[p_]
[elsif exp="tf.r==20" ]
	[f/ m=s]好多草莓啊。[p_]
	[m/re]虽然直接吃也很美味…[lr_]
	[f/ e=smile m=s]想起蛋糕上的草莓了呢。[p_]
[elsif exp="tf.r==21" ]
	[f/]形状有趣的水果？这个是。[lr_]
	[m/re]杨桃？[p_]
	[f/ m=s]啊、可以切出星星的形状。真的好有意思…。[p_]
[elsif exp="tf.r==22" ]
	[f/]这里摆着很多香蕉呢。[p_]
	[f/ m=s]就算不用刀叉也可以直接吃好棒呢。[p_]
	[m/re]好像也能用来做松饼或者蛋糕哦。[lr_]
	[f/ e=smile m=s][name]以后我一定会试着给做的。[p_]
[elsif exp="tf.r==23" ]
	[f/]啊、是樱桃[lr_]
	[m/re]…不是呢。[p_]
	[f/ y=c]这个是什么？[lr_]
	[m/re]…针叶樱桃？[p_]
	[f/]香味和樱桃也差好多呢。[lr_]
	[m/re]不知道好不好吃？[p_]
[elsif exp="tf.r==24" ]
	[f/]这个有好多刺而且看起来好坚硬呢…。[lr_]
	[m/re]叫什么来着？[p_]
	[m/re]榴莲？[lr_]
	[f/ y=c]…闻起来虽然臭、味道却是甜的吗？[p_]
	[m/re]无法想象是什么味道呢…。[lr_]
	[f/ e=cl]虽然想尝一尝味道、但是这个东西的样子真的好恶心…。[p_]
[elsif exp="tf.r==25" ]
	[f/ m=s]感觉有好多颜色很漂亮呢、这个是什么。[p_]
	[m/re]啊、仔细看的话是蜡烛呢。[p_]
	[f/]熏香蜡烛？[lr_]
	[m/re]和为了发光做的蜡烛不一样呢。[p_]
[elsif exp="tf.r==26" ]
	[f/ m=s]这里排着玻璃厨具呢。[p_]
	[f/ m=s]闪闪发光的好漂亮…。[p_]
	[f/ y=c]但是这么精致的话、[r]
	[m/re]平时用起来有点提心吊胆呢。[p_]
[elsif exp="tf.r==27" ]
	[f/]啊、我们已经到尽头了。[lr_]
	[m/re]看来店铺就到这里了。[p_]
	[f/ m=s]我们回去看看别的地方吧。[p_]
[elsif exp="tf.r==28" ]
	[f/ m=s]啊、这里有各种茶叶在卖呢。[p_]
	[m/re]虽然我喝不了咖啡、[r]
	[m/re]但是能喝茶能够想象味道真是很开心呢。[p_]
[elsif exp="tf.r==29" ]
	[f/]这个怪怪的是…装饰品？这种东西也会有人卖呢。[p_]
	[m/re]虽然看起来很有趣但是…[r]
	[m/re]但是无论哪一个装饰在家里都不太合适呢。[p_]
[elsif exp="tf.r==30" ]
	[f/]这里有香辛料的香味呢…。[p_]
	[m/re]啊、这里在卖肉干。[lr_]
	[f/ y=c]…不过相当贵呢。[p_]
	[f/ e=cl]因为自己做起来会很麻烦、所以考虑到社会平均劳动时间的话说不定会值这个价格呢。[p_]
[endif][talk_done]
[eval exp="f.act.time+=1, f.state.love+=1, f.daily.market+=1" ]
[_][if exp="f.act.time==6" ][set_weather]
（星星点点的店铺映入眼帘…。[lr_][jump/ tg=*go_home ][endif]
[jump/ tg=*market_choice ]

;;一人---------------------------------------------------------------------------------------------
;見送り
*alone
[cm][black][_]（家里的事交给希尔薇去买东西吧。[p_]
[eval exp="f.daily.out=1" ][set_stand][bg/ g=bg/ st=door][last_act exp=out_alone ]
[syl][f/ m=n][show_stand]
[if exp="f.act.time>=5" ][f/]太阳都下山了、你一个人去买东西吗？[p_]
[else][f/]你一个人去买东西吗？[p_][endif]

[if exp="f.state.love>=2000 && f.state.lust>=1500" ]
	[f/ y=c]…好的、你慢走。[lr_]
	[f/ y=c e=cl]没问题、没问题…。[p_]
[elsif exp="f.state.love>=1500 && f.state.lust>=1000" ]
	[f/ m=s]…好的、你慢走。[lr_]
	[f/ e=cl]那个、恭候你回来。[p_]
[elsif exp="f.state.love>=1000 && f.state.lust>=500" ]
	[f/ m=s]好的、你慢走。[lr_]
	[f/ e=cl m=s]…我等你回来。[p_]
[elsif exp="f.state.love>=500" ]
	[f/ m=s]好的、你慢走。[lr_]
	[f/ e=smile m=s]家里的事情请交给我吧。。[p_]
[else]
	[f/ m=s]好的、你慢走。路上小心。[p_]
[endif]

;出先
[stop_bgm][black]
[_]…。[p_][if exp="f.act.time==0 && f.item.book!=1" ][jump/ tg=*book_event ][endif]
[if exp="f.act.time==0" ][jump/ tg=*Ferrum ][endif]

*not_call
（需要的东西买到了。[lr]
顺便到哪里去吗？[choice_xy set=2]
[if exp="f.act.time>=5" ]
	[btn/ l=y exp="f.st[0]='talk/d_shop',f.tg[0]='*shop_night'" gr=ch/d_shop ]
[else][bgm st=OB][bg/ st=town]
	[btn/ l=y exp="f.st[0]='talk/cafe',f.tg[0]='*cafe_alone'" gr=ch/lunch ]
[endif]
[btn/ l=y tg=*back_home_alone gr=ch/back exp="f.item.miyage='nothing',f.daily.d_shop_n='not'"]
[s]

;帰宅
*back_home_alone
[cm][_]（不绕道直接回去吧。[p_][stop_bgm]
*home
[cm][black][_]（…。[p_][set_stand]
[if exp="f.x_count.self>=1" ][else][eval exp="f.x_count.self=0" ][endif]
[if exp="(f.state.lust>=150 || f.state.mood=='lust') && f.x_count.self==0 && (f.item.miyage=='nothing' || f.daily.d_shop_n=='not')" ]
	[jump/ st=H/self tg=*H_self_first ][endif]
[if exp="f.temp_flg.sexless_c>=1 && f.x_count.self>=1" ]
[eval exp="f.state.sexless-=1, f.x_count.self+=1, f.state.lust+=1" ][endif]

[eval exp="f.daily.out='alone'" ]
[if exp="f.state.love>=2000 && f.state.lust>=1500" ]
	[bg/ g=bg/ st=doorout]
	[_]（一到家门前希尔薇打就开门跑到我跟前来。[p_]
	[f/ c=p m=s][show_stand]
	[syl]…[name]。[p_]
	[_]（跑过来的希尔薇没有止步直接扑向我的怀中。[p_]
	[syl][f/ c=p]…啊。对不起。[lr_]
	[f/ e=smile c=p m=s]那个、你回来啦♡[p_]
[elsif exp="f.state.love>=1500 && f.state.lust>=1000" ]
	[bg/ g=bg/ st=doorout]
	[_]（一到家门前希尔薇打就开门跑到我跟前来。[p_]
	[f/ e=smile c=p m=sn][show_stand]
	[syl][m/re]你回来了啊、[name]。[lr_]
	[f/ c=p m=s]啊、那个…我有点等不及了…。[p_]
	[_]（看起来她一直从窗户里看着等我回来。[p_]
[elsif exp="f.state.love>=1000 && f.state.lust>=500" ]
	[bg/ g=bg/ st=door][f/ c=p m=sn][show_stand]
	[syl][m/re]你回来了啊、[name]。[lr_]
	[m/re]东西买的怎么样？[p_]
	[_]（把手放在门把上之前门就打开了。[lr]
	看起来希尔薇一直从窗户里看着等我回来。[p_]
[elsif exp="f.state.love>=500" ]
	[bg/ g=bg/ st=door][f/ e=smile m=sn][show_stand]
	[syl][m/re]啊、你回来了啊、[name]。[lr_]
	[f/ m=s]东西买的怎么样？[p_]
	[_]（打开门后见到希尔薇一路小跑地来到门口来迎接我。[p_]
[else]
	[bg/ g=bg/ st=door][f/ m=sn][show_stand]
	[syl][m/re]啊、你回来了啊、[name]。[lr_]
	[m/re]东西买的怎么样？[p_]
[endif]
;*end
[if exp="f.daily.d_shop_n=='bought'" ]
	[syl][f/]啊、你买了什么东西吗？[lr_]
	[m/re]…给我？[p_]
	[f/ c=p]这个是…。[lr_]
	[if exp="f.state.lust<=200" ][f/ e=cl c=p]不、如果是、[name]想要我穿的话…。[p_]
	[elsif exp="f.state.lust<=1000" ][f/ c=p m=s]…好的、那么之后再♡[p_]
	[else][f/ c=p m=s]…好的、请按照[name]的喜好装扮吧。[p_]
	[m/re][name]喜好的话我就可以…♡[p_]
	[endif]
[elsif exp="f.item.miyage!='non' && f.item.miyage!='nothing'" ]
	[syl][f/ m=s]…啊、[miyage][if exp="f.tea_dorayaki==0 && f.item.miyage=='どら焼き' || f.tea_youkan==0 && f.item.miyage=='羊羹'" ]？[endif]
	买来了吗？[p_]
	[m/re]那、饭后一起吃吧。[lr_]
	[f/ e=smile m=s]谢谢你、[name]。[p_]
[endif]
[jump/ tg=*after_town ]


;;Ferrum
*Ferrum
[cm][bg/ st=market]
（在买东西时好像是在哪里看到过的背影。[l]
[choice_xy][btn/ l=y tg=*call_Ferrum gr=ch/call ][btn/ tg=*Ferrum_not_call gr=ch/stop ][s]

*Ferrum_not_call
[cm][black][eval exp="f.item.miyage='nothing'" ]（先继续买东西吧…。[p]
[jump/ tg=*not_call ]

*call_Ferrum
[cm][if exp="f.sub_chara.Ferr>=1" ][else][jump/ tg=*Ferrum_first_time ][endif]
[bgm st=RG][eval exp="f.item.miyage='nothing'" ][eval exp="f.temp.shop_t=0" ]
[c_mod n=win st=00 ef=00][c_show n=win ]
[c_mod n=sub st=sys/sub/fel_a_smile ][c_show n=sub t=100 w=t ]
[Ferr]嗨、医生、买东西吗。[p]
来我们家看看吗？[p]
[_]
*Ferrum_choice
[c_mod n=win st=outside/ferrum ][anim/ n=sub x=-200 ]
[xy x=925 y=218 y_add=64 preg1='menu/s_menu/' ][btn/xy]
[btn/ l=y tg=*Ferrum_buy g=1 gr=buy_drink ]
[if exp="f.temp.shop_t==0" ][btn/ l=y tg=*Ferrum_lead g=1 gr=talk exp="f.temp.shop_t=1" ][else][add_y_blank][endif]
[btn/ l=y tg=*Ferrum_go_home g=1 gr=go_home ][s]

*Ferrum_buy
[cm][if exp="f.item.p_wine>=11" ]
（之前买的还留在家里…。[p]
[jump/ tg=*Ferrum_choice ][endif]

[eval exp="f.item.p_wine+=10" ]
[Ferr]知道了。那么这里的。[p]
[_]（买了森屿秘制的梅酒。[p]

*Ferrum_go_home
[cm][Ferr]那么以后有机会的话。[p]
[black][stop_bgm][jump/ st=talk/town tg=*home ]

;talk
*Ferrum_lead
[cm][anim/ n=sub x=0 ][eval exp="f.count.Ferr_t+=1" ]
;[jump/ cond="f.sub_chara.Ferr==1" tg=*Ferrum_sec ]
[xy tg1='*Ferrum_loop' tg2='*talk_Ferrum' ]
[eval exp="tf.loop=0, tf.t_name='Ferrum', tf.t_number=6" ][random n=6]
*Ferrum_loop
[if exp="tf.loop>=2" ][eval exp="f.t_Ferrum=[]" ][jump/ tg=*Ferrum_lead ][endif]
[talk_loop]

*talk_Ferrum
[c_mod n=win st=00 ]
[Ferr][if exp="tf.r==1" ]
	这里是好地方啊。[lr]
	有点奇怪的地方基本上是和平的。[p]
	一直没有变化吧…这里？[lr]
	那个永无止境的老好人医生就是最好的例子。[p]
[elsif exp="tf.r==2" ]
	之前也说了、我的生意就是卖各种商品。[p]
	因为要处理异国的东西所以竞争对手少、[r]
	不需要了解没有需求的东西做生意。[p]
	这个城镇很成功。[lr]
	别具特色的生意人很多、相应的回报非常丰厚。[p]
	在最近更换过货物的店家里稍微留意一下的话、[r]
	很有可能会找到成为我的商业伙伴的人呢。[lr]
	如果有那种人的话一定要好好留个心眼呢。[p]
[elsif exp="tf.r==3" ]
	这里是和平的街道。[lr]
	但是、也有很多地方过于和平让人毛骨悚然…。[p]
	在治安稳定的街道生意也是非常稳定。[lr]
	我的出场机会虽然是决定好了的、[r]
	但总觉得这个城市好像不对劲。[p]
[elsif exp="tf.r==4" ]
	多亏了宽广的人际关系到处忙碌着。[lr]
	一般的需求也好、很罕见的东西也罢都能采购到。[p]
	但是如果没患上奇怪的病的话医生也就不需要什么稀奇的药物、[r]
	所以也没有什么可以卖给医生的东西。[p]
[elsif exp="tf.r==5" ]
	人来人往、金钱周转、东西被消费。[lr]
	嘈杂是市场正确的景色。[p]
	我的这些货物也是、在这个集市作为商品流动着。[p]
[elsif exp="tf.r==6" ]
	我在这里交易的商品几乎都是国外的进口货。[p]
	食品、酒、衣服和书。[lr]
	自己说是什么都有、但是非常稀有的东西也不是很多。[p]
	我的供应商是从他的邻居那里进货的。[lr]
	街内都是充满着好奇的家伙吧。[p]
[endif][talk_done][jump/ tg=*Ferrum_choice ]

;;Ferrum_手芸書
*book_event
[_][black][bgm st=OB][bg/ st=market]
必要的东西都买好了。[lr]
是差不多该回去吧、又或者再看几家商店也不错吧而止步思考中。[p]
#???
哦呀、医生是你啊。也在买东西吗。[p_]
[bgm st=RG][c_mod n=sub st=sys/sub/fel_a_smile ][c_show n=sub t=100 w=t ]
[_]（我看向声音传来的地方、前些时候的男人就出现在那里。[p_]
[Ferr]看起来。你和那个相处的很顺利呢？[p]
[_]（大概说的是希尔薇吧。[p_]
[Ferr]…这样吗。那就太好了。[p]
最近在这里的生意相当顺利。[lr_]
;偶尔出入这个城市。[p_]
;说不定今后也会见面呢。[p_]
[c_mod n=sub st=sys/sub/fel_a_def ]
不过今日我遇到了一些小麻烦、[r]
我得特地把一部分货物运到这里来…。[p_]
现在正等着对方呢。[p_]
[_]（男人把手放在旁边放着的大堆的货物上有些不爽地皱着眉头。[p_]
[c_mod n=sub st=sys/sub/fel_a_smile ]
[Ferr]对了、机会难得你也来看看吗？[p_]
我暂时走不开、[r]
买家没有预定的东西的话什么都可以卖给你哦。[p_]
[_]要不要买些东西啊…。[p]
[Ferr]有医生会感兴趣的东西、比如说…这里面的这些东西怎么样？[p]
[_]人从行李中挑选了比较小的包裹打开展示给我看。[lr]
像是分类入书籍的东西。[p]
[Ferr]这个似乎是国外的药物学的译本、在这里可是很少见的哦。[p]
[_]草草的翻开看了下。目光停留在某个条目上。[p]
…这似乎是使用花制作香料和熏香一类的东西的制作工艺。[lr]
内容是在家里就可以做的类型、给希尔薇应该会感兴趣吧。[p]
[Ferr]感兴趣吗？[lr]
本来是涨价了…、不过多少给你便宜一些吧。[p_]
[_]（为了希尔薇的事情和多收取的治疗费就买了吧…。[p_]
[Ferr]那么就。谢谢惠顾了。[p_]
[_]
#???
菲鲁姆！！[p]
[anim/ n=sub x=235 t=300][c_mod n=sub2 st=sys/sub/cas_conf ][c_show n=sub2 t=300 x=-235 w=t ]
[Kcas]
对不起、让你久等了！！[p]
[Ferr]哦、我等的人刚好到了。[lr]
那么以后有机会再见吧。[p_]
[c_mod n=sub st=sys/sub/fel_b_def ]
好、出发吧。[p]
[c_mod n=sub2 st=sys/sub/cas_def ]
[Kcas]
是！！[p]
[freechara][_]（男人离去了。[p_]
[stop_bgm]东西又增加了、这边差不多也应该回去了。[p]
[eval exp="f.item.miyage='nothing', f.item.book=1" ]
[black][jump/ st=talk/town tg=*home ]


;;Ferrum_梅酒初回
*Ferrum_first_time
[eval exp="f.item.p_wine=0" ][bg/ st=market]
（因为彼此间有点距离所以快步靠近。[p]
[bgm st=RG][eval exp="f.item.miyage='nothing'" ]
[c_mod n=sub st=sys/sub/fel_b_def ][c_show n=sub t=100 w=t ]
[Ferr]
ん？[p]
[c_mod n=sub st=sys/sub/fel_a_smile ]
…呦、医生。我们又见面了。[lr]
我有事来这里看到你就特地来和你打招呼了。[p]
[c_mod n=sub st=sys/sub/fel_a_def ]
…啊、说起来到现在一次也没有自称过。[lr]
我、名字是菲鲁姆。[p]
[eval exp="f.sub_chara.Ferr=1" ]
[Ferr]我想那是那之后的缘分、[r]
我想跟我有关系也给你添麻烦了。[。[lr]
抱歉，我一再冒昧。[p]
[c_mod n=sub st=sys/sub/fel_a_smile ]
到现在为止也还不定期的在几条街反复做生意、[r]
不过这最近有一笔重要的商谈。[lr]
这里是要定期拜访了。[p]
今后如果医生再来市场也有机会再见面吧。[p]
而且是正当的买卖。[lr]
不必担心给你添麻烦。[p]
医生你买东西吗。上次你看中了什么吗？[p]
很遗憾这次没带书籍了、这次是这些…。[lr]
医生、喜欢酒吗？[p]
是异国的一位酿酒大师森屿、用杏子的亚种的水果做的酒、[r]
在当地被称梅酒。[p]
相当的甜强烈到也许不合口味也说不定、[r]
类似于果汁一样的东西、我想即使不擅长喝酒也能喝。[p]
怎么样呢？[p]
[choice_xy][btn/ l=y tg=*Ferrum_buy_f gr=ch/buy ][btn/ tg=*Ferrum_not_buy gr=ch/not_buy ][s]

*Ferrum_buy_f
[cm][eval exp="f.item.p_wine+=10" ]
了解了。那么这边。[p]
[_]（买了森屿秘制的梅酒。[p]
[Ferr]
这个时间这里的事情应该也不多。[lr]
库存在身边、如果你要再打招呼就可以卖。[p]
[black][stop_bgm][_]东西又增加了、这边差不多也应该回去了。[p]
[jump/ st=talk/town tg=*home ]
*Ferrum_not_buy
[cm]是吗、如果你有兴趣的话请再打个招呼。[lr]
库存在身边、改时有兴趣再来。[p]
[jump/ tg=*Ferrum_go_home ]

;伝言イベント
*Ferrum_sec
[Ferr][c_mod n=win st=00 ][c_mod n=sub st=sys/sub/fel_a_def ]
啊那个奴隶的…传话吗？[p]
…不需要感谢。[p]
我把麻烦强加给他人而已。[lr]
医生你也知道吧。没有跟她说吗？[p]
[c_mod n=sub st=sys/sub/fel_a_smile ]
[eval exp="f.sub_chara.Ferr=2" ][jump/ tg=*Ferrum_choice ]

;;after_town
*after_town
[_][stop_bgm][black]…[p][bgm_room][return_bace]
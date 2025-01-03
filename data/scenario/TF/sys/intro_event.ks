;;opening---------------------------------------------------------------------------------------------------------------------------
*opening
;[jump/ st=talk/intro tg=*step1 ]
;[eval exp="f.state.step=6" ][jump/ st=talk/room tg=*intro_step6 ]
[cm][bg/ g=bg/ st=door][bgm st=IF]
[_]本游戏由名堂汉化组新人“森屿”同学独立汉化润色。[lr]
因为是第一次汉化所以请各位玩家多多包涵。[p]
（今天太阳刚刚升起来的时候。[lr]
从门口传来了沉稳的敲门声。[p]
（我今天没有邀请任何人。[r]
也没有预约的熟人。[l]会是谁呢？[p]
[c_mod n=sub t=100 st=sys/sub/fel_a_smile ][c_show n=sub t=100 w=t ]

[Ferr]
你好医生。[p]
[_]（打开门后，一个奇怪的中年男子站在家门口。[p]
[Ferr]
还记得我吗？[lr]
我曾经被医生你救过一命。[p]
[_]（仔细观察男人的脸。[lr]
……这么一说，这张脸看起来很眼熟。[p]
[Ferr]
是的，上次我倒在这座城镇的郊外时就是医生您帮助的我呢。[p]
原因是由于一些不好的纠葛即使从一旁看来也明白的吧。[lr]
不知是否是你身为医生的秉性使然。[p]
暂且不说这个、那时未能好好感谢你就离开了我感到十分抱歉。[lr]
因为偶然路过这附近的城市、所以今天特地来向你道谢。[p]
[_]（虽然这个男人有些可疑、但似乎是专程来道谢的。[r]
先给他泡茶吧…[p]
[Ferr]
不用、我没打算长时间呆在这里不必那么客气。[p]
请你先收下这个…。[lr]
因为那时候没有钱、没能付起治疗费。[p]
[_]（男人从怀里拿出了一个信封交给这边。[lr]
检查后发现里面装着相对于治疗费来说数量稍多的金钱。[p]
[Ferr]
是拖这么久才支付费用的些许的赔罪。[lr]
请不要客气，收下吧。[p]
我还带来了一个其他的东西…[r]
之后的谈话内容希望你能保密可以吗？[p]
……不愧是你、果然善解人意。[lr]
…喂，过来。[p]
[anim/ n=sub x=235][c_mod n=syl st=body/single/s ][c_show n=syl t=100 x=300 w=t ]
[_]（男人对着门后说完后从门的死角里出现了一个少女的身姿[p]

[Ferr]
最近有个资产家在事故中去世了。[lr]
因为没有近亲[r]
所以一些自称是政府亲戚友人之流的人就把他的遗产瓜分了。[p]
我因为有些关系、于是也得到了一些挑剩下的东西[lr]
作为代价也被强加了一些不好办的东西。[lr]
嗯，这就是其中之一。[p]
因为我是个商人[lr]
因为能用的东西「什么都卖」所以也就是说之前生意一直挺顺的、但说是要卖的话…。[p]
人身买卖之类的、如果是健壮劳动力还说得过去[r]
但是这样的小鬼的话无法马上找到可以信赖的买家。[lr]
若是贸然地急着卖出去的话我也可能会吃亏。[p]
但是也不能因为这个而投资、最后没有贸然行事[r]
我也想过随便地处理掉或者丢弃掉…。[lr]
但是我也是有良心和怜悯的。[p]
虽然不干麻烦和亏损的事、正在考虑有没有好的交易对象的时候[lr]
正好想起了在现在正进行商谈的城市里、以前医生曾经救过我的事情。[p]
因为看起来医生你和那时候一样还是在一个人生活[lr]
可能是我多管闲事了但我想你的生活多少有些寂寞吧…。[p]
虽然有些突然但你要不要收留这家伙呢？[p]

[_]（怎么办呢？[l]
[choice_xy][btn/ l=y tg=*ok gr=ch/first2 ][btn/ tg=*no gr=ch/first1 ][s]

*no
[cm][c_mod n=sub st=sys/sub/fel_a_def ]
[Ferr]这样啊。[lr]
这么突然的事情、这也是没办法的。[p]
谢谢你的时间。[lr]
那我们就告辞了。[p]
[black]
[_]（男人和少女离开了[p]
[eval exp="f.game_over='first'" ][jump/ tg=*game_over ]

*ok
[cm][Ferr]
这样啊、你真是帮了我和她的大忙了。[p]
这家伙是个无依无靠的奴隶。[lr]
既可以让她做家务[r]
如果医生你有兴趣的话即使把她当成玩具也不会有人非难你的吧…。[p]
关于这家伙具体事情请直接问这家伙。[lr]
那么我先告辞了。[p]
再次感谢您那天的帮助。[p]
[c_hide n=sub t=100 ][anim/ n=syl x=648 ][wait time=200]
[_]（男人离开了[p]
[c_mod n=syl t=100 st=body/single/s-t ][c_mod n=sub ]

初次见面，我叫希尔薇。[lr]
[syl]
感谢您收留我。[p]
虽然无法干力气活、但我想如果你让我做简单的杂用程度的活我可以做到。[p]
[c_mod n=syl t=100 st=body/single/s-c ]
不过、以前的主人说过以听我的惨叫为消遣是最有价值使用方法。[p]
[c_mod n=syl t=100 st=body/single/s-t ]
…请手下留情。[p]
[stop_bgm][black]
[jump/ st=talk/intro tg=*step1 ]

;;夕食初回-----------------------------------------------------------
*feed
[eval exp="f.fol_info.eat_situ='intro'" ]
[black][_]…。[p_]
（天已经黑了。[r]
差不多该吃饭了吧…。[p_]
（我把希尔薇叫到了饭桌前。[p_]
[set_dinner][bgm st=IF][f/ ei=y m=n][show_dinner][syl]
[f/ ei=y]吃饭……我没有哭还能给我饭吗？[p_]
[f/ e=cl]没想到主人你这么仁慈。[lr_]
[f/ ei=y]非常感谢。[p_]

[_]（那么，希尔薇的饭怎么办？[p_]
[choice_xy][btn/ l=y tg=*human gr=ch/food2 ][btn/ tg=*pet gr=ch/food1 ][s]

*pet
[cm][set_black][f/ es=s ei=y m=n][c_mod n=win st=00 ]
[chara_part name="dinner" food="TF/sys/food/intro/food_a.png" allow_storage=true ]
[_]（不需要增加无意义的花费。[lr_]
只有面包和水就够了。[p_][hide_black]
[syl][f/ e=cl]非常感谢。[p_][black]
[_]（希尔薇开始安静地吃食物…。[p_]
[eval exp="f.intro.flag='pet'" ][jump/ tg=*her_room ]

*human
[cm][eval exp="f.intro.trust+=3" ][eval exp="f.intro.ex_trust+=1" ][eval exp="f.intro.flag='human'" ]
[set_black][f/ es=s ei=y m=n][c_mod n=win st=00 ]
[chara_part name="dinner" food="TF/sys/food/intro/food_b.png" allow_storage=true ]
[_]（从今天开始两个人一起做饭吧。[lr_]
做两个人的饭和做一个人的饭也没差别。[p_][hide_black]

[syl][f/ ei=y]今天有客人吗？[lr_]
[m/re]我还是躲在某个地方比较好…。[p_]
[_]（看桌子上摆的饭、认为这些食物不是给她准备的。[p_]
[syl][f/ y=c es=s ei=y]…我的饭，是吗？[p_]
[m/re]以前的主人给我的是面包和水…。[p_]
[m/re]可以吃...这个吗？[p_]
…。[lr_]
[m/re]…那么。我吃了。[p_]
;[y/def]
[set_black]
;[eating][chara_part name="dinner" food="TF/sys/food/d_carbonara_.png" allow_storage=true ]
[_]（希尔薇提心吊胆地把手伸向叉子，笨拙地开始吃饭。[lr]
表情也很僵硬不像在享受吃饭一样。[p]
;[set_black]
;[chara_part name="dinner" arm="TF/body/din_a1.png" arm_b="TF/body/din_a2.png"  allow_storage=true ]
[chara_part name="dinner" food="00.png" allow_storage=true wait=true ]
…。[f/ e=cl][p_][hide_black]
[syl][m/re]…谢谢您的款待。[p_]
[f/ y=c ei=y m=n]
[_]（希尔薇吃完饭有点为难地看向我。[p_]
[syl][f/ y=c ei=y]那个，主人。[lr_]
[m/re]…我第一次吃这么好吃的饭菜。[p_]
[m/re]这也是我第一次吃饱。[lr_]
[f/ y=c e=cl]…谢谢…谢谢。[p_]
[_]（她看起来不像是在说谎但我看出来她是在担心有什么事情会发生。[lr_]
和之前的感觉不同，我很困惑。[p_]

;;寝床案内-----------------------------------------------------------
*her_room
[black]（已经是晚上了。准备睡觉吧…。[p_][set_stand][f/ ei=y m=n][bg/ g=bg/ st=room][show_stand]

[syl][f/ ei=y]主人。[r]
我应该在哪里睡觉呢？[p_]
[_]（她的床…。[lr_]
幸好有空房间。[p_]
	[set_stand][f/ ei=y][bg/ g=bg/ st=bed][show_stand]
[syl][f/ ei=y]可以用这个房间吗？[lr_]
[f/ y=c ei=y]这个，床？我在地板上谁也没关系…。[p_]
[_]（诊所是分开的，不过，这是万一有紧急的病人来了的时候的预备的房间和床。[p_]
[syl][f/ e=cl m=n]…。[p_]
[f/ ei=y]…那么，谢谢您的使用。[p_]

[if exp="f.intro.flag=='pet' || f.intro.rape>=1" ]
	[f/ ei=y]晚安，主人。[p_]
	[stop_bgm][black]…。[p_][jump/ st=talk/intro tg=*show_bace ]
[elsif exp="f.intro.flag=='human'" ]
	[f/ y=c ei=y]…那个，主人。[p_]
	[m/re]我…。今后会怎么样呢？[lr_]
	[m/re]难道你会做什么非常痛苦或可怕的事情吗？[p_][endif]

[_]（她似乎觉得在这个家里的处理有什么内幕。[p_]
[choice_xy][btn/ l=y tg=*ll_not gr=ch/noidont ][btn/ tg=*silent gr=ch/silent_r ][s]

*ll_not
[cm][eval exp="f.intro.ex_trust+=1" ][eval exp="f.intro.trust+=1" ]
[syl][m/re]真的吗？[p_]
[m/re]我疼的话可以让主人高兴。[lr_]
[m/re]之前的主人听到我的尖叫看起来很开心…。[p_]
[m/re]如果可以的话，我也可以帮你。[lr_]
[f/ y=c e=cl]饭也就给我一点就可以了。[p_]
[m/re]所以请手下留情。[p_]
[_]（我的答复似乎让她不可信。[p_]
[syl][f/ y=c ei=y]啊…。对不起。[lr_]
[f/ y=c e=cl]那个，晚安，主人。[p_]
[black]…。[p_][stop_bgm][return_bace]

*silent
[cm][_]（无视提问离开了房间。[p_]
[syl][m/re]啊…。[p_][black]…。[p_][stop_bgm][return_bace]

;;家事申し出/step2へ---------------------------------------------------------
*to_next
[stop_bgm][black]…。[p_][set_stand][f/ ei=y m=n][bg/ g=bg/ st=room][bgm st=IF][show_stand]

[syl][m/re]那个，主人。[lr_]
[m/re]有什么我也能帮忙的吗？[p_]
[_]（准备睡觉的时候，希尔薇怯生生地跟我打招呼。[p_]
[syl][f/ y=c ei=y]主人在做家里的事，作为奴隶的我只是看着而已…。[p_]
[_]（如果没有作用的话就会被抛弃，可能会感到不安吧。[p_]
[choice_xy][btn/ l=y tg=*job gr=ch/job ][btn/ tg=*ignore gr=ch/ignore ][s]

*job
[cm][eval exp="f.intro.ex_trust+=1" ][eval exp="f.intro.trust+=1" ]
	[syl][f/ e=cl]好的，我知道了。[lr_]
	[f/ ei=y]打扫和洗碗是吧。[p_]
	[m/re]我会努力的。[p_]
	[stop_bgm][jump/ st=talk/intro tg=*step2 ]
*ignore
[cm][syl]
	[f/ y=c ei=y]啊……对不起。[lr_]
	[f/ y=c e=cl]没什么。[p_]
	[stop_bgm][jump/ st=talk/intro tg=*step2 ]

;;between2-3死亡结束-----------------------------------------------------------
*dead_end
[cm][bgm st=IF][bg/ g=bg/ st=room][_]（即使到了早上，希尔薇也没有从给她的房间里出来的样子。[lr_]
[black]
去房间看看情况，希尔薇一脸痛苦地呻吟着。[p_]
（手按额头好像发高烧。[lr_]
因为本人很坦然所以没碰，但回想起来，昨晚也露出了非常憔悴的表情。[p_]
（饭好像也吃不下去。[lr_]
吃的药也吐出来了。[p_]
（…几天后她就死了。[lr_]
恐怕来这里之前就衰弱了吧。[p_]
…。[p_][stop_bgm]
[eval exp="f.game_over='second'" ][jump/ tg=*game_over ]
;[jump/ st=sys/system tg=*game_over ]

;;初外出/step3へ---------------------------------------------------------
*to_step3
[if exp="f.intro.rape>=1 || f.intro.flag=='pet'" ][jump/ tg=*dead_end ][endif]
[set_stand][stop_bgm][bg/ g=bg/ st=room][f/ m=n][show_stand][eval exp="f.act.time=0" ]
…。[p_][bgm st=IF]
[eval exp="f.state.step=3,f.act.time=2",f.intro.nade_t=1" ]
[eval exp="f.intro.intro_t=1,f.daily.out=1,f.count.day+=1" ]

[_]（早上从房间出来，希尔薇望着窗外。[p_]
[syl][f/]早上好。[lr_]
[m/re]今天工作休息吗。[p_]
[m/re]取而代之的是上午购买…吗。[lr_]
[m/re]好的，您走吧。[p_]

[_]（…这么说来，我来这里之后一次也没有把希尔薇放出去。[p_]
[choice_xy][btn/ l=y tg=*together gr=ch/together ][btn/ tg=*alone gr=ch/alone ][s]

*alone
[cm][syl][m/re]那么，请注意。[lr_]
[m/re]我打扫完房间。[p_]
[eval exp="f.intro.flag='alone'" ][eval exp="f.intro.ex_trust=f.intro.ex_trust-3" ]

[black][_]（一个人去买东西，把必要的东西买回来…。[p_]
[stop_bgm][_][bgm st=SG][return_bace]

*together
[cm][eval exp="f.intro.ex_trust+=1" ]

[syl]…。[lr_]
[f/]我也是吗？[p_]
[f/ e=cl m=n]…。[p_]
[f/]明白了，明白了。[lr_]
[m/re]我想我不会带太重的行李，但我和您一起去…。[p_]

[black][stop_bgm]…。[p_][set_stand][bg/ st=town][f/ m=n][show_stand][bgm st=OB]

[_]…。[p_]
（希尔薇默默地跟在后面。[p_]
（乍一看很沉着，仔细一看，她的眼睛向右向左看去。[lr_]
大概没怎么出过街吧。[p_]
[choice_xy][btn/ l=y tg=*cafe_first gr=ch/road_l ][btn/ tg=*d_shop_first gr=ch/road_s ][s]


;;初喫茶---------------------------------------------------------
*cafe_first
[cm][eval exp="f.daily.out=1, f.act.time+=1, f.count.cafe+=1" ]
	（走的时候经过的路有很多去过的店。[p_]
[black][stop_bgm]…。[p_][set_stand][bg/ st=town][f/ m=n][show_stand][bgm st=OB]
	[syl]…。[p_]
	[_]（走了一会儿，一瞬间希尔薇的脚停了下来。[p_]
	[syl][f/ e=cl]啊，对不起。没什么。[p_]
	[_]（一股甜甜的香味扑鼻而来。[lr_]
	好像被路过的咖啡店的味道吸引了。[p_]
	（虽然有点早，但是去吃午饭吧。[p_]
	[syl][f/]…午饭在这里吃吗？[p_]
[black][bg/ st=cafe][bgm st=JH]…。[p_]
[c_mod n=sub t=500 st=sys/sub/nephy ][c_show n=sub t=100 w=t ]
[eval exp="f.intro.cafe=1" ]

[Neph]
欢迎光临？[p_]
[_]（一进店内，说话很奇怪的店员就以滑稽的动作飞了过来。[p_]

[Neph]
是两位吧？[p_]
这边请？[p_]
[_]（希尔薇坐在被引导的座位上。[p_]

[black][eval exp="f.fol_info.eat_situ='sweets'" ]…。[p_][set_dinner][f/ m=n][show_dinner]
…。[p_]
（浏览菜单后，为自己点了三明治。[p_]
希尔薇好奇地环顾四周，注视着对面座位的客人点的薄饼。[p_]
（希尔薇的订单…。[p_]
[choice_xy][btn/ l=y tg=*pancake gr=ch/pancake ][btn/ tg=*sand gr=ch/sand ][s]

*sand
[cm][_]（对希尔薇来说也一样就好了吧。[lr_]
点两个三明治。[p_]
[set_black][c_mod n=win st=00 ]
[chara_part name="dinner" food="TF/sys/food/intro/not_poison.png" allow_storage=true ]
…。[p][hide_black]（过了一会儿，购买的东西被拿上了桌子。[p_]

[syl][f/ es=s]这是我的份儿吗？[lr_]
[f/ e=cl]非常感谢。我开动了。[p_]
[_]（我们都很快吃完三明治就离开了店里。[lr_]
赶快买东西回去吧。[p_]
[black][stop_bgm]…。[p_]
[_][bgm st=SG][return_bace]

*pancake
[cm][eval exp="f.intro.ex_trust+=1, f.state.love+=5, f.temp.food_sel='pancake'" ]
[eval exp="f.count_cafe.pancake=1" ]
[_]希尔薇似乎对薄饼很感兴趣。[lr]
也给她点一样的东西吧。[p_]
[set_black][c_mod n=win st=00 ][mod_food st=pancake ]
…。[p][hide_black]（过了一会儿，订购的东西被搬上了桌子。[p_]
[syl][f/ es=s]啊，这个…。对我？[lr_]
[f/ y=c]…吃这个…可以吗？[p_]
[syl][f/ es=s]那我就不客气了…。[p_]
[set_food2][f/ m=mgmg e=cl]…。[p]
[f/ es=s]…嗯，轻飘飘的。[lr_]
[f/ es=s m=s]…甜的。[p_]
[_]（对于平时慢腾腾的动作方式的希尔薇来说是很少见的[r]
开始把薄饼运到嘴里。[p_]
（您似乎喜欢吃甜的午饭。[p_]
[ate][f/ e=cl m=n]…。[p_][hide_black]
[syl][m/re]嗯，谢谢您的款待。[p_]
[f/]很好吃。[lr_][f/ m=s]…非常，非常。[p_]
[m/re]…非常感谢。[p_]
[_]（希尔薇第一次露出脸颊变松的表情。[p_]
[syl][f/ e=cl m=n]…っ[p]
[_]（也许是本人也注意到了这一点，一见面就慌慌张张地掩饰了表情。[p_]
（不管怎么说，自己的午饭也吃完了。[lr_]
随便买点东西回去吧。[p_]
[stop_bgm][black]…。[p_]
[bgm st=SG][return_bace]


;;初服屋---------------------------------------------------------
*d_shop_first
[cm][black][eval exp="f.intro.d_shop=1, f.count.d_shop=0" ][_]
（无意中走在平时不经过的小路上进入街上。[p_]
（…突然看到了一家气氛不可思议的店。[lr_]
从招牌上看好像是服装店，但是从外面看不见里面，还不能判断是什么样的店。[p]
试着打开门。[p_]
[bgm st=BR][bg/ st=d_shop]
…。[p_]
（好像是以女装为中心经营的店。[lr_]
奇怪的花纹和设计奇特的衣服也随处可见。[p_]
[c_mod n=syl t=100 st=body/single/s- ][c_mod n=sub t=100 st=sys/sub/Aurelia_a ]
[c_show n=syl t=100 x=300 ][c_show n=sub t=100 x=235 w=t ]

[Aur]
啊，欢迎光临。[p_]
[_]（环顾店内，一位气氛不可思议的女性走了过来。[p_]
[Aur]
哎呀，今天是来找这位小姐的衣服的吗？[lr_]
是吧？请那样做吧。[r]不，肯定是那样。[p_]
因为，虽然说得很失礼，但是那个小姐的打扮对于卖衣服的人来说是不好的，所以不能错过。[p_]
请稍等一下？[r]我给您缝补一下适合这个孩子的衣服。[p_]
你看，到这边来。[p_]
[c_mod n=syl t=100 st=body/single/s-t- ]

[syl]啊…。啊。[p_]
[_]（没过多久，一个奇怪的女人就把希尔薇带到店里面去了。[p_]

[set_black]…。[p_]
[c_mod n=syl t=100 st=body/single/s-cl ][hide_black]

[Aur]
让您久等了。[p_]
怎么样，客人，您是不是看错了？[p_]
[_]（希尔薇穿着一件质量好一点的衣服。[lr_]
不知道是不是穿不惯，有点不安的样子。[p_]
[Aur]
年纪大的女儿只用一块那么绽开的布条太过分了。[lr_]
你难道不觉得这个更棒吗？[p_]
我强烈建议您买这件衣服。[p_]
[_]（怎么办？[l]
[choice_xy][btn/ l=y tg=*buy gr=ch/buy ][btn/ tg=*not_buy gr=ch/not_d_buy ][s]

*not_buy
[cm][Aur]哎呀，那太遗憾了…。[lr_]
但是，如果你改变主意了，请再来。[p_]
随时恭候着您。[p_][eval exp="f.daily.out=1" ]
[_][stop_bgm][black]…。[p_][bgm st=SG][return_bace]


*buy
[cm]
[iscript]
f.d_dress= {n:'boro', type:'up', sub_p:0, c1:2, c2:2, c3:7, c1b:20, c2b:0, c3b:0}	
f.d_dress_a= {n:'first', type:'non', sub_p:0, c1:7, c2:2, c3:7, c1b:0, c2b:20, c3b:0}	
f.d_dress_b= {n:'first', c1:2, c2:7, c3:7, c1b:20, c2b:0, c3b:0 }
f.d_eri= {n:'first__a', c1:7, c2:2, c3:2, c1b:0, c2b:20, c3b:10}
f.d_under_b= {n:'simple', c1:7, c2:7, c1b:0, c2b:0}	
f.d_under_p= {n:'simple', c1:7, c2:7, c1b:0, c2b:0}	
f.d_socks= {n:'simple_s', c1:7, c2:7, c1b:0, c2b:0}	
f.d_pin= {n:'thin', type:'single', sub_c:2, c1:2, c2:2, c1b:10, c2b:10}
f.d_ribbon= {n:'thin', type:'poney', c1:2, c2:7, c1b:10, c2b:0}	

f.intro.ex_trust+=1, f.state.love+=3
f.intro.wear=1, f.daily.out=1
[endscript][load_d_info_all]



[Aur]客人，我认为这是一个非常明智的决定。[lr_]
仪容是左右人品格的东西。[p_]
这样的话，这位小姐也是适合客人的很棒的女士。[p_]
[_]（半强行买了一套希尔薇的新衣服。[p_]
[black][bgm st=OB]…。[p_]
[set_stand][bg/ st=town][f/][show_stand]

[syl][f/ y=c]…那个，主人。[p_]
[m/re]我穿这样的衣服太可惜了…。[lr_]
[m/re]现在还是去退货比较好…。[p_]
[choice_xy][btn/ l=y tg=*cute gr=ch/cute ][btn/ tg=*bought gr=ch/bought ][s]

*bought
[cm][m/re]主人这样就可以了吗…？[p_]
[f/ y=c e=cl]…那么，谢谢，让我穿吧。[p_]
[_][stop_bgm][black]…。[p_][bgm st=SG][return_bace]

*cute
[cm][eval exp="f.intro.ex_trust+=1, f.state.love+=5" ]
[f/ c=p]啊，那个…。[lr_]
[m/re]…谢谢，谢谢。[p_]
[f/ y=c]但是，我…明明是奴隶…。这样的…。[lr_]
[f/ y=c e=cl]…不，没什么。[p_]
[_][stop_bgm][black]…。[p_][bgm st=SG][return_bace]


*d_shop_second
[cm][black][bgm st=BR][bg/ st=d_shop]
[c_mod n=sub t=100 st=sys/sub/Aurelia_a ][c_show n=sub t=100 w=t ]

[Aur]
哎呀，欢迎光临。[r]你改变主意了吗？[lr]
前几天的衣服还留着呢。[p]
[_]（我该怎么办？[l]
[choice_xy][btn/ l=y tg=*buy gr=ch/buy ][btn/ tg=*not_buy gr=ch/not_buy ][s]

;;風邪/step4へ---------------------------------------------------------
*to_step4
[bgm st=IF][black]…。[p_][set_stand][f/ y=c e=cl c=p m=n][bg/ g=bg/ st=room][show_stand]
[syl][m/re]早上好。[p_]
[_]（早上从房间里出来的希尔薇看起来脸色很差。[lr_]
身体好像不舒服。[p_]
[syl][f/ y=c e=half c=p]对不起…。[lr_]
[m/re]也许是感冒了。[p_]
[_]（把手放在额头上看看…。[lr_]
只要碰一下就能清楚地感受到热的高度。[p_]

[if exp="f.intro.ex_trust>=5 && f.state.love>45 && f.intro.trust>40 && f.count_cafe.pancake>=1 && f.intro.wear==1" ][else]
[jump/ tg=*leave ][endif]
[choice_xy][btn/ l=y tg=*care gr=ch/care ][btn/ tg=*leave gr=ch/leave ][s]

*leave
[cm][_]（先让她休息一下。[p_]
[syl][f/ y=c e=cl c=p]是的，对不起。今天请让我睡觉…。[p_]
[black]
[_]（希尔薇的身体状况过了几天也没有好转。[lr_]
恐怕，来这里之前身体上的负担已经到了极限吧。[p_]
（不能很好地吞食食物和药物[r]
免疫低下的身体因为身体不适而眼看着衰弱了。[p_]
（过了一会儿，希尔薇安静地屏住了呼吸…。[p_]
[eval exp="f.game_over='third'" ][jump/ tg=*game_over ]
;[jump/ st=sys/system tg=*game_over ]

*care
[cm][black]…。[p_][set_stand][f/ y=c e=cl c=p m=n][bg/ g=bg/ st=bed][show_stand]
[_]（让她躺在床上，准备有利于消化的食物和药。[p_]
[syl][f/ y=c e=half c=p]…主人？我没到那种程度。[p_]
[_]（即使只是普通的感冒，烧得很高，最好小心点。[p_]
[stop_bgm]
[black]…。[p_]
[bgm st=IF]
[_]（果然希尔薇的身体暂时没有好转。[p_]
[bg/ g=ev st=a ]
[syl][f/ y=c e=cl c=p]哈哈…哈哈…。[p]
[_]（来这里之前的生活身体很弱吧。[lr]
虽然只是普通的感冒病菌，但足以削弱免疫低下的身体。[p]
[bg/ g=ev st=b ]
[syl][m/re]以前感冒的时候，没有这么长时间…。[p]
[_]（没有时间假装平时的无机质吧。[lr]
希尔薇挤出的声音软弱无力，无法掩饰痛苦和不安。[p]
[black]…。[p_]
[bg/ g=ev st=a ]
[syl]…嗯……哈[p]
[_]（我已经尽了最大努力，但希尔薇仍在与热火作斗争。[p]
[syl]…对不起……对不起[p]
[_]（睡觉的时候希尔薇也经常被魇住。[lr]
[c_mod n=hand_R st=sys/hand/sick ]
…也许是做了什么不好的梦。[p]
[c_show n=hand_R t=300 w=t ]
（避开因为出汗贴在额头上的刘海，就这样轻轻地抚摸着头。[p]
[syl]…ん……[p]
[_]…。[p_]
[bg/ g=ev st=c ]
（过了一会儿，我觉得表情有点缓和了。[p]
[stop_bgm][black]…。[p_][set_stand][bg/ g=bg/ st=bed][f/][show_stand][bgm st=SG]

[syl][f/ e=cl]…早上好。[lr_]
[f/]已经很轻松了。[p_]
[_]（把手放在希尔薇的额头上。[p_]
…。[p_]
（看来烧退了。[p_]
[syl][f/ y=c e=cl]给您添麻烦了。[lr_]
[f/]家务和帮忙也可以做了，已经没问题了。[p_]
[f/ m=s]…谢谢主人。[p_]
[eval exp="f.count.day+=5, f.state.love=f.state.love+f.intro.trust" ]
[stop_bgm][black][jump/ st=talk/intro tg=*step4 ]

;;ゲームオーバー---------------------------------------------------------------------------------------
*game_over
[stopbgm][hide_message_w][clearstack][clearfix][black]
[tx_img tx1=Game_Over c=white s=90 x=575 y=150]
[btn/ tg=*game_over_hint gr=ch/gaov_hint x=125 y=320 ]
[btn/fix n=role_sys role=load gr=frame/role/gaov_load x=125 y=410 ]
[btn/fix n=role_sys role=title gr=frame/role/gaov_title x=125 y=500 ][s]

*game_over_hint
[cm][clearstack][clearfix][free_tx]
[xy x=375 y=200 s=35 ]
[if exp="f.game_over=='first'" ][tx_img tx1=不领取就不能开始。]
[elsif exp="f.game_over=='second' && f.intro.rape>=1" ][tx_img tx1=强奸是坏事。]
[elsif exp="f.game_over=='second' && f.intro.flag=='pet'" ][tx_img tx1=饭很重要。][endif]
;third
[if exp="f.game_over=='third'" ]
[xy x=271 y=140 y_add=70 s=35 ]
	[if exp="f.count_cafe.pancake>=1" ][else][tx_img tx1=三明治不是毒药][eval exp="f.y.bace+=50" ]
								[tx_img l=y tx1=甜食对女孩子来说是药。][endif]
	[if exp="f.intro.wear==1" ][else][tx_img l=y tx1=我给你买件像样的衣服穿吧。][endif]
	[if exp="f.intro.ex_trust>=5" ][else][tx_img l=y tx1=让我给你一个考虑希尔薇的选择。][endif]
	[if exp="f.state.love>45" ][else][tx_img l=y tx1=不够友好。][endif]
	[if exp="f.intro.trust>40" ][else][tx_img l=y tx1=信任不够。][endif]
[endif]
[btn/fix n=role_sys role=load gr=frame/role/gaov_load x=125 y=570 ]
[btn/fix n=role_sys role=title gr=frame/role/gaov_title x=125 y=660 ][s]


;;信頼？---------------------------------------------------------
*ask
[black]…。[p_][bgm st=IF][set_stand][bg/ g=bg/ st=room][f/ y=c m=n][show_stand]
[syl][m/re]主人。[lr_]
[m/re]主人不会对我太过分吧？[p_]
[f/ y=c e=cl]来这里之前，我…每天都很痛很痛苦…。[lr_]
[m/re]无论哭还是笑，遭遇都没有任何改变。[p_]
[m/re]只能接受。[lr_]
[m/re]如果你一个劲地悲伤，你就无法忍受。[p_]
[f/ y=c]所以，什么都不要想。[lr_]
[m/re]已经……悲伤地哭了，就想停止高兴地笑。[p_]
[m/re]无论是抱有希望，还是叹息不幸，都没有什么好事。[p_]
[m/re]第一次来这里，主人不会做很过分的事…。[lr_]
[m/re]我觉得和我见过的人不一样。[p_]
[m/re]但是，我不敢期待。[lr_]
[m/re]如果再抱希望，然后被背叛的话…我一定再也无法忍受了…。[p_]
[f/ y=c e=cl]但是，尽管如此，主人还是很温柔，很暖和…。[lr_]
[m/re]我不知道该怎么办才好。[p_]
[f/ y=c]主人，我……可以相信主人吗？[p_]

[choice_xy][btn/ l=y tg=*say gr=ch/say ][btn/ tg=*act gr=ch/act ][s]


*say
[cm][f/ e=cl m=n]…。[p_]
[m/re]…我相信。[lr_]
[m/re]那句话。[p_]
[f/ y=c]到现在为止，很冷淡，主人的温柔也很冷淡[lr_]
[m/re]真的很抱歉。[p_][jump/ tg=*c ]

*act
[cm][f/ e=cl]…主人总是这么温柔[lr_]
[m/re]我从来没有背叛过你…。[p_]

*c
[f/ y=c]…我会努力帮助主人的。[lr_]
[m/re]所以，不管我笑，还是哭，请不要抛弃我…。[p_]
[f/ y=c e=cl]温柔的主人…。[p_]
[eval exp="f.intro.flag='trust'" ][stop_bgm][black]
[jump/ st=talk/intro tg=*show_bace ]


;;一緒のベッド/step5へ---------------------------------------------------------
*to_step5
[black][bgm st=IF]…。[p_][set_stand][f/ m=n][bg/ g=bg/ st=bed][show_stand]

[_]（准备睡觉的时候，希尔薇来到了房间。[p_]
[syl][f/ y=c]那个，主人。那个…。[lr_]
[m/re]我经常做可怕的梦。[p_]
[m/re]以前的事啦，那些可怕的回忆，睡觉的时候想起来了。[lr_]
[m/re]所以，经常半夜起床…。[p_]
[f/ y=c e=cl]于是…。[lr_]
[m/re]那个，那个…。[p_]
[_]（好像要说什么，怎么也说不出下一句话来。[p_]
[syl][f/ y=c]所以，拜托了。[lr_]
[m/re]…如果让我和主人睡在同一个房间的话，会给您添麻烦吗？[p_]
[_]（话虽如此，这个房间里只有一张床…。[p_]
[syl][f/ y=c c=p]那个，如果不讨厌我的话，在一起的一张床上…。[lr_]
[m/re]如果是主人的话，一定能安心…。[p_]
[choice_xy][btn/ l=y tg=*agree gr=ch/sleep_with ][btn/ tg=*disagree gr=ch/cant ][s]

*agree
[cm][f/ c=p m=s]真的吗？[p_]
[f/ y=c c=p]这么撒娇，我觉得很麻烦…。[lr_]
[f/ e=cl c=p]拜托了。[p_]
[stop_bgm][black]

[_]（我和希尔薇上了一张床。[p_]
（我很在意在旁边躺着的无防备少女，所以花了一点时间才睡…。[p_]
…。[p_][set_stand][bgm st=SG][f/ m=sn][bg/ g=bg/ st=bed][show_stand]
[_]（早上起来，希尔薇好像先起床了[r]
换了衣服坐在床边。[p_]
（好像有点睡过头了。[p_]


[syl][m/re]啊，早上好。[p_]
[f/ m=s]昨天托您的福，睡得比想象的还要香。[p_]
[m/re]我早上还没醒，也没做噩梦。[lr_]
[f/ e=cl m=s]谢谢大家了。[p_]
[f/ m=s]今天我准备了早餐，可以的话请吃吧。[lr_]
[m/re]我只是烤了面包、鸡蛋和培根。[p_]

[f/ e=cl m=n]…。[p_]
[f/ y=c c=p]还有，那个…。[lr_]
[m/re]如果可以的话，以后也可以经常和我一起睡吗？[p_]
[stop_bgm][black]…。[p_]
[jump/ st=talk/intro tg=*step5 ]

*disagree
[cm][f/ e=cl]…是啊。给您添麻烦了吧。[p_]
[m/re]没什么。[lr_]
[m/re]无论如何，请忘记。[p_]
[_]（希尔薇回到了自己的房间。[p_]

[eval exp="f.intro.flag='bed'" ][stop_bgm][black]…。[p_]
[jump/ st=talk/intro tg=*show_bace ]

;;一緒にベッドRe---------------------------------------------------------
*remind
[black][_]（睡前我脑子里闪过希尔薇之前说的话。[p_]
[choice_xy][btn/ l=y tg=*second gr=ch/second ][btn/ tg=*back_step4 gr=ch/nop ][s]

*back_step4
[cm][jump/ st=talk/intro tg=*show_bace ]

*second
[cm][black][bgm st=IF]…。[p_][set_stand][f/ m=n][bg/ g=bg/ st=bed][show_stand]
（和希尔薇打招呼。[p_]
[syl][m/re]嗯…。可以一起吗？[p_][jump/ tg=*agree ]


;;勇気の提案---------------------------------------------------------
*to_step6
[black][bgm st=IF]…。[p_][set_stand][bg/ g=bg/ st=bed][f/ m=n][show_stand]

[syl][m/re]あの、[name]…？[p_]
[_]（做好了睡觉的准备，坐在床上，希尔薇来到了房间。[p_]
（最近很频繁地在同一张床上和希尔薇睡觉。[p_]

[syl][f/ e=cl m=n]…。[p_]
[_]（坐在旁边，仰望这边的希尔薇。[lr_]
感觉和平时的情况不一样。[p_]
[syl][f/ y=c c=p]我已经说过很多遍了。[r]
[m/re]私、[name]非常感谢。[p_]
[f/ y=c e=cl c=p]吃的东西，衣服，收到了很多。[lr_]
[m/re]所以我想给你一点回报。[p_]
[f/ y=c c=p]所以我想了很多[r]
[m/re]我只能帮你简单的忙。[p_]
[m/re]所以，那个…。[p_]
[m/re]…那个[name]。[lr_]
[m/re][name]没有恋人吧。[p_]
[m/re]如果晚上的对方想要的话。[lr_]
[m/re]我、我和…我…[l_][m/re]请抱一下我好吗？[p_]
[m/re]我没有那样的经验[lr_]
[m/re]这样的事也…作为奴隶也能为[name]做的事…对吧？[p_]
[f/ y=c e=cl c=p]我、[name]那么…。[lr_]
[m/re]不，我也是…[name]と、[lr_]
[f/ y=c c=p]仅仅是形状……嗯，想系在一起……之类的。[p_]
[f/ y=c e=cl c=p]不，那是……有点狂妄了。[lr_]
[f/ y=c c=p]只是[name]，我是说我能不能做点什么。[p_]
[m/re]我发育不好，也有丑陋的伤口…。[lr_]
[m/re]我觉得我没有什么魅力。[p_]
[m/re]即便如此…如果[name]…如果你想要的话……我…。[p_]

[choice_xy]
[if exp="f.g_config.H_setting>=1" ][btn/ l=y tg=*kiss gr=ch/kiss ][endif]
[if exp="f.g_config.H_setting!=4" ][btn/ tg=*sleep gr=ch/sleep ][endif][s]

*sleep
[cm][f/ y=c e=cl]…是的，是这样吧。[lr_]
[m/re]像我这样的人…。[p_]
[f/]但是，如果你改变主意了，请告诉我。[p_]
[f/ e=cl]那么，晚安…。[p_]
[eval exp="f.item.miyage='non'" ]
[stop_bgm][black][jump/ st=talk/room tg=*intro_step6 ]

*kiss
[cm][f/ e=cl c=p]ん…。[p_][save_dress]
[_]（虽然看起来有点僵硬，但希尔薇还是把身体靠了过来。[p_]
[syl][m/re][name]…。[p_]

[chara_part name=stand dress_bc1=00.png dress_bc2=00.png dress_bc3=00.png dress_c1=00.png dress_c2=00.png dress_c3=00.png slv_c1=00.png slv_c2=00.png time=200 wait=false allow_storage=true ]
[chara_part name=stand eri_c1=00.png eri_c2=00.png eri_c3=00.png hat=00.png time=200 wait=false allow_storage=true ]
[chara_part name=stand socks_c1=00.png socks_c2=00.png glasses_c2=00.png glasses_c1=00.png time=200 wait=false allow_storage=true ]

…。[p]
;[if exp="f.d_head.tc=='a1' || f.d_head.tt=='a2'" ][else]
;[chara_part name="stand" hat="00.png" time="200" wait="false" allow_storage=true ][endif]


[_]（反复接吻着，慢慢地脱下希尔薇的衣服。[p_]
[chara_part name=stand under_b_c1=00.png under_b_c2=00.png under_p_c1=00.png under_p_c2=00.png time=200 wait=false allow_storage=true ]

;[eval exp="f.d_pin.hair='nr',f.d_pin.tt='non',f.d_ribbon.tt='non',f.d_ribbon.hair='nr'" ]
;[set_dress_info all=1]
;[combine_all_dress_code]

[syl][f/ c=p]啊…。[p_]
[_]（像描着贴在脸颊上的手一样放下，轻轻地触摸下腹部。[p_]
[syl][f/ e=cl c=p m=n]啊…。[p_]
[_]（开始温柔的说爱抚的话[Hxn n=v]慢慢地潮湿起来。[p_]
[syl][f/ c=p][name]に…。[lr_]
[m/re]能抱着我吗…。[p_]
[_]（开始无力的希尔薇躺在床上。[p_]
[stop_bgm][black]

[bgm st=MT][jump/ st=H/xxx tg=*x10 ]


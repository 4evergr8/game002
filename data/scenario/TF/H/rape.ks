;;
*touch
[cm][black][eval exp="f.intro.trust=f.intro.trust-2" ]
[if exp="f.intro.rape==0" ][jump/ tg=*touch0 ]
[elsif exp="f.intro.rape==0.1" ][jump/ tg=*touch1 ][endif]

[set_mise][chara_part name=Hf body="TF/Hf/body/body0.png" eyes="TF/Hf/face/s0-d.png" allow_storage=true ][show_mise]

[_]（希露薇没有说任何话掀起了的衣服她。[p]
[syl]…[p]
[chara_part name=Hf eyes="TF/Hf/face/s0-a.png" allow_storage=true ]
[_]（我伸出手[Hxn n=v]轻轻抚摸起私处。[p]
[jump/ tg=*touch2 ]

*touch0
[bg/ g=H_rape st=s00 ]
[_]（摸了一下[Hxn n=b]希露薇的胸部[lr]
…只是有一点点膨胀、并没有太多的肉感。[p]
[syl]…？[p]
[_]（虽然稍微扭动了一下身体但是马上安静了下来[p]
[eval exp="f.intro.rape=0.1" ]
[jump/ tg=*after_touch ]

*touch1
[cm][set_mise][eval exp="f.intro.trust=f.intro.trust-3" ]
[chara_part name=Hf body="TF/Hf/body/body0.png" eyes="TF/Hf/face/s0-d.png" allow_storage=true ]
[show_mise]

[eval exp="f.intro.ex_trust=f.intro.ex_trust-1" ]
[eval exp="f.intro.rape=0.5" ]

[_]（让希露薇把自己的衣服掀起她没有说任何话的服从了。[lr]
好像没有穿过内衣、粗鲁的暴露出耻丘。[p]
[syl]…[p]

[chara_part name=Hf h="TF/Hf/hand/s0-a.png" allow_storage=true ]
[_]（我把手伸向触摸了还未长出阴毛的[Hxn n=v]阴部。[p]
[chara_part name=Hf eyes="TF/Hf/face/s0-a.png" allow_storage=true ]
[syl]做、做什么…？[p]
[choice_xy][btn/ l=y tg=*touch2 gr=ch/continue ][btn/ tg=*stop1 gr=ch/stop ][s]

*touch2
[cm][eval exp="f.intro.trust=f.intro.trust-3" ]
[chara_part name=Hf h="TF/Hf/hand/s0-b.png" allow_storage=true ]
[_]（我开始轻柔地[Hxn n=c]爱抚起小豆和裂缝[p]
[chara_part name=Hf eyes="TF/Hf/face/s0-b.png" allow_storage=true ]
[syl]嗯…[p]
[choice_xy][btn/ l=y tg=*touch3 gr=ch/continue ][btn/ tg=*stop1 gr=ch/stop ][s]

*touch3
[cm][eval exp="f.intro.trust=f.intro.trust-3" ]
[chara_part name=Hf h="TF/Hf/hand/s0-b.png" allow_storage=true ]
[_]（慢慢的爱抚让[Hxn n=v]秘部开始慢慢湿润了起来。[lr]
似乎有过经验。[p]
[chara_part name=Hf eyes="TF/Hf/face/s0-c.png" allow_storage=true ]
[syl]唉…？[lr]没有、以前的主人…没有做过这种事情…。[p]
[choice_xy][btn/ l=y tg=*touch4 gr=ch/continue ][btn/ tg=*stop2 gr=ch/stop ][s]

*touch4
[cm][eval exp="f.intro.trust=f.intro.trust-3" ]
[_][chara_part name=Hf eyes="TF/Hf/face/s0-e.png" allow_storage=true ]
[chara_part name=Hf h="TF/Hf/hand/s0-c.png" allow_storage=true ]

[syl]怎么…变得奇怪了[p]
[_]（对方似乎已经开始有了快感。[lr]大腿[Hxn n=w]的内侧开始沾上蜜汁。[p]
[chara_part name=Hf h="TF/Hf/hand/s0-d.png" allow_storage=true ]
（…已经准备好了吧[p]

[choice_xy][btn/ l=y tg=*rape gr=ch/H_x ][btn/ tg=*stop2 gr=ch/remind ][s]

*stop1
[cm][chara_part name="Hf" h="00.png" allow_storage=true ]
[_]（我把手拿开了希露薇的身体。[p]
[chara_part name=Hf eyes="TF/Hf/face/s0-c.png" allow_storage=true ]
[syl]…结束了吗？[p]
[chara_part name=Hf eyes="TF/Hf/face/s0-f.png" allow_storage=true ]
呼…[p]
[jump/ tg=*after_touch ]

*stop2
[cm]
[chara_part name=Hf h="TF/Hf/hand/s0-d.png" allow_storage=true ]
[_]（我把手拿开了希露薇的身体。[p]
[chara_part name=Hf eyes="TF/Hf/face/s0-c.png" allow_storage=true ]
[chara_part name=Hf h="TF/Hf/hand/s0-1.png" allow_storage=true ]
[syl]…结束了吗？[p]
[chara_part name=Hf eyes="TF/Hf/face/s0-f.png" allow_storage=true ]
呼…[p]
[jump/ tg=*after_touch ]

*after_touch
[cm][eval exp="f.act.time+=1" ][return_bace]

;;回想用
*rape_m
[eval exp="tf.hist_mode=1, f.situ.situ='sex'" ]
;;シーン
*rape
[cm][black][show_message_w][bgm st=MT][eval exp="f.fol_info.fol_h='H/'" ]
;[c_mod n=dress t=1 st=sylvie/H1-a ]
;[choice_xy][btn/ l=y tg=*wear gr=ch/wear ][btn/ tg=*nude gr=ch/unwear ][s]

;*wear
;[cm][_]（用力抓住希露薇细小的手腕、把她的一只手臂扳到背后。[p]
;[syl]…[p][set_black]
;[chara_show name="dress" time="100" wait="true" left="0.1" ]
;[bg/ g=H_rape st=r0 ][reset_effect]
;[show_effect][hide_black][jump target="*2" ]

*nude
[cm][_]（用力抓住希露薇细小的手腕、把她的一只手臂扳到背后。[p]
[syl]…[p][set_black][bg/ g=H_rape st=r0 ][reset_effect][show_effect][hide_black]
*2
	[_]（勃起的[Hxn n=p]生殖器蹭着她小小的屁股、[r]
	抓住她的手腕感到了她身体的坚硬[p]
[bg/ g=H_rape st=r1 ][h_ef/ se=s1-se-1 tx=s1-tx-1 ef=s1-ef-1 xr=s1-1x ][se/  st=s-wet1 ]
	（慢慢的比较强硬的把那东西插进她的身体[Hxn n=p]让她发出了闷声。[p]
	[syl]…嗯！[p]
	[_][if exp="f.intro.rape>=1" ][else]（[Hxn n=v]作为她纯洁的证明从她的私处中流出了她破处的血液。[p][endif]

[bg/ g=H_rape st=r2 ][h_ef/ se=s1-se-2 tx=s1-tx-2 ef=s1-ef-2 xr=s1-2x ][se/ l=t  st=l-wet1 ]
	[_]（我开始慢慢地动起腰来[p]
	（少女的[Hxn n=iv]阴道[Hxn n=p]被大人的阴茎侵入似乎能让人听到咕吱咕吱的美丽声音、[r]
	她几乎是在强忍着不大叫出来。[p]
	（如果是忍受疼痛的话已经习惯了吧[p]
[bg/ g=H_rape st=r3 ][h_ef/ se=s1-se-3 tx=s1-tx-3 ef=s1-ef-3 xr=s1-3x ]
	（放缓了腰部的动作、不再是出入而是想抚摸她的[Hxn n=iv]腹部一样、[lr]
	[Hxn n=u]用温柔的动作开始攻顶她的子宫。[p]
	（只是稍微的动作就让她大喘气了呢。[p]
[bg/ g=H_rape st=r4 ][h_ef/ se=s1-se-4 tx=s1-tx-4 ef=s1-ef-4 xr=s1-4x ]
	[syl]嗯、怎么…回事…？[p]
	[_]（她垂下头脸已经红到了耳根。[lr]
	（因为已经习惯了疼痛、快感似乎已经溢满了她的感觉。[p]
[bg/ g=H_rape st=r5 ][h_ef/ se=s1-se-5 tx=s1-tx-5 ef=s1-ef-5 xr=s1-5x ][se/ l=t  st=l-wet2 ]
	[syl]嗯、唔[p]
	[_]（开始慢慢的加快节奏[lr]
	腰撞击到希露薇的臀部上发出了肉体碰撞的声音。[p]
	（我们彼此的呼吸都开始变得急促。[p]
[bg/ g=H_rape st=r6 ][h_ef/ se=s1-se-6 tx=s1-tx-6 ef=s1-ef-6 xr=s1-6x ][se/ l=t  st=l-wet3 ]
	[syl]呀。[lr]怎么、觉得奇怪了！[p]
	[_]（持续做着的事情让没有快感经验的希露薇感到了困惑。[p]
	[syl]嗯嗯！！[lr]
	啊呜啊啊！[p]
	[_]（我腰部动作的不放纵让希露薇的声音再也忍受不住了。[p]
	[syl]有、有什么…要来了、[lr]这是…什么！？[p]
	[_]（看起来我们都要达到顶点了。[p]
	（我最后用腰用力地撞了她一下。[p]
[bg/ g=H_rape st=r7 ][h_ef/ se=s1-se-7 tx=s1-tx-7 ef=s1-ef-7 xr=s1-7x ][se/  st=fin2 ]
	[syl]嗯嗯ー！！！[p]
	[_]（被倾注了灼热[Hxn n=z]精子的希露薇似乎[Hxn n=ex]也迎来了她的高潮。[p]
	（她的肩膀颤抖着、[Hxn n=iv]阴道紧紧地[Hxn n=p]缠住了阴茎。[p]
[bg/ g=H_rape st=r8 ][h_ef/ se=s1-se-8 tx=s1-tx-8 ef=s1-ef-8 xr=s1-8x ]
	[syl]哈ー…哈ー…[p]
	[_]（我暂时没有拔出生殖器而是[Hxn n=iv]沈浸在了被肉褶包裹的余韵中…。[p]
[black][stop_bgm]
[_]（希露薇的体力已经到达了极限。[lr]
（今天剩下的时间就这样让她休息吧。[p]

[return_memory cond="tf.hist_mode>=1" ]
[eval exp="f.act.time='non', f.x_count.sex+=1, f.count.day+=1, f.intro.rape+=1" ]
[eval exp="f.intro.trust=f.intro.trust-30" ]
[eval exp="f.situ.situ='room'" ][hide_role][show_role][set_win_frame]
[if exp="f.intro.flag==0" ][jump/ st=sys/intro_event tg=*feed ][endif]
[if exp="f.intro.rape>=3" ][jump/ st=sys/intro_event tg=*dead_end ][endif]
[return_bace]

;;CG
*cg
[cm][black][eval exp="f.fol_info.fol_h='H/'" ]
;[c_mod n=dress t=1 st=sylvie/H1-a ]
;[choice_xy][btn/ l=y tg=*wear_cg gr=ch/wear ][btn/ tg=*nude_cg gr=ch/unwear ][s]
;*wear_cg
;[cm][set_black]
;[chara_show name="dress" time="100" wait="true" left="0.1" ]

*nude_cg
[cm][set_black][bg/ g=H_rape st=r0 ]
[h_ef/ se=s1-se-0 tx=s1-tx-0 ef=00 xr=00 ]
[show_effect][hide_black]
[h_back tg="*end_cg"][h_next tg="*b_cg2"][s]
*b_cg1
[bg/ g=H_rape st=r0 ][h_ef/ se=s1-se-0 tx=s1-tx-0 ef=00 xr=00 ]
[h_back tg="*end_cg"][h_next tg="*b_cg2"][s]
*b_cg2
[bg/ g=H_rape st=r2 ][h_ef/ se=s1-se-2 tx=s1-tx-2 ef=s1-ef-2 xr=s1-2x ]
[h_back tg="*b_cg1"][h_next tg="*b_cg3"][s]
*b_cg3
[bg/ g=H_rape st=r3 ][h_ef/ se=s1-se-3 tx=s1-tx-3 ef=s1-ef-3 xr=s1-3x ]
[h_back tg="*b_cg2"][h_next tg="*b_cg4"][s]
*b_cg4
[bg/ g=H_rape st=r4 ][h_ef/ se=s1-se-4 tx=s1-tx-4 ef=s1-ef-4 xr=s1-4x ]
[h_back tg="*b_cg3"][h_next tg="*b_cg5"][s]
*b_cg5
[bg/ g=H_rape st=r5 ][h_ef/ se=s1-se-5 tx=s1-tx-5 ef=s1-ef-5 xr=s1-5x ]
[h_back tg="*b_cg4"][h_next tg="*b_cg6"][s]
*b_cg6
[bg/ g=H_rape st=r6 ][h_ef/ se=s1-se-6 tx=s1-tx-6 ef=s1-ef-6 xr=s1-6x ]
[h_back tg="*b_cg5"][h_next tg="*b_cg7"][s]
*b_cg7
[bg/ g=H_rape st=r7 ][h_ef/ se=s1-se-7 tx=s1-tx-7 ef=s1-ef-7 xr=s1-7x ]
[h_back tg="*b_cg6"][h_next tg="*b_cg8"][s]
*b_cg8
[bg/ g=H_rape st=r8 ][h_ef/ se=s1-se-8 tx=s1-tx-8 ef=s1-ef-8 xr=s1-8x ]
[h_back tg="*b_cg7"][h_next tg="*end_cg"][s]

*end_cg
[freechara][return_memory]




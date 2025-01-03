;;好意
*好き
[cm][syl][eval exp="f.talk_love=f.talk_love+1" ][eval exp="f.love=f.love+1" ]
[random n=3]
[if exp="tf.r==1" ][eval exp="f.last_act='c_好き/嬉しい'" ]
	[f/ m=s]谢谢你。[lr_]
	[f/re]你这样想、我很高兴。[p_]
	[f/ e=sp m=s]…真的。[p_]
[elsif exp="tf.r==2" ][eval exp="f.last_act='c_好き/私も'" ]
	[f/ m=s]是啊、我也喜欢[name]。[lr_]
	[f/ e=p m=s]喜欢就是喜欢、没有理由。[p_]
[else][eval exp="f.last_act='c_好き/私も'" ]
	[f/ m=s][name]、我也[name]我也喜欢你。[lr_]
	[f/ e=s m=s]非常、非常喜欢♡[p_]
[endif][jump/ tg=*end_talk ]

*愛してる
[if exp="f.love<=1500" ][jump/ tg=*non ][endif]
[if exp="f.last_act=='c_嫉妬'" ][jump/ tg=*嫉妬>愛してる ][endif]
[cm][syl][eval exp="f.love=f.love+2" ][eval exp="f.talk_love=f.talk_love+1" ]
[random n=4]
[if exp="tf.r==1" ][eval exp="f.last_act='c_愛してる'" ]
	[f/ e=cp]…。[p_]
	[f/ y=c e=p]对不起。[lr_]
	[f/re]高兴得、总觉得言语无法形容了…。[p_]
[elsif exp="tf.r==2" ][eval exp="f.last_act='c_愛してる'" ]
	[f/ e=p m=s]谢谢你。[p_]
	我也爱[name]你。[lr_]
	[f/ e=cp m=s]我爱你…。[p_]
[elsif exp="tf.r==3" ][eval exp="f.last_act='c_愛してる'" ]
	[f/ y=c e=p]…是真的吗？[lr_]
	[f/re]我能相信吗？[p_]
	[f/ e=cp]那句话、真的…我会一直喜欢你的。[p_]
[elsif exp="tf.r==4" ][eval exp="f.last_act='c_愛してる'" ]
	[f/ y=c e=p]…「会被被背叛」之类的想法已经不存在了。[p_]
	[f/ e=cp][name]…我爱你。[p_]
[endif][jump/ tg=*end_talk ]

*ありがとう
;[if exp="f.last_act=='c_助かってる/これからも' || f.last_act=='c_助かってる/もっと頑張る'" ]
;	[jump/ tg=*助かる/これからも>ありがとう ][endif]
[cm][syl][eval exp="f.love=f.love+1" ][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_ありがとう/ありがとう'" ]
	[f/ m=s]是的…但是、说道谢的人其实应该是我。[lr_]
	[f/ e=s m=s]谢谢你、[name]。[p_]
;	→どういたしまして
[elsif exp="tf.r==2" ][eval exp="f.last_act='c_ありがとう/出来てるかな'" ]
	[f/ m=s]不要这样「客气」好吗？[lr_]
	[f/ e=s m=s]如果能够做致谢的事情出来的话就好了。[p_]
;	→助かってる/出来てる
[endif][jump/ tg=*end_talk ]

*助かる
[if exp="f.last_act=='c_ありがとう/出来てるかな'" ][jump/ tg=*出来てる ][endif]
*助かってる
[cm][syl][eval exp="f.love=f.love+1" ][random n=3]
[if exp="tf.r==1" ][eval exp="f.last_act='c_助かってる/これからも'" ]
	[f/]要帮忙吗？[lr_]
	[f/ e=c]但是、现在没时间[name]对不起了。[p_]
	[f/ m=s]下次会竭尽全力的。[p_]
;	→お願いする/期待してる、もう十分、ありがとう
[elsif exp="tf.r==2" ][eval exp="f.last_act='c_助かってる/もっと頑張る'" ]
	[f/ m=s]虽然是做不好什么事、不过稍微有点投入的话就能做好了。[lr_]
	[f/ e=s m=s]如果在平时有帮手以外的什么想要的事请就说。[p_]
;	→もう十分、ありがとう
[else][eval exp="f.last_act='c_助かってる/もっと頑張る'" ]
	[f/ m=s]真的吗？[lr_]
	[f/re]但是、我想更努力。[p_]
	[f/ e=s m=s]如果换成我是[name]的话我也会努力的♡[p_]
[endif][jump/ tg=*end_talk ]

;;問いかけ
*楽しい？
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_楽しい？/はい'" ]
	[f/ e=s m=s]是的、快乐哟。[lr_]
	[f/ m=s][name]如果能在我身边的话、无论什么时候都快乐的。[p_]
;	→良かった、こっちも楽しい、嬉しい
[else][eval exp="f.last_act='c_楽しい？/はい'" ]
	[f/ m=s]是那样啊。[lr_]
	[f/re]出门啦、做家务、吃好吃的东西、[lr_]
	[f/ e=s m=s]每天有各种各样的事很开心。[p_]
;	→良かった、こっちも楽しい、嬉しい
[endif][jump/ tg=*end_talk ]

*幸せ？
[cm][syl][random n=3]
[if exp="tf.r==1" ][eval exp="f.last_act='c_幸せ？/ありがとう'" ]
	[f/ e=c]幸福是什么、以前不太明白…[lr_]
	[f/ m=s]但是我想现在的生活是幸福的。[p_]
	[f/ e=s m=s]谢谢你、[name]。[p_]
;	→良かった、こっちも幸せ、どういたしまして、こちらこそ
[elsif exp="tf.r==2" ][eval exp="f.last_act='c_幸せ？/怖いぐらい'" ]
	[f/ m=s]真的、我很幸福。[lr_]
	[f/ e=c]与来这里前的生活相比、太过幸福了。[p_]
;	→こっちも幸せ、大丈夫/安心して、惯れるよ
[else][eval exp="f.last_act='c_幸せ？/一緒だから'" ]
	[f/ e=s m=s]是的、非常幸福。[lr_]
	[f/ m=s]因为我和你在一起[name]。[p_]
;	→良かった、こっちも幸せ
[endif][jump/ tg=*end_talk ]

*元気？
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_元気？/はい'" ]
	[f/ m=s]是的、我很健康。[lr_]
	[f/re]和过去相比身体变得健康起来了。[p_]
;	→良かった
[else][eval exp="f.last_act='c_元気？/はい'" ]
	[f/ m=s]是的、哪里也不痛也没有不舒服。[lr_]
	[f/ e=s m=s]非常的健康。[p_]
;	→良かった
[endif][jump/ tg=*end_talk ]

*大丈夫？
*無理してない？
[cm][syl][random n=2]
[if exp="tf.r==1" ]
	[f/ m=s]没问题的。[lr_]
	而且和从前相比体力要好了、[r]
	[f/re]生活的充实？感觉这样的东西。[p_]
;	→良かった
[else]
	[f/ m=s]没有什么问题吧？[lr_]
	[f/ e=s m=s]工作和家务也很快乐、虽然有时候觉得身体有点疲劳。[p_]
;	→良かった
[endif][eval exp="f.last_act='c_無理してない？/はい'" ][jump/ tg=*end_talk ]

*欲しいものある？
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_欲しいもの/特に'" ]
	[f/ e=c]我…。没特别想要的。[lr_]
	[f/ m=s]各种各样的事情太多了、只享受现在有的东西就竭尽全力了。[p_]
;	→思いついたら言って
[else][eval exp="f.last_act='c_欲しいもの/ぎゅって'" ]
	[f/ e=p m=s]嗯…那让我。收集东西可以吗？[lr_]
	[f/ y=c]…还是说其它的事？[p_]
;	→ギュッとする、違う
[endif][jump/ tg=*end_talk ]

*痛くない？
[cm][syl]
[eval exp="f.last_act='c_痛くない？'" ]
	[f/ m=s]是的、几乎不会痛。[lr_]
	有点敏感、偶尔会担心它会痛。[p_]
[jump/ tg=*end_talk ]

;;感想/感情ポジティブ
*嬉しい
[cm][syl][if exp="f.last_act=='c_楽しい？/はい'" ][jump/ tg=*楽しい？/はい>嬉しい ][endif]
[eval exp="f.last_act='c_嬉しい'" ]
	[f/ m=s]有什么高兴的事？[lr_]
	[f/ e=s m=s][name]高兴我也跟着高兴。[p_]
[jump/ tg=*end_talk ]

*楽しい
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_楽しい'" ]
	[f/ e=s m=s]是的、很开心。[lr_]
	[f/ m=s]和[name]你在一起的话、做什么都开心。[p_]
[else]
	[f/]是吗？[p_]
	[f/ e=c]我对一般的事情都好奇而且也会觉得很开心、[r]
	[f/re][name]也是这样的吧、我偶尔会这样的想。[lr_]
	[f/ m=s]如果能一起开心的话我也会很开心。[p_]
[endif][jump/ tg=*end_talk ]

*幸せ
[cm][syl][eval exp="f.love=f.love+1" ][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_幸せ'" ]
	[f/ m=s]是真的吗？[lr_]
	[f/ e=s m=s]如果和你在一起的话、我也非常幸福。[p_]
[else][eval exp="f.last_act='c_幸せ'" ]
	[f/ m=s]我和、[name]你在一起你也幸福吗？[lr_]
	[f/ e=c m=s]我想[name]也一定是这样想的吧…。[p_]
[endif][jump/ tg=*end_talk ]

;;感想/感情ネガティブ
*お腹すいた
[cm][syl]
[if exp="f.act<=2" ][eval exp="f.last_act='c_お腹すいた午前/早めに'" ]
	[f/]肚子已经饿了吗？[lr_]
	[f/ m=s]那么今天的午餐就稍微提前一点准备吧。[p_]
[elsif exp="f.act==3" ][eval exp="f.last_act='c_お腹すいた昼/何にしましょう'" ]
	[f/]就要到中午了。[lr_]
	[f/ m=s]今天的饭什么的就好了。[p_]
[elsif exp="f.act==4" ][eval exp="f.last_act='c_お腹すいた食後/デザートでも？'" ]
	[f/]午饭、没法让你满足吗？[lr_]
	[f/ e=c]要喝茶吗…[lr_]
	[f/ e=s m=s]啊、来吃饭后的甜食怎么样？[p_]
[else][eval exp="f.last_act='c_お腹すいた午後/そろそろ夕食'" ]
	[f/]是的、我也稍微有点饿了。[lr_]
	[f/ m=s]我们该吃晚饭了吧？[p_]
[endif][jump/ tg=*end_talk ]

*體調が悪い
[cm][syl][random n=3]
[if exp="tf.r==1" ][eval exp="f.last_act='c_體調悪い'" ]
	[f/ y=c]没问题吧？[lr_]
	[f/re]身体不好的话稍微躺一下？[p_]
[elsif exp="tf.r==2" ][eval exp="f.last_act='c_體調悪い'" ]
	[f/ y=c]没问题吧？[lr_]
	[f/re]如果感冒啦的话最好尽早安静地休息。[p_]
	[f/re]有什么我能做的事吗？[p_]
[else][eval exp="f.last_act='c_體調悪い'" ]
	[f/]累了吗？[lr_]
	[f/ y=c]如果有我会的事请告诉我。[p_]
[endif][jump/ tg=*end_talk ]

*眠い
[cm][syl]
[if exp="f.act<=2" ][eval exp="f.last_act='c_眠い朝'" ]
	[f/]睡不醒吗？[lr_]
	[f/ m=s]用冰冷的水洗脸怎样呢[p_]
[elsif exp="f.act<=4" ][eval exp="f.last_act='c_眠い昼'" ]
	[f/ y=c]午饭的前后总觉得困了。[lr_]
	[f/ e=c]我也有点迷迷煳煳的。[p_]
[else][eval exp="f.last_act='c_眠い午後'" ]
	[f/ y=c]累了吧…。[lr_]
	[f/re]今天你早点休息吗？[p_]
[endif][jump/ tg=*end_talk ]

;寒い/さむい
;*cold
;
;[jump/ tg=*end_talk ]

;;評価
*貧乳
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_貧乳/成長する'" ]
	[f/ e=c m=n]…。[p_]
	[f/re]应该、还能再成长。[lr_]
	[f/re]一定…。[p_]
;	→成長する/大きくなる、可愛い/好き、小さいままで
[else][eval exp="f.last_act='c_貧乳/成長する'" ]
	[f/ y=c]果然、大的看起来更魅力的吗？[lr_]
	[f/re]再等一段时间看看吧。[p_]
;	→成長する/大きくなる、可愛い/好き、小さいままで
[endif][jump/ tg=*end_talk ]

*ちっちゃい
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_ちっちゃい/そうかも'" ]
	[f/]比起普通、也许是小个子吧。[lr_]
	[f/ e=c]也许是过去的生活的原因。[p_]
;	→胸が、大きくなる、可爱い
[else][eval exp="f.last_act='c_ちっちゃい/役に立てない'" ]
	[f/]是那样的。[lr_]
	[f/ e=c]力气也不太多、不过变大点了吧[r]
	[f/re]是[name]的功劳吧…。[p_]
;	→胸が、大きくなる、大丈夫、十分助かってる
[endif][jump/ tg=*end_talk ]

*可愛い
[if exp="f.last_act=='c_偉い/何かした？'" ][jump/ tg=*偉い/何かした？>可愛い ][endif]
[cm][syl][eval exp="f.love=f.love+1" ][random n=3]
[if exp="tf.r==1" ][eval exp="f.last_act='c_可愛い/そうなのかな'" ]
	[f/ e=c]老实说我自己不知道我是不是适合那个词。[lr_]
	[f/ e=s m=s]但是、[name]如果那样想的话一定是那样的吧。[p_]
[elsif exp="tf.r==2" ][eval exp="f.last_act='c_可愛い/もっと好かれたい'" ]
	[f/ m=s]谢谢你。[lr_]
	[f/ e=s m=s]我会变得更加可爱让[name]更喜欢我。[p_]
[else][eval exp="f.last_act='c_可愛い/信じれる'" ]
	[f/ e=c]以前的我说这些是怎么也不会理解的。[lr_]
	[f/ m=s]但是、现在「是[name]你的可爱的我」所以我可以理解了。[p_]
[endif][jump/ tg=*end_talk ]

*綺麗
[cm][syl][eval exp="f.love=f.love+1" ][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_綺麗/そうありたい'" ]
	[f/]是吗？[lr_]
	[f/ e=c m=s]成为大人的大人、和[name]走在身旁[r]
	[f/re]想成为一个[name]的不害羞的好女人。[p_]
;	→素敵だよ、自信持って
[else][eval exp="f.last_act='c_綺麗/わからない'" ]
	[f/]相貌是…怎么样、自己是不太明白的。[lr_]
	[f/ e=s m=s]但是、[name]对我这样说觉得高兴。[p_]
;	→自信持って
[endif][jump/ tg=*end_talk ]

*笑顔がかわいい
[if exp="f.last_act=='c_偉い/何かした？'" ][jump/ tg=*偉い/何かした？>可愛い ][endif]
[cm][syl][eval exp="f.last_act='c_笑顔がかわいい'" ][random n=2]
[if exp="tf.r==1" ]
	[f/ m=s]谢谢你。[lr_]
	[f/ e=s m=s]但是、给我笑容的是[name]不是吗？[p_]
[else]
	[f/ e=s m=s]呼呼[lr_]
	[f/re][name]说那样的话、会变得更笑容的。[p_]
[endif][jump/ tg=*end_talk ]

*偉い
[cm][syl][random n=2][if exp="f.love<=1000" ][eval exp="tf.r=1" ][endif]
[if exp="tf.r==1" ][eval exp="f.last_act='c_偉い/何かした？'" ]
	[f/]啊啊…[lr_]
	[f/ m=s]我、有什么要伟大的事情要表扬吗？[p_]
;	→仕事、家事、可愛い
[else][eval exp="f.last_act='c_偉い/撫でて'" ]
	[f/ m=s][name]是在夸奖我吗？[lr_]
	[f/ e=s m=s]…那么、能摸一摸我的头吗？[p_]
[endif][jump/ tg=*end_talk ]

*えろい
[if exp="f.lust<=300" ][jump/ tg=*non ][endif]
[cm][syl][add_lust_act][random n=3]
[if exp="tf.r==1" ][eval exp="f.last_act='c_えろい/誰のせい？'" ]
	[f/ y=c e=cp]唔唔…、[name]的错…。[lr_]
	[f/ y=c e=l]…不然你以为是谁的原因呢？[p_]
;	→希尔薇、ごめん
[elsif exp="tf.r==2" ][eval exp="f.last_act='c_えろい/あなたのせい'" ]
	[f/ e=cp]…这个、难道[name]你不也是那样的吗。[lr_]
	[f/ y=c e=l]这个…对我来说。[p_]
;	→责任取る
[else][eval exp="f.last_act='c_えろい/嫌い？'" ]
	[f/ y=c e=p]…讨厌我了吗？[name]？[p_]
;	→好き、お淑やかに
[endif][jump/ tg=*end_talk ]

*優しいね
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_優しい/あなたのおかげ'" ]
	[f/ e=s m=s]是[name]温柔而不是我温柔吧？[p_]
[else][eval exp="f.last_act='c_優しい/あなたの方が'" ]
	[f/ m=s]是吗？[lr_]
	[f/ e=s m=s]我是为[name]而温柔的。[p_]
;	→ありがとう、そうでもない
[endif][jump/ tg=*end_talk ]

*天使
[cm][syl][eval exp="f.last_act='c_天使'" ]
	[f/ y=c m=s ]虽然已经不是很悲惨的奴隶了、[r]
	但也也不可能成为那样神圣的东西吧。[p_]
;	→サキュバス
[jump/ tg=*end_talk ]

*サキュバス
[jump/ tg=*end_talk ]

;;甘える
*助けて
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_助けて'" ]
	[f/ y=c]有什么事情吗？[lr_]
	[f/re]如果是你的问题的话就讲给我听一下吧。[p_]
[else][eval exp="f.last_act='c_助けて'" ]
	[f/ y=c]没问题吧？[lr_]
	[f/re]我有什么能做的事吗？[p_]
[endif][jump/ tg=*end_talk ]

*応援して
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_応援して'" ]
	[f/ m=s]？[p_]
	[f/ e=s m=s]那…请加油、[name]♡[p_]
[else][eval exp="f.last_act='c_応援して'" ]
	[f/ m=s]…？[p_]
	[f/ m=s][name]一定没问题的、加油吧。[p_]
[endif][jump/ tg=*end_talk ]

*撫でて
[cm][syl][random n=2]
	[f/]我是[name]的什么？[lr_]
	[f/ m=s]不需要这么客气、来吧。[p_]
[if exp="tf.r==1" ][eval exp="f.last_act='c_撫でて'" ]
	[f/ m=s]…[name]在你抚摸我的时候也是这样的感觉吗[p_]
[else][eval exp="f.last_act='c_撫でて'" ]
	[f/ e=c m=s]…谢谢你、谢谢、[name]。[p_]
[endif][jump/ tg=*end_talk ]

;甘えたい/慰めて/なでて/あまえたい
;*寂しい
;
;[jump/ tg=*end_talk ]

;*眠れない
;
;[jump/ tg=*end_talk ]

*ごめん
[if exp="f.last_act=='c_嫉妬'" ][jump/ tg=*嫉妬>ごめん ][endif]
[cm][syl][eval exp="f.last_act='c_ごめん'" ]
	[f/]你怎么了？[lr_]
	[f/ m=s]没有什么可道歉的事情吧？[p_]
[jump/ tg=*end_talk ]

;;要求
*笑って
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_笑って'" ]
	[f/]即使那样突然的说…[lr_]
	[f/ e=s m=s]…你笑吧。[lr_]
	[f/ m=s]幸福就是这样的事情吧[p_]
[else][eval exp="f.last_act='c_笑って'" ]
	[f/ e=s m=s]…没问题♡[p_]
	[f/ m=s]虽然以前是做不到的、[r]
	但是现在能自然的笑了。[p_]
[endif][jump/ tg=*end_talk ]

*抱きしめて
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_抱きしめて'" ]
	[f/ e=p m=s]好的、来吧…。[lr_]
	[f/ e=sp m=s]呼呼…♡[p_]
[else][eval exp="f.last_act='c_抱きしめて'" ]
	[f/ e=s m=s]没问题、我喜欢♡[lr_]
	[f/ e=cp m=s]…好温暖[p_]
[endif][jump/ tg=*end_talk ]

*こっちきて
[cm][syl][eval exp="f.last_act='c_こっちきて'" ]
	[f/ e=s m=s]是…♡[lr_]
	[f/ e=p m=s]…和[name]在附近觉得非常幸福呢[p_]
[jump/ tg=*end_talk ]

*キスして
[if exp="f.h_sex>=1" ][else][jump/ tg=*non ][endif]
[cm][syl][eval exp="f.love=f.love+1, f.h_kiss=f.h_kiss+1" ][mouth_up_little]

[if exp="f.lust>=600 || f.mood=='lust'" ][else][eval exp="f.last_act='c_キスして/バード'" ]
	[f/ e=p m=s]好的、能稍微蹲下来吗？[p_]
	[f/ e=cp]…咯。[l]
	[f/re]嗯…。[lr_]
	[f/ e=p m=s]做这事情、有一点新鲜感。[p_]
[jump/ tg=*end_talk ][endif]

[eval exp="f.last_act='c_キスして/ディープ'" ]
[random n=2][add_lust_act][mouth_up_little]
[if exp="tf.r==1" ]
	[f/ e=p m=s]是、[l]
	[f/ e=cp]嗯姆…。[p_]
	[_]嘴唇重叠了舌头和嘴结合[p_]
	[f/re]咯…咯…。[lr_]
	[f/re]嗯姆…哈啊……嗯…。[p_]
	[f/re]呼哈啊…[lr_]
	[f/ y=c e=l]…[name]♡[p_]
[else]
	[f/ e=p m=s]是、[l][f/ e=cp]嗯…。[p_]
	[_]炽热的呼吸和舌头进入口腔。[p_]
	[f/re]嗯…呼啊…[lr_]
	[f/re]嗯姆…哈啊……哪…[lr_]
	[f/re]沏…噜[p_]
	[f/re]呼哈…[p_]
	[f/ y=c e=l]…[name]♡[p_]
[endif][jump/ tg=*end_talk ]

*そばにいて
[cm][syl][eval exp="f.love=f.love+1" ][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_そばにいて/離れません'" ]
	[f/ e=s m=s]是的、当然。[lr_]
	[f/ e=p m=s][name]如果你希望的话我永远不会离开你的♡[p_]
[else][eval exp="f.last_act='c_そばにいて/こちらからも'" ]
	[f/ m=s]不如我就拜托你了。[lr_]
	[f/ e=c m=s]无论如何、请一直在一起…♡[p_]
[endif][jump/ tg=*end_talk ]

*胸触らせて
[jump/ tg=*end_talk ]

*手握って
[cm][syl]
	[f/ m=s]好[p_][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_手握って/小さい？'" ]
	[f/re]…[name]的手、好大。[lr_]
	[f/]我的手只有…这么小？[p_]
[else][eval exp="f.last_act='c_手握って/優しい'" ]
	[f/ e=c m=s]…温柔的手啊。[p_]
[endif][jump/ tg=*end_talk ]

;;要望
*抱きしめたい
[cm][syl][eval exp="f.last_act='c_抱きしめたい'" ]
	[f/ e=s m=s]怎么不可以？[p_]
	[f/ e=cp m=s]…抓牢[lr_]
[random n=3]
[if exp="tf.r==1" ]
	[f/re]呼呼…[name]…♡[p_]
[elsif exp="tf.r==2" ]
	[f/re]嗯…好温暖[p_]
[else]
	[f/re]…幸せです。[p_]
[endif][jump/ tg=*end_talk ]

*撫でていい？
[cm][syl][eval exp="f.last_act='c_撫でていい？'" ]
	[f/]到现在这种事还要确认、有这个必要吗？[lr_]
	[f/ e=s m=s]当然可以啊。[lr_]
	[f/ m=s]不应该说讨厌什么的。[p_]
[jump/ tg=*end_talk ]

*キズ触らせて
[jump/ tg=*end_talk ]
*いたずらしたい
[jump/ tg=*end_talk ]
*キスしたい
[jump/ tg=*end_talk ]

*希尔薇
[if exp="f.love>=1000" ][random n=4][else][random n=3][endif]
[cm][syl][eval exp="f.last_act='c_希尔薇/はい？'" ]
[if exp="tf.r==1" ]
	[f/ m=s]在的、怎么了[name]？[p_]
[elsif exp="tf.r==2" ]
	[f/ m=s]是的、怎么了？[p_]
[elsif exp="tf.r==3" ]
	[f/ m=s]在、有什么事吗？[p_]
[else][eval exp="f.last_act='c_希尔薇/はい♡'" ]
	[f/ e=sp m=s]在、你的希尔薇、我是[name]的♡[p_]
[endif][jump/ tg=*end_talk ]

*お姉ちゃん
[jump/ tg=*end_talk ]
*お母さん
[jump/ tg=*end_talk ]

;;挨拶
*おはよう
[cm][syl]
[if exp="f.act<=2" ][eval exp="f.last_act='c_おはよう朝'" ]
	[f/ m=s]是的、早上好[lr_]
	[f/re]今天也有好事发生就好了。[p_]
[elsif exp="f.act<=4" ][eval exp="f.last_act='c_おはよう昼'" ]
	[f/ m=s]是。早上好。[lr_]
	[f/]可是、现在不是中午吗？[p_]
[else][eval exp="f.last_act='c_おはよう夜'" ]
	[f/ y=c]我想已经是「晚上好」的时间了吧…[p_]
[endif][jump/ tg=*end_talk ]

*こんばんわ
[cm][syl]
[if exp="f.act<=2" ][eval exp="f.last_act='c_こんばんわ朝'" ]
	[f/]这么早。[lr_]
	[f/ m=s]都还没起床吧。[p_]
[elsif exp="f.act<=4" ][eval exp="f.last_act='c_こんばんわ昼'" ]
	[f/]好的、晚上好…[p_]
	[f/re]不过说「晚上好」稍微有点早吧？[p_]
[else][eval exp="f.last_act='c_こんばんわ夜'" ]
	[f/ m=s]好的、晚上好。[lr_]
	[f/]你到底是怎么了？这么一本正经。[p_]
[endif][jump/ tg=*end_talk ]

*こんにちは
[cm][syl]
[if exp="f.act<=1" ][eval exp="f.last_act='c_こんにちは朝'" ]
	[f/]说「早晨好」有一点不早吧…？[p_]
[elsif exp="f.act<=4" ][eval exp="f.last_act='c_こんにちは昼'" ]
	[f/ m=s]是的、你好。[lr_]
	[f/]你到底是怎么了？这么一本正经。[p_]
[else][eval exp="f.last_act='c_こんにちは夜'" ]
	[f/ m=s]差不多该是晚上好的时间了吗？[p_]
[endif][jump/ tg=*end_talk ]

*お疲れ様
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_お疲れ様'" ]
	[f/ m=s]是、[name]也辛苦了。[p_]
[else][eval exp="f.last_act='c_お疲れ様'" ]
	[f/ m=s]谢谢你。[p_]
	[f/re]不过、我没做什么事吧？[p_]
[endif][jump/ tg=*end_talk ]

;;行動
*じー
[cm][syl][random n=4][eval exp="f.last_act='c_じー'" ]
[if exp="tf.r==1" ]
	[f/ m=sn]…？[p_]
[elsif exp="tf.r==2" ]
	[f/]…你怎么了吗、[name]？[p_]
[elsif exp="tf.r==3" ]
	[f/ e=p]…这么、我脸上有什么吗？[p_]
[else]
	[f/ e=cp]…这样看着、总觉得不好意思啊。[p_]
[endif][jump/ tg=*end_talk ]

*ぎゅー
[if exp="f.last_act=='c_欲しいもの/ぎゅって'" ][jump/ tg=*欲しいもの/ぎゅって>する ][endif]
[jump/ tg=*non ]

*キスする
[jump/ tg=*end_talk ]

;;その他
*奧蕾莉亞
[if exp="f.sub_chara_intro[1]==1" ][eval exp="f.sub_chara_intro[1]=2" ][endif]
[if exp="f.sub_chara_intro[1]>=1" ][else][jump/ tg=*non ][endif]
[if exp="f.jealous>=4 && f.h_sex>=1" ][jump/ tg=*嫉妬 ][endif]
[cm][syl][random n=4]
[if exp="tf.r==1" ]
	[f/ y=c]那个人、很漂亮但有点可怕不是吗？[lr_]
	[f/re]不怎么说话、觉得难以捉摸…。[p_]
[elsif exp="tf.r==2" ]
	[f/]…长得很高大、那个店员。[lr_]
	[f/ e=c]不、那个印象强烈、虽然没有别的特别的意思。[p_]
[elsif exp="tf.r==3" ]
	[f/ m=s]非常擅长打扮的人。[lr_]
	[f/re]不愧是服装店的店员。[p_]
[else]
	[f/ m=s]那家的店、有很多很好的洋服哦。[lr_]
	[f/re]也有罕见的东西。[p_]
[endif][eval exp="f.last_act='c_woman'" ][jump/ tg=*end_talk ]

*涅芙依
[cm][syl]
[if exp="f.sub_chara_intro[3]>=1" ][else][jump/ tg=*non ][endif]
[if exp="f.sub_chara_intro[3]==1" ][eval exp="f.sub_chara_intro[3]=2" ]
	[f/ y=c]那个、是谁啊？[lr_]
	[f/ m=s]…啊啊、那个服务员的名字吗。[p_][endif]
[if exp="f.jealous>=4 && f.h_sex>=1" ][jump/ tg=*嫉妬 ][endif]

[random n=5]
[if exp="tf.r==1" ]
	[f/]那样摇摇晃晃地摆放餐具。[lr_]
	[f/re]总觉得很厉害的。[p_]
[elsif exp="tf.r==2" ]
	[f/]不寻常的人。[lr_]
	[f/ e=c]有自己的走路步调…。[p_]
[elsif exp="tf.r==3" ]
	[f/]一个和其它服务员小姐衣服不一样的吗。[lr_]
	[f/re]那是非常特别、而且特别罕见的吧？[p_]
[elsif exp="tf.r==4" ]
	[f/ m=s]那个扎着马尾长辫的吧。[p_]
	[f/re]虽然不方便但没有撞到四周、[lr_]
	[f/ e=c]从来没见过这样的。[p_]
[else]
	[f/ y=c]像是滑稽那样的喝醉了一样…有不可思议的动作的人啊。[lr_]
	[f/]但是那样的动作很累但是却没有那样的样子、[lr_]
	[f/ m=s]因为没看见过失误、所以运动神经很好。[p_]
[endif][eval exp="f.last_act='c_woman'" ][jump/ tg=*end_talk ]

*菲魯姆
[cm][syl][eval exp="f.last_act='c_菲魯姆'" ]
[if exp="f.sub_chara_intro[1]==1" ][eval exp="f.sub_chara_intro[1]=2" ]
	[f/ y=c]哦、那是谁呢？[p_]
	[f/]…啊、那是商人的名字吗。[lr_]
	[f/ e=c]原来是叫这个名字的啊…。[p_]
	[f/]你一个人出去玩的时候你遇见了吗？[p_]
	[f/ y=c e=c]下一次一定要好好地致谢…。[lr_]
	[f/ y=c]如果、如果我不在的时候你见到他请谢谢他？[p_]
	[f/ e=c]就是他把我从出生的地方带到[name]这里来的。[lr_]
	[f/ m=s]现在的我的幸福就是那他所赐。[p_]
[jump/ tg=*end_talk ][endif]
[random n=6]
[if exp="tf.r==1" ]
	[f/]那是商人、定期来这个城里的吧。[lr_]
	[f/ m=s]工作、一定很顺利的吧。[p_]
[elsif exp="tf.r==2" ]
	[f/ e=c]那是商人、长期旅行习惯了。[lr_]
	[f/ m=s]一定是在工作上要旅行的事很多吧。[p_]
[elsif exp="tf.r==3" ]
	[f/]那个人从异国进口商品吗。[lr_]
	[f/re]这么说来他把我送到这里的时候也是、[r]
	[f/re]记得有几箱字读不懂的行李。[p_]
[elsif exp="tf.r==4" ]
	[f/ e=c]温柔是没有的、但是也不粗暴。[lr_]
	[f/]像对待东西一样的感觉、[r]
	当时应该是觉得这是「商品」一类的东西吧。[p_]
	[f/ m=s]但是、特意带到的[name]地方来了、[r]
	作为一个作为人的人来了。[p_]
[elsif exp="tf.r==5" ]
	[f/]以前[name]确实有帮助过那个人吗？[lr_]
	[f/ y=c]是什么、做了危险的事情吗…。[p_]
	[f/ e=c]至少我和那个人在一起的时间是[r]
	虽然没有做这样的工作的样子。[p_]
[elsif exp="tf.r==6" ]
	[f/ e=c]有点、可怕的人。[lr_]
	[f/ m=s]但是也不见得会抛弃我、[r]
	[f/re]我想不是那么坏的人。[p_]
[endif][jump/ tg=*end_talk ]


;;返答
*嫉妬
[cm][syl][random n=2]
[if exp="tf.r==1" ]
	[f/ e=c]…喜欢其他人的话。[lr_]
	[f/re]不、没什么的。[p_]
[else]
	[f/ e=c]…只是女人的话。[lr_]
	[f/re]不、没什么。[p_]
[endif][eval exp="f.last_act='c_嫉妬'" ][jump/ tg=*end_talk ]

*嫉妬>愛してる
[cm][syl][eval exp="f.love=f.love+2" ][eval exp="f.talk_love=f.talk_love+1" ]
[eval exp="f.last_act='c_嫉妬>愛してる'" ]
	[f/ e=c]…知道的。[lr_]
	[f/ y=c e=p]…因为我也最爱[name]？[p_]
[jump/ tg=*end_talk ]

*嫉妬>ごめん
[cm][syl][eval exp="f.last_act='c_嫉妬>ごめん'" ]
	[f/ e=c]…这个吗？[p_]
	[f/ e=c m=s]…呼呼[p_]
[jump/ tg=*end_talk ]

;;お菓子
*ケーキ
[jump/ tg=*end_talk ]
*クッキー
[jump/ tg=*end_talk ]
*お菓子
[jump/ tg=*end_talk ]
*アップルパイ
[jump/ tg=*end_talk ]
*パンケーキ
[jump/ tg=*end_talk ]
*チョコケーキ
[jump/ tg=*end_talk ]

*医者
[jump/ tg=*end_talk ]

*おっぱい
[cm][syl][eval exp="f.last_act='c_胸'" ]
[f/ y=c][name]果然喜欢、各种各样丰满魅力的女性吗？[lr_]
[f/ y=c e=c]每次看到那个服装店的店员、都觉得非常自卑…。[p_]
[jump/ tg=*end_talk ]

*料理
[cm][syl][random n=3]
[if exp="tf.r==1" ][eval exp="f.last_act='c_料理'" ]
	[f/]我做的东西适合你吗？[lr_]
	[f/ m=s][name]喜欢什么的话、就告诉我。[p_]
[elsif exp="tf.r==2" ][eval exp="f.last_act='c_料理'" ]
	[f/ m=s]虽然偶尔会有点失败、但是我还是记得怎么做比较好的。[lr_]
	[f/ e=s m=s]会更加更加熟练的、请期待啊。[p_]
[else][eval exp="f.last_act='c_料理'" ]
	[f/ m=s]想能做出来更各种各样的。[lr_]
	[f/re][name]说要吃的话什么都能制造♡[p_]
[endif][jump/ tg=*end_talk ]

*えんいー
好、喵？
…貓
[jump/ tg=*end_talk ]

*傷跡
[cm][syl][random n=2]
[if exp="tf.r==1" ][eval exp="f.last_act='c_傷跡'" ]
	[f/ e=c]真的、有这样的伤痕不会变得美丽吧。[lr_]
	[f/ m=s]但是、[name]如果你不介意的话那么就不会那么悲伤了。[p_]
[else][eval exp="f.last_act='c_傷跡'" ]
	[f/ y=c e=c]受伤的时候的记忆很强烈。[p_]
	[f/re]很痛、很害怕、[r]
	无意中发现了一个严重的痕迹、眼泪就停不下来了。[p_]
	[f/]但是、已经过去了。[lr_]
	[f/ e=c]只是感叹是没有任何意义的这我也知道。[p_]
[endif][jump/ tg=*end_talk ]

*ほにゃらら
是？
喵？
…喵？
[jump/ tg=*end_talk ]

;;特殊
*呼び名を変えて
[cm][jump/ st=sys/system tg=*name_call_change ]
*着替えて
[cm][syl]
	[f/ m=s]好、我知道了。[p_]
	[f/re]要换那一件呢？[p_]
[jump/ st=sys/dress tg=*change_dress ]

*仕事
*仕事をしてる
[if exp="f.last_act=='c_偉い/何かした？'" ][jump/ tg=*偉い/何かした？>仕事 ][endif]
*仕事をしよう
[if exp="f.Dc_f[0]!='got'" ][jump/ tg=*non ][endif]
[cm][syl]
[if exp="f.work_c==1" ][eval exp="f.last_act='c_仕事をしよう/もう閉めた'" ]
	[f/ y=c]咦、诊所不是才关上吗…？[p_]
[jump/ tg=*end_talk ]
[elsif exp="f.act>=5" ][eval exp="f.last_act='c_仕事をしよう/もう遅い'" ]
	[f/ y=c]已经到了这时间了、我想即使打开诊疗所也不会来患者吧…。[p_]
[jump/ tg=*end_talk ][endif]
[jump/ st=talk/room tg=*work ]

*出かけよう
[if exp="f.act<=4 && (f.out==0 || f.out=='syl')" ][cm][syl][jump/ st=talk/town tg=*out_choice ][endif]
[jump/ tg=*non ]
*出かけてくる
[if exp="(f.act>=5 && f.step>=6 || f.act<=4) && (f.out==0 || f.out=='syl')" ]
[cm][syl][jump/ st=talk/town tg=*alone ][endif]
[jump/ tg=*non ]

*お茶にしよう
[if exp="f.act>=3 && f.act<=4 && f.tea_time==0" ]
[cm][jump/ st=talk/room tg=*tea_menu ][endif]
[jump/ tg=*non ]
*お酒を飲もう
[if exp="f.act==6 && f.plum_wine>=1" ]
[cm][jump/ st=talk/wine tg=*wine ][endif]
[jump/ tg=*non ]

*おやすみ
[if exp="f.act<=4" ][jump/ tg=*non ][endif]
[cm][syl]
	[f/]比平时早一点早啊、今天累了吗？[lr_]
	[f/ m=s]那么、我也马上睡觉吧。[p_]
[jump/ st=talk/room tg=*night ]

*¥e
[_][close][eval exp="f.system_act=1" ][return_menu]

;;特殊_h
*脱いで
[if exp="f.lust<=100" ][jump/ tg=*non ][endif]
[cm][syl]
[if exp="f.d_dress[1]=='non' && f.lust<=500" ][eval exp="f.last_act='c_脱いで/もう脱いでる'" ]
	[f/ e=p]已经没穿衣服了啊…。[p_][jump/ tg=*end_talk ]
[elsif exp="f.d_dress[1]=='non' && f.under_p==0 && f.d_dress[1]==0" ][eval exp="f.last_act='c_脱いで/もう脱いでる'" ]
	[f/ e=p]说是这样、但是已经脱了呀…？[p_]
[jump/ tg=*end_talk ][endif]

[if exp="f.lust<=400" ][eval exp="f.d_dress[1]='non',f.d_dress[2]='non',f.d_dress[4]='xxx',f.d_dress[5]='single',f.d_dress[6]='single'" ]
	[f/ e=p]现在吗？[lr_]
	[f/ e=cp]是的…我知道了。[p_]
	[combine_dress_code][set_black][chara_part name=sit dress=00.png sleeve=00.png sleeve_b=00.png allow_storage=true ]
	[wait time=300][hide_black]
	…。[lr_]
	[f/ e=p]所以…接下来呢？[p_]
[elsif exp="f.lust<=2000" ]
	[f/ e=p]…好。[lr_]
	[eval exp="f.d_dress[1]='non',f.d_dress[2]='non',f.d_dress[4]='xxx',f.d_dress[5]='single',f.d_dress[6]='single'" ]
	[eval exp="f.d_under_b[1]='non',f.d_under_b[2]=0,f.d_under_b[4]='xxx',f.d_under_b[5]='single',f.d_under_b[6]='single'" ]
	[eval exp="f.d_under_p[1]='non',f.d_under_p[2]=0,f.d_under_p[4]='xxx',f.d_under_p[5]='single',f.d_under_p[6]='single'" ]
	[combine_dress_code][combine_under_b_code][set_black]
	[chara_part name=sit dress=00.png sleeve=00.png sleeve_b=00.png under_p=00.png under_b=00.png allow_storage=true ]
	[wait time=300][hide_black]
	[f/ e=c m=n]…。[lr_]
	[f/ e=l m=s]要脱掉吗、[name]？[p_]
[else]
	[f/ e=l]…好♡[lr_]
	[eval exp="f.d_dress[1]='non',f.d_dress[2]='non',f.d_dress[6]='single'" ]
	[eval exp="f.d_under_b[1]='non',f.d_under_b[6]='single',"f.d_under_p[1]='non',f.d_under_p[6]='single'" ]
	[eval exp="f.d_under_b[1]='non',f.d_under_b[2]=0,f.d_under_b[4]='xxx',f.d_under_b[5]='single',f.d_under_b[6]='single'" ]
	[eval exp="f.d_under_p[1]='non',f.d_under_p[2]=0,f.d_under_p[4]='xxx',f.d_under_p[5]='single',f.d_under_p[6]='single'" ]
	[combine_dress_code][combine_under_b_code][set_black]
	[chara_part name=sit dress=00.png sleeve=00.png sleeve_b=00.png under_p=00.png under_b=00.png allow_storage=true ]
	[wait time=300][hide_black]
	[f/ e=c m=n]…。[lr_]
	[f/ y=c e=hl m=s]我脱了…[name_h]♡[p_]
[endif][eval exp="f.last_act='c_脱いで/はい'" ][add_lust_act][jump/ tg=*end_talk ]

*セックス
[if exp="f.lust<=100" ][jump/ tg=*non ][endif]
[cm][syl]
[if exp="f.act>=4" ][jump/ st=H/Hx_set tg=*bed ][endif]
[if exp="f.lust<=500" ]
	[f/ e=p]哎、现在开始吗？[lr_]
	[f/re]天还没黑…。[p_]
	[f/ e=cp]不、不讨厌呦。[lr_]
	[f/ e=p m=s]那卧室…。[p_]
	[jump/ st=H/Hx_set tg=*bed ]
[else]
	[f/ e=p]这个时间开始吗？[p_]
	[f/ e=p m=s]不、没关系的。[lr_]
	[f/ e=hp m=s]什么时候、都能准备的♡[p_]
	[jump/ st=H/Hx_set tg=*bed ]
[endif]

*淫語を教える
[cm][jump/ st=sys/system tg=*h_word ]


;;オリジナル衣装ボタン
*original_dress
[_][if exp="f.ori_c==1" ][eval exp="f.ori_c=0" ]（原創服裝按鈕關閉）[p_]
[else][eval exp="f.ori_c=1" ]（原創服裝按鈕開啟）[p_][endif]
[eval exp="f.system_act=1" ][return_menu]


;;会話返答
*偉い/何かした？>仕事
[cm][syl]
[random n=2][eval exp="f.last_act='c_偉い/何かした？>仕事'" ]
	[f/]工作啊？[p_]
[if exp="tf.r==1" ]
	[f/ m=s]但是、还没做什么像样的事情出来、[r]
	我决定要成为和[name]一样厉害的人。[p_]
[else]
	[f/ m=s]我有在某种程度上给[name]派上用场。[lr_]
	[f/ e=s m=s]工作什么的只不过是一种形式、但是能多少的派上用场倒是很开心。[p_]
[endif][jump/ tg=*end_talk ]

*家事
[if exp="f.last_act=='c_偉い/何かした？'" ][jump/ tg=*偉い/何かした？>家事 ][endif]
[jump/ tg=*non ]
*偉い/何かした？>家事
[cm][syl][random n=2]
	[f/]家务这些吗？[p_]
[if exp="tf.r==1" ][eval exp="f.last_act='c_偉い/何かした？>家事'" ]
	[f/ m=s]能多少的减轻[name]的负担就好了…。[lr_]
	[f/ e=s m=s]其它时候有什么帮忙以外的事情也可以请叫我。[p_]
[else][eval exp="f.last_act='c_偉い/何かした？>家事'" ]
	[f/ e=c]我想我现有比较能派上用场了…。[lr_]
	[f/]最有进步的就是做菜吧。[p_]
	[f/ m=s]如果能做出各种各样美味的饭菜的话…[lr_]
	[f/ e=sp m=s]那时就可以被夸奖了吧？[p_]
[endif][jump/ tg=*end_talk ]

*偉い/何かした？>可愛い
[cm][syl][random n=2]
	[f/]哎…？[lr_]
[if exp="tf.r==1" ][eval exp="f.last_act='c_偉い/何かした？>可愛い'" ]
	[f/ y=c m=s]这是在、夸奖我吗？[lr_]
	[f/ y=c e=s m=s ]好高兴、都不知道应该怎么回答了…。[p_]
[else][eval exp="f.last_act='c_偉い/何かした？>可愛い'" ]
	[f/]有这种事情吗？[lr_]
	[f/ e=s m=s]…我非常不理解、不过[name]高兴的话我也跟着高兴就是了。[p_]
[endif][jump/ tg=*end_talk ]


*どういたしまして
[if exp="f.last_act=='c_ありがとう/ありがとう'" ][jump/ tg=*ありがとう/ありがとう>どういたしまして ][endif]
[if exp="f.last_act=='c_幸せ？/ありがとう'" ][jump/ tg=*ありがとう/ありがとう>どういたしまして ][endif]
[jump/ tg=*non ]

*ありがとう/ありがとう>どういたしまして
[cm][syl][eval exp="f.last_act='c_ありがとう/ありがとう>どういたしまして'" ]
	[f/ m=s]嗯。谢谢。[lr_]
	[f/ e=c m=s]真的…。[p_]
[jump/ tg=*end_talk ]

*出来てる
[if exp="f.last_act=='c_ありがとう/出来てるかな'" ][jump/ tg=*ありがとう/出来てるかな>出来てる ][endif]
[jump/ tg=*non ]
*ありがとう/出来てるかな>出来てる
[cm][syl][random n=2][eval exp="f.last_act='c_ありがとう/出来てるかな>出来てる'" ]
	[f/ m=s]是这样的吗？[lr_]
[if exp="tf.r==1" ]
	[f/re]但是、不过和[name]在一起的话我会做得更好的。[p_]
	[f/ e=sp m=s]所以还是要感谢[name]才对…。[p_]
[else]
	[f/re]我拼命努力的理由是因为想让[name]高兴[lr_]
	[f/ e=s m=s]既然你高兴的话我就高兴了。[p_]
[endif][jump/ tg=*end_talk ]

*お願い
[if exp="f.last_act=='c_助かってる/これからも'" ][jump/ tg=*助かる/これからも>期待してる ][endif]
[jump/ tg=*non ]

*期待してる
[if exp="f.last_act=='c_助かってる/これからも'" ][jump/ tg=*助かる/これからも>期待してる ][endif]
[jump/ tg=*non ]

*助かる/これからも>期待してる
[cm][syl][random n=2][eval exp="f.last_act='c_助かる/これからも>期待してる'" ]
[if exp="tf.r==1" ]
	[f/ e=s m=s]没问题、请交给我吧。[lr_]
	[f/ m=s][name]不管想让我做什么我都会做的。[p_]
[else]
	[f/ m=s]好、请期待吧。[lr_]
	[f/ e=s m=s]我一定会努力完成[name]的任务的。[p_]
[endif][jump/ tg=*end_talk ]

*もう十分
[if exp="f.last_act=='c_助かってる/これからも' || f.last_act=='c_助かってる/もっと頑張る'" ][jump/ tg=*助かる/これからも>十分 ][endif]
[jump/ tg=*non ]
*助かる/これからも>十分
[cm][syl][random n=2][eval exp="f.last_act='c_助かる/これからも>十分'" ]
	[f/]是这样的吗？[p_]
[if exp="tf.r==1" ]
	[f/ e=c]…不。这没什么的。[lr_]
	[f/ m=s]我想我还可以做得更好。[p_]
[else]
	[f/ m=s]不、我还应该更努力的。[lr_]
	[f/re]因为这还不足以让[name]迷上我。[p_]
[endif][jump/ tg=*end_talk ]

;*助かる/これからも>ありがとう
[cm][syl][jump/ tg=*non ]
;[if exp="f.last_act=='c_助かってる/これからも' || f.last_act=='c_助かってる/もっと頑張る'" ][else][jump/ tg=*non ][endif]
;[eval exp="f.last_act='c_'" ][random n=2]
;[if exp="tf.r==1" ]
;[else]
;[endif][jump/ tg=*end_talk ]

*良かった
[if exp="f.last_act=='c_楽しい？/はい'" ][jump/ tg=*楽しい？/はい>良かった ][endif]
[if exp="f.last_act=='c_幸せ？/ありがとう' || f.last_act=='c_幸せ？/一緒だから'" ][jump/ tg=*幸せ？/はい>良かった ][endif]
[if exp="f.last_act=='c_元気？/はい'" ][jump/ tg=*元気？/はい>良かった ][endif]
[if exp="f.last_act=='c_無理してない？/はい'" ][jump/ tg=*無理してない？/はい>良かった ][endif]
[jump/ tg=*non ]

*楽しい？/はい>良かった
[cm][syl][jump/ tg=*non ]
;[eval exp="f.last_act='c_'" ][random n=2]
;[if exp="tf.r==1" ]
;[else]
;[endif][jump/ tg=*end_talk ]

*無理してない？/はい>良かった
[cm][syl][random n=2][eval exp="f.last_act='c_無理してない？/はい>良かった'" ]
[if exp="tf.r==1" ]
	[f/ m=s]我觉得体力比以前要好了、所以这个可以不要担心了没关系的。[lr_]
	[f/ e=s m=s]虽然我很高兴[name]怎么的在乎我。[p_]
[else]
	[f/ m=s]虽然偶尔看起来有些累但不是真的是这样子、[r]
	只不过是太高兴了有些紧张而已不需要担心。[p_]
[endif][jump/ tg=*end_talk ]

*幸せ？/はい>良かった
[cm][syl]
[jump/ tg=*non ]
;[eval exp="f.last_act='c_'" ][random n=2]
;[if exp="tf.r==1" ]
;[else]
;[endif][jump/ tg=*end_talk ]

*こっちも楽しい
[if exp="f.last_act=='c_楽しい？/はい'" ][jump/ tg=*楽しい？/はい>こっちも楽しい ][endif]
[jump/ tg=*non ]
*楽しい？/はい>こっちも楽しい
[cm][syl][random n=2][eval exp="f.last_act='c_楽しい？/はい>こっちも楽しい'" ]
[if exp="tf.r==1" ]
	[f/ m=s]这样啊？[lr_]
	[f/ e=s m=s]和[name]在一起的时候我都觉得非常快乐幸福。[p_]
[else]
	[f/ m=s]那就好。[p_]
	[f/ e=c]我还在担心[name]的温柔是不是勉强出来给我的[lr_]
	[f/ e=s m=s]你这样说我就安心了。[p_]
[endif][jump/ tg=*end_talk ]

*楽しい？/はい>嬉しい
[cm][syl][jump/ tg=*non ]
;[eval exp="f.last_act='c_'" ][random n=2]
;[if exp="tf.r==1" ]
;[else]
;[endif][jump/ tg=*end_talk ]


*幸せ？/はい>こっちも幸せ
;[cm][syl][jump/ tg=*non ]
;[eval exp="f.last_act='c_'" ][random n=2]
;[if exp="tf.r==1" ]
;[else]
;[endif][jump/ tg=*end_talk ]

*幸せ？/はい/ありがとう>どういたしまして
;[cm][syl][jump/ tg=*non ]
;[eval exp="f.last_act='c_'" ][random n=2]
;[if exp="tf.r==1" ]
;[else]
;[endif]
;[jump/ tg=*end_talk ]

*こちらこそ
[if exp="f.last_act=='c_幸せ？/ありがとう'" ][jump/ tg=*幸せ？/ありがとう>こちらこそ ][endif]
[jump/ tg=*non ]
*幸せ？/ありがとう>こちらこそ
[cm][syl][eval exp="f.last_act='c_幸せ？/ありがとう>こちらこそ'" ]
	[f/ e=c m=s]我知道[name]会是这么想的。[p_]
	[f/]所以「不客气」是正确的回答…、[lr_]
	[f/ e=s m=s]但是还是要再一次的说一句「谢谢你」、[name]。[p_]
[jump/ tg=*end_talk ]

*大丈夫
*安心して
[if exp="f.last_act=='c_ありがとう/出来てるかな'" ][jump/ tg=*ありがとう/出来てるかな>大丈夫 ][endif]
[if exp="f.last_act=='c_幸せ？/怖いぐらい'" ][jump/ tg=*幸せ？/怖いぐらい>大丈夫 ][endif]
[jump/ tg=*non ]

*幸せ？/怖いぐらい>大丈夫
[eval exp="f.last_act='c_幸せ？/怖いぐらい>大丈夫'" ]
[if exp="f.love>=1500" ][jump/ tg=*幸せ？/怖いぐらい>大丈夫b ][endif]
[cm][syl]
	[f/ m=s]…是的、是这样的。[lr_]
	[f/ e=s m=s]有[name]在、没什么事情是可怕的。[p_]
[jump/ tg=*end_talk ]
*幸せ？/怖いぐらい>大丈夫b
[cm][syl][random n=2]
[if exp="tf.r==1" ]
	[f/ m=s]是的。非常感谢。[p_]
	[f/re]不管何等深刻的事情都被遗忘了。[lr_]
	[f/ e=s m=s]因为有[name]在、任何事情都不再可怕了。[p_]
[else]
	[f/ m=s]是这样的。[lr_]
	[f/ e=s m=s]因为有[name]在、就没什么好害怕的了。[p_]
[endif][jump/ tg=*end_talk ]

;幸せ？>怖いぐらい>慣れるよ
*慣れるよ
[if exp="f.last_act=='c_幸せ？/怖いぐらい'" ][jump/ tg=*幸せ？/怖いぐらい>慣れるよ ][endif]
[jump/ tg=*non ]
*幸せ？/怖いぐらい>慣れるよ
[cm][syl][random n=2][eval exp="f.last_act='c_幸せ？/怖いぐらい>慣れるよ'" ]
[if exp="tf.r==1" ]
	[f/]这个吗？[lr_]
	[f/ e=c]可以说是…比较习惯了吧。[p_]
[else]
	[f/ y=c e=c]习惯了这里又会觉得以前习惯的地方非常恐怖。[p_]
	[f/ y=c]…啊、对不起、[lr_]
	[f/ m=s]总是在考虑过去不太好。[p_]
[endif][jump/ tg=*end_talk ]

*思いついたら言って
[if exp="f.last_act=='c_欲しいもの/特に'" ][jump/ tg=*欲しいもの/特に>思いついたら ][endif]
[jump/ tg=*non ]
*欲しいもの/特に>思いついたら
[cm][syl][random n=2][eval exp="f.last_act='c_欲しいもの/特に>思いついたら'" ]
	[f/ m=s]那好吧。[p_]
	[f/ e=c]但是、睡觉的地方也好吃的饭也好、连衣服都是顶级的了…[lr_]
	[f/ y=c]现在真的是想不出来其它想要的东西了…。[p_]
[jump/ tg=*end_talk ]

*欲しいもの/ぎゅって>する
[cm][syl][random n=3][eval exp="f.last_act='c_欲しいもの/ぎゅって>する'" ]
[_][f/ m=sn]（拥抱希尔薇[p_]
[if exp="tf.r==1" ]
	[f/ e=s m=s]呼呼…♡[lr_]
	[f/ e=p m=s]非常谢谢、[name]♡[p_]
[elsif exp="tf.r==2" ]
	[f/ e=p m=s][name]♡[lr_]
	[f/ e=sp m=s]这就是我最想要的♡[p_]
[else]
	[f/ e=cp]嗯…[lr_]
	[f/ e=p m=s]就是这样、这样做我最幸福了…♡[p_]
[endif][jump/ tg=*end_talk ]

*そうじゃない
*違う
[if exp="f.last_act=='c_欲しいもの/ぎゅって'" ][jump/ tg=*欲しいもの/ぎゅって>違う ][endif]
[jump/ tg=*non ]
*欲しいもの/ぎゅって>違う
[cm][syl][eval exp="f.last_act='c_欲しいもの/ぎゅって>違う'" ]
	[f/ e=c]嗯、现在没什么想要的。[lr_]
	[f/ m=s]我现在的愿望就是和[name]永远在一起。[p_]
[jump/ tg=*end_talk ]


;;end
*non
[_][eval exp="f.system_act=1" ][return_menu]

*end_talk
[_][eval exp="f.communicate_c=f.communicate_c+1" ]
[eval exp="f.daily_communicate=f.daily_communicate+1" ]

[if exp="f.daily_communicate==3" ][eval exp="f.daily_communicate=0" ]
[eval exp="f.daily_talk=f.daily_talk+1" ][endif]
[if exp="f.communicate_c>=3" ][eval exp="f.communicate_c=0" ][eval exp="f.act=f.act+1" ][endif]
[if exp="f.last_act=='c_woman'" ][eval exp="f.jealous=f.jealous+1" ][else][eval exp="f.jealous=0" ][endif]

[if exp="tf.last_act_tf=='sel_comu'" ][eval exp="tf.last_act_tf=0" ][set_time][jump/ st=talk/c_words tg=*select_commu ]
[else][return_menu][endif]

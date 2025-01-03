;;選択式コミュ
*jump_to_conv
[cm][free_tx][jump/ st=talk/c_text tg=1 ]

*end_talk
[_][eval exp="f.act.system=1" ][eval exp="f.act.last_tf=0" ][return_menu]

;;選択肢
*select_commu
[cm]
;[hide_role]
[eval exp="tf.page=1" ][eval exp="f.act.last_tf='sel_comu'" ][c_mod n=win st=room/commu ][_]

*select_menu
[cm][free_tx]
[xy x=1039 y=91 x_add=52 tg2='select_commu' tg3='select_menu' preg2='menu/communicate/tab/' ][btn/xy]
[btn/ l=x tg=2 g=2 gr=like sw=tab.commu swm=like exp="f.tab.commu='like'" ]
[btn/ l=x tg=2 g=2 gr=hi sw=tab.commu swm=hi exp="f.tab.commu='hi'" ]
[btn/ l=x tg=2 g=2 gr=want sw=tab.commu swm=want exp="f.tab.commu='want'" ]
[btn/ l=x tg=2 g=2 gr=sylvie sw=tab.commu swm=sylvie exp="f.tab.commu='sylvie'" ]
[btn/ l=x tg=2 g=2 gr=ask sw=tab.commu swm=ask exp="f.tab.commu='ask'" ]
[btn/ l=x tg=2 g=2 gr=action sw=tab.commu swm=action exp="f.tab.commu='action'" ]
[btn/ l=x tg=2 g=2 gr=negative sw=tab.commu swm=negative exp="f.tab.commu='negative'" ]
[btn/ l=x tg=2 g=2 gr=other sw=tab.commu swm=other exp="f.tab.commu='other'" ]
[eval exp="f.x.bace-=20" ]

[btn/ l=x tg=2 g=2 gr=command sw=tab.commu swm=command exp="f.tab.commu='command'" ]
[btn/ tg=2 g=2 gr=lust sw=tab.commu swm=lust exp="f.tab.commu='lust'" cond="f.x_count.sex>=1"]
[btn/ tg=*end_talk gr=menu/room/bace/back x=1459 y=673 ]

[eval exp="tf.list_n=0" ]
[xy x=891 y=139 y_add=65 ][btn/xy][eval exp="f.preg[1]='menu/communicate/'+ f.tab.commu +'/'" ]
;好意
[if exp="f.tab.commu=='like'" ]
	[btn/commu gr=like_u exp="f.tg[1]='好き'" ]
	[btn/commu gr=love_u exp="f.tg[1]='愛してる'" cond="f.state.love>=1500" ]
	[btn/commu gr=helpful exp="f.tg[1]='助かってる'" ][btn/commu gr=thank_u exp="f.tg[1]='ありがとう'" ]
	[btn/commu gr=grad exp="f.tg[1]='嬉しい'" ][btn/commu gr=joy exp="f.tg[1]='楽しい'" ]
	[btn/commu gr=happy exp="f.tg[1]='幸せ'" ]
;挨拶
[elsif exp="f.tab.commu=='hi'" ]
	[btn/commu gr=morning exp="f.tg[1]='おはよう'" ][btn/commu gr=hi exp="f.tg[1]='こんにちは'" ]
	[btn/commu gr=evening exp="f.tg[1]='こんばんわ'" ][btn/commu gr=gj exp="f.tg[1]='お疲れ様'" ]
;要望
[elsif exp="f.tab.commu=='want'" ]
	[btn/commu gr=smile exp="f.tg[1]='笑って'" ][btn/commu gr=hug_me exp="f.tg[1]='抱きしめて'" ]
;	[btn/commu gr=care_me exp="f.tg[1]='慰めて'" ]
	[btn/commu gr=come exp="f.tg[1]='こっちきて'" ][btn/commu gr=cheer exp="f.tg[1]='応援して'" ]
	[btn/commu gr=let_me_pat exp="f.tg[1]='撫でていい？'" ][btn/commu gr=hold_hand exp="f.tg[1]='手握って'" ]
	[btn/commu gr=want_hug exp="f.tg[1]='抱きしめたい'" ][btn/commu gr=kiss_me exp="f.tg[1]='キスして'" cond="f.x_count.sex>=1" ]
;評価
[elsif exp="f.tab.commu=='sylvie'" ]
	[btn/commu gr=cute exp="f.tg[1]='可愛い'" ][btn/commu gr=beautiful exp="f.tg[1]='綺麗'" ]
	[btn/commu gr=small exp="f.tg[1]='ちっちゃい'" ][btn/commu gr=cute_smile exp="f.tg[1]='笑顔がかわいい'" ]
	[btn/commu gr=gg exp="f.tg[1]='偉い'" ][btn/commu gr=kind exp="f.tg[1]='優しいね'" ]
	[btn/commu gr=flat exp="f.tg[1]='貧乳'" ][btn/commu gr=angel exp="f.tg[1]='天使'" ]
;問い
[elsif exp="f.tab.commu=='ask'" ]
	[btn/commu gr=enjoy exp="f.tg[1]='楽しい？'" ][btn/commu gr=happy exp="f.tg[1]='幸せ？'" ]
	[btn/commu gr=healthy exp="f.tg[1]='元気？'" ][btn/commu gr=ok exp="f.tg[1]='大丈夫？'" ]
	[btn/commu gr=want exp="f.tg[1]='欲しいものある？'" ][btn/commu gr=pain exp="f.tg[1]='痛くない？'" ]
;弱音
[elsif exp="f.tab.commu=='negative'" ]
	[btn/commu gr=hungry exp="f.tg[1]='お腹すいた'" ][btn/commu gr=sleepy exp="f.tg[1]='眠い'" ]
;	[btn/commu gr=tired exp="f.tg[1]='疲れた'" ]
	[btn/commu gr=help exp="f.tg[1]='助けて'" ][btn/commu gr=sorry exp="f.tg[1]='ごめん'" ]
;行動
[elsif exp="f.tab.commu=='action'" ]
	[btn/commu gr=stare exp="f.tg[1]='じー'" ]
;その他	
[elsif exp="f.tab.commu=='other'" ]
	[btn/commu gr=sylvie exp="f.tg[1]='シルヴィ'" ]
	[btn/commu gr=ferrum exp="f.tg[1]='フェルム'" cond="f.sub_chara.Ferr>=1" ]
	[btn/commu gr=aurelia exp="f.tg[1]='オーレリア'" cond="f.sub_chara.Aur>=1" ]
	[btn/commu gr=nephy exp="f.tg[1]='ネフィー'" cond="f.sub_chara.Neph>=1" ]
	[btn/commu gr=cook exp="f.tg[1]='料理'" ]
	[btn/commu gr=scar exp="f.tg[1]='傷跡'" ]
;特殊
[elsif exp="f.tab.commu=='command'" ][eval exp="f.act.last_tf=0" ]
	[btn/commu gr=dress exp="f.tg[1]='着替えて'" ]
	[btn/commu gr=change_call exp="f.tg[1]='呼び名を変えて'" ]
	[if exp="f.got_dress1.nurse==1 && f.daily.work==0 && f.act.time<=4" ][btn/commu gr=work exp="f.tg[1]='仕事をしよう'" ][endif]
	[if exp="f.act.time>=3 && f.act.time<=4 && f.daily.tea==0" ][btn/commu gr=tea exp="f.tg[1]='お茶にしよう'" ][endif]
	[if exp="f.act.time==6 && f.item.p_wine>=1" ][btn/commu gr=wine exp="f.tg[1]='お酒を飲もう'" ][endif]
	[if exp="f.act.time<=4 && (f.daily.out==0 || f.daily.out=='syl')" ]
	[btn/commu gr=go_out exp="f.tg[1]='出かけよう'" ][btn/commu gr=go_out_alone exp="f.tg[1]='出かけてくる'" ][endif]
;	[if exp="f.act.time>=5 && f.state.step>=6 && f.state.love>=200 && (f.daily.out==0 || f.daily.out=='syl')" ]
;	[btn/commu gr=go_out_alone exp="f.tg[1]='出かけてくる'" ][endif]
	[if exp="f.act.time>=5" ][btn/commu gr=good_night exp="f.tg[1]='おやすみ'" ][endif]
;H
[elsif exp="f.tab.commu=='lust'" ]
	[if exp="f.state.lust>=100" ][btn/commu gr=sex exp="f.tg[1]='セックス'" ][endif]
	[if exp="f.state.lust>=300" ][btn/commu gr=ero exp="f.tg[1]='えろい'" ][endif]
	[if exp="f.state.lust>=100" ][btn/commu gr=strip exp="f.tg[1]='脱いで'" ][endif]
	[btn/commu gr=h_word exp="f.tg[1]='淫語を教える'" ]
[endif]

[tx_img tx2='/2' n=tf.page x=1185 y=464 s=25 cond="tf.list_n>=6" ]
[xy y=465]
[btn/ tg=3 g=2 gr=next x=1262 exp="tf.page=2" cond="tf.page==1 && tf.list_n>=6" ]
[btn/ tg=3 g=2 gr=back x=937 exp="tf.page=1" cond="tf.page==2"]
[s]

;;返答
[xy y=520 preg1='menu/communicate/react/' ][btn/xy]
[eval exp="tf.list_n=0" ]

[if exp="f.act.last=='c_助かってる/これからも' || f.act.last=='c_助かってる/もっと頑張る'" ]
;	[btn/commu gr=help-thanku exp="f.tg[1]='助かる/これからも>ありがとう*'" ]【ありがとう】
	[btn/commu gr=help-enough exp="f.tg[1]='*助かる/これからも>十分'" ][endif]
[if exp="f.act.last=='c_助かってる/これからも'" ]
	[btn/commu gr=help-expect exp="f.tg[1]='*助かる/これからも>期待してる'" ][endif]
[if exp="f.act.last=='c_ありがとう/ありがとう'" ]
	[btn/commu gr=thanku-uwelcome exp="f.tg[1]='*ありがとう/ありがとう>どういたしまして'" ][endif]
[if exp="f.act.last=='c_ありがとう/出来てるかな'" ]
	[btn/commu gr=thanku-gj exp="f.tg[1]='*ありがとう/出来てるかな>出来てる'" ]
;	[btn/commu gr=thanku-ok exp="f.tg[1]='*ありがとう/出来てるかな>大丈夫'" ]
[endif]
[if exp="f.act.last=='c_偉い/何かした？'" ]
	[btn/commu gr=gg-job exp="f.tg[1]='*偉い/何かした？>仕事'" ]
	[btn/commu gr=gg-cute exp="f.tg[1]='*偉い/何かした？>可愛い'" ]
	[btn/commu gr=gg-housej exp="f.tg[1]='*偉い/何かした？>家事'" ][endif]
[if exp="f.act.last=='c_欲しいもの/ぎゅって'" ]
	[btn/commu gr=want-not exp="f.tg[1]='*欲しいもの/ぎゅって>違う'" ]
	[btn/commu gr=want-hug exp="f.tg[1]='*欲しいもの/ぎゅって>する'" ][endif]
[if exp="f.act.last=='c_欲しいもの/特に'" ]
	[btn/commu gr=want-think exp="f.tg[1]='*欲しいもの/特に>思いついたら'" ][endif]
[if exp="f.act.last=='c_楽しい？/はい'" ]
;	[btn/commu gr=joy-grad exp="f.tg[1]='*楽しい？/はい>嬉しい'" ]
;	[btn/commu gr=joy-nice exp="f.tg[1]='*楽しい？/はい>良かった'" ]
	[btn/commu gr=joy-me2 exp="f.tg[1]='*楽しい？/はい>こっちも楽しい'" ][endif]
[if exp="f.act.last=='c_幸せ？/ありがとう'" ]
	[btn/commu gr=thanku-uwelcome exp="f.tg[1]='*ありがとう/ありがとう>どういたしまして'" ]
	[btn/commu gr=happy-me2 exp="f.tg[1]='*幸せ？/ありがとう>こちらこそ'" ][endif]
;[if exp="f.act.last=='c_幸せ？/ありがとう' || f.act.last=='c_幸せ？/一緒だから'" ]
;	[btn/commu gr=happy-grad exp="f.tg[1]='*幸せ？/はい>良かった'" ][endif]
[if exp="f.act.last=='c_幸せ？/怖いぐらい'" ]
	[btn/commu gr=happy-ok exp="f.tg[1]='*幸せ？/怖いぐらい>大丈夫'" ]
	[btn/commu gr=happy-willbe exp="f.tg[1]='*幸せ？/怖いぐらい>慣れるよ'" ][endif]
;[if exp="f.act.last=='c_元気？/はい'" ]
;	[btn/commu gr=healthy-nice exp="f.tg[1]='*元気？/はい>良かった'" ][endif]
[if exp="f.act.last=='c_無理してない？/はい'" ]
	[btn/commu gr=ok-nice exp="f.tg[1]='*無理してない？/はい>良かった'" ][endif]
[if exp="f.act.last=='c_嫉妬'" ]
	[btn/commu gr=jealous-sorry exp="f.tg[1]='*嫉妬>ごめん'" ][endif]
[if exp="f.act.last=='c_嫉妬' && f.state.love>=1500 && f.x_count.sex>=1" ]
	[btn/commu gr=jealous-loveu exp="f.tg[1]='*嫉妬>愛してる'" ][endif]
[s]

;;文字ブレ統一
*talk
[commit][cm][if exp="f.t_love>=1" ][else][eval exp="f.t_love=0" ][endif]
;[eval exp="tf.r=tf.c_word" ]
[clearvar exp=tf.tx]
[iscript]
tx = tf.c_word
if(~tx.indexOf('？')){tf.ty='ask';}else{tf.ty='say';}

;;ブレ統一/好意
if(tf.ty=='say'){
	if(~tx.indexOf('好き'))
		{tf.tx='好き';}
	if(~tx.indexOf('愛してる') || ~tx.indexOf('あいしてる') || ~tx.indexOf('I love you'))
		{tf.tx='愛してる'}
	if(~tx.indexOf('ありがと'))
		{tf.tx='ありがとう';}
	if(~tx.indexOf('助かって') || ~tx.indexOf('助かる') || ~tx.indexOf('たすかる') || ~tx.indexOf('たすかって'))
		{tf.tx='助かってる';}
	
;;ブレ統一/感想、感情ポジティブ
	if(~tx.indexOf('嬉しい') || ~tx.indexOf('うれしい'))
		{tf.tx='嬉しい'}
	if(~tx.indexOf('楽しい') || ~tx.indexOf('たのしい'))
		{tf.tx='楽しい'}
	if(~tx.indexOf('幸せ') || ~tx.indexOf('しあわせ'))
		{tf.tx='幸せ'}

;;ブレ統一/ブレ統一/感想、感情ネガティブ
	if((~tx.indexOf('お腹') || ~tx.indexOf('おなか')) && (~tx.indexOf('空いた') || ~tx.indexOf('すいた') || ~tx.indexOf('減った') || ~tx.indexOf('へった')))
		{tf.tx='お腹すいた'}
	if((~tx.indexOf('体調') || ~tx.indexOf('気分') || ~tx.indexOf('具合') || ~tx.indexOf('ぐあい')) && (~tx.indexOf('悪い') || ~tx.indexOf('わるい')))
		{tf.tx='体調が悪い'}
	if(~tx.indexOf('だるい') || ~tx.indexOf('疲れ') || ~tx.indexOf('つかれた'))
		{tf.tx='体調が悪い'}
	if(~tx.indexOf('眠た') || ~tx.indexOf('眠い') || ~tx.indexOf('ねむい') || ~tx.indexOf('ねむみ'))
		{tf.tx='眠い'}
	if(~tx.indexOf('ごめん'))
		{tf.tx='ごめん'}
;[elsif exp="tf.r=='寒い' || tf.r=='さむい'" ]
;	[eval exp="tf.c_word='cold" ]


;;ブレ統一/感想、シルヴィ
	if(~tx.indexOf('貧乳') || ~tx.indexOf('つるぺた') || ~tx.indexOf('ぺちゃぱい'))
		{tf.tx='貧乳'}
	if((~tx.indexOf('胸') || ~tx.indexOf('むね') || ~tx.indexOf('おっぱい')) && (~tx.indexOf('小さい') || ~tx.indexOf('平たい') || ~tx.indexOf('ちっちゃい')))
		{tf.tx='貧乳'}
	if(~tx.indexOf('ちっちゃい') || ~tx.indexOf('小柄') || ~tx.indexOf('小さい') || ~tx.indexOf('ちいさい') || ~tx.indexOf('チビ'))
		{tf.tx='ちっちゃい'}
	if((~tx.indexOf('笑顔') || ~tx.indexOf('えがお')) && (~tx.indexOf('かわいい') || ~tx.indexOf('可愛い')))
		{tf.tx='笑顔がかわいい'}
	if(~tx.indexOf('可愛い') || ~tx.indexOf('カワイイ') || ~tx.indexOf('かわいい') || ~tx.indexOf('めんこい'))
		{tf.tx='可愛い'}
	if(~tx.indexOf('綺麗') || ~tx.indexOf('美人') || ~tx.indexOf('キレイ'))
		{tf.tx='綺麗'}
	if(~tx.indexOf('偉い') || ~tx.indexOf('えらい'))
		{tf.tx='偉い'}
	if(~tx.indexOf('えろい') || ~tx.indexOf('エロい') || ~tx.indexOf('すけべ') || ~tx.indexOf('変態') || ~tx.indexOf('やらしい'))
		{tf.tx='えろい'}
	if(~tx.indexOf('優しい') || ~tx.indexOf('やさしい'))
		{tf.tx='優しいね'}
	if(~tx.indexOf('天使') || ~tx.indexOf('女神'))
		{tf.tx='天使'}
;[elsif exp="tf.r=='サキュバス' || tf.r=='淫魔'" ]
;	[eval exp="tf.c_word='サキュバス" ]

;;ブレ統一/甘える
	if(~tx.indexOf('助けて') || ~tx.indexOf('たすけて') || ~tx.indexOf('慰めて') || ~tx.indexOf('なぐさめて'))
		{tf.tx='助けて'}
	if((~tx.indexOf('応援') || ~tx.indexOf('おうえん')) && ~tx.indexOf('して'))
		{tf.tx='応援して'}
	if(~tx.indexOf('撫でて') || ~tx.indexOf('なでて'))
		{tf.tx='撫でて'}
;[elsif exp="tf.r=='甘えたい' || tf.r=='あまえたい'" ]
;[elsif exp="tf.r=='寂しい' || tf.r=='さびしい' || tf.r=='さみしい'" ]
;	[eval exp="tf.c_word='寂しい" ]
;[elsif exp="tf.r=='眠れない' || tf.r=='ねれない' || tf.r=='ねむれねない'" ]
;	[eval exp="tf.c_word='眠れない" ]


;;ブレ統一/要求
	if((~tx.indexOf('笑って') || ~tx.indexOf('わらって')) || ((~tx.indexOf('笑顔') || ~tx.indexOf('えがお')) && (~tx.indexOf('見せて') || ~tx.indexOf('みせて'))))
		{tf.tx='笑って'}
	if(~tx.indexOf('抱きしめて') || ~tx.indexOf('だきしめて') || ~tx.indexOf('くっついて'))
		{tf.tx='抱きしめて'}
	if((~tx.indexOf('こっち') || ~tx.indexOf('近く') || ~tx.indexOf('そば')) && (~tx.indexOf('来て') || ~tx.indexOf('きて') || ~tx.indexOf('おいで')))
		{tf.tx='こっちきて'}
	if((~tx.indexOf('キス') || ~tx.indexOf('チュー') || ~tx.indexOf('ちゅー')) && ~tx.indexOf('して'))
		{tf.tx='キスして'}
	if((~tx.indexOf('そばに') || ~tx.indexOf('一緒に') || ~tx.indexOf('いっしょに')) && (~tx.indexOf('いて') || ~tx.indexOf('いよう') || ~tx.indexOf('居')))
		{tf.tx='そばにいて'}
;[elsif exp="tf.r=='胸触らせて' || tf.r=='胸触りたい' || tf.r=='おっぱい触らせて' || tf.r=='おっぱい触りたい'" ]
;	[eval exp="tf.c_word='胸触らせて" ]
	if(~tx.indexOf('手') && (~tx.indexOf('握って') || ~tx.indexOf('にぎって')))
		{tf.tx='手握って'}

;;ブレ統一/挨拶
	if(~tx.indexOf('おはよ') || ~tx.indexOf('お早う'))
		{tf.tx='おはよう'}
	if(~tx.indexOf('こんばんわ') || ~tx.indexOf('こんばんは'))
		{tf.tx='こんばんわ'}
	if(~tx.indexOf('こんにちは') || ~tx.indexOf('こんにちわ'))
		{tf.tx='こんにちは'}
	if(~tx.indexOf('お疲れ') || ~tx.indexOf('おつかれ'))
		{tf.tx='お疲れ様'}

;;ブレ統一/要望
	if((~tx.indexOf('抱き') || ~tx.indexOf('ギュっ') || ~tx.indexOf('ぎゅっ') || ~tx.indexOf('ぎゅう')) && ~tx.indexOf('たい'))
		{tf.tx='抱きしめたい'}
	if((~tx.indexOf('撫で') || ~tx.indexOf('なで')) && (~tx.indexOf('たい') || ~tx.indexOf('させて')))
		{tf.tx='撫でていい？'}
;[elsif exp="tf.r=='傷触っていい？' || tf.r=='キズ触っていい？' || tf.r=='キズ触らせて' || tf.r=='傷触らせて' || tf.r=='キズを触っていい？' || tf.r=='傷を触っていい？' || tf.r=='キズ触りたい' || tf.r=='傷触りたい'" ]
;	[eval exp="tf.c_word='キズ触らせて" ]
;[elsif exp="tf.r=='いたずらしたい'" ]
;	[eval exp="tf.c_word='いたずらしたい" ]
;[elsif exp="tf.r=='キスしたい' || tf.r=='キスさせて' || tf.r=='チューしたい' || tf.r=='ちゅーしたい'" ]
;	[eval exp="tf.c_word='キスしたい" ]

;;ブレ統一/呼びかけ
	if(~tx.indexOf('シルヴィ') || ~tx.indexOf('ねぇ') || ~tx.indexOf('ねえ'))
		{tf.tx='シルヴィ'}
;[elsif exp="tf.r=='お姉ちゃん' || tf.r=='おねえちゃん' || tf.r=='姉ちゃん'" ]
;	[eval exp="tf.c_word='お姉ちゃん" ]
;[elsif exp="tf.r=='お母さん' || tf.r=='おかあさん' || tf.r=='ママ'" ]
;	[eval exp="tf.c_word='お母さん" ]

;;ブレ統一/行動
	if(~tx.indexOf('見つめ') || ~tx.indexOf('じー') || ~tx.indexOf('眺め') || ~tx.indexOf('観察'))
		{tf.tx='じー'}
;[elsif exp="tf.r=='ぎゅー' || tf.r=='ぎゅっ' || tf.r=='むぎゅー'" ]
;	[eval exp="tf.c_word='ぎゅー" ]
;[elsif exp="tf.r=='キスする' || tf.r=='ちゅっちゅ'" ]
;	[eval exp="tf.c_word='キスする" ]
;;ブレ統一/その他
	if(~tx.indexOf('オーレリア')){tf.tx='オーレリア'}
	if(~tx.indexOf('ネフィー')){tf.tx='ネフィー'}
	if(~tx.indexOf('フェルム')){tf.tx='フェルム'}
;	if(~tx.indexOf('お菓子')){tf.tx='お菓子'}
;	if(~tx.indexOf('パンケーキ')){tf.tx='パンケーキ'}
;	if(~tx.indexOf('チョコケーキ')){tf.tx='チョコケーキ'}
;	if(~tx.indexOf('ロールケーキ')){tf.tx='ロールケーキ'}
;	if(~tx.indexOf('クッキー')){tf.tx='クッキー'}
;	if(~tx.indexOf('アップルパイ')){tf.tx='アップルパイ'}
;	if(~tx.indexOf('フレンチトースト')){tf.tx='フレンチトースト'}
;	if(~tx.indexOf('プリン')){tf.tx='プリン'}
;	if(~tx.indexOf('ブラウニー')){tf.tx='ブラウニー'}
;	if(~tx.indexOf('タルト')){tf.tx='タルト'}
;	if(~tx.indexOf('エクレア')){tf.tx='エクレア'}
;	if(~tx.indexOf('シュークリーム')){tf.tx='シュークリーム'}
;	if(~tx.indexOf('どら焼き') ||~tx.indexOf('どらやき')){tf.tx='どら焼き'}
;	if(~tx.indexOf('ようかん') ||~tx.indexOf('羊羹')){tf.tx='ようかん'}
;	if(~tx.indexOf('ケーキ')){tf.tx='ケーキ'}

;	if(~tx.indexOf('ミートソース')){tf.tx='ミートソース'}
;	if(~tx.indexOf('カルボナーラ')){tf.tx='カルボナーラ'}
;	if(~tx.indexOf('ハンバーグ')){tf.tx='ハンバーグ'}
;	if(~tx.indexOf('ステーキ')){tf.tx='ステーキ'}
;	if(~tx.indexOf('ロールキャベツ')){tf.tx='ロールキャベツ'}
;	if(~tx.indexOf('グラタン')){tf.tx='グラタン'}
;	if(~tx.indexOf('医者')){tf.tx='医者'}

	if(~tx.indexOf('胸') || ~tx.indexOf('おっぱい') || ~tx.indexOf('オッパイ'))
		{tf.tx='おっぱい'}
	if(~tx.indexOf('料理'))
		{tf.tx='料理'}
	if(~tx.indexOf('傷'))
		{tf.tx='傷跡'}
;[elsif exp="tf.r=='ほにゃらら'" ]
;	[eval exp="tf.c_word='honyarara" ]
;[elsif exp="tf.r=='誕生日はいつ？誕生日は？'" ]

;;ブレ統一/特殊
	if(~tx.indexOf('なでなで') || ~tx.indexOf('撫で'))
		{tf.ty='jump', tf.tx='nade'}
;;-------
	if(~tx.indexOf('仕事') && (~tx.indexOf('しよう') || ~tx.indexOf('手伝って') || ~tx.indexOf('てつだって')))
		{tf.tx='仕事をしよう'}
	if(~tx.indexOf('仕事'))
		{tf.tx='仕事'}
;-------	

	if(~tx.indexOf('脱いで') || ~tx.indexOf('裸になって'))
		{tf.tx='脱いで'}
	if(~tx.indexOf('セックス') || ~tx.indexOf('えっち') || ~tx.indexOf('エッチ') || ~tx.indexOf('ベッドへ'))
		{tf.tx='セックス'}
	if(~tx.indexOf('出かけよ') || ~tx.indexOf('外に出') || ~tx.indexOf('外出'))
		{tf.tx='出かけよう'}
	if(~tx.indexOf('お茶'))
		{tf.tx='お茶にしよう'}
	if(~tx.indexOf('おやすみ') || ~tx.indexOf('寝よう'))
		{tf.tx='おやすみ'}
	if(~tx.indexOf('外出する') || ((~tx.indexOf('出かけて') || ~tx.indexOf('行って') || ~tx.indexOf('外出')) && ~tx.indexOf('てくる')))
		{tf.tx='出かけてくる'}
	if((~tx.indexOf('呼び名') || ~tx.indexOf('よび名') || ~tx.indexOf('呼び方')) && (~tx.indexOf('変えて') || ~tx.indexOf('変更')))
		{tf.ty='jump', tf.tx='name_change'}
	if(~tx.indexOf('着替え') || ~tx.indexOf('服変え') || ~tx.indexOf('きがえ'))
		{tf.tx='着替えて'}
	if(~tx.indexOf('\\e') || ~tx.indexOf('¥e') || ~tx.indexOf('えんいー'))
		{tf.tx='¥e'}

}


;;ブレ統一/問いかけ
if(tf.ty=='ask'){
	if(~tx.indexOf('楽しい') || ~tx.indexOf('たのしい'))
		{tf.tx='楽しい？';}
	if(~tx.indexOf('幸せ') || ~tx.indexOf('しあわせ'))
		{tf.tx='幸せ？';}
	if(~tx.indexOf('元気') || ~tx.indexOf('げんき') || ~tx.indexOf('調子'))
		{tf.tx='元気？';}
	if(~tx.indexOf('無理して') || ~tx.indexOf('大丈夫') || ~tx.indexOf('だいじょうぶ'))
		{tf.tx='無理してない？';}
	if((~tx.indexOf('欲しい') || ~tx.indexOf('ほしい')) && (~tx.indexOf('物') || ~tx.indexOf('もの')))
		{tf.tx='欲しいものある？';}
;;ブレ統一/要望
	if((~tx.indexOf('抱き') || ~tx.indexOf('ギュっ')) && ~tx.indexOf('いい'))
		{tf.tx='抱きしめたい'}
	if((~tx.indexOf('撫で') || ~tx.indexOf('なで')) && ~tx.indexOf('いい'))
		{tf.tx='撫でていい？'}
}

;;ブレ統一/会話返答
if(tf.ty=='respond'){
	if(~tx.indexOf('仕事') || ~tx.indexOf('助手') || ~tx.indexOf('看護婦') || ~tx.indexOf('ナース'))
		{tf.tx='仕事をしてる';}
	if(~tx.indexOf('家事') || ~tx.indexOf('家のこと') || ~tx.indexOf('手伝い'))
		{tf.tx='家事';}
	if(~tx.indexOf('可愛い') || ~tx.indexOf('かわいい') || ~tx.indexOf('カワイイ'))
		{tf.tx='可愛い';}
	if(~tx.indexOf('どういたしまして'))
		{tf.tx='どういたしまして';}
	if(~tx.indexOf('できてる') || ~tx.indexOf('出来てる'))
		{tf.tx='出来てる';}

	if(~tx.indexOf('お願い') || ~tx.indexOf('おねがい') || ~tx.indexOf('頼') || ~tx.indexOf('たのんだ') || ~tx.indexOf('たのむ'))
		{tf.tx='お願い';}
	if((~tx.indexOf('期待') || ~tx.indexOf('きたい')) && ~tx.indexOf('してる'))
		{tf.tx='期待してる';}
	if(~tx.indexOf('十分') || ~tx.indexOf('じゅうぶん'))
		{tf.tx='もう十分"';}
	if(~tx.indexOf('よかった') || ~tx.indexOf('良かった'))
		{tf.tx='良かった';}
	if((~tx.indexOf('こっち') || ~tx.indexOf('自分') || ~tx.indexOf('俺') || ~tx.indexOf('私')) && (~tx.indexOf('楽しい') || ~tx.indexOf('たのしい')))
		{tf.tx='こっちも楽しい';}
	if(~tx.indexOf('嬉しい') || ~tx.indexOf('うれしい'))
		{tf.tx='楽しい？/はい>嬉しい';}
	if((~tx.indexOf('こっち') || ~tx.indexOf('自分') || ~tx.indexOf('俺') || ~tx.indexOf('私')) && (~tx.indexOf('幸せ') || ~tx.indexOf('しあわせ')))
		{tf.tx='幸せ？/はい>こっちも幸せ';}
	if(~tx.indexOf('こちらこそ') || ~tx.indexOf('こっちこそ'))
		{tf.tx='こちらこそ';}
	if(~tx.indexOf('大丈夫') || ~tx.indexOf('だいじょうぶ'))
		{tf.tx='大丈夫';}
	if(~tx.indexOf('慣れる'))
		{tf.tx='慣れるよ';}
	if((~tx.indexOf('思いついた') || ~tx.indexOf('おもいついた') || ~tx.indexOf('何か')) && (~tx.indexOf('教えて') || ~tx.indexOf('おしえて') || ~tx.indexOf('言って')))
		{tf.tx='思いついたら言って';}
	if(~tx.indexOf('そうじゃな') || ~tx.indexOf('違う') || ~tx.indexOf('じゃなく'))
		{tf.tx='そうじゃない';}
}


;;
if(!tf.tx){tf.r='nothing';}
else{tf.c_word=tf.tx, tf.r='something';}
[endscript]

[if exp="tf.ty=='jump'" ]
	[jump/ cond="tf.tx=='nade'" st=sys/system tg=*nade ]
	[jump/ cond="tf.tx=='name_change'" st=sys/system tg=*name_call_change ]
[endif]

[if exp="tf.r=='nothing'" ][_][eval exp="tf.c_word='', f.act.system=1" ][return_menu][endif]

[ks st=talk/c_words]
[eval exp="f.st[1]='talk/c_text'" ]
[eval exp="f.tg[1]='*' + tf.c_word" ]
[jump/ st=1 tg=1 ]



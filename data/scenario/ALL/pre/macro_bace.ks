[jump target=*macro ]
;;以下改行禁止。sace&button行数固定
*button
[cm]
;[clearfix]
[jump/b]

*macro
;;初回設定初期数値------------------------------------------------------------------------------------
[chara_config pos_mode="false" anim="false" ]

;全共通
[if exp="sf.system_ver.system==3" ][else]
;[clearsysvar]
[iscript]
sf.config = {
	se:3, bgm:3, text_sp:4, auto_sp:4, key_shortcut:1, tx_color:1,
	face_ani:1, com_ani:2, anim_auto_t:10, bgm_always:1 }
sf.h_effect = { ver:1, ef:1, se:1, tx:1, xr:1, fin_choice:'select', tx_word:'sf'}

sf.Hxn_v=[3,'秘部','秘所','性器',''], sf.Hxn_iv=[3,'中','膣','肉壁',''], sf.Hxn_c=[2,'陰核','クリ','',''], sf.Hxn_u=[1,'子宮','','','']
sf.Hxn_b=[1,'胸','','',''], sf.Hxn_m=[1,'口','','',''], sf.Hxn_x=[3,'性交','セックス','行為',''] ,sf.Hxn_p=[1,'竿','','','']
sf.Hxn_z=[1,'精液','','',''], sf.Hxn_o=[2,'フェラ','口淫','',''], sf.Hxn_w=[2,'愛液','蜜','',''], sf.Hxn_ex=[1,'絶頂','','','']
sf.Hxn_num={v:0, iv:0, c:0, u:0, b:0, m:0, x:0, p:0, z:0, o:0, w:0, ex:0 }
[endscript]
[endif]

[if exp="f.g_info.exp_ver==1" ][else]
[iscript]
f.g_info = { exp_ver:1, ks:'', fol:'', playing:''}
f.g_state = { }, f.tab = { }
f.bgm = { str:00, fol:'', full:'', playing:'', plays:'', re:3, }
f.situ = { situ:'', bg:'' }
f.font = {size:25, color:'white'}, f.size = { }
f.x = { bace:1, add:1, ori:1, count:1, c_max:1 }
f.y = { bace:1, add:1, ori:1, count:1, c_max:1 }
[endscript]
[endif]

[iscript]
sf.system_ver = {system:3, ArtBook:0, AB_Ex:0, TF:0, LO1:0, LO2:0, LO3:0, IMCGs:0 }
f.tg=[], f.st=[], f.tx=[], f.preg=[], f.sw=[],
f.btn_tip={num:0}, f.btn_tip_gr=[]
[endscript]

;;sys-------------------------------------------------------------------------------------
;[macro name="game_ver_reload_AB"]
;[call storage="first.ks" target="*plugin"][eval exp="sf.playing=f.g_info.playing" ]
;AB===
;[call storage="ALL/combine/AB.ks" ][call storage="ALL/combine/AB_Ex.ks" ][call storage="ALL/combine/FreeGames.ks" ]
;TF===
;[call storage="ALL/combine/TF.ks" ]
;===
;[eval exp="f.g_state.ver=sf.system_ver.TF" cond="sf.playing=='TeachingFeeling'" ]
;[fol_st_reload][dialog_set][reset_shortcut]
;[endmacro]

[macro name="mov_logo"]
[iscript]
if(sf.config.bgm==0){mp.mute='true';}else{mp.bgmm=sf.config.bgm*10;}
[endscript]
[movie storage="logo.webm" skip=true mute=%mute volume=%bgmm ][endmacro]
[macro name="show_message_w"][layopt layer="message0" visible="true" ][layopt layer="message1" visible="true" ][endmacro]
[macro name="hide_message_w"][layopt layer="message0" visible="false" ][layopt layer="message1" visible="false" ][endmacro]
;[macro name="show_message_w"][layopt layer="message0" visible="true" ][endmacro]
;[macro name="hide_message_w"][layopt layer="message0" visible="false" ][endmacro]
[macro name="lr" ][l][r][endmacro]
;[macro name="lr" ][l][rb][endmacro]
[macro name="_"][font shadow="0x000000"][chara_ptext name=''][endmacro]
[macro name="ks"]
[iscript]
if(f.g_state.awake=='sleep'){f.g_info.ks_sleep= f.g_info.fol + mp.st + '.ks';}
else{f.g_info.ks= f.g_info.fol + mp.st + '.ks';}
[endscript]
[endmacro]
[macro name="stop_se" ][stopse][endmacro]
[macro name="font/" ][font color=%c cond="mp.c!=mp.non"][font size=%s cond="mp.s!=mp.non"][endmacro]
[macro name="game_end"][stop_bgm][button name="role_button" role="title" graphic="00.png" width=1600 height=900 x=0 y=0 ][s][endmacro]
[macro name="reset_shortcut"][if exp="sf.config.key_shortcut==1" ][start_keyconfig][else][stop_keyconfig][endif][endmacro]
[macro name="start_shortcut"][start_keyconfig cond="sf.config.key_shortcut==1"][endmacro]
[macro name="stop_shortcut"][stop_keyconfig][endmacro]

[macro name="key_set"][if exp="sf.config.key_shortcut==1" ]
[iscript]
if(mp.m=='up'){mp.m='keyup';}else{mp.m='keydown';}
if(mp.n==mp.non){mp.n='key';}
if(mp.tg>=1){mp.tg= f.tg[mp.tg];}

if(mp.key=='0'){mp.key='48';} else if(mp.key=='1'){mp.key='49';}
else if(mp.key=='2'){mp.key='50';} else if(mp.key=='3'){mp.key='51';}
else if(mp.key=='4'){mp.key='52';} else if(mp.key=='5'){mp.key='53';}
else if(mp.key=='6'){mp.key='54';} else if(mp.key=='7'){mp.key='55';}
else if(mp.key=='8'){mp.key='56';} else if(mp.key=='9'){mp.key='57';}

else if(mp.key=='right'){mp.key='39';} else if(mp.key=='left'){mp.key='37';}
else if(mp.key=='up'){mp.key='38';} else if(mp.key=='down'){mp.key='40';}

else if(mp.key=='c'){mp.key='67';} else if(mp.key=='f'){mp.key='70';}
else if(mp.key=='g'){mp.key='71';} else if(mp.key=='h'){mp.key='72';} 
else if(mp.key=='i'){mp.key='73';}
else if(mp.key=='l'){mp.key='76';} else if(mp.key=='m'){mp.key='77';}
else if(mp.key=='o'){mp.key='79';} else if(mp.key=='p'){mp.key='80';}
else if(mp.key=='r'){mp.key='82';} else if(mp.key=='t'){mp.key='84';}
else if(mp.key=='u'){mp.key='85';} else if(mp.key=='v'){mp.key='86';}

else if(mp.key=='w'){mp.key='87';} else if(mp.key=='a'){mp.key='65';}
else if(mp.key=='s'){mp.key='83';} else if(mp.key=='d'){mp.key='68';}

else if(mp.key=='enter'){mp.key='13';} else if(mp.key=='space'){mp.key='32';}
else if(mp.key=='del'){mp.key='8';} else if(mp.key=='esc'){mp.key='27';}
else if(mp.key=='tab'){mp.key='9';}

[endscript]
[key_event name=%n method=%m key_code=%key storage=&f.g_info.ks target=%tg exp=%exp ][endif][endmacro]
[macro name="key_del"][clear_key_event name=%n ][endmacro]


[macro name="freechara" ]
[iscript]
if(!mp.t){mp.t=300;}
if(!mp.w){mp.w='true';}else{mp.w='false';}
[endscript]
[freeimage layer=0 time=%t wait=%w ][endmacro]

[macro name="free_tx" ][freeimage layer=1][endmacro]

[macro name="layer_ef" ]
[iscript]
if(mp.mode=='ovl'){mp.mode='overlay';}
else if(mp.mode=='mult'){mp.mode='multiply';}
if(mp.g>=1){mp.gr= f.preg[mp.g] + mp.gr;}
mp.gr= f.g_info.fol + 'effect/' + mp.gr + '.png'
[endscript]
[layermode graphic=%gr time="0" mode=%mode wait="false" ][endmacro]

[macro name="anim/"]
[iscript]
if(!mp.t){mp.t=300;}
[endscript]
[if exp="mp.x!=mp.non && mp.y!=mp.non" ][anim name=%n time=%t left=%x top=%y]
[elsif exp="mp.x!=mp.non" ][anim name=%n time=%t left=%x ]
[elsif exp="mp.y!=mp.non" ][anim name=%n time=%t top=%y ][endif][endmacro]

;[macro name="bgmovie/"][bgmovie storage=&mp.st volume=&sf.config.bgm*20][endmacro]

[macro name=random]
[iscript]
tf.r=Math.floor(Math.random() * mp.n + 1);
[endscript]
[endmacro]

[macro name="set_text_speed"][resetfont]
[iscript]
mp.t_sp=sf.config.text_sp
if(mp.t_sp==0){mp.sp=51;}else if(mp.t_sp==1){mp.sp=46;}else if(mp.t_sp==2){mp.sp=41;}
else if(mp.t_sp==3){mp.sp=36;}else if(mp.t_sp==4){mp.sp=31;}else if(mp.t_sp==5){mp.sp=26;}
else if(mp.t_sp==6){mp.sp=21;}else if(mp.t_sp==7){mp.sp=16;}else if(mp.t_sp==8){mp.sp=11;}
else if(mp.t_sp==9){mp.sp=6;}else if(mp.t_sp==10){mp.sp=1;}
[endscript]
[delay speed=%sp][configdelay speed=%sp][endmacro]

[macro name="set_auto_speed"]
[iscript]
mp.a_sp=sf.config.auto_sp
if(mp.a_sp==1){mp.sp=1980;}else if(mp.a_sp==2){mp.sp=1760;}
else if(mp.a_sp==3){mp.sp=1540;}else if(mp.a_sp==4){mp.sp=1320;}
else if(mp.a_sp==5){mp.sp=1100;}else if(mp.a_sp==6){mp.sp=880;}
else if(mp.a_sp==7){mp.sp=660;}else if(mp.a_sp==8){mp.sp=440;}
else if(mp.a_sp==9){mp.sp=220;}else if(mp.a_sp==10){mp.sp=1;}
[endscript]
[autoconfig speed=%sp][endmacro]

;blackはいじると高確率で至る所(画面切り替え)で問題起きる。なるたけ触らないように。
[macro name="black" ][free_tx][hide_repeat_role cond="sf.playing=='TeachingFeeling'"][_]
[freeimage layer=0 time="200" wait="true" ][bg time=200 method="crossfade" storage="black.jpg" ]
[free_layermode time="200" wait="false" ][endmacro]
[macro name="set_black" ][eval exp="mp.t=300" cond="!mp.t"][chara_mod name="black" wait="false" time=0 storage="11.png" ]
[chara_show name=black time=&mp.t wait=true zindex=1000][endmacro]
[macro name="hide_black" ][eval exp="mp.t=300" cond="!mp.t"]
[chara_hide name=black time=%t wait=true ][endmacro]
[macro name="wt/"][eval exp="mp.t=1" cond="mp.t==mp.non"][wait time=%t][endmacro]

[macro name="fol_st_reload"]
[iscript]
if(f.g_info.playing=='TeachingFeeling'){f.g_info.fol='TF/';}
else if(f.g_info.playing=='ButteflyAffection'){f.g_info.fol='BA/';}
else if(f.g_info.playing=='DeterminableUnstable'){f.g_info.fol='DU/';}
else if(f.g_info.playing=='LonelyOnly'){f.g_info.fol='LO/';}
else if(f.g_info.playing=='CourtshipDream'){f.g_info.fol='CD/';}
else if(f.g_info.playing=='ParasiticJourney'){f.g_info.fol='PJ/';}
else if(f.g_info.playing=='Chizuru'){f.g_info.fol='include2/Chizuru/';}
else if(f.g_info.playing=='imas_dress_up'){f.g_info.fol='include2/IMD/';}
else if(f.g_info.playing=='Riamu_ijime'){f.g_info.fol='include2/riam/';}
else if(f.g_info.playing=='kabeshiri'){f.g_info.fol='include2/Kabe/';}
;else if(f.g_info.playing=='_____'){f.g_info.fol='include/firstbite/';}
else{f.g_info.fol='ALL/';}
[endscript]
[endmacro]

[macro name="dialog_set"]
[iscript]
if(sf.playing=='TeachingFeeling'){mp.g=f.g_info.fol+'dialog/';}
else{mp.g='ALL/dialog/';}
mp.bace=mp.g+'bace.png', mp.ok=mp.g+'ok.png', mp.cancel=mp.g+'cancel.png'

if(mp.title=='black'){mp.title_c='0x000000', mp.title_s='0xFFFFFF', mp.tx_c='0x000000';}
else{mp.title_c='0xFFFFFF', mp.title_s='0x000000', mp.tx_c='0xFFFFFF';}
if(mp.btn=='black'){mp.btn_c='0x000000', mp.btn_s='0xFFFFFF';}
else{mp.btn_c='0xFFFFFF', mp.btn_s='0xFFFFFF';}
[endscript]
[dialog_opt graphic=%bace okimg=%ok cancelimg=%cancel title_color=%title_c title_shadow=%title_s text_color=%tx_c button_color=%btn_c button_shadow=%btn_s]
[endmacro]

;ログトリック
[macro name="text_vis"]
[if exp="mp.tx=='hide'" ][current layer=message2][nowait]
[elsif exp="mp.tx=='show'" ][current layer=message0][endnowait][endif][endmacro]


;;jump/-------------------------------------------------------------------------------------
[macro name="jump/"]
[iscript]
if(mp.tg>=1){mp.tg= f.tg[mp.tg];}
if(!mp.st && f.g_state.awake=='sleep'){mp.str=f.g_info.ks_sleep;}
else if(!mp.st){mp.str=f.g_info.ks;}
else if(mp.st==1 && f.g_state.awake=='sleep'){f.g_info.ks_sleep= f.g_info.fol +  f.st[1] + '.ks', mp.str=f.g_info.ks_sleep;}
else if(mp.st==1){f.g_info.ks= f.g_info.fol +  f.st[1] + '.ks', mp.str=f.g_info.ks;}
else{mp.str= f.g_info.fol + mp.st + '.ks', f.g_info.ks=mp.str;}
[endscript]
[jump storage=%str target=%tg ][endmacro]

;;btn
[macro name="btn/"]
[iscript]
if(mp.sw>=1){mp.sw=f.sw[mp.sw];} if(mp.tg>=1){mp.tg= f.tg[mp.tg];}
;=============================================================================
if(mp.sw=='config.bgm' && mp.swm==sf.config.bgm){;} else if(mp.sw=='config.se' && mp.swm==sf.config.se){;}
else if(mp.sw=='config.text_sp' && mp.swm==sf.config.text_sp){;} else if(mp.sw=='config.auto_sp' && mp.swm==sf.config.auto_sp){;}
else if(mp.sw=='config.anim_auto_t' && mp.swm==sf.config.anim_auto_t){;} 
else if(mp.sw=='config.key_shortcut' && mp.swm==sf.config.key_shortcut){;}
else if(mp.sw=='config.face_ani' && mp.swm==sf.config.face_ani){;} else if(mp.sw=='config.com_ani' && mp.swm==sf.config.com_ani){;}
;else if(mp.sw=='config.tx_color' && mp.swm==sf.config.tx_color){;} 

else if(mp.sw=='h_effect.xr' && mp.swm==sf.h_effect.xr){;} else if(mp.sw=='h_effect.tx' && mp.swm==sf.h_effect.tx){;}
else if(mp.sw=='h_effect.se' && mp.swm==sf.h_effect.se){;} else if(mp.sw=='h_effect.tef' && mp.swm==sf.h_effect.ef){;}
else if(mp.sw=='h_effect.fin_choice' && mp.swm==sf.h_effect.fin_choice){;}

else if(mp.sw=='temp.tab' && mp.swm==f.temp.tab){;} else if(mp.sw=='tf.tab' && mp.swm==tf.tab){;}

;使用は多分btn_fixのみ
else if(mp.sw=='tab.main' && mp.swm==f.tab.main){;} else if(mp.sw=='tab.sub' && mp.swm==f.tab.sub){;}
else if(mp.sw=='tab.page' && mp.swm==f.tab.page){;} else if(mp.sw=='tab.prev' && mp.swm==f.tab.prev){;}
else if(mp.sw=='repeat_mode' && mp.swm==f.g_config.repeat_mode){;} 
else if(mp.sw=='cdn_page' && mp.swm==tf.cdn_page){;}

;作品集用==========================
else if(mp.sw=='config.bgm_always' && mp.swm==sf.config.bgm_always){;}
else if(mp.sw=='game_type' && mp.swm==tf.list.game_type){;}
else if(mp.sw=='list' && mp.swm==tf.list.name){;} else if(mp.sw=='sel' && mp.swm==tf.sel){;}
else if(mp.sw=='pic.current_pg' && mp.swm==tf.pic.current_pg){;}
else if(mp.sw=='sel_game' && mp.swm==tf.sel_game){;}
else if(mp.sw=='tf.pict_name[0]' && mp.swm==tf.pict_name[0]){;} 

else{mp.btn_switch='non';}

;gr処理=============================================================================
if(mp.g>=1){mp.gr= f.preg[mp.g] + mp.gr;}
if(mp.gr=='preg1'){mp.gr= f.preg[1];}else if(mp.gr=='preg2'){mp.gr= f.preg[2];}else if(mp.gr=='preg3'){mp.gr= f.preg[3];}else if(mp.gr=='preg4'){mp.gr= f.preg[4];}
mp.gr= f.g_info.fol + mp.gr

if(mp.mo==1){mp.m= mp.gr;}
else if(mp.mo==2){mp.m= mp.gr + '_';}
else if(mp.btn_switch!='non'){mp.m= mp.gr + '-';}
else {mp.m= mp.gr + '_';}

if(mp.btn_switch!='non' && mp.mo==2){mp.gr=mp.gr + '_';}
else if(mp.btn_switch!='non'){mp.gr=mp.gr + '-';}
mp.mo= mp.m + '.png', mp.gr= mp.gr + '.png'
;=============================================================================
if(!mp.x){mp.x=f.x.bace;} if(!mp.y){mp.y=f.y.bace;}
if(mp.l=='x'){f.x.bace+=f.x.add, f.x.count+=1;}
else if(mp.l=='y'){f.y.bace+=f.y.add, f.y.count+=1;}

if(!mp.n){mp.n='btn';}
if(mp.ex>=1){mp.ex=f.btn_tip_gr[mp.ex];}
if(mp.ex!=mp.non){
mp.n=mp.ex+f.btn_tip.num, f.btn_tip.num+=1
f.btn_tip.name=mp.n
f.btn_tip.img=mp.ex + '.png';}
[endscript]


[if exp="!mp.tg" ]
[button name=%n storage=ALL/pre/macro_bace.ks target=*button graphic=%gr enterimg=%mo x=%x y=%y exp=%exp ][else]
[button name=%n target=%tg graphic=%gr enterimg=%mo x=%x y=%y exp=%exp ][endif]
[add_y cond="f.x.count>=f.x.c_max"][add_x cond="f.y.count>=f.y.c_max"]
[endmacro]

;;btn/fix
[macro name="btn/fix"]
[iscript]
if(mp.sw>=1){mp.sw=f.sw[mp.sw];} if(mp.tg>=1){mp.tg= f.tg[mp.tg];}
;=============================================================================
if(mp.sw=='config.bgm' && mp.swm==sf.config.bgm){;} else if(mp.sw=='config.se' && mp.swm==sf.config.se){;}
else if(mp.sw=='config.text_sp' && mp.swm==sf.config.text_sp){;} else if(mp.sw=='config.auto_sp' && mp.swm==sf.config.auto_sp){;}
else if(mp.sw=='config.anim_auto_t' && mp.swm==sf.config.anim_auto_t){;} 
else if(mp.sw=='config.key_shortcut' && mp.swm==sf.config.key_shortcut){;}
else if(mp.sw=='config.face_ani' && mp.swm==sf.config.face_ani){;} else if(mp.sw=='config.com_ani' && mp.swm==sf.config.com_ani){;}
;else if(mp.sw=='config.tx_color' && mp.swm==sf.config.tx_color){;} 

else if(mp.sw=='h_effect.xr' && mp.swm==sf.h_effect.xr){;} else if(mp.sw=='h_effect.tx' && mp.swm==sf.h_effect.tx){;}
else if(mp.sw=='h_effect.se' && mp.swm==sf.h_effect.se){;} else if(mp.sw=='h_effect.tef' && mp.swm==sf.h_effect.ef){;}
else if(mp.sw=='h_effect.fin_choice' && mp.swm==sf.h_effect.fin_choice){;}

else if(mp.sw=='temp.tab' && mp.swm==f.temp.tab){;} else if(mp.sw=='tf.tab' && mp.swm==tf.tab){;}

;使用は多分btn_fixのみ
else if(mp.sw=='tab.main' && mp.swm==f.tab.main){;} else if(mp.sw=='tab.sub' && mp.swm==f.tab.sub){;}
else if(mp.sw=='tab.page' && mp.swm==f.tab.page){;} else if(mp.sw=='tab.prev' && mp.swm==f.tab.prev){;}
else if(mp.sw=='repeat_mode' && mp.swm==f.g_config.repeat_mode){;} 
else if(mp.sw=='cdn_page' && mp.swm==tf.cdn_page){;}

;作品集用
else if(mp.sw=='config.bgm_always' && mp.swm==sf.config.bgm_always){;}
else if(mp.sw=='game_type' && mp.swm==tf.list.game_type){;}
else if(mp.sw=='list' && mp.swm==tf.list.name){;} else if(mp.sw=='sel' && mp.swm==tf.sel){;}
else if(mp.sw=='pic.current_pg' && mp.swm==tf.pic.current_pg){;}
else if(mp.sw=='sel_game' && mp.swm==tf.sel_game){;}
else if(mp.sw=='tf.pict_name[0]' && mp.swm==tf.pict_name[0]){;} 

else{mp.btn_switch='non';}

;gr処理=============================================================================
if(mp.g>=1){mp.gr= f.preg[mp.g] + mp.gr;}
if(mp.gr=='preg1'){mp.gr= f.preg[1];}else if(mp.gr=='preg2'){mp.gr= f.preg[2];}else if(mp.gr=='preg3'){mp.gr= f.preg[3];}else if(mp.gr=='preg4'){mp.gr= f.preg[4];}
mp.gr= f.g_info.fol + mp.gr

if(mp.mo==1){mp.m= mp.gr;}
else if(mp.mo==2){mp.m= mp.gr + '_';}
else if(mp.btn_switch!='non'){mp.m= mp.gr + '-';}
else {mp.m= mp.gr + '_';}

if(mp.btn_switch!='non' && mp.mo==2){mp.gr=mp.gr + '_';}
else if(mp.btn_switch!='non'){mp.gr=mp.gr + '-';}
mp.mo= mp.m + '.png', mp.gr= mp.gr + '.png'
;=============================================================================
if(!mp.x){mp.x=f.x.bace;} if(!mp.y){mp.y=f.y.bace;}
if(mp.l=='x'){f.x.bace+=f.x.add, f.x.count+=1;}
else if(mp.l=='y'){f.y.bace+=f.y.add, f.y.count+=1;}
if(mp.st=='sys' || mp.role=='sleepgame'){mp.st= f.g_info.fol + 'sys/system.ks';}
else if(mp.st!=mp.non){mp.st= f.g_info.fol + mp.st + '.ks';}
if(!mp.n){mp.n=tf.role_name	;}

if(mp.ex!=mp.non){
mp.n=mp.ex+f.btn_tip.num, f.btn_tip.num+=1
f.btn_tip.name=mp.n
f.btn_tip.img=mp.ex + '.png';}
[endscript]

[if exp="mp.role!=mp.non" ]
[button name=%n role=%role auto_next="false" graphic=%gr enterimg=%mo storage=%st target=%tg x=%x y=%y exp=%exp ]
[elsif exp="!mp.tg" ]
[button name=%n fix="true" storage=ALL/pre/macro_bace.ks target=*button graphic=%gr enterimg=%mo x=%x y=%y exp=%exp ][else]
[button name=%n fix="true" auto_next="false" graphic=%gr enterimg=%mo storage=%st target=%tg x=%x y=%y exp=%exp ][endif]
[add_y cond="f.x.count>=f.x.c_max"][add_x cond="f.y.count>=f.y.c_max"]
[endmacro]

;;btn/ex(tip
[macro name="btn_ex"]
[iscript]
if(mp.pos=='l'){mp.pos='left';} else if(mp.pos=='r'){mp.pos='right';}
else if(mp.pos=='u'){mp.pos='top';} else if(mp.pos=='d'){mp.pos='bottom';}
else{mp.pos='static';}
if(mp.pos=='static'){
	if(!mp.x){mp.x=f.btn_tip.x}
	if(!mp.y){mp.y=f.btn_tip.y}}
mp.x=mp.x*1, mp.y=mp.y*1, mp.px=mp.px*1
mp.tip=f.g_info.fol + f.btn_tip.preg+f.btn_tip.img
[endscript]
[button_ex name=&f.btn_tip.name tip=%tip tip_pos=%pos tip_x=%x tip_y=%y tip_fade=0 enter=00.png cond="mp.pos=='static']
[button_ex name=&f.btn_tip.name tip=%tip tip_pos=%pos tip_margin=%px tip_fade=0 enter=00.png cond="mp.pos!='static']
[endmacro]

;;btn/xy=============================================================================
[macro name="xy"]
[iscript]
if(mp.x!=mp.non){f.x.bace=mp.x*1;} if(mp.y!=mp.non){f.y.bace=mp.y*1;}
if(mp.x_add!=mp.non){f.x.add=mp.x_add*1;}
if(mp.y_add!=mp.non){f.y.add=mp.y_add*1;}
if(mp.sw1!=mp.non){f.sw[1]=mp.sw1;} if(mp.sw2!=mp.non){f.sw[2]=mp.sw2;}
if(mp.sw3!=mp.non){f.sw[3]=mp.sw3;} if(mp.sw4!=mp.non){f.sw[4]=mp.sw4;}
if(mp.preg1!=mp.non){f.preg[1]=mp.preg1;} if(mp.preg2!=mp.non){f.preg[2]=mp.preg2;}
if(mp.preg3!=mp.non){f.preg[3]=mp.preg3;} if(mp.preg4!=mp.non){f.preg[4]=mp.preg4;}
if(mp.tg1!=mp.non){f.tg[1]=mp.tg1;} if(mp.tg2!=mp.non){f.tg[2]=mp.tg2;}
if(mp.tg3!=mp.non){f.tg[3]=mp.tg3;} if(mp.tg4!=mp.non){f.tg[4]=mp.tg4;}
if(mp.s!=mp.non){f.font.size=mp.s;} if(mp.c!=mp.non){f.font.color=mp.c;}
if(mp.w!=mp.non){f.size.wi=mp.w;} if(mp.h!=mp.non){f.size.hi=mp.h;}
if(mp.r!=mp.non){tf.r=mp.r;}

if(mp.tip_x!=mp.non){f.btn_tip.x=mp.tip_x*1;} if(mp.tip_y!=mp.non){f.btn_tip.y=mp.tip_y*1;}
if(mp.tip_preg!=mp.non){f.btn_tip.preg=mp.tip_preg;}
if(mp.tip1!=mp.non){f.btn_tip_gr[1]=mp.tip1;} if(mp.tip2!=mp.non){f.btn_tip_gr[2]=mp.tip2;}
if(mp.tip3!=mp.non){f.btn_tip_gr[3]=mp.tip3;} if(mp.tip4!=mp.non){f.btn_tip_gr[4]=mp.tip4;}
[endscript]
[endmacro]



[macro name="btn/xy"]
[iscript]
f.x.ori=f.x.bace,f.y.ori=f.y.bace, f.y.count=0,f.x.count=0
if(!mp.y){f.y.c_max=10000;}else{f.y.c_max=mp.y;}
if(!mp.x){f.x.c_max=10000;}else{f.x.c_max=mp.x;}
[endscript]
[endmacro]

[macro name="add_y"]
[iscript]
if(mp.n==mp.non){mp.n=1} f.y.bace=f.y.bace+f.y.add*mp.n, f.x.bace=f.x.ori, f.x.count=0
[endscript]
[endmacro]
[macro name="add_x"]
[iscript]
if(mp.n==mp.non){mp.n=1} f.x.bace=f.x.bace+f.x.add*mp.n, f.y.bace=f.y.ori, f.y.count=0
[endscript]
[endmacro]
[macro name="add_y_blank"][eval exp="f.y.bace+=f.y.add, f.y.count+=1" ][add_x cond="f.y.count>=f.y.c_max"][endmacro]
[macro name="add_x_blank"][eval exp="f.x.bace+=f.x.add, f.x.count+=1" ][add_y cond="f.x.count>=f.x.c_max"][endmacro]

[macro name="btn/fix_n"][clearfix name=%n][eval exp="tf.role_name=mp.n" ][endmacro]

[macro name="btn_j"][eval exp="tf.btn_c+=1" ]
[if exp="tf.btn_c>=tf.btn_n" ][eval exp="f.tg[1]=tf.btn_j" ][jump/ tg=1 ][endif][endmacro]

[macro name="jump/b"]
[eval exp="mp.st=f.g_info.fol + f.st[0] +'.ks' ,mp.tg=f.tg[0]" ][eval exp="f.g_info.ks=mp.st" ]
[jump storage=%st target=%tg ][endmacro]

[macro name="tx_box"]
[iscript]
if(!mp.x){mp.x=f.x.bace;} if(!mp.y){mp.y=f.y.bace;}
if(mp.l=='x'){f.x.bace+=f.x.add, f.x.count+=1;}
else if(mp.l=='y'){f.y.bace+=f.y.add, f.y.count+=1;}
if(!mp.w){mp.w=f.size.wi;} if(!mp.h){mp.h=f.size.hi;}
[endscript]
[edit left=%x top=%y width=%w height=%h name=%ex ][endmacro]

;;bg-------------------------------------------------------------------------------------
[macro name="bg/"]
[iscript]
if(mp.st>=1){mp.st= f.st[mp.st];}
f.situ.bg=mp.st

;if(f.g_info.playing=='LonelyOnly'){f.bgm.fol='LO/' + f.bgm.str ;}
if(f.g_info.playing=='LonelyOnly')
;	if(mp.st=='class' || mp.st=='mamo_home' || mp.st=='mamo_room' || mp.st=='movie' || mp.st=='park' ||mp.st=='rouka' || mp.st=='sat_home' || mp.st=='school' || mp.st=='step' || mp.st=='street' || mp.st=='street2' || mp.st=='town')
	{mp.bg_fol='Kisyahara/';}
else if(!mp.g && (f.g_info.playing=='TeachingFeeling' || f.g_info.playing=='DeterminableUnstable'))
;	if(mp.st=='cafe' || mp.st=='market' || mp.st=='wood' || mp.st=='restaurant' || mp.st=='shop' || mp.st=='town' || mp.st=='wood')
	{mp.bg_fol='Crossdale/';}
else if(f.g_info.playing=='CreepyCute')
	{mp.bg_fol='CrCu/';}

if(f.g_info.playing=='TeachingFeeling'){
	if(mp.st=='door' && f.act.time>=5){mp.st= mp.st + '_n';}}
;else if(f.g_info.playing=='LonelyOnly'){
;	if(mp.situ=='solo'){mp.st= 'LO/bg/s/' + mp.st + '.jpg', f.situ.situ='solo';}
;	else if(mp.situ!=mp.non){mp.st= mp.st, f.situ.situ='changed';}}

if(!mp.g){mp.g='bg/';}else{mp.g=mp.g + '/';}

if(mp.st=='black'){mp.st='black.jpg';}
else if(mp.bg_fol!=mp.non){mp.st= 'bg/' + mp.bg_fol + mp.st + '.jpg';}
else{mp.st= f.g_info.fol + mp.g + mp.st + '.jpg';}

if(!mp.t){mp.t=300;}else{mp.t=mp.t;}
if(!mp.w){mp.w='false';}else{mp.w='true';}
[endscript]

[bg storage=%st method="crossfade" time=%t wait=%w ]
[set_layermode][endmacro]

[macro name="set_layermode"]
[set_layermode_TF cond="f.g_info.playing=='TeachingFeeling'"]
[set_layermode_LO cond="f.g_info.playing=='LonelyOnly'"][endmacro]

[macro name="set_layermode_LO"]
[iscript]
f.situ.situ_pre=f.situ.situ
if(f.situ.situ=='solo'){;}
else if(f.situ.bg!='room_mamoru' && f.situ.bg!='room_tomo'){f.situ.situ='outsite';}
[endscript]
[if exp="f.situ.situ_pre==f.situ.situ || tf.time_set=='lunch_b' || tf.time_set=='lunch' || tf.time_set=='pm'" ][else]
[free_layermode time="0" wait="false" ]
[set_layermode_overlay_LO][set_layermode_multiply_LO][endif]
[endmacro]

[macro name="set_layermode_overlay_LO"]
[iscript]
mp.gr='00.png'
if(f.situ.situ=='solo'){
	if(f.st[0]=='step'){mp.gr='sat_step';}
	else{mp.gr='sat_noon';}}
else if(f.situ.situ=='outsite' && (tf.time_set=='morning' || tf.time_set=='evening'))
	{mp.gr=tf.time_set;}
if(mp.gr=='00.png'){;}
else{mp.gr=f.g_info.fol + 'effect/' + mp.gr + '_ovlay.png';}
[endscript]
[layermode graphic=%gr time=300 mode="overlay" wait="false" ][endmacro]

[macro name="set_layermode_multiply_LO"]
[iscript]
mp.gr='00.png'
if(f.situ.situ=='solo'){
	if(f.st[0]=='step'){mp.gr='sat_step';}
	else{mp.gr='sat_noon';}}
else if(f.situ.situ=='outsite' && (tf.time_set=='night' || tf.time_set=='evening'))
	{mp.gr=tf.time_set;}
if(mp.gr=='00.png'){;}
else{mp.gr=f.g_info.fol + 'effect/' + mp.gr + '_multi.png';}
[endscript]
[layermode graphic=%gr time=300 mode="multiply" wait="false" ][endmacro]

;;set_show/se-------------------------------------------------------------------------------------
[macro name="c_show"]
[iscript]
if(mp.resize==1){
	if(!mp.wi){mp.wi=1600;} if(!mp.hi){mp.hi=900;}}
if(!mp.t){mp.t=300;}
if(!mp.x){mp.x=0;} if(!mp.y){mp.y=0;}
if(!mp.w){mp.w='false';} else{mp.w='true';}
[endscript]
[if exp="mp.wi!=mp.non || mp.hi!=mp.non" ]
[chara_show name=%n time=%t wait=%w width=%wi height=%hi left=%x top=%y zindex=%z][else]
[chara_show name=%n time=%t wait=%w left=%x top=%y zindex=%z][endif][endmacro]

[macro name="c_hide"]
[iscript]
if(!mp.t){mp.t='0';}
if(!mp.w){mp.w='false';} else{mp.w='true';}
[endscript]
[chara_hide name=%n time=%t wait=%w ][endmacro]

[macro name="c_mod"]
[iscript]
if(!mp.t){mp.t='0';}
if(mp.st>=1){mp.st=f.st[mp.st];}

if(f.g_info.playing=='TeachingFeeling'){mp.winfol=f.g_info.fol+'sys/win/';}
else{mp.winfol=f.g_info.fol+'win/';}	

if(!mp.st || mp.st=='00'){mp.st='00.png';}
else if(mp.n=='win'){mp.st= mp.winfol + mp.st + '.png';}
else{mp.st= f.g_info.fol + mp.st + '.png';}

if(mp.ef=='00'){mp.ef='00.png';}
else if(mp.ef!=mp.non){mp.ef=mp.winfol+ mp.ef + '.png';}
if(mp.ef2=='00'){mp.ef2='00.png';}
else if(mp.ef2!=mp.non){mp.ef2=mp.winfol+ mp.ef2 + '.png';}
if(mp.ef3=='00'){mp.ef3='00.png';}
else if(mp.ef3!=mp.non){mp.ef3=mp.winfol+ mp.ef3 + '.png';}

[endscript]
[if exp="mp.n=='win'" ]
	[chara_part name=win bace=%st allow_storage=true cond="mp.st!='00.png' || mp.reset==1 || (!mp.ef && !mp.ef2)"]
	[chara_part name=win ef=00.png ef2=00.png d_time=00.png allow_storage=true cond="mp.reset==1"]
	[chara_part name=win ef=%ef allow_storage=true cond="mp.ef!=mp.non"]
	[chara_part name=win ef2=%ef2 allow_storage=true cond="mp.ef2!=mp.non"]
	[chara_part name=win ef3=%ef3 allow_storage=true cond="mp.ef3!=mp.non"]
	[chara_part name=win d_time=00.png allow_storage=true cond="mp.time=='00'"]
[else][chara_mod name=%n time=%t storage=%st ][endif][endmacro]

[macro name="c_layer"]
[iscript]
if(!mp.n){mp.n=tf.c_name;}
if(!mp.z){tf.zindex+=5, mp.z=tf.zindex;}else{tf.zindex=mp.z*1}
if(!mp.st){mp.st='00.png';}
[endscript]
[chara_layer name=%n part=%pt id=def storage=%st zindex=%z ]
[endmacro]

[macro name="c_layer_z"]
[iscript]
if(!mp.n){mp.n=tf.c_name;}
[endscript]
[chara_layer_mod name=%n part=%pt zindex=%z ][endmacro]

[macro name="end_set_c_layer"][clearvar exp=tf.c_name][clearvar exp=tf.zindex][endmacro]

[macro name="se/"]
[iscript]
mp.st= f.g_info.fol + mp.st + '.ogg'
if (mp.l=='t'){mp.loop='true';}else{mp.loop='false';}
[endscript]
[playse storage=%st loop=%loop ][endmacro]

[macro name="tx_img"][eval exp="mp.expp= 'mp.text=' + mp.n" ][eval exp=%expp ]
[iscript]
if(mp.tx1>=1){mp.tx1= f.tx[mp.tx1];} 
if(!mp.n){mp.text=mp.tx1;}
if(mp.tx1!=mp.non && mp.n!=mp.non){mp.text= mp.tx1  + mp.text;}
if(mp.tx2!=mp.non){mp.text= mp.text  + mp.tx2;}
if(!mp.s){mp.s=f.font.size;} if(!mp.c){mp.c=f.font.color;}
if(!mp.x){mp.x=f.x.bace;} if(!mp.y){mp.y=f.y.bace;}
if(mp.l=='x'){f.x.bace+=f.x.add, f.x.count+=1;}
else if(mp.l=='y'){f.y.bace+=f.y.add, f.y.count+=1;}
else if(mp.l=='xy'){f.x.bace+=f.x.add, f.y.bace+=f.y.add, f.x.count+=1;}
else if(mp.l=='yx'){f.y.bace+=f.y.add, f.x.bace+=f.x.add, f.y.count+=1;}
[endscript]
[ptext layer=1 text=%text size=%s x=%x y=%y color=%c ]
[add_y cond="f.x.count>=f.x.c_max"][add_x cond="f.y.count>=f.y.c_max"]
[endmacro]

[macro name="tx_list"]
[iscript]
if(!mp.s){mp.s=f.font.size;} if(!mp.c){mp.c=f.font.color;}
if(!mp.x){mp.x=f.x.bace;} if(!mp.y){mp.y=f.y.bace;}
if(mp.ind!=mp.non){mp.x+=f.x.add*mp.ind;}
f.y.bace+=f.y.add

var result = mp.tx.replace('_', ' ');
while(result !== mp.tx) {
    mp.tx = mp.tx.replace('_', ' ');
    result = result.replace('_', ' ');}
mp.tx=result;

[endscript]
[ptext layer=1 text=%tx size=%s x=%x y=%y color=%c ][endmacro]

[macro name="tx_blank"][eval exp="f.y.bace+=f.y.add/3" ][endmacro]


;;BGM-------------------------------------------------------------------------------------
[macro name="stop_bgm" ][eval exp="f.bgm.playing=0" ][fadeoutbgm time=500][endmacro]
[macro name="bgm/stop"][stop_bgm cond="sf.config.bgm_always!=1"][endmacro]
[macro name="bgm/reload"]
[if exp="tf.pict_name[0]!=mp.non" ][eval exp="f.bgm.plays=tf.pict_name[0]" ][bgm][endif][endmacro]

[macro name="bgm"][eval cond="mp.re==1" exp="f.bgm.re=1" ]
[if eval exp="f.g_info.playing=='ArtBook' && mp.aw==1 && sf.config.bgm_always==0" ][stop_bgm]
[elsif exp="mp.st==1" ][eval exp="f.bgm.str=f.st[1]" ][bgm_set][bgm_play]
[else][eval exp="f.bgm.str=mp.st, f.bgm.fol=mp.fol" ][bgm_set][bgm_play][endif][endmacro]

[macro name="set_bgm_vol"][eval exp="mp.vol= sf.config.bgm *10" ][bgmopt volume=%vol][endmacro]
[macro name="set_se_vol"][eval exp="mp.vol= sf.config.se *10" ][seopt volume=%vol][endmacro]

[macro name="bgm_set"]
[iscript]	
;if(f.g_info.playing=='LonelyOnly'){f.bgm.fol='LO/' + f.bgm.str ;}
if(f.g_info.playing=='LonelyOnly'){f.bgm.fol='LO/';}
else if(f.g_info.playing=='TeachingFeeling' || f.g_info.playing=='DeterminableUnstable'){
;	if(tf.hist_mode>=1){;}else{f.current_bgm=f.bgm.str;}
	if(f.bgm.str=='SA' || f.bgm.str=='PB' || f.bgm.str=='SR' || f.bgm.str=='AW' || f.bgm.str=='LC')
		{f.bgm.fol='DU/';}
	else{f.bgm.fol='TF/';}}


if(!f.bgm.str){f.bgm.str=f.bgm.plays;}
else{f.bgm.str=f.bgm.fol + f.bgm.str,  f.bgm.plays=f.bgm.str;}

if(f.bgm.str=='TF/SG'){f.bgm.full='Silver_Glass';}
else if(f.bgm.str=='TF/IF'){f.bgm.full='Ivory_Fiber';}
else if(f.bgm.str=='TF/MT'){f.bgm.full='Magenta_Touch';}
else if(f.bgm.str=='TF/II'){f.bgm.full='Indigo_Illumination';}
else if(f.bgm.str=='TF/AT'){f.bgm.full='Aquamarine_Temperature';}
else if(f.bgm.str=='TF/BR'){f.bgm.full='Brilliant_Red';}
else if(f.bgm.str=='TF/DS'){f.bgm.full='Deep_Scarlet';}
else if(f.bgm.str=='TF/AS'){f.bgm.full='Apricot_Smile';}
else if(f.bgm.str=='TF/OB'){f.bgm.full='Ochre_Breeze';}
else if(f.bgm.str=='TF/JH'){f.bgm.full='Jelly_Honey';}
else if(f.bgm.str=='TF/LS'){f.bgm.full='Lime_Swing';}
else if(f.bgm.str=='TF/RG'){f.bgm.full='Rusty_Gainsboro';}
else if(f.bgm.str=='TF/ST'){f.bgm.full='Smooth_Turquoise';}
else if(f.bgm.str=='TF/MR'){f.bgm.full='Misty_Rose';}
else if(f.bgm.str=='TF/CF'){f.bgm.full='Cinnamon_Flavor';}
else if(f.bgm.str=='TF/SQ'){f.bgm.full='Scale_Quartz';}
	
else if(f.bgm.str=='LO/MP' ){f.bgm.full='Morning_Particle';}
else if(f.bgm.str=='LO/HS'){f.bgm.full='Hopping_Steps';}
else if(f.bgm.str=='LO/LH'){f.bgm.full='Lazy_Head';}
else if(f.bgm.str=='LO/ML'){f.bgm.full='Missing_Love';}
else if(f.bgm.str=='LO/12E'){f.bgm.full='One_Plus_Two_Equal';}
else if(f.bgm.str=='LO/SS'){f.bgm.full='Side_Statement';}
else if(f.bgm.str=='LO/Vice'){f.bgm.full='Vice';}
else if(f.bgm.str=='LO/WS'){f.bgm.full='Wave_Of_The_Spell';}

else if(f.bgm.str=='LO/HK'){f.bgm.full='Hidden_Kind';}
else if(f.bgm.str=='LO/MPg'){f.bgm.full='Multi_Pairing';}
else if(f.bgm.str=='LO/YSF'){f.bgm.full='Your_Side_Face';}
else if(f.bgm.str=='LO/CF'){f.bgm.full='Calm_Footsteps';}
else if(f.bgm.str=='LO/HoG'){f.bgm.full='Heart_of_Gold';}
else if(f.bgm.str=='LO/RaD'){f.bgm.full='Reread_a_Day';}
else if(f.bgm.str=='LO/F2'){f.bgm.full='Free_Two';}
else if(f.bgm.str=='LO/PO'){f.bgm.full='Point_One';}
else if(f.bgm.str=='LO/OW'){f.bgm.full='Own_Way';}
else if(f.bgm.str=='LO/GL'){f.bgm.full='Green_Lesson';}

else if(f.bgm.str=='LO/12E_midi'){f.bgm.full='One_Plus_Two_Equal_midi';}
else if(f.bgm.str=='LO/MP_midi'){f.bgm.full='Morning_Particle_midi';}
else if(f.bgm.str=='LO/Vice_midi'){f.bgm.full='Vice_midi';}
else if(f.bgm.str=='LO/WS_midi'){f.bgm.full='Wave_Of_The_Spell_midi';}
	
else if(f.bgm.str=='DU/SA'){f.bgm.full='Sliced_Apple';}
else if(f.bgm.str=='DU/PB'){f.bgm.full='Pomegranate_Blood';}
else if(f.bgm.str=='DU/SR'){f.bgm.full='Squished_Raspberry';}
else if(f.bgm.str=='DU/AW'){f.bgm.full='Acerola_Wipe';}
else if(f.bgm.str=='DU/LC'){f.bgm.full='Light_Cherry';}
	
else if(f.bgm.str=='BA/Un_ori'){f.bgm.full='DSDONWA';}
else if(f.bgm.str=='BA/Cr'){f.bgm.full='Creep';}
else if(f.bgm.str=='BA/Sq'){f.bgm.full='Squirm';}
else if(f.bgm.str=='BA/Un'){f.bgm.full='Undulate';}
else if(f.bgm.str=='BA/Wr'){f.bgm.full='Wriggle';}

else if(f.bgm.str=='PJ/map'){f.bgm.full='map';}
else if(f.bgm.str=='PJ/mori'){f.bgm.full='mori';}
else if(f.bgm.str=='PJ/mura'){f.bgm.full='mura';}
else if(f.bgm.str=='PJ/ev'){f.bgm.full='ev';}

else if(f.bgm.str=='CD/DD'){f.bgm.full='DD';}
else if(f.bgm.str=='CD/ev'){f.bgm.full='ev';}
else if(f.bgm.str=='CD/lunch'){f.bgm.full='lunch';}

else if(f.bgm.str=='CrCu/Lotus'){f.bgm.full='Nymphaea_Lotus';}
else if(f.bgm.str=='CrCu/Verdy'){f.bgm.full='Verdigris';}
else if(f.bgm.str=='CrCu/Iris'){f.bgm.full='Iris_Sanguinea';}
else if(f.bgm.str=='other/Lemonade'){f.bgm.full='Lemonade';}
else if(f.bgm.str=='other/Lemonade_nonL'){f.bgm.full='Lemonade_nonL';}
else if(f.bgm.str=='other/VDs'){f.bgm.full='Magic_in_the_Hole';}
else if(f.bgm.str=='other/Ribby'){f.bgm.full='Twirling_Bones';}
else if(f.bgm.str=='other/Aiko'){f.bgm.full='Deep_Love';}
else if(f.bgm.str=='other/Acd_nonL'){f.bgm.full='A_caprice_dance_nonL';}
else if(f.bgm.str=='other/Acd'){f.bgm.full='A_caprice_dance';}

else if(f.bgm.str=='single/DA'){f.bgm.full='Data_Analyzing';}
else if(f.bgm.str=='single/DH'){f.bgm.full='Damp_Heart';}
else{f.bgm.full=f.bgm.str;}


f.bgm.fol=(f.bgm.str.slice(0,3));
;if(f.bgm.fol=='CrCu'){f.bgm.fol='CrCu/';}
if(f.bgm.fol=='oth'){f.bgm.fol='other/';}
else if(f.bgm.fol=='sin'){f.bgm.fol='single/';}
[endscript]
[endmacro]


[macro name="bgm_play"]
[iscript]	
{mp.str= f.bgm.full + '.ogg' ;}
if(f.bgm.fol=='single/' || f.bgm.fol=='CD/' || f.bgm.fol=='PJ/'){mp.str=f.bgm.fol + mp.str ;}
[endscript]
[if exp="!f.bgm.plays || f.bgm.plays==0 || f.bgm.plays==f.bgm.playing" ][else]
[eval exp="f.bgm.playing=f.bgm.plays" ][playbgm loop="true" storage=%str ][endif]
[if exp="f.bgm.re==1" ]
[eval exp="f.bgm.playing=f.bgm.plays" ][playbgm loop="true" storage=%str ][endif]
[eval exp="f.bgm.re=0" ][endmacro]


;;game_bace_reload
;[macro name="game_bace_reload"][call storage="first.ks" target="*plugin"]
;[button_ex_restore]?
;[eval exp="sf.playing=f.g_info.playing" ]
;[call storage="ALL/combine/TF.ks" cond="sf.playing=='TeachingFeeling'" ]
;[fol_st_reload][dialog_set][reset_shortcut]
;[endmacro]
;;return
[resetdelay][set_text_speed][set_auto_speed][set_bgm_vol][set_se_vol]
[return]

;;btn/swメモ
;作品集用==========================
else if(mp.sw=='config.bgm_always' && mp.swm==sf.config.bgm_always){;}
else if(mp.sw=='game_type' && mp.swm==tf.list.game_type){;}
else if(mp.sw=='list' && mp.swm==tf.list.name){;} else if(mp.sw=='sel' && mp.swm==tf.sel){;}
else if(mp.sw=='pic.current_pg' && mp.swm==tf.pic.current_pg){;}
else if(mp.sw=='sel_game' && mp.swm==tf.sel_game){;}
else if(mp.sw=='tf.pict_name[0]' && mp.swm==tf.pict_name[0]){;} 

;TF_nonfix用==========================
if(mp.sw=='H_setting' && mp.swm==f.g_config.H_setting){;}
else if(mp.sw=='pourri_use' && mp.swm==f.g_config.pourri_use){;} else if(mp.sw=='pourri_time' && mp.swm==f.g_config.pourri_time){;}

else if(mp.sw=='touch_command' && mp.swm==f.g_config.touch_command){;}
else if(mp.sw=='touch_direct' && mp.swm==f.g_config.touch_direct){;}

else if(mp.sw=='room_bgm' && mp.swm==f.g_config.room_bgm){;}
else if(mp.sw=='x_speak' && mp.swm==f.g_config.x_speak){;}
else if(mp.sw=='d_daily_change' && mp.swm==f.g_config.d_daily_change){;} 
else if(mp.sw=='ondr.when' && mp.swm==f.ondr.when){;}

else if(mp.sw=='h_style' && mp.swm==f.h_style){;}	else if(mp.sw=='red_aroma' && mp.swm==tf.red_aroma){;}
else if(mp.sw=='hc_menu' && mp.swm==tf.hc_menu){;}	else if(mp.sw=='h_cum_pos' && mp.swm==f.h_cum_pos){;}
else if(mp.sw=='hc_v_speed' && mp.swm==tf.hc_config.v_spd){;}	else if(mp.sw=='hc_v_select' && mp.swm==tf.hc_config.v_act){;}

else if(mp.sw=='sav_color[0]' && mp.swm==f.sav_color[0]){;}else if(mp.sw=='sav_auto[0]' && mp.swm==f.sav_auto[0]){;}

;TF_fix用==========================
else if(mp.sw=='d_daily_change' && mp.swm==f.g_config.d_daily_change){;} 

else if(mp.sw=='cdn_page' && mp.swm==f.tab.cdn_n){;} else if(mp.sw=='sav_auto[0]' && mp.swm==f.sav_auto[0]){;} 
else if(mp.sw=='d_col.a1b' && mp.swm==tf.d_col.a1b){;} else if(mp.sw=='d_col.a1' && mp.swm==tf.d_col.a1){;} 
else if(mp.sw=='d_col.a2b' && mp.swm==tf.d_col.a2b){;} else if(mp.sw=='d_col.a2' && mp.swm==tf.d_col.a2){;} 
else if(mp.sw=='d_col.a3b' && mp.swm==tf.d_col.a3b){;} else if(mp.sw=='d_col.a3' && mp.swm==tf.d_col.a3){;} 
else if(mp.sw=='d_col.b1b' && mp.swm==tf.d_col.b1b){;} else if(mp.sw=='d_col.b1' && mp.swm==tf.d_col.b1){;} 
else if(mp.sw=='d_col.b2b' && mp.swm==tf.d_col.b2b){;} else if(mp.sw=='d_col.b2' && mp.swm==tf.d_col.b2){;} 
else if(mp.sw=='d_col.b3b' && mp.swm==tf.d_col.b3b){;} else if(mp.sw=='d_col.b3' && mp.swm==tf.d_col.b3){;} 

else if(mp.sw=='d_dress.n' && mp.swm==f.d_dress.n){;}
else if(mp.sw=='d_dress.n_ad' && mp.swm==f.d_dress.n+'_'+f.d_dress.sub_p){;}
else if(mp.sw=='d_dress_a.n_ad' && mp.swm==f.d_dress_a.n+'_'+f.d_dress_a.sub_p){;}

else if(mp.sw=='d_dress_a.n' && mp.swm==f.d_dress_a.n){;} else if(mp.sw=='d_dress_b.n' && mp.swm==f.d_dress_b.n){;} 
else if(mp.sw=='d_pin.type' && mp.swm==f.d_pin.type){;} else if(mp.sw=='d_pin.n' && mp.swm==f.d_pin.n){;}
else if(mp.sw=='d_ribbon.type' && mp.swm==f.d_ribbon.type){;} else if(mp.sw=='d_ribbon.n' && mp.swm==f.d_ribbon.n){;} 
else if(mp.sw=='d_glove.n' && mp.swm==f.d_glove.n){;} else if(mp.sw=='d_socks.n' && mp.swm==f.d_socks.n){;} 
else if(mp.sw=='d_hat.n' && mp.swm==f.d_hat.n){;} else if(mp.sw=='d_glasses.n' && mp.swm==f.d_glasses.n){;} 
else if(mp.sw=='d_eri.n' && mp.swm==f.d_eri.n){;} else if(mp.sw=='d_body.n' && mp.swm==f.d_body.n){;} 
else if(mp.sw=='d_under_b.n' && mp.swm==f.d_under_b.n){;} else if(mp.sw=='d_under_p.n' && mp.swm==f.d_under_p.n){;} 

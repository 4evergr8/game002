;请不要删除这个文件！
;
;make.ks 是加载数据时被称为的特殊KS文件。
;Fix请在这里记述层的初始化等，在加载时刻想重建的处理。
;

*game_ver_reload
[macro name="game_ver_reload"]
;[call storage="ALL/combine/AB.ks" ][call storage="ALL/combine/AB_Ex.ks" ][call storage="ALL/combine/FreeGames.ks" ]
[call storage="ALL/combine/TF.ks" ]
;make_reload时のみ===
[if exp="mp.re=='load'" ]
	[call storage="first.ks" target="*plugin"][eval exp="sf.playing=f.g_info.playing" ]
	[eval exp="f.g_state.ver=sf.system_ver.TF" cond="sf.playing=='TeachingFeeling'" ]
	[fol_st_reload][dialog_set][reset_shortcut]
[endif]
[endmacro]

[eval exp="f.g_state.awake='awake'" ]
;make.ks はロード时にcallとして呼ばれるため、return必须です。
[return]


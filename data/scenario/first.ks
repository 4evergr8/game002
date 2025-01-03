;;
;メニューボタン非表示
[hidemenubutton]

[call storage="first.ks" target="*plugin"][call storage="ALL/pre/macro_bace.ks" ]
[call storage=make.ks target=*game_ver_reload ][game_ver_reload]
[position layer=message1 page=fore frame="00.png" ][position layer=message0 page=fore frame="00.png" ]


;;TF専用
[call storage="ALL/combine/TF.ks" ]
[jump storage="TF/pre/exp.ks" target=*first ]



;;plugin
*plugin
[eval exp="f.plugin = { }" ]
[plugin name=backlog name_repeat="false" ]
;[plugin name=backlog mark="none" name_repeat="true" l_join=true name_color="true" ]
[plugin name="ts_util"][plugin name="key_event"][plugin name="chat_story"][plugin name=button_ex]

;[plugin name="message_edge"]
[eval exp="f.plugin.backlog=1, f.plugin.ts_util=1, f.plugin.key_event=1, f.plugin.chat_story=1, f.plugin.button_ex=1" ]

;===saveload_ex===
[macro name="saveload_ex_set"]
[iscript]
;if(sf.playing=='TeachingFeeling'){mp.c='#000000';}
if(sf.playing=='TeachingFeeling'){mp.g='TF/dialog/';}
;{mp.g=f.g_info.fol+'dialog/';}
else{mp.g='ALL/dialog/';}
[endscript]
[iscript]
mp.bg_save=mp.g+'bg_save.png', mp.bg_load=mp.g+'bg_load.png'
mp.back_img=mp.g+'back.png',mp.slot=mp.g+'save_slot.png'
mp.new=mp.g+'new.png', mp.delete=mp.g+'delete.png'
mp.thumb=mp.g+'no_data.png', mp.page=mp.g+'page/{page}.png'
[endscript]
[plugin name=saveload_ex bg_save=&mp.bg_save bg_load=&mp.bg_load back_img=&mp.back_img slot_bg=&mp.slot page_img=&mp.page new_img=&mp.new delete_img_delete=&mp.delete thumb_noimage=&mp.thumb text_color=&mp.c date_color=&mp.c num_color=&mp.c ][endmacro]
[saveload_ex_set][eval exp="f.plugin.saveload_ex=1" ]

[return]
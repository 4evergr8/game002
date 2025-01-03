;;选择
*select_a
[cm][black][stopbgm][show_message_w][nolog][delay speed=1]

[_][c_mod n=win st=LR ][font color="lightsteelblue"]
[link target=*a_a]【通常】[endlink]_[link target=*a_b]【眼镜】[endlink]_
[link target=*a_c]【毛茸茸的耳朵】[endlink]_[link target=*a_d]【眼镜+毛茸茸的耳朵】[endlink][r]
[link target=*end_video]【停止】[endlink]
[resetfont][cancelskip][endnolog][resetdelay]
[s]

;;通常
*a_a
[cm][hide_message_w][eval exp="tf.hist_mode=1" ]
[c_show  n=win w=t ][set_black][jump/ tg=*a_a1_ ]
*a_a1
[cm][stop_movie]
*a_a1_
[se/  st="l-wet0.ogg" ]
;[set_black]
[bgmovie storage="a_1a.webm" time="0" loop="true" ][hide_black]
[h_back tg="*end_video"][h_next tg="*a_a2"][cancelskip][s]
*a_a2
[cm][stop_movie][se/ l=t  st="l-wet1.ogg" ]
[bgmovie storage="a_2a.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_a1"][h_next tg="*a_a3"][cancelskip][s]
*a_a3
[cm][stop_movie][se/ l=t  st="l-wet2.ogg" ]
[bgmovie storage="a_3a.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_a2"][h_next tg="*a_a4"][cancelskip][s]
*a_a4
[cm][stop_movie][se/ l=t  st="l-wet2.ogg" ]
[bgmovie storage="a_4a.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_a3"][h_next tg="*a_a5"][cancelskip][s]
*a_a5
[cm][stop_movie][se/ l=t  st="l-wet3.ogg" ]
[bgmovie storage="a_5a.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_a4"][h_next tg="*a_a6"][cancelskip][s]
*a_a6
[cm][stop_movie]
[bgmovie storage="a_6a.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_a5"][h_next tg="*end_video"][cancelskip][s]

;;眼镜
*a_b
[cm][hide_message_w][eval exp="tf.hist_mode=1" ]
[c_show  n=win w=t ][jump/ tg=*a_b1_ ]
*a_b1
[cm][stop_movie]
*a_b1_
[se/  st="l-wet0.ogg" ][set_black]
[bgmovie storage="a_1b.webm" time="0" loop="true" ][hide_black]
[h_back tg="*end_video"][h_next tg="*a_b2"][cancelskip][s]
*a_b2
[cm][stop_movie][se/ l=t  st="l-wet1.ogg" ]
[bgmovie storage="a_2b.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_b1"][h_next tg="*a_b3"][cancelskip][s]
*a_b3
[cm][stop_movie][se/ l=t  st="l-wet2.ogg" ]
[bgmovie storage="a_3b.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_b2"][h_next tg="*a_b4"][cancelskip][s]
*a_b4
[cm][stop_movie][se/ l=t  st="l-wet2.ogg" ]
[bgmovie storage="a_4b.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_b3"][h_next tg="*a_b5"][cancelskip][s]
*a_b5
[cm][stop_movie][se/ l=t  st="l-wet3.ogg" ]
[bgmovie storage="a_5b.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_b4"][h_next tg="*a_b6"][cancelskip][s]
*a_b6
[cm][stop_movie]
[bgmovie storage="a_6b.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_b5"][h_next tg="*end_video"][cancelskip][s]

;;毛茸茸的耳朵
*a_c
[cm][hide_message_w][eval exp="tf.hist_mode=1" ]
[c_show  n=win w=t ][jump/ tg=*a_c1_ ]
*a_c1
[cm][stop_movie]
*a_c1_
[se/  st="l-wet0.ogg" ][set_black]
[bgmovie storage="a_1c.webm" time="0" loop="true" ][hide_black]
[h_back tg="*end_video"][h_next tg="*a_c2"][cancelskip][s]
*a_c2
[cm][stop_movie][se/ l=t  st="l-wet1.ogg" ]
[bgmovie storage="a_2c.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_c1"][h_next tg="*a_c3"][cancelskip][s]
*a_c3
[cm][stop_movie][se/ l=t  st="l-wet2.ogg" ]
[bgmovie storage="a_3c.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_c2"][h_next tg="*a_c4"][cancelskip][s]
*a_c4
[cm][stop_movie][se/ l=t  st="l-wet2.ogg" ]
[bgmovie storage="a_4c.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_c3"][h_next tg="*a_c5"][cancelskip][s]
*a_c5
[cm][stop_movie][se/ l=t  st="l-wet3.ogg" ]
[bgmovie storage="a_5c.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_c4"][h_next tg="*a_c6"][cancelskip][s]
*a_c6
[cm][stop_movie]
[bgmovie storage="a_6c.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_c5"][h_next tg="*end_video"][cancelskip][s]

;;両方
*a_d
[cm][hide_message_w][eval exp="tf.hist_mode=1" ]
[c_show  n=win w=t ][jump/ tg=*a_d1_ ]
*a_d1
[cm][stop_movie]
*a_d1_
[se/  st="l-wet0.ogg" ][set_black]
[bgmovie storage="a_1d.webm" time="0" loop="true" ][hide_black]
[h_back tg="*end_video"][h_next tg="*a_d2"][cancelskip][s]
*a_d2
[cm][stop_movie][se/ l=t  st="l-wet1.ogg" ]
[bgmovie storage="a_2d.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_d1"][h_next tg="*a_d3"][cancelskip][s]
*a_d3
[cm][stop_movie][se/ l=t  st="l-wet2.ogg" ]
[bgmovie storage="a_3d.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_d2"][h_next tg="*a_d4"][cancelskip][s]
*a_d4
[cm][stop_movie][se/ l=t  st="l-wet2.ogg" ]
[bgmovie storage="a_4d.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_d3"][h_next tg="*a_d5"][cancelskip][s]
*a_d5
[cm][stop_movie][se/ l=t  st="l-wet3.ogg" ]
[bgmovie storage="a_5d.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_d4"][h_next tg="*a_d6"][cancelskip][s]
*a_d6
[cm][stop_movie]
[bgmovie storage="a_6d.webm" time="0" loop="true" ][hide_black]
[h_back tg="*a_d5"][h_next tg="*end_video"][cancelskip][s]

;;
*end_video
[cm][stop_movie][hide_black]
[stopbgm][stopse][return_memory]
;[black]


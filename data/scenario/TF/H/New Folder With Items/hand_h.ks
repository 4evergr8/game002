*hand_h

*re
[cm][random n=5][eval exp="f.h_state.v+=1" ]
[if exp="tf.r==1" ][jump/ tg=*t1 ][elsif exp="tf.r==2" ][jump/ tg=*t2 ]
[elsif exp="tf.r==3" ][jump/ tg=*t3 ][elsif exp="tf.r==4" ][jump/ tg=*t4 ]
[else][jump/ tg=*t5 ][endif]

*select
[button target="*re" graphic="cont.png" x="" y="" ]
[button target="*stop" graphic="stop.png" x="" y="" ][s]

*stop
[cm]
[if exp="f.v_wait==1" ]
[elsif exp="f.v_wait==2" ]
[elsif exp="f.v_wait==3" ]
[else]
[endif]


*t1
[jump/ tg=*after_touch ]

*t2
[jump/ tg=*after_touch ]

*t3
[jump/ tg=*after_touch ]

*t4
[jump/ tg=*after_touch ]

*t5
[jump/ tg=*after_touch ]

*after_touch
[eval exp="f.v_wet+=1" ]
[if exp="f.v_wait==1" ][jump/ tg=*heght_b ][elsif exp="f.v_wait==2" ][jump/ tg=*heght_c ]
[elsif exp="f.v_wait==3" ][jump/ tg=*heght_d ][else][jump/ tg=*heght_a ][endif]

*heght_a
[if exp="f.v_wet>=5 && f.state.lust>=200 || f.v_wet>=4 && f.state.lust>=500 || f.v_wet>=6" ][jump/ tg=*high_ ][endif][jump/ tg=*select ]
*heght_b
[if exp="f.v_wet>=4 && f.state.lust>=200 || f.v_wet>=3 && f.state.lust>=500" ][jump/ tg=*high_ ][endif][jump/ tg=*select ]
*heght_c
[if exp="f.v_wet>=2" ][jump/ tg=*high_ ][endif][jump/ tg=*select ]
*heght_d
[if exp="f.v_wet>=2" ][jump/ tg=*high_ ][endif][jump/ tg=*select ]

*high_
[random n=5]
[if exp="tf.r==1" ][jump/ tg=*h1 ]
[elsif exp="tf.r==2" ][jump/ tg=*h2 ]
[elsif exp="tf.r==3" ][jump/ tg=*h3 ]
[elsif exp="tf.r==4" ][jump/ tg=*h4 ]
[else][jump/ tg=*h5" ][endif]

*h1
[jump/ tg=*high ]
*h2
[jump/ tg=*high ]
*h3
[jump/ tg=*high ]
*h4
[jump/ tg=*high ]
*h5
[jump/ tg=*high ]

*high
[if exp="f.v_wait==0 && f.state.lust>=50 || f.v_wait==1 && f.state.lust>=200 || f.v_wait==2 && f.state.lust>=500 || f.v_wait==3 && f.state.lust>=1000" ]
[else][jump/ tg=*ex ][endif]
[button target="*ex" graphic="cont.png" x="" y="" ]
[button target="*no" graphic="stop.png" x="" y="" ][s]

*no
;おねだり
[eval exp="f.v_wait+=1" ][eval exp="f.act.lust+=2" ]
[if exp="f.v_wait==1" ]
[elsif exp="f.v_wait==2" ]
[elsif exp="f.v_wait==3" ]
[else]
[endif]
[button target="*re" graphic="cont.png" x="" y="" ]
[button target="*stop" graphic="stop.png" x="" y="" ][s]


*ex
[cm]
[if exp="f.v_wait==1" ][jump/ tg=*fin ]
[elsif exp="f.v_wait==2" ][jump/ tg=*fin ]
[elsif exp="f.v_wait==3" ][jump/ tg=*fin ]
[elsif exp="f.v_wait==4" ][jump/ tg=*fin ]
[else]
[endif]
[eval exp="f.v_ex=1" ][if exp="f.state.lust<=200" ][jump/ tg=*end_1 ][endif]
[button target="*exex" graphic="cont.png" x="" y="" ]
[button target="*fin" graphic="stop.png" x="" y="" ][s]

*exex
[cm][eval exp="f.v_ex=2" ][if exp="f.state.lust<=500" ][jump/ tg=*end_2 ][endif]
[button target="*exexex" graphic="cont.png" x="" y="" ]
[button target="*fin" graphic="stop.png" x="" y="" ][s]

*exexex
[cm][eval exp="f.v_ex=3" ][if exp="f.state.lust<=1000" ][jump/ tg=*end_3 ][endif]
[button target="*exexexex" graphic="cont.png" x="" y="" ]
[button target="*fin" graphic="stop.png" x="" y="" ][s]

*exexexex
[cm][eval exp="f.v_ex=4" ][jump/ tg=*fin ]


*fin


[if exp="f.v_wait==1" ][eval exp="f.state.lust+=2" ]
[elsif exp="f.v_wait==2" ][eval exp="f.state.lust+=4" ]
[elsif exp="f.v_wait==3" ][eval exp="f.state.lust+=7" ]
[elsif exp="f.v_wait==4" ][eval exp="f.state.lust+=10" ]
[elsif exp="f.v_ex==1" ][eval exp="f.state.lust+=1" ]
[elsif exp="f.v_ex==2" ][eval exp="f.state.lust+=4" ]
[elsif exp="f.v_ex==3" ][eval exp="f.state.lust+=7" ]
[elsif exp="f.v_ex==4" ][eval exp="f.state.lust+=10" ]
[endif]

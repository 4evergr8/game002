[loadcss file="./data/others/plugin/ts_util/ts_util.css"]
[loadcss file="./data/others/plugin/ts_util/ts_table.css"]

; =============================================================================
; **** フォント ****
; =============================================================================
; -----------------------------------------------------------------------------
; [fontface] フォント種類の設定
; ※ first.ksなど最初に呼び出します。
; ※ フォントファイルは\data\othersに格納してください。
; ※ TrueTypeフォント(.ttf)、OpenTypeフォント(.otf)、WOFFフォント(.woff)、WOFF2フォント(.woff2)が指定可能です。
; ※ 変換が可能な場合はWOFF2がサイズが小さくなるのでおすすめ。
;
; <パラメータ>
; face: フォントを使うときの名前【必須】
; file: フォントファイル名【必須】
;
; <サンプルコード>
; [fontface face="myfont" file="xxx.otf"]
; [deffont face="myfont"]
; [resetfont]
; -----------------------------------------------------------------------------
[macro name=fontface]
[iscript]
$(function(){
  var ext= { woff:"woff", woff2:"woff2", ttf:"truetype", otf:"opentype"};
  var style = '';
  style += '<style type="text/css">';
  style += '@font-face {font-family:'+ mp.face + ';'
  style += 'src: url("./data/others/' + mp.file + '") format("' + ext[mp.file.split('.').pop()] + '");'
  style += 'font-weight:normal;}'
  style += '</style>';
  $('head').append(style);
});
[endscript]
[endmacro]

; =============================================================================
; **** カーソル ****
; =============================================================================
; -----------------------------------------------------------------------------
; [cursor_wait] 砂時計カーソルに変更
; 砂時計カーソルに変更する。
;
; <サンプルコード>
; [cursor_wait]
; -----------------------------------------------------------------------------
[macro name=cursor_wait]
[iscript]
$('body').addClass('cursol_wait');
[endscript]
[endmacro]

; -----------------------------------------------------------------------------
; [cursor_wait_off] 砂時計カーソルから元に戻す
; 砂時計カーソルから元に戻す。
;
; <サンプルコード>
; [cursor_wait_off]
; -----------------------------------------------------------------------------
[macro name=cursor_wait_off]
[iscript]
$('body').removeClass('cursol_wait');
[endscript]
[endmacro]

; -----------------------------------------------------------------------------
; [cursor_img] カーソルを変更
; ボタンの上でマウスカーソルを任意の画像に変更する。
; xとyにはマウスカーソルの選択位置を設定。左上の場合はx=0 ｙ=0
;
; <パラメータ>
; name: 既読時の文字色(0xFFFFFF形式)【必須】
; storage: カーソルの画像【必須】
; ｘ: マウスの照準(ホットスポット)x位置【必須】
; ｙ: マウスの照準(ホットスポット)y位置【必須】
;
; <サンプルコード>
; [button name="secret" graphic="transparent.png"]
; [cursor_img name="secret" storage="search.png" x=15 y=15]
; -----------------------------------------------------------------------------
[macro name=cursor_img]
[iscript]
(function() {
    $('.' + mp.name).css({'cssText': $('.' + mp.name).attr('style') + "cursor:url('./data/image/" + mp.storage + "')" + mp.x + " " + mp.y + ", pointer"});
}());
[endscript]
[endmacro]

; =============================================================================
; **** glink ****
; =============================================================================
; -----------------------------------------------------------------------------
; [glink] タグの既読色設定
; ※ [glink]の後に毎回指定してください
;
; <パラメータ>
; color: 既読時の文字色(0xFFFFFF形式)【必須】
;
; <サンプルコード>
; [glink_read_color color="0xFFFFFF"]
; -----------------------------------------------------------------------------
[macro name=glink_read_color]
[iscript]
// 色の指定を0xFFFFFF形式から#FFFFFF形式に変換
var color = mp.color.replace("0x","#");

// ラベル取得
var record = tyrano.plugin.kag.variable.sf.record;

// [glink]タグの数だけ繰返し
$(".glink_button").each(function (i) {
    // [glink]からパラメータを取得
    var pm = $(this).data("event-pm");
    if(!pm["storage"]){
        console.error("[glink_read_color]エラー！ [glink]に既読色を設定する場合は[storage]パラメータが必須です");
        return true;
    }
    // [glink]タグからstorageとtargetのパラメータを取得
    var storage = pm["storage"].replace(".ks", "");
    var target = pm["target"].replace("*", "");
    // ラベルが記録されていれば文字色を変更
    if (record["trail_" + storage + "_" + target]) {
        $(this).css("color", color);
    }
});
[endscript]
[endmacro]

; =============================================================================
; *** アニメーション ****
; =============================================================================
; -----------------------------------------------------------------------------
; [slide_down] スライドダウンして表示
;
; <サンプルコード>
; [slideDown name="akane" mp.time=200]
; -----------------------------------------------------------------------------
[macro name=slide_down]
[iscript]
    $(mp.name).slideDown(mp.time);
[endscript]
[endmacro]

; -----------------------------------------------------------------------------
; [slide_up] スライドアップで非表示
;
; <サンプルコード>
; [slideUp name="akane" mp.time=200]
; -----------------------------------------------------------------------------
[macro name=slide_up]
[iscript]
    $(mp.name).slideUp(mp.time);
[endscript]
[endmacro]

; -----------------------------------------------------------------------------
; [slide_out] スライドアウト
; 指定した要素を画面外に移動します。
; スタッフロールなどにも使用可能です。
;
; <パラメータ>
; ■ name【必須】: 移動させる要素の名前 
; ■ dir【必須】:  移動させる方向(left/right/bottom/up)
; ■ time【必須】: スライドアウト時間をミリ秒で指定
;
; <サンプルコード>
; [slideUp name="akane" dir="up" time=10000]
; -----------------------------------------------------------------------------
[macro name=slide_out]
[iscript]
if(mp.dir == "left"){
    tf.x = 0 - $("."+mp.name).offset().left -  $("."+mp.name).width();
    tf.y = 0;
} else if(mp.dir == "right"){
    tf.x = window.innerWidth - $("."+mp.name).offset().left;
    tf.y = 0;
} else if(mp.dir == "bottom"){
    tf.x = 0;
    tf.y = window.innerHeight - $("."+mp.name).offset().top;
} else if(mp.dir == "up"){
    tf.x = 0;
    tf.y = 0 - $("."+mp.name).offset().top -  $("."+mp.name).height();
}
$("."+mp.name).css('transition-delay', '0ms');
$("."+mp.name).css('transition-timing-function', 'linear');
$("."+mp.name).css('transition-duration', mp.time + 'ms');
$("."+mp.name).css('transform', 'translate(' + tf.x + 'px,' + tf.y + 'px)');
[endscript]

[endmacro]

; =============================================================================
; *** システム ****
; =============================================================================
; -----------------------------------------------------------------------------
; [confirm_close] 終了確認ダイアログの表示設定(V5用/PC版のみ)
; PC版で画面を終了する時、終了確認ダイアログを表示します。 
;
; <サンプルコード>
; [confirm_close]
; -----------------------------------------------------------------------------
[macro name=confirm_close]
[iscript]
if ($.isElectron()) {
    window.addEventListener('beforeunload', (e) => {
        // タイトルに戻るときには処理しない
        if($('.remodal_title').text() == "タイトルに戻ります。よろしいですね？") {
            return;
        }
        e.preventDefault();
        e.returnValue = '';        
        if($('[data-remodal-id=modal]').remodal().getState() === 'closed') {
            $.confirm("ゲームを終了しますか？", () => {
                let win = require('electron').remote.getCurrentWindow();
                win.destroy();
            });
        }
    });
}
[endscript]
[endmacro]

; -----------------------------------------------------------------------------
; [close_window] アプリケーションの終了(V5用/PC版のみ)
; -----------------------------------------------------------------------------
[macro name=close_window]
[iscript]
if ($.isElectron()) {
    let win = require('electron').remote.getCurrentWindow();
    win.close();
}
[endscript]
[endmacro]

; -----------------------------------------------------------------------------
; [center_window] 画面をディスプレイの中央に移動(V5用/PC版のみ)
; PC版で画面をディスプレイの中央に移動します。
;
; <サンプルコード>
; [center_window]
; -----------------------------------------------------------------------------
[macro name=center_window]
[iscript]
if ($.isElectron()) {
    let win = require('electron').remote.getCurrentWindow();
    win.center();
}
[endscript]
[endmacro]

; -----------------------------------------------------------------------------
; [resize_window] 画面サイズ変更(V5用/PC版のみ)
; PC版でウィンドウサイズを変更します。
;
; <パラメータ>
; width【必須】: 横幅
; height【必須】: 縦幅
;
; <サンプルコード>
; [resize_window width=960 height=540]
; -----------------------------------------------------------------------------
[macro name=resize_window]
[iscript]
if ($.isElectron()) {
    let win = require('electron').remote.getCurrentWindow();
    win.setContentSize(parseInt(mp.width),parseInt(mp.height))
}
[endscript]
[endmacro]

; -----------------------------------------------------------------------------
; ウィンドウからフルスクリーンに変更(V5用/PC版のみ)
; -----------------------------------------------------------------------------
[macro name=enter_fullscreen]
[iscript]
if ($.isElectron()) {
    let win = require('electron').remote.getCurrentWindow();
    win.setFullScreen(true);
}
[endscript]
[endmacro]

; -----------------------------------------------------------------------------
; フルスクリーンからウィンドウに変更(V5用/PC版のみ)
; -----------------------------------------------------------------------------
[macro name=leave_fullscreen]
[iscript]
if ($.isElectron()) {
    let window = require('electron').remote.getCurrentWindow();
    window.setFullScreen(false);
}
[endscript]
[endmacro]

; -----------------------------------------------------------------------------
; フルスクリーン切替(V5用/PC版のみ)
; -----------------------------------------------------------------------------
[macro name=toggle_fullscreen]
[iscript]
if ($.isElectron()) {
    let window = require('electron').remote.getCurrentWindow();
    window.setFullScreen(!window.isFullScreen());
}
[endscript]
[endmacro]

; =============================================================================
; *** ホバー表示 ****
; =============================================================================
; -----------------------------------------------------------------------------
; [hover_show] ホバー表示
;
; <パラメータ>
; name: ホバー時に表示する要素のnameを指定
; x: 縦位置(px)
; y: 横位置(px)
; width: 横幅(px)
; height: 縦幅(px)
;
; <サンプルコード>
; [hover_show name="role_button" x=0 y=0 width=1280 height=50]
; -----------------------------------------------------------------------------
[macro name=hover_show]
[iscript]

$('.' + mp.name).css({'opacity':'0'});
$(`.${mp.name}:last`).after(`<div class='TSFadeArea ${mp.name}' style='position: absolute; top: ${mp.y}px; left: ${mp.x}px; width: ${mp.width}px; height:${mp.height}px; z-index: 9999; background: rgba(0,0,0,0); opacity: 0'></div>`);

// フェード用のクラスを追加
$('.' + mp.name).addClass('TSFade');

// 追加したクラスのカスタム属性にフェート対象のクラス名を設定
$('.TSFade').attr('data-ts-fade-name', mp.name);
[endscript]
[endmacro]

; ---- イベント登録 ----
[iscript]
// メニュー表示領域をカーソル移動したときに、メニューを表示・非表示
$(document).on({
    'mouseenter' : function() {$('.' + $(this).attr('data-ts-fade-name')).stop().animate({ opacity: 1 });},
    'mouseleave' : function() {$('.' + $(this).attr('data-ts-fade-name')).stop().animate({ opacity: 0 });}
}, '.TSFade');
[endscript]

; -----------------------------------------------------------------------------
; [free_hover_show] ホバー表示削除
;
; <パラメータ>
; name: ホバー表示する領域のnameを指定
;
; <サンプルコード>
; [free_hover_show name='role_button']
; -----------------------------------------------------------------------------
[macro name=free_hover_show]
[iscript]
$('.TSFadeArea, .' + &mp.name).remove();
$('.' + mp.name).removeClass('TSFade');
[endscript]
[endmacro]

; =============================================================================
; **** グラフ ****
; =============================================================================
; -----------------------------------------------------------------------------
; [bar_graph] 棒グラフ表示(横方向/HP表示などで使用)
;
; <パラメータ>
; name: 【必須】imageタグなどで指定した棒グラフの名前
; now: 【必須】現在の値
; max: 【必須】最大値(パーセンテージ「%」で表示したい場合は100にする)
; time: アニメーションにかける時間をミリ秒で指定。デフォルトは200
;
; <サンプルコード>
; [image layer="0" x="150" y="150" name="hp" storage="heart.png"]
; [bar_graph name="hp" now=50 max=100 time=1000]
; -----------------------------------------------------------------------------
[macro name=bar_graph]

[iscript]
$('.' + mp.name).css( {
    'object-fit': 'none',
    'object-position': '0 0'
} );
// 画像のサイズを取得してwidthを設定
let image = new Image();
image.originSrc = $('.' + mp.name).attr('src');
image.src = "";
image.onload = function(){
    $('.' + mp.name).animate({width:(image.width * (mp.now/mp.max))  + 'px'}, mp.time || 200, "easeInQuad");
    $('.' + mp.name).height(image.height + 'px');
}
image.src = image.originSrc;
[endscript]

[endmacro]

; =============================================================================
; **** ダイアログ ****
; =============================================================================
; -----------------------------------------------------------------------------
; [dialog_opt] ダイアログ表示設定
; ダイアログ表示を変更する。
;
; <パラメータ>
; graphic: ダイアログ画像
; okimg: OK画像
; cancelimg: キャンセル画像
; title_color: タイトル文字色(0xFFFFFF形式)
; title_shadow: タイトル文字影色(0xFFFFFF形式)
; text_color: テキスト文字色(0xFFFFFF形式)
; button_color: ボタン文字色(0xFFFFFF形式)
; button_shadow: ボタン影色(0xFFFFFF形式)
;
; <サンプルコード>
; [dialog_opt graphic="dialog.png" okimg="dialog-ok.png" cancelimg="dialog-cancel.png" title_color=0xeaeaea title_shadow=0x000000 text_color=0x685454 button_color=0x685454 button_shadow=0x000000]
; -----------------------------------------------------------------------------
[macro name=dialog_opt]
[iscript]
$(function(){
    // 初回のみ呼出
    if($('#ts_dialog').length == 0){
        // CSS読込
        let style = '<link id="ts_dialog" rel="stylesheet" href="./data/others/plugin/ts_util/ts_dialog.css">';
        $('head link:last').after(style);

        // ダイアログを開いているときにダイアログの幅と高さを調整
        $('.remodal').on('opening', function () {
            $('.remodal').height($('.remodal-confirm:eq(0)').position().top +
            parseInt($(":root").css("--dialog-bottom")) +
            parseInt($(":root").css("--dialog-button-height")) -
            parseInt($(":root").css("--dialog-border-size"))
            );
        });
    }

    // ダイアログ画像
    if(mp["graphic"]){
        $(":root").css("--dialog-img", "url('../../../image/" + mp.graphic + "')");
    }
    // OK画像
    if(mp["okimg"]){
        $(":root").css("--dialog-img-ok", "url('../../../image/" + mp.okimg + "')");
    }
    // キャンセル画像
    if(mp["cancelimg"]){
        $(":root").css("--dialog-img-cancel", "url('../../../image/" + mp.cancelimg + "')");
    }
    // タイトル文字色
    if(mp["title_color"]){
        $(":root").css("--dialog-title-color", 'rgba('+[(mp["title_color"]>>16)&255, (mp["title_color"]>>8)&255, mp["title_color"]&255].join(',')+',1)');
    }
    // タイトル文字影色
    if(mp["text_color"]){
        $(":root").css("--dialog-text-color", 'rgba('+[(mp["text_color"]>>16)&255, (mp["text_color"]>>8)&255, mp["text_color"]&255].join(',')+',1)');
    }
    // テキスト文字色
    if(mp["button_color"]){
        $(":root").css("--dialog-button-color", 'rgba('+[(mp["button_color"]>>16)&255, (mp["button_color"]>>8)&255, mp["button_color"]&255].join(',')+',1)');
    }
    // ボタン文字色
    if(mp["title_shadow"]){
        $(":root").css("--dialog-title-shadow", 'rgba('+[(mp["title_shadow"]>>16)&255, (mp["title_shadow"]>>8)&255, mp["title_shadow"]&255].join(',')+',0.3)');
    }
    // ボタン影色
    if(mp["button_shadow"]){
        $(":root").css("--dialog-button-shadow", 'rgba('+[(mp["button_shadow"]>>16)&255, (mp["button_shadow"]>>8)&255, mp["button_shadow"]&255].join(',')+',0.3)');
    }
});
[endscript]
[endmacro]

; -----------------------------------------------------------------------------
; [dialog_msg] ダイアログ文字列設定
; ダイアログの中の文字が設定できます。[r]タグで改行も可能
;
; <パラメータ>
; text: ダイアログ文字列([r]タグで改行が可能)
;
; <サンプルコード>
; [dialog_msg text="ダイアログの中の文字が設定できます。[r]rタグで改行もできるよ。"]
; [dialog type="alert" text="メッセージ内容" ]
; -----------------------------------------------------------------------------
[macro name=dialog_msg]
[iscript]
// [r]タグを置き換えて文字列設定
$('.remodal_txt').css('margin-top', $(":root").css("--dialog-text-top"));
$('.remodal_txt').html(mp.text.replace(/\[r]/g, "</br>"));
[endscript]
[endmacro]

[iscript]
// ダイアログを閉じた時に中身をクリアするイベントを登録しておく
$('.remodal').on('closed', function () {
    $('.remodal_txt').css('margin-top', '0');
    $('.remodal_txt').html('');
});
[endscript]

; =============================================================================
; **** 合成モード ****
; =============================================================================
; -----------------------------------------------------------------------------
; [mixblendmode] レイヤー毎の合成
;
; <パラメータ>
; name: ここで指定した値が設定されている要素に対して合成を行います。
; mode: 合成方法を指定できます。次の効果が使えます → normal/multiply/screen/overlay/darken/lighten/color-dodge/color-burn/hard-light/soft-light/difference/exclusion/hue/saturation/color/luminosity
;
; <サンプルコード>
; [mixblendmode name="secret" mode="screen"]
; -----------------------------------------------------------------------------
[macro name=mixblendmode]
[iscript]
(function() {
    $('.' + mp.name).css('mix-blend-mode', mp.mode);
}());
[endscript]
[endmacro]

; =============================================================================
; **** テーブル ****
; =============================================================================
; -----------------------------------------------------------------------------
; テーブル
;
; <パラメータ>
; top: テーブルの上端位置
; left: テーブルの左端位置
; height: テーブルの高さ
; width: テーブルの幅
; 
; <サンプルコード>
; [glink target="table_end" text="テーブル表示終了"]
; [table top=10 left=10 height=500 width=100]
; [tabledata strage="ts_sample.ks" target="*table_end" text="ひのきのぼう" text2="１００Ｇ"]
; [tabledata strage="ts_sample.ks" target="*table_end" text="ぬののふく" text2="１０００Ｇ"]
; [tabledata strage="ts_sample.ks" target="*table_end" text="やくそう" text2="１０Ｇ"]
; [tableend]
; *table_end
; -----------------------------------------------------------------------------
[macro name=table]

[iscript]
$("#root_layer_system").prepend('<div id="table_container" style="z-index:9999999; position:absolute;" class="scrollArea"><table/></div>');
$(".scrollArea").hide();
$('.scrollArea').css('top', mp.top+'px');
$('.scrollArea').css('left', mp.left+'px');
$('.scrollArea').css('height', mp.height+'px');
$('.scrollArea').css('width', mp.width+'px');
[endscript]

[endmacro]

; -----------------------------------------------------------------------------
; テーブル行追加
;
; <パラメータ>
; strage: 移動するシナリオファイル名【必須】
; target: ジャンプ先のラベル名【必須】4
; -----------------------------------------------------------------------------
[macro name=tabledata]

[iscript]
$('table').append("<tr data-strage='" + mp.strage + "' data-target='" + mp.target + "'/>");
$('table tr:last').append("<td>" + mp.text + "</td>");
$('table tr:last').append("<td>" + (mp.text2 || "") + "</td>");
[endscript]

[endmacro]

; -----------------------------------------------------------------------------
; テーブル終了
;
; <パラメータ>
; -----------------------------------------------------------------------------
[macro name=tableend]

[iscript]
$("#table_container").off("click");
$("#table_container").on('click', 'tr', function(){
    $(this).siblings().removeClass("selected");
    $(this).addClass("selected");
    tyrano.plugin.kag.ftag.startTag("jump",{storage: $(this).data("strage"), target: $(this).data("target")});
});
$(".scrollArea").fadeIn();
[endscript]

[endmacro]

; -----------------------------------------------------------------------------
; テーブル開放
;
; テーブルを削除します。
; -----------------------------------------------------------------------------
[macro name=freetable]
[iscript]
if($("#table_container").length) {
    $("#table_container").off("click");
    $("#table_container").remove();
}
[endscript]
[endmacro]


[return]
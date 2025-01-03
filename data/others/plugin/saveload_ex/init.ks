[iscript]
sf._saveload = {
    slot: parseInt(mp.slot) || 10,
    exvar: mp.exvar || "",
    exvar_join: mp.exvar_join || "",
    delete: (mp.delete == "true" ? true : true),
    lock: (mp.lock == "true" ? true : false),
    dialog: (mp.dialog == "true" ? true : false),
    new: (mp.new == "true" ? true : true),
    fadetime: parseInt(mp.fadetime) || 0,
    fademask: (mp.fademask == "true" ? true : true),
    maskcolor: mp.maskcolor || "black",
    maskimage: mp.maskimage || "",
    masktime: (mp.fademask == "true" ? parseInt(mp.fadetime) : 0),
    comment: (mp.comment == "true" ? true : false),
    memory: (mp.memory == "true" ? true : true),
    hold: (mp.hold == "true" ? true : false),

    //デザインカスタマイズ
    bg_save:  mp.bg_save || "../others/plugin/saveload_ex/image/bg.png",
    bg_load:  mp.bg_load || "../others/plugin/saveload_ex/image/bg.png",
    area_x: parseInt(mp.area_x) || 39,
    area_y: parseInt(mp.area_y) || 140,

    scroll_width: parseInt(mp.scroll_width) || 12,
    scroll_thumb_radius: parseInt(mp.scroll_thumb_radius) || 0,
    scroll_thumb_color: mp.scroll_thumb_color || "#9B0D49",
    scroll_base_radius: parseInt(mp.scroll_base_radius) || 0,
    scroll_base_color: mp.scroll_base_color || "transparent",

    back_width: parseInt(mp.back_width) || "auto",
    back_height : parseInt(mp.back_height) || "auto",
    back_x: parseInt(mp.back_x) || 1497,
    back_y: parseInt(mp.back_y) || 9,
    back_img: mp.back_img || "../others/plugin/saveload_ex/image/back.png",

    page_img: mp.page_img || "../others/plugin/saveload_ex/image/{page}.png",
    page_x: parseInt(mp.page_x) || 697,     
    page_y: parseInt(mp.page_y) || 5,
    page_vertical: (mp.page_vertical == "true" ? true : false),
    page_margin: parseInt(mp.page_margin) || 4,

    slot_width: parseInt(mp.slot_width) || 738,
    slot_height: parseInt(mp.slot_height) || 136,
    slot_marginx: parseInt(mp.slot_marginx) || 6,
    slot_marginy: parseInt(mp.slot_marginy) || 6,
    slot_column: parseInt(mp.slot_column) || 2,
    slot_bg: mp.slot_bg || "../others/plugin/saveload_ex/image/culumn1.png",
    slot_vertical: (mp.slot_vertical == "true" ? true : false),

    num_width: parseInt(mp.num_width) || 20,   
    num_height: parseInt(mp.num_height) || 34,
    num_x: parseInt(mp.num_x) || 10,    
    num_y: parseInt(mp.num_y) || 7,     
    num_color: mp.num_color || "#ffffff",   
    num_align: mp.num_align || "left",   
    num_size: mp.num_size || 26,

    thumb_width: parseInt(mp.thumb_width) || 157,
    thumb_height: parseInt(mp.thumb_height) || 89,
    thumb_x: parseInt(mp.thumb_x) || 2,
    thumb_y: parseInt(mp.thumb_y) || 45,
    thumb_noimage: mp.thumb_noimage || "../others/plugin/saveload_ex/image/noimage.png",

    date_width: parseInt(mp.date_width) || 240,
    date_height: parseInt(mp.date_height) || 27,
    date_x: parseInt(mp.date_x) || 170,
    date_y: parseInt(mp.date_y) || 10,
    date_color: mp.date_color || "#ffffff",
    date_align: mp.date_align || "left",
    date_size: mp.date_size || 20,

    text_width: parseInt(mp.text_width) || 556,
    text_height: parseInt(mp.text_height) || 91,
    text_x: parseInt(mp.text_x) || 173,
    text_y: parseInt(mp.text_y) || 40,
    text_color: mp.text_color || "#ffffff",
    text_align: mp.text_align || "left",
    text_size: mp.text_size || 17,

    var_width: parseInt(mp.var_width) || 300,
    var_height: parseInt(mp.var_height) || 30,
    var_x: parseInt(mp.var_x) || 210,
    var_y: parseInt(mp.var_y) || 30,
    var_color: mp.var_color || "#ffffff",
    var_align: mp.var_align || "left",
    var_size: mp.var_size || 24,

    lock_width: parseInt(mp.lock_width) || "auto",
    lock_height: parseInt(mp.lock_height) || "auto",
    lock_x: parseInt(mp.lock_x) || 600,
    lock_y: parseInt(mp.lock_y) || 5,
    lock_img_lock: mp.lock_img_lock || "../others/plugin/saveload_ex/image/lock.png",
    lock_img_unlock: mp.lock_img_unlock || "../others/plugin/saveload_ex/image/unlock.png",

    delete_width: parseInt(mp.delete_width) || "auto",
    delete_height: parseInt(mp.delete_height) || "auto",
    delete_x: parseInt(mp.delete_x) || 71,
    delete_y: parseInt(mp.delete_y) || 9,
    delete_img_delete: mp.delete_img_delete || "../others/plugin/saveload_ex/image/delete.png",
    delete_img_undelete: mp.delete_img_undelete || "../others/plugin/saveload_ex/image/undelete.png",

    new_width: parseInt(mp.new_width) || "auto",
    new_height: parseInt(mp.new_height) || "auto",
    new_x: parseInt(mp.new_x) || 1,
    new_y: parseInt(mp.new_y) || 44,
    new_img: mp.new_img || "../others/plugin/saveload_ex/image/new.png",

    comment_width: parseInt(mp.comment_width) || 280,
    comment_height: parseInt(mp.comment_height) || 28,
    comment_x: parseInt(mp.comment_x) || 400,
    comment_y: parseInt(mp.comment_y) || 6,
    comment_button_img: mp.comment_button_img || "../others/plugin/saveload_ex/image/unlock.png",
    comment_button_width: parseInt(mp.comment_button_width) || "auto",
    comment_button_height: parseInt(mp.comment_button_height) || "auto",
    comment_button_x: parseInt(mp.comment_button_x) || 695,
    comment_button_y: parseInt(mp.comment_button_y) || 6,
    comment_placeholder: mp.comment_placeholder || "コメント",
    comment_size: mp.comment_size || 20,
}
if(mp.saveload !== undefined){
    sf._saveload = $.extend(true, sf._saveload, mp.saveload)
}
[endscript]

[sysview type=save storage="./data/others/plugin/saveload_ex/html/save.html"]
[sysview type=load storage="./data/others/plugin/saveload_ex/html/load.html"]
[loadjs storage="plugin/saveload_ex/main.js"]
[loadcss file="./data/others/plugin/saveload_ex/saveload.css"]
[return]
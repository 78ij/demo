;毎行保存用サブルーチン
*autoLabelLabel|
;@if exp = "fml(4,0) == void"
@position layer=message4 visible = true
@iscript
kag.fore.messages[4].clear();
clib();
@endscript
@current layer=message4 page=fore
@if exp= "isopen == 0"
@locate x = 0 y = 0
@button normal = "menu"
@locate x= 108 y = 28
@button graphic="save" enterse ="se1" clickse = "se2"
@locate x = 108 y = 77
@button graphic="quicksave" enterse ="se1" clickse = "se2"
@locate x= 108 y = 126
@button graphic="load" enterse ="se1" clickse = "se2"
@locate x= 108 y = 175
@button graphic="quickload" enterse ="se1" clickse = "se2"
@locate x= 108 y = 224
@button graphic="checka" enterse ="se1" clickse = "se2"
@locate x=108 y =273
@button graphic="setting" enterse ="se1" clickse = "se2"
@locate x=108 y=322
@button graphic="returntop" storage = "title.ks" target=*title enterse ="se1" clickse = "se2"
@else
@locate x = 0 y = 0
@button normal = "menu"
@locate x= 0 y = 28
@button graphic="save" enterse ="se1" clickse = "se2"
@locate x = 0 y = 77
@button graphic="quicksave" enterse ="se1" clickse = "se2"
@locate x= 0 y = 126
@button graphic="load" enterse ="se1" clickse = "se2"
@locate x= 0 y = 175
@button graphic="quickload" enterse ="se1" clickse = "se2"
@locate x= 0 y = 224
@button graphic="checka" enterse ="se1" clickse = "se2"
@locate x=0 y =273
@button graphic="setting" enterse ="se1" clickse = "se2"
@locate x=0 y=322
@button graphic="returntop" storage = "title.ks" target=*title enterse ="se1" clickse = "se2"
@endif
@iscript
init();
@endscript
;@endif
@return

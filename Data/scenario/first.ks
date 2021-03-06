;Preparations
;Created By 78ij in 2018.2

;message0 : advl used to display sceneario
;message1 : menul used to display save & load screen, menu, etc.
;message2 : val used to display novel sceneario.
;message3 : used to display the characters' names.
;message4 : used to display menu in game.
;message5 : used to display select buttons.
;Load plugins
@iscript
if(sf.bgvolume == void){
	sf.bgvolume = 100;
	dm("aaaa");
}
if(sf.sevolume == void)
	sf.sevolume = 100;
KAGLoadScript("moveBtn.tjs");
KAGLoadScript("fadeBtn.tjs");
KAGLoadScript("interpolateBtn.tjs"); 
KAGLoadScript("SaveLoadButtonLayer.tjs");
tf.needempty = false;
@endscript

;Macro defination
@macro name = bgimage
@backlay
@image storage = %storage layer = base page = back
@endmacro

@macro name=n
@hr cond = "tf.needempty"
@current layer=message3
@deffont size = 23 face = "����"
@er
@style align = center
@nowait
@endmacro

@macro name=nn
@hr
@deffont size = 20 face = "����"
@eval exp="tf.needempty = true"
@current layer = message0
@style align = left
@locate x = 20 y = 50
@endnowait
@endmacro

@macro name=initintb
@eval exp="tf.ibarray = []"
@endmacro

@macro name = sele1
@current layer=message5
@locate x=200 y=119
@button normal=selectn over=selecto on=selectc storage = %storage target=%target
@ptext i = 0 text=%text
@endmacro

@macro name = sele2
@current layer=message5
@locate x=200 y=160
@button normal=selectn over=selecto on=selectc storage = %storage target=%target
@ptext i = 1 text=%text
@endmacro

@macro name = sele3
@current layer=message5
@locate x=200 y=201
@button normal=selectn over=selecto on=selectc storage = %storage target=%target
@ptext i = 2 text=%text
@endmacro

@macro name = sele4
@current layer=message5
@locate x=200 y=242
@button normal=selectn over=selecto on=selectc storage = %storage target=%target
@ptext i = 3 text=%text
@endmacro
@macro name=endsele
@hr
@current layer=message5
@er
@eval exp="kag.clickWaiting = false"
@current layer=message0
@er
@current layer=message3
@er
@endmacro
;init message3
@position layer = message3 page = fore visible = true opacity = 0 top = 372 left = 20 marginl=0 margint=0 marginr=0 marginb=0 height=35 width = 220

;init message4
@position layer = message4 page = fore visible = true opacity = 0 top = 0 left = 852 width = 108 height = 1000 marginl=0 margint=0 marginr=0 marginb=0

;init message5
@position layer=message5 page=fore visible = true opacity = 0 top=0 left=0 width=960 height=540 marginl=0 margint = 0 marginr=0 marginb=0

;change position of messsage1
@layopt layer = message1 index = 200000000

;bgm se volume config
@iscript
var a = %[];
a.volume = sf.bgvolume;
kag.bgm.setOptions(a);
a.volume = sf.sevolume;
kag.se[0].setOptions(a);
@endscript

;speed of displaying
@delay speed = 30

;init hidden value
@if exp="f.whitehair == void"
@eval exp="f.whitehair = 0"
@endif
@if exp="f.trans == void"
@eval exp="f.trans = 0"
@endif

;display logo
@jump storage = "title.ks" target = *logo

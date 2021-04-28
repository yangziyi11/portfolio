SHeight=Framer.Device.screen.height
SWidth=Framer.Device.screen.width
MHeight = 1334
MWidth = 750
HeightRatio = SHeight/MHeight
WidthRatio = SWidth/MWidth


screen.backgroundColor="#fff"
blue= "#009CD4"
hiderStyle = {
	backgroundColor: blue
}
livingRoom = true
buttonStyle = {
	backgroundColor: "transparent"
}
goalTemp = 72
offX = WidthRatio*1000
InX = WidthRatio*0
homeOffX = WidthRatio* -900
slideOutX=WidthRatio*621
mode = "Cool"
fan = "Auto"


# import screens

#settingUnselect0
settingUnselect0 = new Layer
	width: WidthRatio*750
	height: HeightRatio*1333
	image: "images/background.png"
	shadowSpread: 1
	shadowColor: "rgba(0,0,0,0.5)"
	shadowX: -3
	shadowBlur: 20

	


shortMenu = new Layer
	width: WidthRatio*236
	height: HeightRatio*156
	image: "images/shortMenu.png"
	x:WidthRatio* 49
	y: HeightRatio*235
	visible: true
	parent:settingUnselect0

longMenu = new Layer
	width: WidthRatio*317
	height: HeightRatio*614
	image: "images/longMenu.png"
	x: WidthRatio*49
	y: HeightRatio*1346
	visible: true
	parent:settingUnselect0

bar = new Layer
	width: WidthRatio*747
	height: HeightRatio*172
	image: "images/bar.png"
	x: WidthRatio*1
	parent:settingUnselect0
	visible:true

			

text0 = new Layer
	html: "Living Room"
	style: {
		fontFamily:"BentonSans, Helvetica Neue, Helvetica, Arial, sans-serif"
		fontSize: "#{WidthRatio*35}pt"
		backgroundColor:"transparent"
	}
	width: WidthRatio*360
	y: HeightRatio*95
	height: HeightRatio*114
	x: WidthRatio*47
	parent: bar		
	
#import screens
	
initial1 = new Layer
	width: WidthRatio*750
	height: HeightRatio*1337
	image: "images/Original.png"
	


temperature2 = new Layer
	width: WidthRatio*750
	height: HeightRatio*1333
	image: "images/temperatureEdited.png"
	shadowSpread: 1
	shadowColor: "rgba(0,0,0,0.5)"
	shadowX: -3
	shadowBlur: 20


targetTemp3 = new Layer
	width: WidthRatio*750
	height: HeightRatio*1333
	image: "images/changeTempEdited.png"
	shadowSpread: 1
	shadowColor: "rgba(0,0,0,0.5)"
	shadowX: -3
	shadowBlur: 20


	

livingroomOff4 = new Layer
	width: WidthRatio*750
	height: HeightRatio*1333
	image: "images/livingOffEdited.png"
	shadowSpread: 1
	shadowColor: "rgba(0,0,0,0.5)"
	shadowX: -3
	shadowBlur: 20
	


disSchedule = new Layer
	width: WidthRatio*750
	height: HeightRatio*1333
	image: "images/disabledSchedule.png"
	shadowSpread: 1
	shadowColor: "rgba(0,0,0,0.3)"
	shadowX: -3
	shadowBlur: 20


ModeFan5 = new Layer
	width: WidthRatio*753
	height: HeightRatio*1335
	image: "images/ModeFan.png"
	shadowSpread: 1
	shadowColor: "rgba(0,0,0,0.3)"
	shadowX: -3
	shadowBlur: 20

	


Notification01 = new Layer
	width: WidthRatio*752
	height: HeightRatio*1334
	image: "images/Notification.png"
	shadowSpread: 1
	shadowColor: "rgba(0,0,0,0.3)"
	shadowX: -3
	shadowBlur: 20

	


productInfo02 = new Layer
	width: WidthRatio*752
	height: HeightRatio*1334
	image: "images/productInfo.png"


	


productSetting03 = new Layer
	width: WidthRatio*752
	height: HeightRatio*1334
	image: "images/productSetting.png"


scheduleBackground = new Layer
	width: WidthRatio*752
	height: HeightRatio*1488
	image: "images/scheduleBackground.png"


try_ = new Layer
	width: WidthRatio*753
	height: HeightRatio*1490
	image: "images/try.png"
	shadowSpread: 1
	shadowColor: "rgba(0,0,0,0.3)"
	shadowX: -3
	shadowBlur: 20




	
#setting position for screens
initial1.x= InX
targetTemp3.x = offX
temperature2.x = offX
livingroomOff4.x = offX
disSchedule.x = offX
ModeFan5.x = offX
productInfo02.visible = false
productSetting03.visible = false
Notification01.visible = false
try_.x=offX
scheduleBackground.x=offX


#targetTemp
set3= new Layer
	style: buttonStyle
	x: WidthRatio* 231
	y: HeightRatio*677
	height:HeightRatio* 94
	width: WidthRatio*281
	parent: targetTemp3
	
turnOff3 = new Layer
	x: WidthRatio*231
	y: HeightRatio*813
	height: HeightRatio*92
	width: WidthRatio*281
	style: buttonStyle
	parent: targetTemp3

add3 = new Layer
	x: WidthRatio*594
	y: HeightRatio*439
	width: WidthRatio*122
	height:HeightRatio* 97
	style: buttonStyle
	parent:targetTemp3
	
decrease3 = new Layer
	x: WidthRatio*52
	y: HeightRatio*446
	width: WidthRatio*122
	height: HeightRatio*97
	style: buttonStyle
	parent: targetTemp3
	
hider3 = new Layer
	backgroundColor: blue
	x: WidthRatio*205
	y: HeightRatio*365
	width: WidthRatio*312
	height: HeightRatio*257
	blur:4
	parent: targetTemp3


showtemp = new Layer
	html: "#{goalTemp}"
	style: {
		fontFamily:"BentonSans, Helvetica Neue, Helvetica, Arial, sans-serif"
		fontSize: "#{WidthRatio*210}pt"
		backgroundColor:"transparent"
	}
	y: HeightRatio*467
	x:WidthRatio* 205
	parent: targetTemp3
	
home3 = new Layer
	x: WidthRatio*631
	y: HeightRatio*69
	height:HeightRatio* 92
	width: WidthRatio*85
	style: buttonStyle
	parent: targetTemp3
	
home3.onTap ->
	targetTemp3.x = offX
	initial1.x=InX


add3.onTap ->
	goalTemp++
	showtemp.html="#{goalTemp}"
	
decrease3.onTap ->
	goalTemp--
	showtemp.html="#{goalTemp}"
	
set3.onTap ->
	targetTemp3.x = offX
	temperature2.x = InX
	goalTemp2.html= "#{goalTemp}"
	
turnOff3.onTap ->
	livingRoom = false
	initial1.x = InX
	targetTemp3.animate
		properties: 
			x:offX
		time: 0.3
	
targetTemp3.states.add
	slideIn:
		x: InX
	slideOut:
		x: slideOutX
		
targetTemp3.states.animationOptions = 
	curve:"ease-out"
	time: 0.3
	
humber3 = new Layer
	x:WidthRatio* 26
	y: HeightRatio*69
	width: WidthRatio*109
	height: HeightRatio*95
	backgroundColor: "transparent"
	parent: targetTemp3
	
humber3.onTap ->
	targetTemp3.states.next("slideOut","slideIn")
	
modeStat=new Layer
	y: HeightRatio*1036
	x: WidthRatio*194
	height: HeightRatio*42
	width: WidthRatio*259
	html: "#{mode}"
	backgroundColor: "white"
	style:{
		color:"grey"
		fontSize:"#{WidthRatio*28}pt"
	}
	parent: targetTemp3

fanStat=new Layer
	y:  HeightRatio*1036
	x: WidthRatio*500
	height:  HeightRatio*42
	width: WidthRatio*200
	html: "#{fan}"
	backgroundColor: "transparent"
	style:{
		textAlign:"right"
		color:"grey"
		fontSize:"#{WidthRatio*28}pt"
	}
	parent: targetTemp3

toModeFan3 = new Layer
	y:HeightRatio* 956
	width: WidthRatio*750
	height: HeightRatio*184
	backgroundColor: "transparent"
	parent: targetTemp3

toModeFan3.onTap ->
	ModeFan5.animate
		properties: 
			x: InX #stack ModeFan5 on targetTemp3, so when press back on ModeFan5 could back to targetTemp3/livingroomOff4
		time: 0.3
	Utils.delay 0.3, ->
		targetTemp3.visible=false
	
scheduleButton3 = new Layer
	y: HeightRatio*1140
	width: WidthRatio*750
	backgroundColor: "transparent"
	parent:targetTemp3
	height: HeightRatio*184
	
scheduleButton3.onTap ->
	scheduleBackground.animate
		properties: 
			x: InX #stack ModeFan5 on targetTemp3, so when press back on ModeFan5 could back to targetTemp3/livingroomOff4
		time: 0.3
	Utils.delay 0.3, ->
		targetTemp3.visible=false
	



	
	

#initial screen


initial1.on "change:x", ->
	if (livingRoom == true)
		livingroomOff.visible = false
	else
		livingroomOff.visible = true
	text1.html ="#{goalTemp}"
	
modeStat1=new Layer
	y: HeightRatio*325
	x: WidthRatio*410
	height:  HeightRatio*42
	width: WidthRatio*259
	html: "#{mode}"
	backgroundColor: "transparent"
	style:{
		color:"#414042"
		fontSize:"#{WidthRatio*28}pt"
		textAlign:"right"
	}
	parent: initial1

fanStat1=new Layer
	y:  HeightRatio*370
	x: WidthRatio*410
	height:  HeightRatio*42
	width: WidthRatio*259
	html: "#{fan}"
	backgroundColor: "transparent"
	style:{
		color:"#414042"
		fontSize:"#{WidthRatio*28}pt"
		textAlign:"right"
	}
	parent: initial1	


livingroomOn = new Layer
	y: HeightRatio* 198
	width: WidthRatio*719
	height: HeightRatio* 269
	style: buttonStyle
	parent: initial1
	x: WidthRatio*22
	




text1 = new Layer
	x: WidthRatio*593
	y:  HeightRatio*285
	width: WidthRatio*11
	height:  HeightRatio*40
	html: "#{goalTemp}"
	style: {
		fontFamily:"BentonSans, Helvetica Neue, Helvetica, Arial, sans-serif"
		fontSize: "#{WidthRatio*28}pt"
		backgroundColor: "transparent"
		color:"#333"
	}
	parent:initial1

livingroomOff = new Layer
	width: WidthRatio*730
	height:  HeightRatio*265
	image: "images/livingroomOff.png"
	y:  HeightRatio*205
	parent: initial1
	x: WidthRatio*10
	
if (livingRoom == true)
	livingroomOff.visible = false
else
	livingroomOff.visible = true

livingroomOff.onTap ->
	livingroomOff4.x = InX
	initial1.x = homeOffX
	

	
livingroomOn.onTap ->
	initial1.x = homeOffX
	temperature2.x = InX


#temperature
	
goalTemp2 = new Layer
	x: WidthRatio*458
	y:  HeightRatio*853
	width: WidthRatio*74
	height:  HeightRatio*75
	html:"#{goalTemp}"
	style: {
		fontFamily:"BentonSans, Helvetica Neue, Helvetica, Arial, sans-serif"
		fontSize: "#{WidthRatio*28}pt"
		backgroundColor: "transparent"
	}
	parent: temperature2
	
currentTemp = new Layer
	html: "70"
	style: {
		fontFamily:"BentonSans, Helvetica Neue, Helvetica, Arial, sans-serif"
		fontSize: "#{WidthRatio*210}pt"
		backgroundColor:"transparent"
	}
	y: HeightRatio*467
	x:WidthRatio* 205
	parent: temperature2
	
tempButton2 = new Layer
	x: WidthRatio*135
	y: HeightRatio* 238
	width: WidthRatio*480
	height:  HeightRatio*516
	backgroundColor: "transparent"
	parent: temperature2
	
home2 = new Layer
	x: WidthRatio*631
	y:  HeightRatio*69
	height:  HeightRatio*92
	width: WidthRatio*85
	style: buttonStyle
	parent: temperature2
	
home2.onTap ->
	temperature2.x = offX
	initial1.x=InX

	
tempButton2.onTap ->
	temperature2.x = offX
	targetTemp3.x = InX
	
temperature2.states.add
	slideIn:
		x: InX
	slideOut:
		x: slideOutX
		
temperature2.states.animationOptions = 
	curve:"ease-out"
	time: 0.3
	
humber2 = new Layer
	x: WidthRatio*26
	y: HeightRatio* 69
	width: WidthRatio*109
	height:  HeightRatio*95
	backgroundColor: "transparent"
	parent: temperature2
	
humber2.onTap ->
	temperature2.states.next("slideOut","slideIn")
	
modeStat2=new Layer
	y:  HeightRatio*1036
	x: WidthRatio*194
	height:  HeightRatio*42
	width: WidthRatio*259
	html: "#{mode}"
	backgroundColor: "white"
	style:{
		color:"grey"
		fontSize:"#{WidthRatio*28}pt"
	}
	parent: temperature2

fanStat2=new Layer
	y:  HeightRatio*1036
	x: WidthRatio*500
	height:  HeightRatio*42
	width: WidthRatio*200
	html: "#{fan}"
	backgroundColor: "transparent"
	style:{
		textAlign:"right"
		color:"grey"
		fontSize:"#{WidthRatio*28}pt"
	}
	parent: temperature2

toModeFan2 = new Layer
	y:  HeightRatio*956
	width: WidthRatio*750
	height:  HeightRatio*184
	backgroundColor: "transparent"
	parent: temperature2

toModeFan2.onTap ->
	ModeFan5.animate
		properties: 
			x: InX #stack ModeFan5 on targetTemp3, so when press back on ModeFan5 could back to targetTemp3/livingroomOff4
		time: 0.3
	Utils.delay 0.3, ->
		temperature2.visible=false

	
scheduleButton2 = new Layer
	y:  HeightRatio*1140
	width: WidthRatio*750
	backgroundColor: "transparent"
	parent: temperature2
	height: HeightRatio*184
	
scheduleButton2.onTap ->
	scheduleBackground.animate
		properties: 
			x: InX #stack ModeFan5 on targetTemp3, so when press back on ModeFan5 could back to targetTemp3/livingroomOff4
		time: 0.3
	Utils.delay 0.3, ->
		temperature2.visible=false
	
	
#livingroom off
turnon4 = new Layer
	x: WidthRatio*223
	y: HeightRatio*813
	height: HeightRatio*92
	width: WidthRatio*303
	style: buttonStyle
	parent: livingroomOff4
	
turnon4.onTap ->
	livingRoom = true
	livingroomOff4.x = offX
	temperature2.x=InX
	
home4 = new Layer
	x: WidthRatio*631
	y:HeightRatio* 69
	height: HeightRatio*92
	width: WidthRatio*85
	style: buttonStyle
	parent: livingroomOff4	
home4.onTap ->
	livingroomOff4.x = offX
	initial1.x=InX
	

	
schedule4 = new Layer
	y: HeightRatio*1146
	height: HeightRatio*187
	width: WidthRatio*750
	style: buttonStyle
	parent: livingroomOff4
	
schedule4.onTap ->
	livingroomOff4.visible = false
	disSchedule.x=InX
	
livingroomOff4.states.add
	slideIn:
		x: InX
	slideOut:
		x: slideOutX
		
livingroomOff4.states.animationOptions = 
	curve:"ease-out"
	time: 0.3
	
humber4 = new Layer
	x: WidthRatio*26
	y: HeightRatio*69
	width: WidthRatio*109
	height: HeightRatio*95
	backgroundColor: "transparent"
	parent: livingroomOff4
	
humber4.onTap ->
	livingroomOff4.states.next("slideOut","slideIn")
	
	
modeStat4=new Layer
	y: HeightRatio*1036
	x: WidthRatio*194
	height: HeightRatio*42
	width: WidthRatio*259
	html: "#{mode}"
	backgroundColor: "white"
	style:{
		color:"grey"
		fontSize:"#{WidthRatio*28}pt"
	}
	parent: livingroomOff4

fanStat4=new Layer
	y:  HeightRatio*1036
	x: WidthRatio*500
	height:  HeightRatio*42
	width: WidthRatio*200
	html: "#{fan}"
	backgroundColor: "transparent"
	style:{
		textAlign:"right"
		color:"grey"
		fontSize:"#{WidthRatio*28}pt"
	}
	parent: livingroomOff4
	
#button
toModeFan4 = new Layer
	y: HeightRatio*956
	width:WidthRatio* 750
	height: HeightRatio*184
	backgroundColor: "transparent"
	parent: livingroomOff4
	height: HeightRatio*184

toModeFan4.onTap ->
	ModeFan5.animate
		properties: 
			x: InX #stack ModeFan5 on targetTemp3, so when press back on ModeFan5 could back to targetTemp3/livingroomOff4
		time: 0.3
	Utils.delay 0.3, ->
		livingroomOff4.visible=false

	
	
	
	

	
#disschedule

okay = new Layer
	height:HeightRatio* 100
	width: WidthRatio*460
	style: buttonStyle
	parent: disSchedule
	x: WidthRatio*145
	y: HeightRatio* 837

okay.onTap ->
	disSchedule.x=offX
	scheduleBackground.x=InX
	

	
	
#setting0

arrow = new Layer
	width: WidthRatio*41
	height:HeightRatio* 23
	image: "images/arrow.png"
	x: WidthRatio*453
	y: HeightRatio*98
	visible: true
	parent: bar
	rotation: 0
	parent: settingUnselect0

arrow.states.add
	180:
		rotation: 180
	360:
		rotation:360
		
shortMenu.states.add
	hide:
		y: HeightRatio*16

longMenu.states.add
	position1:
		y: HeightRatio*235
	position2:
		y: HeightRatio*467
	position3:
		y: HeightRatio*1254
		x: WidthRatio*49

arrow.states.animationOptions=
	curve: "ease-out"
	time: 0.2
	
shortMenu.states.animationOptions=
	curve:"ease"
	time:0.3

arrow.onTap ->
	if (arrow.states.current == "default")
		arrow.states.switch("180")
	else if (arrow.states.current == "180")
		arrow.states.switch("360",time:0.2)
		Utils.delay 0.3, ->
			arrow.states.switchInstant("default")
	if (longMenu.states.current == "default")
		longMenu.states.switch("position3", time:0.3)
		Utils.delay 0.3, ->
			longMenu.states.switch("position1",time:0.4,curve:"ease")
	if (longMenu.states.current == "position1")
		longMenu.states.switch("position2", time:0.3)
		Utils.delay 0.3, ->
			longMenu.states.switch("default",time:0.3,curve:"ease")
	shortMenu.states.next()


	
#ModeFan5

blockHeight = 100
blockUnit = 100

#Mode

page = new PageComponent
	scrollHorizontal: false
	x: WidthRatio*178
	y: HeightRatio*268
	height: HeightRatio*300
	width: WidthRatio*400
	backgroundColor: "transparent"
	parent: ModeFan5
	

styleNon = {
	color:"#9E9E9E"
	background: "transparent"
	textAlign: "center"
	fontSize: "#{WidthRatio*30}pt"
	lineHeight: "#{WidthRatio*100}pt"
}

styleFocused = {
	color:"#212121"
	background: "transparent"
	textAlign: "center"
	fontSize: "#{WidthRatio*35}pt"
	lineHeight: "#{WidthRatio*100}pt"
}


	
blank1 = new Layer
	name: "Fan Only"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page.content
	y: 0

fanOnly = new Layer
	height:HeightRatio*blockHeight
	name: "Fan Only"
	width: WidthRatio*400
	html:"Fan Only"
	style:styleNon
	parent: page.content
	y: HeightRatio*blockUnit
	
cool = new Layer
	name: "Cool"
	html:"Cool"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page.content
	y: HeightRatio*2*blockUnit
	
energySaver = new Layer
	name: "Energy Saver"
	html:"Energy Saver"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page.content
	y:HeightRatio* 3*blockUnit
	
blank2 = new Layer
	name: "Energy Saver"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page.content
	y: HeightRatio*4*blockUnit
	
blank3 = new Layer
	name: "Energy Saver"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page.content
	y: HeightRatio*5*blockUnit
	
page.snapToPage(cool)

	
		
page.currentPage.style = styleFocused

page.on "change:currentPage", ->
	for i in [0...4]
		page.currentPage.siblings["#{i}"].style = styleNon
	page.currentPage.style = styleFocused
	if (page.currentPage.siblings[0]==fanOnly)
		fanOnly.style = styleFocused
	if (page.currentPage.siblings[3]==energySaver)
		energySaver.style = styleFocused
	
	
	
#Fan

page2 = new PageComponent
	scrollHorizontal: false
	x: WidthRatio*178
	y: HeightRatio*730
	height: HeightRatio*290
	width: WidthRatio*400
	backgroundColor: "transparent"
	parent: ModeFan5
	

	
blank1 = new Layer
	name: "Auto"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page2.content
	y: 0

Auto = new Layer
	name: "Auto"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	html:"Auto"
	style:styleNon
	parent: page2.content
	y: HeightRatio*blockUnit
	
High = new Layer
	name: "High"
	html:"High"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page2.content
	y: HeightRatio*2*blockUnit
	
Medium= new Layer
	name: "Medium"
	html:"Medium"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page2.content
	y:HeightRatio* 3*blockUnit
	
Low = new Layer
	name: "Low"
	html:"Low"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page2.content
	y: HeightRatio*4*blockUnit
	
blank3 = new Layer
	name: "Low"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page2.content
	y:HeightRatio* 5*blockUnit
	
blank4 = new Layer
	name: "Low"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page2.content
	y: HeightRatio*5*blockUnit

page2.currentPage.style = styleFocused

page2.on "change:currentPage", ->
	for i in [0...4]
		page2.currentPage.siblings["#{i}"].style = styleNon
	page2.currentPage.style = styleFocused
	if (page2.currentPage.siblings[0]==Auto)
		Auto.style = styleFocused

#button
set5 = new Layer
	x: WidthRatio*120
	y: HeightRatio*1162
	width: WidthRatio*513
	height: HeightRatio*111
	backgroundColor: "#A7A9AC"
	html:"Set"
	style:
		textAlign: "center"
		fontSize: "#{WidthRatio*30}pt"
		lineHeight: "#{WidthRatio*80}pt"
	parent: ModeFan5
		
set5.onTapStart ->
	set5.backgroundColor="#616161"
	
set5.onTapEnd ->
	set5.backgroundColor="#A7A9AC"
	
set5.onTap ->
	ModeFan5.x = offX
	targetTemp3.visible = true
	livingroomOff4.visible = true
	temperature2.visible = true
	mode=page.currentPage.name
	modeStat.html="#{mode}"
	modeStat2.html="#{mode}"
	modeStat4.html="#{mode}"
	modeStat1.html="#{mode}"
	fan=page2.currentPage.name
	fanStat.html="#{fan}"
	fanStat2.html="#{fan}"
	fanStat4.html="#{fan}"
	fanStat1.html="#{fan}"
	
	
	
back5 = new Layer
	width: WidthRatio*81
	height: HeightRatio*81
	y: HeightRatio*74
	x: WidthRatio*19
	backgroundColor: "transparent"
	parent: ModeFan5
	
back5.onTap ->
	ModeFan5.animate
		properties: 
			x: offX #stack ModeFan5 on targetTemp3, so when press back on ModeFan5 could back to targetTemp3/livingroomOff4
		time: 0.3
	targetTemp3.visible = true
	livingroomOff4.visible = true
	temperature2.visible=true

	
	

	

# Schedule6

secondSchedule = new Layer
	y:HeightRatio* 736
	height: HeightRatio*145
	width: WidthRatio*769
	backgroundColor: "white"
	borderWidth: 1
	borderColor: "rgba(204,204,204,1)"
	parent: scheduleBackground
	

secondColor = new Layer
	backgroundColor: "#99c9ec"
	width: WidthRatio*45
	height: HeightRatio*45
	borderRadius: WidthRatio*25
	y: HeightRatio*50
	x: WidthRatio*28
	parent: secondSchedule
	
secondText = new Layer
	html:"Stay Home"
	height:  HeightRatio*45
	style:{
		fontSize:"#{WidthRatio*30}pt"
		lineHeight:"#{WidthRatio*45}pt"
		color:"#414042"
		backgroundColor:"transparent"
	}
	x: WidthRatio*96
	y: HeightRatio*43
	width: WidthRatio*217
	parent: secondSchedule

	
secondText2 = new Layer
	html:"Start: 11:00 PM 73°F"
	height:  HeightRatio*45
	style:{
		fontSize:"#{WidthRatio*30}pt"
		lineHeight:"#{WidthRatio*45}pt"
		color:"#808285"
		textAlign:"right"
		backgroundColor:"transparent"
	}
	y:HeightRatio* 43
	width: WidthRatio*393
	parent: secondSchedule	
	x:WidthRatio* 340

firstSchedule = new Layer
	x: WidthRatio*-2
	y: HeightRatio*737
	height: HeightRatio*145
	width: WidthRatio*769
	backgroundColor: "white"
	borderWidth: 1
	borderColor: "rgba(204,204,204,1)"
	parent: scheduleBackground
		

firstColor = new Layer
	backgroundColor: "rgba(128,0,128,0.4)"
	width: WidthRatio*45
	height:HeightRatio* 45
	borderRadius: WidthRatio*25
	y: HeightRatio*50
	x: WidthRatio*28
	parent: firstSchedule
	
firstText = new Layer
	html:"Sleep"
	height:  HeightRatio*45
	style:{
		fontSize:"#{WidthRatio*30}pt"
		lineHeight:"#{WidthRatio*45}pt"
		color:"#414042"
		backgroundColor:"transparent"
	}
	x:  WidthRatio*96
	y: HeightRatio*43
	width:  WidthRatio*149
	parent: firstSchedule

	
firstText2 = new Layer
	html:"Start: 11:00 PM 73°F"
	height:  HeightRatio*45
	style:{
		fontSize:"#{WidthRatio*30}pt"
		lineHeight:"#{WidthRatio*45}pt"
		color:"#808285"
		textAlign:"right"
		backgroundColor:"transparent"
	}
	y:HeightRatio* 43
	width: WidthRatio*393
	parent: firstSchedule
	x: WidthRatio*340





scheduleBlank = new Layer
	width: WidthRatio*752
	height: HeightRatio*753
	image: "images/scheduleBlank.png"
	parent: scheduleBackground


for i in [0..6]
	bar = new Layer
		width: WidthRatio*26
		y: HeightRatio*580
		x: WidthRatio*(130+89*i)
		height: HeightRatio*40
		borderRadius: WidthRatio*13
		backgroundColor: "rgba(128,0,128,0.4)"
		parent: scheduleBlank

bars=[]
	
for i in [0..6]
	bar2 = new Layer
		width: WidthRatio*26
		maxY: HeightRatio*580
		height:HeightRatio*1
		x: WidthRatio*(130+89*i)
		borderRadius: HeightRatio*13
		backgroundColor: "white"
		parent: scheduleBlank
	bars.push(bar2)
	
timezone = new Layer
	width: WidthRatio*752
	height: HeightRatio*278
	image: "images/timezone.png"
	y: HeightRatio*890
	parent: scheduleBackground
	x: 0
		
	
#add schedule
addSchedule = new Layer
	height: HeightRatio*136
	width: WidthRatio*740
	backgroundColor: "transparent"
	parent: scheduleBackground
	y: HeightRatio*886
	x: WidthRatio*7
	
addSchedule.onTap ->
	try_.x=InX
	scheduleBackground.x=offX
	scheduleBackground.x=InX
	for i in [0..6]
		bars[i].height=1
		bars[i].maxY = HeightRatio*580
		bars[i].backgroundColor="white"
		
back6 = new Layer
	backgroundColor: "transparent"
	parent: scheduleBackground
	y: HeightRatio*70
	width: WidthRatio*93
	height: HeightRatio*93
	x: WidthRatio*26

back6.onTap ->
	scheduleBackground.animate
		properties: 
			x: offX #stack ModeFan5 on targetTemp3, so when press back on ModeFan5 could back to targetTemp3/livingroomOff4
		time: 0.3
	temperature2.visible = true
	targetTemp3.visible = true
	livingroomOff4.visible = true
		


#try_
#scroll3
page3 = new PageComponent
	scrollHorizontal: false
	y: HeightRatio*418
	height: HeightRatio*290
	width: WidthRatio*400
	backgroundColor: "transparent"
	parent: try_
	x: WidthRatio*-47

time1 = new Layer
	name: "cannot"
	html: "04:45"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page3.content
	y: 0

time2 = new Layer
	name: "time"
	html: "05:00"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page3.content
	y: HeightRatio*blockUnit
	
time3 = new Layer
	name: "time"
	html: "05:15"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page3.content
	y: HeightRatio*2*blockUnit
	
time4= new Layer
	name: "time"
	html: "05:30"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page3.content
	y: HeightRatio*3*blockUnit
	
time5 = new Layer
	name: "time"
	html: "05:45"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page3.content
	y: HeightRatio*4*blockUnit
	
time6 = new Layer
	name: "time"
	html: "06:00"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page3.content
	y: HeightRatio*5*blockUnit
	
time7 = new Layer
	name: "time"
	html: "06:15"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page3.content
	y: HeightRatio*6*blockUnit
	
time8 = new Layer
	name: "time"
	html: "06:30"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page3.content
	y: HeightRatio*7*blockUnit
	
time9 = new Layer
	name: "cannot"
	html: "06:40"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page3.content
	y: HeightRatio*8*blockUnit

timenot = new Layer
	name: "blank"
	height:HeightRatio*blockHeight
	width: WidthRatio*400
	style:styleNon
	parent: page3.content
	y: HeightRatio*8*blockUnit

page3.currentPage.style = styleFocused


page3.on "change:currentPage", ->
	for i in [1...7]
		page3.currentPage.siblings["#{i}"].style = styleNon
	page3.currentPage.style = styleFocused
	if (page3.currentPage.name=="cannot")
		page3.currentPage.style=styleNon

#scroll4
srollWidth4 = 100

page4 = new PageComponent
	scrollHorizontal: false
	y: HeightRatio*416
	height: HeightRatio*290
	width: WidthRatio*srollWidth4
	backgroundColor: "transparent"
	parent: try_
	x: WidthRatio*241

blank41 = new Layer
	name: "cannot"
	height:HeightRatio*blockHeight
	width: WidthRatio*srollWidth4
	style:styleNon
	parent: page4.content
	y: 0

am = new Layer
	name: "am"
	html: "am"
	height:HeightRatio*blockHeight
	width: WidthRatio*srollWidth4
	style:styleNon
	parent: page4.content
	y: HeightRatio*blockUnit
	
pm = new Layer
	name: "pm"
	html: "pm"
	height:HeightRatio*blockHeight
	width: WidthRatio*srollWidth4
	style:styleNon
	parent: page4.content
	y: HeightRatio*2*blockUnit
	
blank42= new Layer
	height:HeightRatio*blockHeight
	width: WidthRatio*srollWidth4
	style:styleNon
	parent: page4.content
	y: HeightRatio*3*blockUnit
	
blank43= new Layer
	height:HeightRatio*blockHeight
	width: WidthRatio*srollWidth4
	style:styleNon
	parent: page4.content
	y: HeightRatio*3*blockUnit

page4.currentPage.style = styleFocused

page4.on "change:currentPage", ->
	for i in [1...2]
		page4.currentPage.siblings["#{i}"].style = styleNon
	page4.currentPage.style = styleFocused
	if (page4.currentPage.name=="cannot")
		page4.currentPage.style=styleNon
		
#scroll5
page5 = new PageComponent
	scrollHorizontal: false
	y: HeightRatio*424
	height: HeightRatio*290
	width: WidthRatio*200
	backgroundColor: "transparent"
	parent: try_
	x: SWidth-WidthRatio*280

page5Layers = []


for i in [60...80]
	# Define the layer
	layerA = new Layer
		name: "box" # Set the name of each layer instance, with an index number from the loop index
		y: HeightRatio*(i-60) * blockUnit # Offset layers relative to the loop index
		height: HeightRatio*blockHeight
		width: WidthRatio*200
		html: "#{i}"
		style: styleNon
		parent: page5.content
	page5Layers.push(layerA)	

page5Layers[0].name = "cannot"
page5Layers[18].name = "cannot"
page5Layers[19].name = "cannot"
		


page5.currentPage.style = styleFocused

page5.on "change:currentPage", ->
	for i in [1...17]
		page5.currentPage.siblings["#{i}"].style = styleNon
	page5.currentPage.style = styleFocused
	if (page5.currentPage.name=="cannot")
		page5.currentPage.style=styleNon
		

x = 136
long = 118
weekDay=[]

circleNon = {
	borderWidth: 1
	borderColor: "rgba(0,0,0,0.3)"
	backgroundColor: "transparent"
}

circleOn = {
	backgroundColor:"#009cd4"
}

for i in [0..4]
	circle = new Layer
		x:WidthRatio*( 51 + i*x)
		width: WidthRatio*long
		height: WidthRatio*long
		y: HeightRatio*888
		name: "off"
		html:"#{i}"
		color:"#212121"
		style:{
			textAlign: "center"
			fontSize: "#{WidthRatio*30}pt"
			lineHeight: "#{WidthRatio*84}pt"
		}
		backgroundColor: "white"
		borderRadius: WidthRatio*58
		borderWidth: 1
		borderColor: "rgba(0,0,0,0.3)"
		parent: try_
	weekDay.push(circle)
		
for i in [5..6]
	circle = new Layer
		x:WidthRatio*(51 + (i-5)*x)
		width: WidthRatio*long
		height: WidthRatio*long
		y: HeightRatio*1036
		name:"off"
		html:"#{i+10}"
		color:"#212121"
		style:{
			textAlign: "center"
			fontSize: "#{WidthRatio*30}pt"
			lineHeight: "#{WidthRatio*84}pt"
		}
		backgroundColor: "white"
		borderRadius: WidthRatio*58
		borderWidth: 1
		borderColor: "rgba(0,0,0,0.3)"
		parent:try_
	weekDay.push(circle)
	
weekDay[0].html="Mon"
weekDay[1].html="Tue"
weekDay[2].html="Wed"
weekDay[3].html="Thu"
weekDay[4].html="Fri"
weekDay[5].html="Sat"
weekDay[6].html="Sun"
	
for i in [0..6]
	weekDay[i].states.add
		chosed:
			borderWidth: 0
			backgroundColor:"#009cd4"
			color:"white"	
	weekDay[i].states.animationOptions = 
		time:"0"
	weekDay[i].onTap ->
		this.states.next()

save6 = new Layer
	x: WidthRatio*84
	y: HeightRatio*1204
	width: WidthRatio*283
	height:HeightRatio* 102
	backgroundColor: "#a7a9ac"
	html:"Save"
	style:{
		textAlign:"center"
		fontSize:"#{WidthRatio*35}pt"
		lineHeight:"#{WidthRatio*70}pt"
	}
	parent: try_
	
delete6 = new Layer
	x: WidthRatio*412
	y: HeightRatio*1204
	width: WidthRatio*283
	height: HeightRatio*102
	backgroundColor: "#a7a9ac"
	html:"Delete"
	style:{
		textAlign:"center"
		fontSize:"#{WidthRatio*35}pt"
		lineHeight:"#{WidthRatio*70}pt"
	}
	parent: try_
	
save6.onTapStart ->
	save6.backgroundColor="#424242"
		
save6.onTapEnd ->
	save6.backgroundColor="#a7a9ac"

barHeight = WidthRatio*80

time="somethingElse"
temperature="somethingElse"
morningIs="something"
		
save6.onTap ->
	try_.x=offX
	scheduleBackground.x=InX
	if (am.style.fontSize=="#{WidthRatio*35}pt")
		barHeight = WidthRatio*250
		morningIs="AM"
	else
		barHeight = WidthRatio*80
		morningIs="PM"
	for i in [0..6]
		if (weekDay[i].states.current=="chosed")
			bars[i].animate
				properties:
					maxY:HeightRatio*581
					backgroundColor: "#99c9ec"
					height: barHeight
	for x in page3.content.childrenWithName("time")
		if (x.style.fontSize=="#{WidthRatio*35}pt")
			time=x.html
	for x in page5.content.childrenWithName("box")
		if (x.style.fontSize == "#{WidthRatio*35}pt")
			temperature=x.html
	secondText2.html="Start: #{time} #{morningIs} #{temperature}°F"
	timezone.animate
		properties:
			y: HeightRatio*1040
	secondSchedule.animate
		properties:
			y: HeightRatio*881

		
delete6.onTapStart ->
	delete6.backgroundColor="#424242"
		
delete6.onTapEnd ->
	delete6.backgroundColor="#a7a9ac"
		
delete6.onTap ->
	try_.x=offX
	timezone.animate
		properties:
			y: HeightRatio*890
	secondSchedule.animate
		properties:
			y: HeightRatio*736




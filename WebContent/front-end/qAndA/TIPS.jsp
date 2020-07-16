<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--    CSS幫你們引入完了  你們要額外新增在自己寫-->
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/front-end/index/index.css">
<style>
body{
	font-family: Georgia, Times, serif;
	background: repeat-x;
}


h1{
	text-align: center;
	color: #000093;
}

p{
	font-size: 18px;
	color: #2828FF;
	
}

img{
	width: 140px;
	height: 100px;
}

.btn{
	width: 170px;
	margin:0px;
	padding: 5px;
	border:none;
	font-size: 15px;
}

.btn:hover{
	opacity: 0.7;
}

.btn:active{
	color: #fff;
}

.btn-send{
	background-color: #f6bb9e;
}

.pdzero{
	padding-left: 0px;
	padding-right: 0px;
}
</style>
    
    <title>Welcome to EA101-G4</title>
        	
</head>
<body>
	<%@include file="/front-end/page-file/page-nav"%>
	
 	<div class="container my-5">
	<!--  	內容寫在這裡 自由發揮 -->
	<section id='intro'>
<div class="col-md-12">
		<h1>騎車小叮嚀</h1>
	   
<div class="container">
	<div class="row">		
		<div class="col-2" >
			<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#T1"><img src="C:\DB_photos\tip1.jpg" alt="法規資訊"></button>
		</div>	
		<div class="col-2">
			<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#T2"><img src="C:\DB_photos\tip2.jpg" alt="自行車道規劃認識"></button>
		</div>
		<div class="col-2">
			<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#T3"><img src="C:\DB_photos\tip3.jpg" alt="單車裝備"></button>
		</div>
		<div class="col-2">
			<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#T4"><img src="C:\DB_photos\tip4.jpg" alt="行前準備"></button>
		</div>
		<div class="col-2">
			<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#T6"><img src="C:\DB_photos\tip6.jpg" alt="單車安全小常識"></button>
		</div>
		<div class="col-2">
			<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#T7"><img src="C:\DB_photos\tip7.jpg" alt="全臺單車驛站"></button>
		</div>	
	</div>
	<div class="row">
		<div class="col-1"></div>
		<div class="col-10">		
			<p id="T1" class="collapse">
				道路交通管理處罰條例
				第3條
				本條例所用名詞釋義如下：<br>
				1.道路：指公路、街道、巷衖、廣場、騎樓、走廊或其他供公眾通行之地方。<br>
				2.車道：指以劃分島、護欄或標線劃定道路之部分，及其他供車輛行駛之道路。<br>
				3.人行道：指為專供行人通行之騎樓、走廊，及劃設供行人行走之地面道路，與人行天橋及人行地下道。<br>
				4.行人穿越道：指在道路上以標線劃設，供行人穿越道路之地方。<br>
				標誌：指管制道路交通，表示警告、禁制、指示，而以文字或圖案繪製之標牌。<br>
				第72條<br>
				慢車未經核准，擅自變更裝置，或不依規定保持煞車、鈴號、燈光及反光裝置等安全設備之良好與完整者，處慢車所有人新臺幣一百八十元罰鍰，並責令限期安裝或改正。<br>
				第75條<br>
				慢車駕駛人，駕車在鐵路平交道有第五十四條各款情形之一者，處新臺幣一千二百元以上二千四百元以下罰鍰。<br>
				道路交通安全規則<br>
				第115-1條<br>
				電動輔助自行車及電動自行車，應經檢測及型式審驗合格，並粘貼審驗合格標章後，始得行駛道路。<br>
				第119條<br>
				慢車不得擅自變更裝置，並應保持煞車、鈴號、燈光及反光裝置等安全設備之良好與完整。電動輔助自行車及電動自行車之安全設備，應符合電動輔助自行車及電動自行車安全檢測基準三輪以上慢車，其安全設備應符合直轄市、縣(市)政府依道路交通管理處罰條例第六十九條第三項授權另定之管理辦法規定。 慢車擅自加裝補助引擎或馬達行駛者，依汽車之拼裝車輛處理。<br>
				第127條<br>
				慢車不得牽引其他車輛或攀附汽車隨行。<br>
				第128條<br>
				慢車有燈光設備者，應保持良好與完整，在夜間行駛應開啟燈光。<br>
				臺北市自行車管理規則
				第3條
				本規則用詞定義如下：<br>
				道路：指本市行政區域內所有公路、街道、巷衖、廣場及河川高灘地等供公眾通行之地方。<br>
				自行車：指腳踏自行車、電動輔助自行車及電動自行車。<br>
				駕駛人：指自行車之駕駛人。<br>
				自行車專用道：指設有自行車專用車道線或標誌之道路。<br>
				人車共用道：指設有行人及自行車專用標誌之道路。<br>
				第4條<br>
				為保障市民財產安全、降低失竊風險與利於查竊，本市得建立自行車自願性登記制度。 前項自行車自願性登記制度作業要點由本市監理處另定之。<br>
				第5條<br>
				駕駛人行駛自行車前，應調整座墊高度，並檢視輪胎胎壓、前後煞車效能及鈴號、燈光 和反光裝置等各項配備之完整與功能良好。自行車頭燈顏色應為白色或淡黃色，尾燈顏 色應為紅色。為改善自行車騎乘安全，駕駛人行駛時宜配戴頭盔(安全帽)。<br>
				第6條<br>
				駕駛人行駛自行車時，自行車前後不得有人攀附站立，以維行車安全。<br></p>
			
			<p class="collapse" id="T2">
				由【交通部運輸研究所】所出版之「自行車道系統規劃設計參考手冊」於99 年提出第一版初稿，經東部自行車路網示範計畫督導協調推動小組多次會議研商及至交通部部務會報提報，<br>
				並邀集產官學進行研討暨參考國外相關規定後，於100 年提出第二版修訂，嗣後經101 年整併既有法規條文，於102年提出第三版修訂。<br>
				本手冊主要在提供推動單位在自行車道之規劃、設置、安全防護與管理上，有較為一致之標準，以保障民眾騎乘使用之安全；<br>
				另外考慮自行車道之設置原即包容多元思維，因此也建議在涉及地區景觀特色之設計、資訊說明提供等部分宜由設置者發揮創意，使各地自行車道之佈設更具地方吸引力與便利性。<br>
			</p>

			<p class="collapse" id="T3">
					1.單車服<br>
					2.安全帽<br>
					3.前、後燈<br>
					4.水壺架<br>
					5.車架馬鞍袋<br>
			</p>

			<p class="collapse" id="T4">
				一、生活用品:<br>
					<input type="checkbox" name="checkbox" id="checkboxA1"/>
					<label for="checkboxA1">現金、零錢/信用卡/提款卡</label><br>
					<input type="checkbox" name="checkbox" id="checkboxA2"/>
					<label for="checkboxA2">身分證/健保卡</label><br>
					<input type="checkbox" name="checkbox" id="checkboxA3"/>
					<label for="checkboxA3">盥洗用具</label><br>
					<input type="checkbox" name="checkbox" id="checkboxA4"/>
					<label for="checkboxA4">個人醫藥品（特殊藥品、酸痛藥膏)</label><br>
					<input type="checkbox" name="checkbox" id="checkboxA5"/>
					<label for="checkboxA5">防曬乳液</label><br>
				二、通訊用品:<br>
					<input type="checkbox" name="checkbox" id="checkboxB1"/>
					<label for="checkboxB1">手機/充電器/電池</label><br>
					<input type="checkbox" name="checkbox" id="checkboxB2"/>
					<label for="checkboxB2">行動電源/備用電源</label><br>
				三、人身用品:<br>
					<input type="checkbox" name="checkbox" id="checkboxC1"/>
					<label for="checkboxC1">安全帽</label><br>
					<input type="checkbox" name="checkbox" id="checkboxC2"/>
					<label for="checkboxC2">水壺</label><br>
					<input type="checkbox" name="checkbox" id="checkboxC3"/>
					<label for="checkboxC3">雨衣/雨褲</label><br>
					<input type="checkbox" name="checkbox" id="checkboxC4"/>
					<label for="checkboxC4">自行車衣、車褲（長短不拘）</label><br>
					<input type="checkbox" name="checkbox" id="checkboxC5"/>
					<label for="checkboxC5">個人防護用具（護膝、護腕等）</label><br>
					<input type="checkbox" name="checkbox" id="checkboxC6"/>
					<label for="checkboxC6">防風太陽眼鏡</label><br>
					<input type="checkbox" name="checkbox" id="checkboxC7"/>
					<label for="checkboxC7">防滑、吸震手套</label><br>
			
				出遊貼心小叮嚀<br>
				1.舒適、排汗、適合的運動。<br>
				2.單車活動是長久的，請考量攜帶物品的實用性。
				並以個人必需品、輕便、體積小、旅途中不易購買為主要之考量重點。<br>
				3.長途旅遊的行李請盡量精簡，托運之行李以21吋為主，個人貴重物品請隨身保管，勿放置於托運行李中。<br>
				4.運動酸痛是必然的，請記得攜帶酸痛外敷藥品。（推薦藥品：普拿疼酸痛藥膏）<br>
			</p>

			<p class="collapse" id="T6">
				正確騎乘技巧<br>
					1.手肘手臂要微彎
					2.背部腰部成弓狀
					3.手臂手腕要打直
					4.坐墊高度要適當
					5.膝蓋位置要正確<br>
				正確剎車技巧<br>
					1.適當的剎車距離<br>
					多利用點煞的方式；切記不要長時間持續按住煞車，因為會使煞車塊過熱，造成煞車力降低，發生危險！<br>
					2.剎車技巧<br>
					雙手同時剎車，只煞後輪容易打滑，只煞前輪容易造成翻車。<br>
				正確騎乘觀念<br>
					1.隨時補充熱量，才有持續運動的動力，千萬別讓自己處於飢餓的狀態。<br>
					2.隨時補充水份，別等感覺口渴了才喝。<br>
					3.適當的休息，每15-20公里休息一次，記得舒緩身體。<br>
					4.預防抽筋，多補充含鈉、鉀成分的食物或飲料。 (如：香蕉)<br>
					5.要防曬，別因麻煩而不預防，這是防曬傷不是防曬黑的。<br>
					6.保持下檔的乾淨及清爽。<br>
				騎乘安全須知<br>
					1.專心騎乘！<br>
					2.養成熱身運動，以防運動傷害。(循序漸進,確保安全)<br>
					3.尊重路權！靠路邊騎乘。<br>
					4.注意後方來車及停在路邊的車子。<br>
					5.表明你的行進動向，就如開車一樣變換車道。<br>
					6.注意力分配 前30~40% 後70%~60%。<br>
					7.回到柏油路上時，注意路面高低落差<br>
				</p>
			<p class="collapse" id="T7">
				臺北市<br>
					大同區	大橋派出所	臺北市大同區延平北路 3 段 2 號	02-25945524<br>
					萬華區	漢中街派出所	臺北市漢中街 122 號	02-23312790<br>
				新北市<br>
					板橋區	沙崙派出所	新北市板橋區溪北路 111 號	02-26812741, 02-26867087<br>
					新莊區	新莊分局	新北市新莊區中正路 150 號	02-29924034, 02-29928918<br>
				基隆市<br>
					仁愛區	第一分局	基隆市仁愛區仁五路22號	02-24222741<br>
				桃園市<br>
					桃園區	武陵派出所	桃園市桃園區復興路135號	03-3364224<br>
					中壢區	青埔派出所	桃園市中壢區青埔路一段67號	03-4531356<br>
				新竹縣<br>
					橫山鄉	借問站 全家橫山致豐店	新竹縣橫山鄉大肚村 12 鄰中豐路二段 112-2 號	03-5931649<br>
					新埔鎮	新埔派出所	新竹縣新埔鎮中正路 475 號	03-5882034<br>
				新竹市<br>
					北區	借問站 新竹市十七公里海岸風景區旅遊服務中心	新竹市南寮街 261 號	03-5360350<br>
					東區	第二分局	新竹市光復路二段 798 號	03-5728750#1,03-5728748(勤務指揮中心 24H)<br>
				苗栗縣<br>
					苗栗市	苗栗分局	苗栗縣苗栗市勝利里金鳳街109號	037-320059<br>
					頭屋鄉	頭屋分駐所	苗栗縣頭屋鄉頭屋村中山街17號	037-253103<br>
				臺中市<br>
					大里區	成功派出所	臺中市大里區成功路 9 號	04-24950763<br>
					豐原區	翁子派出所	臺中市豐原區豐勢路二段 10 號	04-25226021, 04-25275594<br>
				彰化縣<br>
					花壇鄉	三家派出所	彰化縣花壇鄉三春村彰員路 109 號	04-7862454<br>
					芬園鄉	芬園分駐所	彰化縣芬園鄉彰南路四段 175 號	049-2522419<br>
				南投縣<br>
					南投市	中興派出所	南投縣南投市光華里光華路115號	049-2332544<br>
					南投市	永清派出所	南投縣南投市營南里南營路745號	049-2325314<br>
				雲林縣<br>
					林內鄉	林內分駐所	雲林縣林內鄉中山路1號	05-5892404<br>
					荊桐鄉	饒平派出所	雲林縣莿桐鄉饒平村饒平179號	05-5842034<br>
				嘉義縣<br>
					民雄郷	民雄分局	嘉義縣民雄郷東榮村民族路 21 號	05-2262014<br>
					朴子市	朴子分局	嘉義縣朴子市光復路 33 號	05-3793584<br>
				嘉義市<br>
					西區	北鎮派出所	嘉義市西區北港路 280 號	05-2322732<br>
					東區	興安派出所	嘉義市東區吳鳳南路 367 號	05-2224593<br>
				臺南市<br>
					柳營區	果毅派出所	臺南市柳營區神農里 296 號	06-6231514<br>
					安平區	借問站 DOGA 香酥脆椒	臺南市安平區安平路 556 號	06-2218995<br>
				高雄市<br>
					燕巢區	燕巢分駐所	高雄市燕巢區中民路585號	07-6161402<br>
					三民區	三民第一分局	高雄市三民區同盟一路367號	07-3118675<br>
				屏東縣<br>
					內埔鄉	借問站 7-11水門門市	屏東縣內埔鄉水門村忠孝路289號	08-7995113<br>
					竹田鄉	竹田分駐所	屏東縣竹田鄉竹田村中正路111號	08-7710734<br>
				宜蘭縣<br>
					蘇澳鎮	港邊派出所	宜蘭縣蘇澳鎮港邊里濱海路一段195號	03-9905608<br>
					三星鄉	大洲派出所	宜蘭縣三星鄉上將路2段468號	03-9573517<br>
				花蓮縣<br>
					豐濱鄉	借問站 芭崎賣店	花蓮縣豐濱鄉芭崎48號	0916-005943<br>
					富里鄉	借問站 富里鄉農會	花蓮縣富里鄉羅山村東湖9鄰6號	03-8821705<br>
				臺東縣<br>
					成功鎮	借問站 7-11 欣功門市	臺東縣成功鎮三民里大同路 70 號	089-854201<br>
					關山鎮	借問站 7-11 關山門市	臺東縣關山鎮和平路 4 號 4 之 1 號 1 樓	089-812792<br>
			</p>
		</div>
	  	<div class="col-1"></div>		
	</div>
</div>
	</section>
	
	
 	</div>
 
 
 		
	<%@include file="/front-end/page-file/page-footer"%>
<!-- 	jquery已經引入  -->
<!-- 	sweetAlert已經引入   -->
<!-- 	boostrap4已經引入   -->


	<script>
	$(function(){
		$(".fun-text").text("騎車小叮嚀");  // text("")裡面自己輸入功能名稱 
	});
	</script>

</body>
</html>



-----------------------------------------------------------------------------------------------------------------

1.照上面步驟放位子(直接複製程式碼到自己jsp頁面即可)
2.jquery記得打入名稱
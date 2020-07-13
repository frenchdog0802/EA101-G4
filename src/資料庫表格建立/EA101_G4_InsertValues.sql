--  ---------------------------------上傳圖片---------------------------------------
--CREATE OR REPLACE  DIRECTORY MEDIA_DIR AS 'C:/DB_photos/'; 
------
----/* 擷取檔案的FUNCTION */ 
--CREATE OR REPLACE FUNCTION load_blob( myFileName VARCHAR) RETURN BLOB as result BLOB;  
--  myBFILE      BFILE;
--  myBLOB       BLOB;
--BEGIN
--    myBFILE := BFILENAME('MEDIA_DIR',myFileName);
--    dbms_lob.createtemporary(myBLOB, TRUE);
--    dbms_lob.fileopen(myBFILE,dbms_lob.file_readonly);
--    dbms_lob.loadfromfile(myBLOB,myBFILE,dbms_lob.getlength(myBFILE) );
--    dbms_lob.fileclose(myBFILE);
--    RETURN myBLOB;
--END load_blob;

-------------------------------------------------------
--FOR TABLE  MEMBER VALUES
--------------------------------------------------------

INSERT INTO MEMBER (SQ_MEMBER_ID,MEMBER_ACCOUNT,PASSWORD,M_NAME,GENDER,BIRTHDAY,CELLPHONE,M_EMAIL,VALIDATION,
  REGISTERED,M_PHOTO,BACK_IMG,NICK_NAME,ADDRESS) 
  VALUES(member_seq.NEXTVAL,'123456','123456','PETER','1',TO_DATE('2020-06-06','YYYY-MM-DD'),'0908168168','peter@tomcat.com','1',
  TO_DATE('2020-06-06','YYYY-MM-DD'),load_blob('mem1.jpg'),NULL,'PETER15','桃園市中壢區中大路');
  
  INSERT INTO MEMBER (SQ_MEMBER_ID,MEMBER_ACCOUNT,PASSWORD,M_NAME,GENDER,BIRTHDAY,CELLPHONE,M_EMAIL,VALIDATION,
  REGISTERED,M_PHOTO,BACK_IMG,NICK_NAME,ADDRESS) 
  VALUES(member_seq.NEXTVAL,'ASDF156724','ASDF123456','DAVID','1',TO_DATE('2020-06-06','YYYY-MM-DD'),'0908168188','david@tomcat.com','1',
  TO_DATE('2020-06-06','YYYY-MM-DD'),load_blob('mem2.jpg'),NULL,'大衛海鮮','桃園市中壢區中大路300號');  
  
  INSERT INTO MEMBER (SQ_MEMBER_ID,MEMBER_ACCOUNT,PASSWORD,M_NAME,GENDER,BIRTHDAY,CELLPHONE,M_EMAIL,VALIDATION,
  REGISTERED,M_PHOTO,BACK_IMG,NICK_NAME,ADDRESS) 
  VALUES(member_seq.NEXTVAL,'ASDF155524','ASDF123456','A-BAO','1',TO_DATE('2020-06-06','YYYY-MM-DD'),'0908168111','abao@abaom.com','1',
  TO_DATE('2020-06-06','YYYY-MM-DD'),load_blob('mem3.jpg'),NULL,'船長阿寶','桃園市中壢區中大路300號');    

  INSERT INTO MEMBER (SQ_MEMBER_ID,MEMBER_ACCOUNT,PASSWORD,M_NAME,GENDER,BIRTHDAY,CELLPHONE,M_EMAIL,VALIDATION,
  REGISTERED,M_PHOTO,BACK_IMG,NICK_NAME,ADDRESS) 
  VALUES(member_seq.NEXTVAL,'ASDF151524','ASDF123456','江武揚','1',TO_DATE('2020-06-06','YYYY-MM-DD'),'0908168111','doodoo@abaom.com','1',
  TO_DATE('2020-06-06','YYYY-MM-DD'),load_blob('mem4.jpg'),NULL,'江武揚','桃園市中壢區中大路300號');

  INSERT INTO MEMBER (SQ_MEMBER_ID,MEMBER_ACCOUNT,PASSWORD,M_NAME,GENDER,BIRTHDAY,CELLPHONE,M_EMAIL,VALIDATION,
  REGISTERED,M_PHOTO,BACK_IMG,NICK_NAME,ADDRESS) 
  VALUES(member_seq.NEXTVAL,'ASDF6666','ASDF123456','孤獨山姆','1',TO_DATE('2020-06-06','YYYY-MM-DD'),'0908168188','sam@tomcat.com','1',
  TO_DATE('2020-06-06','YYYY-MM-DD'),load_blob('mem5.jpg'),NULL,'孤獨山姆','桃園市中壢區中大路300號');  
  
  INSERT INTO MEMBER (SQ_MEMBER_ID,MEMBER_ACCOUNT,PASSWORD,M_NAME,GENDER,BIRTHDAY,CELLPHONE,M_EMAIL,VALIDATION,
  REGISTERED,M_PHOTO,BACK_IMG,NICK_NAME,ADDRESS) 
  VALUES(member_seq.NEXTVAL,'ASDF11666','ASDF123456','寒導演','1',TO_DATE('2020-06-06','YYYY-MM-DD'),'0908168188','hau11@tomcat.com','1',
  TO_DATE('2020-06-06','YYYY-MM-DD'),load_blob('mem6.jpg'),NULL,'譁導','桃園市中壢區中大路300號');  
  
  INSERT INTO MEMBER (SQ_MEMBER_ID,MEMBER_ACCOUNT,PASSWORD,M_NAME,GENDER,BIRTHDAY,CELLPHONE,M_EMAIL,VALIDATION,
  REGISTERED,M_PHOTO,BACK_IMG,NICK_NAME,ADDRESS) 
  VALUES(member_seq.NEXTVAL,'cc6666','ASDF123456','蕭大寶','1',TO_DATE('2020-06-06','YYYY-MM-DD'),'0908168188','hau11@tomcat.com','1',
  TO_DATE('2020-06-06','YYYY-MM-DD'),load_blob('mem7.jpg'),NULL,'蕭大寶','桃園市中壢區中大路300號'); 
  
  INSERT INTO MEMBER (SQ_MEMBER_ID,MEMBER_ACCOUNT,PASSWORD,M_NAME,GENDER,BIRTHDAY,CELLPHONE,M_EMAIL,VALIDATION,
  REGISTERED,M_PHOTO,BACK_IMG,NICK_NAME,ADDRESS) 
  VALUES(member_seq.NEXTVAL,'cc7777','ASDF123456','周星星','1',TO_DATE('2020-06-06','YYYY-MM-DD'),'0908168188','hau11@tomcat.com','1',
  TO_DATE('2020-06-06','YYYY-MM-DD'),load_blob('mem8.jpg'),NULL,'9527蕭大寶','桃園市中壢區中大路300號'); 
  
  INSERT INTO MEMBER (SQ_MEMBER_ID,MEMBER_ACCOUNT,PASSWORD,M_NAME,GENDER,BIRTHDAY,CELLPHONE,M_EMAIL,VALIDATION,
  REGISTERED,M_PHOTO,BACK_IMG,NICK_NAME,ADDRESS) 
  VALUES(member_seq.NEXTVAL,'cc7777','ASDF123456','唐龍','1',TO_DATE('2020-06-06','YYYY-MM-DD'),'0908168188','hau11@tomcat.com','1',
  TO_DATE('2020-06-06','YYYY-MM-DD'),load_blob('mem9.jpg'),NULL,'唐龍','桃園市中壢區中大路300號'); 
  
  INSERT INTO MEMBER (SQ_MEMBER_ID,MEMBER_ACCOUNT,PASSWORD,M_NAME,GENDER,BIRTHDAY,CELLPHONE,M_EMAIL,VALIDATION,
  REGISTERED,M_PHOTO,BACK_IMG,NICK_NAME,ADDRESS) 
  VALUES(member_seq.NEXTVAL,'ASDF7777','ASDF123456','趙二虎','1',TO_DATE('2020-06-06','YYYY-MM-DD'),'0908168188','hau11@tomcat.com','1',
  TO_DATE('2020-06-06','YYYY-MM-DD'),load_blob('mem10.jpg'),NULL,'趙二虎','桃園市中壢區中大路300號'); 

  
--------------------------------------------------------
--FOR TABLE  FORUM VALUES
-------------------------------------------------------- 
--'TM'||'-'||LPAD(to_char(theme_seq.NEXTVAL), 6, '0')
  INSERT INTO FORUM (SQ_THEME_ID,SQ_MEMBER_ID,THEME_NAME,THEME_TIME,REPONSE_SUM,THEME_DETIAL,THEME_PIC,THEME_DISPLAY_STATUS) 
  VALUES('TM'||'-'||LPAD(to_char(theme_seq.NEXTVAL), 6, '0'),'910002','單車蘭嶼環島野營五天四夜',TO_DATE('2020-06-06 21:00','YYYY-MM-DD HH24:MI'),'5','台灣有六大離島可以騎單車，澎湖、金門、馬祖、綠島、蘭嶼、小琉球，龜山島跟基隆嶼開放登島了但不能騎車，所以台灣環島完下一個目標就是環離島。蘭嶼環島一圈約有37公里，整個島分為六個部落：東清、野銀、紅頭、椰油、朗島和漁人部落，每個部落都是一個自主單元，並沒有一個跨部落的領導人。為了因應現行行政體系，蘭嶼部落還是有選出一個鄉長，但僅有名義上的領導權，部落依然各自為政，如遇紛爭仍以傳統方式解決。詳細介紹：https://bit.ly/2SUrJoi',
  NULL,'0');
  
  INSERT INTO FORUM (SQ_THEME_ID,SQ_MEMBER_ID,THEME_NAME,THEME_TIME,REPONSE_SUM,THEME_DETIAL,THEME_PIC,THEME_DISPLAY_STATUS) 
  VALUES('TM'||'-'||LPAD(to_char(theme_seq.NEXTVAL), 6, '0'),'910002','新北福隆 - 舊草嶺環狀線單車道',TO_DATE('2020-06-06 21:00','YYYY-MM-DD HH24:MI'),'2','本文同步發表於 https://carlming.net/?p=1672 地址：新北市貢寮區福隆街（起點:福隆火車站）開放時間：08:00-17:30（17:00開始清場）注意事項：平日開放步行，假日僅供自行車進入！全路線禁止汽機車通行！景點特色：無敵海景 / 懷舊隧道 / 安全車道 /平坦順暢 / 漁村風光 租車位置：火車站旁或台二線靠福隆街口 停車資訊：車站旁路小建議有租車停出租處，無租車者自行備單車可停福隆海水浴場或台２線福隆國小旁空地停車５０元，龜壽谷街單車沿路線至隧道口也有零星可以停車',
  NULL,'0');
  
  INSERT INTO FORUM (SQ_THEME_ID,SQ_MEMBER_ID,THEME_NAME,THEME_TIME,REPONSE_SUM,THEME_DETIAL,THEME_PIC,THEME_DISPLAY_STATUS) 
  VALUES('TM'||'-'||LPAD(to_char(theme_seq.NEXTVAL), 6, '0'),'910002','臺灣的屋脊 - 山線四日之旅',TO_DATE('2020-06-06 21:00','YYYY-MM-DD HH24:MI'),'1','從台灣的中心點「埔里鎮」出發，穿過台灣最有名的自行車環湖公路「日月潭」，一路從台21省騎到台灣最高峰的聖山「玉山」的入口"塔塔加"，也是整個新中横公路的最高點，接著一路下滑經過台灣最知名的日出景點「阿里山」，最後接回到這座存留著歷史文化與小吃聞名的城市「嘉義」。全長194公里，總爬升3059公尺，是個能穿過幾個台灣最具有代表性的景點與公路路線。如果說台灣人心目中騎單車的聖地是位於最高海拔公路的武嶺牌樓。那這條山路則是條能經過玉山國家公園的高海拔路線，雖公路的海拔不及合歡山武嶺高，但沿路所經過的景點卻都是一級景點代表，且景色變化多端優美又壯麗。這回在年未十二月安排中南部四日行，我會在埔里當地小逛與嘉義知名的太平36彎公路騎乘，最後移動到台灣舊時代的首府「台南」結束。在這篇四日的遊記中，我會在小鎮、鄉間、環湖、小型山道、高海拔公路與熱鬧的城市間進行遊走，我認為這是我在台灣在最中短天數的旅程中，騎過最全面也是最能看見台灣的集各種精華一面的中南部之旅。',
  NULL,'0');
  
  INSERT INTO FORUM (SQ_THEME_ID,SQ_MEMBER_ID,THEME_NAME,THEME_TIME,REPONSE_SUM,THEME_DETIAL,THEME_PIC,THEME_DISPLAY_STATUS) 
  VALUES('TM'||'-'||LPAD(to_char(theme_seq.NEXTVAL), 6, '0'),'910002','屏東大武山及老七佳吊橋單車行',TO_DATE('2020-06-06 21:00','YYYY-MM-DD HH24:MI'),'1','又是一段自謔行程今天行程由高雄-台88-竹田-萬巒-佳平-大武山(泰武)-佳興-義林-古義-丹林-餉潭-南和-老七佳吊橋-力里-七佳-枋寮-林邊-潮州坐火車回家，詳請看本次行程影片紀錄',
  NULL,'0');
  
  INSERT INTO FORUM (SQ_THEME_ID,SQ_MEMBER_ID,THEME_NAME,THEME_TIME,REPONSE_SUM,THEME_DETIAL,THEME_PIC,THEME_DISPLAY_STATUS) 
  VALUES('TM'||'-'||LPAD(to_char(theme_seq.NEXTVAL), 6, '0'),'910002','請問桃園跨經國路印象大橋車道何時通行？',TO_DATE('2020-06-06 21:00','YYYY-MM-DD HH24:MI'),'1','如題， 請問是否有人知道桃園跨經國路的印象大橋自行車道預計何時啟用通行？另外，若啟用，請問目前是否真可由 龜山沿南崁溪順順騎 22 公里到南崁溪出海口竹圍漁港？ 還是目前仍是有許多斷點的不建議路線？',
  NULL,'0');
  
  
  --------------------------------------------------------
--FOR TABLE FORUM_THEME_REPORT VALUES
-------------------------------------------------------- 
  INSERT INTO FORUM_THEME_REPORT (SQ_THEME_REPORT_ID,SQ_THEME_ID,SQ_MEMBER_ID,THEME_REPORT_DETAIL,THEME_REPORT_TIME,THEME_REPORT_TYPE) 
  VALUES(('TR'||'-'||RPAD(to_char(THEME_REPORT_ID_seq.NEXTVAL), 6, '0')),'TM-400001','910002','內容不當',TO_DATE('2020-06-06 21:00','YYYY-MM-DD HH24:MI'),'0');

  INSERT INTO FORUM_THEME_REPORT (SQ_THEME_REPORT_ID,SQ_THEME_ID,SQ_MEMBER_ID,THEME_REPORT_DETAIL,THEME_REPORT_TIME,THEME_REPORT_TYPE) 
  VALUES(('TR'||'-'||RPAD(to_char(THEME_REPORT_ID_seq.NEXTVAL), 6, '0')),'TM-400002','910002','不當廣告置入',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');

  INSERT INTO FORUM_THEME_REPORT (SQ_THEME_REPORT_ID,SQ_THEME_ID,SQ_MEMBER_ID,THEME_REPORT_DETAIL,THEME_REPORT_TIME,THEME_REPORT_TYPE) 
  VALUES(('TR'||'-'||RPAD(to_char(THEME_REPORT_ID_seq.NEXTVAL), 6, '0')),'TM-400003','910002','內文用字不當',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');

  INSERT INTO FORUM_THEME_REPORT (SQ_THEME_REPORT_ID,SQ_THEME_ID,SQ_MEMBER_ID,THEME_REPORT_DETAIL,THEME_REPORT_TIME,THEME_REPORT_TYPE) 
  VALUES(('TR'||'-'||RPAD(to_char(THEME_REPORT_ID_seq.NEXTVAL), 6, '0')),'TM-400004','910002','發文分類錯誤',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');

  INSERT INTO FORUM_THEME_REPORT (SQ_THEME_REPORT_ID,SQ_THEME_ID,SQ_MEMBER_ID,THEME_REPORT_DETAIL,THEME_REPORT_TIME,THEME_REPORT_TYPE) 
  VALUES(('TR'||'-'||RPAD(to_char(THEME_REPORT_ID_seq.NEXTVAL), 6, '0')),'TM-400005','910002','不當內容指引',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');


 --------------------------------------------------------
--FOR TABLE FORUM_MESSAGE VALUES
-------------------------------------------------------- 
--上限改成('FM'||'-'||RPAD(to_char(FORUM_MESSAGE_ID_seq.NEXTVAL), 6, '0'))

  INSERT INTO FORUM_MESSAGE (SQ_FORUM_MESSAGE_ID,SQ_THEME_ID,SQ_MEMBER_ID,MESSAGE_DETAIL,MESSAGE_TIME,MESSAGE_DISPLAY_STATUS) 
  VALUES(('FM'||'-'||RPAD(to_char(FORUM_MESSAGE_ID_seq.NEXTVAL), 6, '0')),'TM-400001','910002','謝謝大大分享介紹',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');

  INSERT INTO FORUM_MESSAGE (SQ_FORUM_MESSAGE_ID,SQ_THEME_ID,SQ_MEMBER_ID,MESSAGE_DETAIL,MESSAGE_TIME,MESSAGE_DISPLAY_STATUS) 
  VALUES(('FM'||'-'||RPAD(to_char(FORUM_MESSAGE_ID_seq.NEXTVAL), 6, '0')),'TM-400002','910002','感謝大大分享介紹',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');

  INSERT INTO FORUM_MESSAGE (SQ_FORUM_MESSAGE_ID,SQ_THEME_ID,SQ_MEMBER_ID,MESSAGE_DETAIL,MESSAGE_TIME,MESSAGE_DISPLAY_STATUS) 
  VALUES(('FM'||'-'||RPAD(to_char(FORUM_MESSAGE_ID_seq.NEXTVAL), 6, '0')),'TM-400003','910002','謝謝分享 這個地方真的很棒 有機會一定去',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');

  INSERT INTO FORUM_MESSAGE (SQ_FORUM_MESSAGE_ID,SQ_THEME_ID,SQ_MEMBER_ID,MESSAGE_DETAIL,MESSAGE_TIME,MESSAGE_DISPLAY_STATUS) 
  VALUES(('FM'||'-'||RPAD(to_char(FORUM_MESSAGE_ID_seq.NEXTVAL), 6, '0')),'TM-400004','910002','謝謝分享 這個地方真的很棒 有機會一定去朝聖',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');

  INSERT INTO FORUM_MESSAGE (SQ_FORUM_MESSAGE_ID,SQ_THEME_ID,SQ_MEMBER_ID,MESSAGE_DETAIL,MESSAGE_TIME,MESSAGE_DISPLAY_STATUS) 
  VALUES(('FM'||'-'||RPAD(to_char(FORUM_MESSAGE_ID_seq.NEXTVAL), 6, '0')),'TM-400005','910002','謝謝分享666大家一起返鄉投票 高雄人加油',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');
  
  
   --------------------------------------------------------
--FOR TABLE FORUM_MESSAGE_REPORT VALUES
-------------------------------------------------------- 
  INSERT INTO FORUM_MESSAGE_REPORT (SQ_MESSAGE_REPORT_ID,SQ_FORUM_MESSAGE_ID,SQ_MEMBER_ID,MESSAGE_REPORT_DETAIL,MESSAGE_REPORT_TIME,MESSAGE_REPORT_TYPE) 
  VALUES(('MR'||'-'||RPAD(to_char(MESSAGE_REPORT_ID_seq.NEXTVAL), 6, '0')),'FM-420001','910003','留言灌水',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');
 
  INSERT INTO FORUM_MESSAGE_REPORT (SQ_MESSAGE_REPORT_ID,SQ_FORUM_MESSAGE_ID,SQ_MEMBER_ID,MESSAGE_REPORT_DETAIL,MESSAGE_REPORT_TIME,MESSAGE_REPORT_TYPE) 
  VALUES(('MR'||'-'||RPAD(to_char(MESSAGE_REPORT_ID_seq.NEXTVAL), 6, '0')),'FM-420002','910003','各種留言灌水',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');
 
  INSERT INTO FORUM_MESSAGE_REPORT (SQ_MESSAGE_REPORT_ID,SQ_FORUM_MESSAGE_ID,SQ_MEMBER_ID,MESSAGE_REPORT_DETAIL,MESSAGE_REPORT_TIME,MESSAGE_REPORT_TYPE) 
  VALUES(('MR'||'-'||RPAD(to_char(MESSAGE_REPORT_ID_seq.NEXTVAL), 6, '0')),'FM-420002','910003','文不對題的留言根本留言灌水',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');
  
  INSERT INTO FORUM_MESSAGE_REPORT (SQ_MESSAGE_REPORT_ID,SQ_FORUM_MESSAGE_ID,SQ_MEMBER_ID,MESSAGE_REPORT_DETAIL,MESSAGE_REPORT_TIME,MESSAGE_REPORT_TYPE) 
  VALUES(('MR'||'-'||RPAD(to_char(MESSAGE_REPORT_ID_seq.NEXTVAL), 6, '0')),'FM-420002','910003','這個帳號到處留言灌水',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');
 
  INSERT INTO FORUM_MESSAGE_REPORT (SQ_MESSAGE_REPORT_ID,SQ_FORUM_MESSAGE_ID,SQ_MEMBER_ID,MESSAGE_REPORT_DETAIL,MESSAGE_REPORT_TIME,MESSAGE_REPORT_TYPE) 
  VALUES(('MR'||'-'||RPAD(to_char(MESSAGE_REPORT_ID_seq.NEXTVAL), 6, '0')),'FM-420002','910003','留言帶有政治操作意味',TO_DATE('2020-06-06 22:00','YYYY-MM-DD HH24:MI'),'0');
    
--------------------------------------------------------
--FOR TABLE STAFF VALUES  
--上線改成('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0'))
-------------------------------------------------------- 
  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD) 
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','蕭寶','x6815541@gmail.com','中壢平鎮中央路300號','0987654321','123456','123456');

  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD) 
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','凱農','kanof456852@gmail.com','中壢平鎮中央路300號','0987654321','kano123456','kanof456852');
  
  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD) 
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','ZongLin','ZongLin@gmail.com','中壢平鎮中央路300號','0987654321','tn1030842','tn456852');
  
  
 INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD)
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','David','David@gmail.com','中壢平鎮中央路300號','0987654321','tn1030842','tn456852');
  
  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD)
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','Tomhady','Tomhady@gmail.com','中壢平鎮中央路300號','0987654321','tom123456','tom456852');
  
  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD)
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','湯姆貓','tom456852@gmail.com','中壢平鎮中央路300號','0987654321','tom123456789','tom456852');
  
  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD)
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','Peter','Peter@gmail.com','中壢平鎮中央路300號','0987654321','peter123456','peter456852');
  
  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD)
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','大衛海鮮','x6815541@gmail.com','中壢平鎮中央路300號','0987654321','david123456','david456852');
  
  
  --------------------------------------------------------
--  for Table FUNCTION
--------------------------------------------------------
 

  
  INSERT INTO FUNCTION (SQ_FUNCTION_NUM,FUNCTION_NAME) 
  VALUES(('FUN'||'-'||RPAD(to_char(FUNCTION_NUM_seq.NEXTVAL), 6, '0')),'員工管理功能');
  
  INSERT INTO FUNCTION (SQ_FUNCTION_NUM,FUNCTION_NAME) 
  VALUES(('FUN'||'-'||RPAD(to_char(FUNCTION_NUM_seq.NEXTVAL), 6, '0')),'會員管理功能');
  
  INSERT INTO FUNCTION (SQ_FUNCTION_NUM,FUNCTION_NAME) 
  VALUES(('FUN'||'-'||RPAD(to_char(FUNCTION_NUM_seq.NEXTVAL), 6, '0')),'活動管理功能');

  INSERT INTO FUNCTION (SQ_FUNCTION_NUM,FUNCTION_NAME) 
  VALUES(('FUN'||'-'||RPAD(to_char(FUNCTION_NUM_seq.NEXTVAL), 6, '0')),'路線管理功能');

  INSERT INTO FUNCTION (SQ_FUNCTION_NUM,FUNCTION_NAME) 
  VALUES(('FUN'||'-'||RPAD(to_char(FUNCTION_NUM_seq.NEXTVAL), 6, '0')),'商品管理功能');
  
  INSERT INTO FUNCTION (SQ_FUNCTION_NUM,FUNCTION_NAME) 
  VALUES(('FUN'||'-'||RPAD(to_char(FUNCTION_NUM_seq.NEXTVAL), 6, '0')),'FAQ管理功能');
  
  --------------------------------------------------------
--  for Table AUTHORITY
--------------------------------------------------------

  
  INSERT INTO AUTHORITY (SQ_STAFF_ID,SQ_FUNCTION_NUM) 
  VALUES('STF-810001','FUN-820001');
  
  INSERT INTO AUTHORITY (SQ_STAFF_ID,SQ_FUNCTION_NUM) 
  VALUES('STF-810001','FUN-820002');
  
  INSERT INTO AUTHORITY (SQ_STAFF_ID,SQ_FUNCTION_NUM) 
  VALUES('STF-810001','FUN-820003');
  
  INSERT INTO AUTHORITY (SQ_STAFF_ID,SQ_FUNCTION_NUM) 
  VALUES('STF-810001','FUN-820004');
  
  INSERT INTO AUTHORITY (SQ_STAFF_ID,SQ_FUNCTION_NUM) 
  VALUES('STF-810001','FUN-820005');
  
  INSERT INTO AUTHORITY (SQ_STAFF_ID,SQ_FUNCTION_NUM) 
  VALUES('STF-810001','FUN-820006');
  
  --路線
  --------------------------------------------------------
--  for Table ROUTE_PLAN
--------------------------------------------------------
 
Insert into ROUTE_PLAN (SQ_ROUTE_ID, SQ_MEMBER_ID, SQ_STAFF_ID, ROUTE_NAME, DISTANCE, COUNTRY,
START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION, MODIFY_ID, CHECK_FLAG, ADD_ROUTE )
values ('RP'||LPAD(to_char(route_plan_sequence.NEXTVAL), 6, '0'), '910002', null, '冬山河自行車道', 21.4, '台灣',
 '宜蘭縣', '宜蘭縣', load_blob('r1.jpg'), '坐落於冬山火車站旁的冬山河自行車道，交通十分方便，容易租借自行車，是一條平易親人、四季都適合騎自行車的車道。冬山河自行車道，以冬山火車站作為起點到五結大閘門為終點，沿途經過冬山森林公園、清水橋、珍珠休閒農業區、冬山河親公園、國立傳統藝術中心等等著名景點。', 
 null, 1, 1);
Insert into ROUTE_PLAN (SQ_ROUTE_ID, SQ_MEMBER_ID, SQ_STAFF_ID, ROUTE_NAME, DISTANCE, COUNTRY,
START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION, MODIFY_ID, CHECK_FLAG, ADD_ROUTE )
values ('RP'||LPAD(to_char(route_plan_sequence.NEXTVAL), 6, '0'), '910002', null, '集集綠色隧道自行車道', 4.1, '台灣',
 '南投縣', '南投縣', load_blob('r2.jpg'), '集集綠色隧道為集集鎮上著名的景緻，位在名間與集集兩鄉鎮之間，綠色隧道長度為4.5公里，兩旁皆為民國二十九年時所種植的樟樹，共計有千餘棵，樹齡約在六、七十年之間，繁茂的樟樹覆蓋了整條道路，因此得綠色隧道之美名。走在綠色隧道人行道上，一旁還有火車緩緩駛過，並設置有解說牌、木製涼亭與座椅供民眾休憩，美麗的景緻吸引許多民眾前來賞景散步。',  
 null, 1, 1);
Insert into ROUTE_PLAN (SQ_ROUTE_ID, SQ_MEMBER_ID, SQ_STAFF_ID, ROUTE_NAME, DISTANCE, COUNTRY,
START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION, MODIFY_ID, CHECK_FLAG, ADD_ROUTE )
values ('RP'||LPAD(to_char(route_plan_sequence.NEXTVAL), 6, '0'), '910002', null, '斗六古坑綠色運動休閒鐵馬道', 8.2, '台灣',
 '雲林縣', '雲林縣', load_blob('r3.jpg'), '斗六古坑綠色運動休閒鐵馬道位在斗六市與古坑鄉交界，由市區道路、自行車道及鄉間產業道路所組成。主線從斗六市大學路口到古坑湳仔車站，長度大約8.7公里，加上從主線延伸的4條支線，總長度將近30公里，是條兼具運動健身及休閒活動的自行車道。斗六古坑自行車道於大學路-府文路廣場起點設有明顯標示，沿府文路接續鄉間小路，經過大片稻田及果園風光後便進入自行車專用道，自行車道部分路段是由舊台糖鐵道改建而成，寬敞舒適的車道、一望無際的鄉野風光，讓您輕鬆享受田園之旅。斗六古坑自行車道沿途經過雲林科技大學、台糖高爾夫、蜜蜂故事館、古坑綠色隧道景觀公園至終點湳仔車站(五分車站)，道路平坦易行，適合全家大小親子同遊，屬休閒級路線。',  
 null, 1, 1);
Insert into ROUTE_PLAN (SQ_ROUTE_ID, SQ_MEMBER_ID, SQ_STAFF_ID, ROUTE_NAME, DISTANCE, COUNTRY,
START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION, MODIFY_ID, CHECK_FLAG, ADD_ROUTE )
values ('RP'||LPAD(to_char(route_plan_sequence.NEXTVAL), 6, '0'), '910002', null, '愛河自行車道', 13.9, '台灣',
 '高雄市', '高雄市', load_blob('r4.jpg'), '愛河自行車道採多樣化區位型態規劃行車路線，整個自行車道系統皆兼具城市景觀特色，將高雄的山水及海港特色融入其中，並以人文、生態及社區鄰里為主軸，車道北自蓮池潭，南至愛河出海口，整個車道系統並設置五個迴圈，遊客可依自身需求選擇單車休閒路線。沿著愛河自行車道除了享受御風而行之樂，沿線兩岸的親水設施、公園綠地、博物館等觀賞遊憩景點，都可以輕鬆地納入單車的旅遊行程內。要飽覽高雄市最著名的景點『愛河』，愛河自行車道提供遊客一便捷、自主且環保的選擇！',  
 null, 1, 1);
Insert into ROUTE_PLAN (SQ_ROUTE_ID, SQ_MEMBER_ID, SQ_STAFF_ID, ROUTE_NAME, DISTANCE, COUNTRY,
START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION, MODIFY_ID, CHECK_FLAG, ADD_ROUTE )
values ('RP'||LPAD(to_char(route_plan_sequence.NEXTVAL), 6, '0'), '910002', null, '淡水金色水岸自行車道', 15.6, '台灣',
 '新北市', '新北市', load_blob('r5.jpg'), '位於淡水的金色水岸自行車道，起點位於台北市與新北市交界處的觀山公園，沿著捷運淡水線旁行駛，於淡海新市鎮為終點，總長約10公里。沿途除了可以觀賞到紅樹林等自然景觀外，還可飽覽淡水河畔美景、歷史人文古蹟、淡水老街等，在金色夕陽的陪伴之下欣賞淡水絕美景觀。',  
 null, 1, 1);
Insert into ROUTE_PLAN (SQ_ROUTE_ID, SQ_MEMBER_ID, SQ_STAFF_ID, ROUTE_NAME, DISTANCE, COUNTRY,
START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION, MODIFY_ID, CHECK_FLAG, ADD_ROUTE )
values ('RP'||LPAD(to_char(route_plan_sequence.NEXTVAL), 6, '0'), '910003', null, '日月潭自行車道', 5.4, '台灣',
 '南投縣', '南投縣', load_blob('r6.jpg'), '日月潭自行車道全長約6.4公里，向山段由水社至向山遊客中心，將兩個重要休憩點連成一線，全長約3.4公里。向山遊客中心及水社綜合商場皆有單車服務站，其中最貼近水面的區段全長約0.4公里，將自行車道架在水面上，繞過住家與商店，臨水而行，號稱「水上自行車道」。為了達到人車分道以維護遊憩安全，本處建造「永結」、「同心」兩座自行車及行人專用橋，以白色橋墩和木製步道組成。跨越山溝的弧形橋面，則是考量騎乘的流暢性。此區為婚紗攝影新亮點，白色基調的橋墩、湖邊的人工沙灘及花圃，交織出浪漫美景。月潭段以向山行政中心為起點，往南沿著月潭南岸，經月牙灣、頭社壩至環潭一號隧道口止，全長約3.4公里，沿途有湖景相伴，中途可南眺頭社盆地，北望青龍山脈，是親近月潭的優質車道。',  
 null, 1, 1);
Insert into ROUTE_PLAN (SQ_ROUTE_ID, SQ_MEMBER_ID, SQ_STAFF_ID, ROUTE_NAME, DISTANCE, COUNTRY,
START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION, MODIFY_ID, CHECK_FLAG, ADD_ROUTE )
values ('RP'||LPAD(to_char(route_plan_sequence.NEXTVAL), 6, '0'), '910003', null, '嘉義鰲鼓溼地', 17, '台灣',
 '嘉義縣', '嘉義縣', load_blob('r7.jpg'),  '「鰲鼓濕地森林園區」佔地約1,475公頃，有著蓊鬱的樹林及浩瀚的濕地，良好的環境，孕育出許多生命，成為各種生物的家園。平地造林的成果，讓苦楝、木麻黃、桉樹、白千層、茄苳……等樹木在此紮根生長，不但讓鰲鼓的地貌更顯豐富，也吸引許多鳥類前來築巢、覓食。當然還有成千上萬的野生動物，使鰲鼓濕地成為不可多得的生態綠洲，彷彿自然界的海角新樂園！在地的居民，也以自然為靈感，點綴社區的角落，讓社區景觀與一草一木融合為一幅特殊的風景，形成人與自然共存的和諧畫面。若要好好探索這塊充滿生命力的海角樂園，歡迎您騎乘自行車，發現鰲鼓更多的美麗、感染，自在徜徉在被森林、海水與微風包圍的幸福。',  
 null, 1, 1);
Insert into ROUTE_PLAN (SQ_ROUTE_ID, SQ_MEMBER_ID, SQ_STAFF_ID, ROUTE_NAME, DISTANCE, COUNTRY,
START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION, MODIFY_ID, CHECK_FLAG, ADD_ROUTE )
values ('RP'||LPAD(to_char(route_plan_sequence.NEXTVAL), 6, '0'), '910003', null, '安平運河沿岸自行車道', 5.5, '台灣',
 '台南市', '台南市', load_blob('r8.jpg'), '『安平運河沿岸自行車道』位於台南市的安平區，單車道路線從"望月橋"開始，沿著"安平運河"一路欣賞河岸風光前進，至"安億橋"後單車道路線一分為二，往右走可探尋古蹟美食、往左走則能飽覽自然風光。台南市安平區一帶，可說是集結各級古蹟、自然生態、特產小吃、歷史人文等多元豐富內涵觀光勝地，想要一次玩遍安平，最好的方式就是利用騎腳踏車，即健康環保又能滿載而歸。',  
 null, 1, 1);
Insert into ROUTE_PLAN (SQ_ROUTE_ID, SQ_MEMBER_ID, SQ_STAFF_ID, ROUTE_NAME, DISTANCE, COUNTRY,
START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION, MODIFY_ID, CHECK_FLAG, ADD_ROUTE )
values ('RP'||LPAD(to_char(route_plan_sequence.NEXTVAL), 6, '0'), '910003', null, '新竹海岸線自行車道', 19, '台灣',
 '新竹縣', '新竹縣', load_blob('r9.jpg'), '「17公里海岸線自行車道」最北從"南寮漁港"一直往南延伸到"客雅溪口"，總長度約17公里左右，同時"新竹市政府"為了推廣濱海地區的旅遊活動，特地整頓"南寮漁港"、"港南濱海風景區"等景點，提供給遊客更多的遊憩地點。在「17公里海岸線自行車道」騎乘單車，不但一路上可享受海風的吹拂，騎乘之餘還可以脫下鞋子光著腳丫踩在海岸線的沙灘上，若時間充足，還可以到堤防邊欣賞濱海的落日，看著絢麗的金光佈滿沙灘與海平面，綜合了各種生態保育和休憩活動，豐富有趣，也非常適合親子共遊，是新竹單車旅遊的最佳地點。',  
 null, 1, 1);
Insert into ROUTE_PLAN (SQ_ROUTE_ID, SQ_MEMBER_ID, SQ_STAFF_ID, ROUTE_NAME, DISTANCE, COUNTRY,
START_AREA, END_AREA, ROUTE_IMAGE, ROUTE_INTRODUCTION, MODIFY_ID, CHECK_FLAG, ADD_ROUTE )
values ('RP'||LPAD(to_char(route_plan_sequence.NEXTVAL), 6, '0'), '910003', null, '新店溪自行車道', 20.4, '台灣',
 '新北市', '新北市', load_blob('r10.jpg'), '新店溪自行車道是條輕鬆悠閒的自行車道，沿著新店溪而行，從美麗的碧潭吊橋開始，沿路上木棧道、水泥路、柏油路、地磚鋪路交錯出現，景色也從大都會住宅、運動公園，一直到花園綠地，車道平整安全，騎起來相當順暢！體力好的人，當騎到終點華江橋時，還能再連接大漢溪左或右岸自行車道，一路暢遊至鶯歌等地。 原本用來疏導交通的中安便橋，現規劃成單車道，可跨越新店溪到對岸的陽光運動園區。頂溪站 、大坪林站 、新店站都可以開放非折疊式腳踏車進出。',  
 null, 1, 1);

--------------------------------------------------------
--  for Table ROUTE_PLAN_DETAIL
--------------------------------------------------------




INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110001', '冬山火車站', 121.791992, 
 24.637015, load_blob('r1_1.jpg'), '一座巨大的瓜棚。冬山火車站與台灣各地的火車站造型，就是不一樣。新站體設計之初，便以冬山舊名：「冬瓜山」來發想，配合台鐵宜蘭線高架化工程與生態綠舟的開發，設計為台灣第一座以休閒觀光為目的之鐵路車站。');
 INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110001', '傳統藝術中心', 121.824046, 
 24.68563, load_blob('r1_2.jpg'), '宜蘭傳藝園區力求打造臺灣傳統藝術櫥窗，緊密鏈結工藝、民藝及表藝，鼓勵民眾參與，讓大家體認傳統藝術的精神價值，展現臺灣豐富的文化底蘊。園區可以看「展示館」、「蔣渭水演藝廳」及「曲藝館」三館的傳承之粹、逛「魯班街」、「文昌街」及「臨水街」三街的老街之趣，訪「文昌祠」、「黃舉人宅」及「廣孝堂」等建築之美。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110001', '大閘門休息區', 121.831774, 
 24.692292, load_blob('r1_3.jpg'), '冬山河緩緩地流向大海，其中名為下清水的地方，是冬山河下游入海口處最低窪的區域。而清水大閘門，又叫五結防潮閘門，是宜蘭五結鄉頗有名氣的閘門景點。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110001', '冬山河親水公園', 121.81583, 
 24.673072, load_blob('r1_4.jpg'), '親水公園是冬山河最重要的遊憩據點，以重建人與水的自然倫理為訴求，模仿大自然造景並融入蘭陽本土色彩，如水上舞臺、五座圓錐形卵石丘及海面上的龜山島，不經意的將蘭陽地標引入園中。冬山河自古相傳有青龍及黃龍護岸，因此河畔用卵石築起高低起伏、彎曲有致的龍坡，分別鑲上青、藍和黃、橘的陶片，龍坡的階梯上，一方方有趣的嵌鑲畫，是宜蘭小朋友拼貼的傑作。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110001', '冬山森林公園', 121.788271, 
 24.638716, load_blob('r1_5.jpg'), '冬山河生態綠舟位於宜蘭冬山河的中上游，是擁有廣大腹地的公園，面積約16公頃，視野遼闊，以森林主題為主，將冬山河融為一體自然型態的森林公園，並創造出豐富的自然生態。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110001', '冬山火車站', 121.791992, 
 24.637015, load_blob('r1_1.jpg'), '一座巨大的瓜棚。冬山火車站與台灣各地的火車站造型，就是不一樣。新站體設計之初，便以冬山舊名：「冬瓜山」來發想，配合台鐵宜蘭線高架化工程與生態綠舟的開發，設計為台灣第一座以休閒觀光為目的之鐵路車站。'); 

INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110002', '集集火車站', 120.78489, 
 23.826598, load_blob('r2_1.jpg'), '建於民國22年（西元1933年），以純檜木建造，具古樸風格，係全臺古老火車站之一，為鐵路集集支線中之一站，已為觀光旅遊攝影景點。'); 
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110002', '大樟樹', 120.780061, 
 23.828786, load_blob('r2_2.jpg'), '位在集集鎮的大樟樹(樟樹公)是著名的奇景，七百多年樹齡的老樹上攀附著小樹，周圍建有水泥護欄和解說牌，樹高三十公尺，樹圍有5.3公尺，樹冠幅更達九百多平方公尺，蒼鬱茂盛的大樹是當地民眾乘涼談天的據點。'); 
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110002', '十三目仔窯', 120.771841, 
 23.827779, load_blob('r2_3.jpg'), '十三目仔窯大改造煥然一新，挹注鮮明繽紛色彩讓園區更加活潑亮眼，彩虹步道依山勢環繞很吸晴，登山步道到制高點可眺望攔河堰、濁水溪，來對時間還可近距離看到火車緩緩經過。'); 
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110002', '添興窯', 120.755486, 
 23.832868, load_blob('r2_4.jpg'), '1955年成立於集集綠色隧道邊，原生產缸、甕、琉璃瓦、陶磚等聞名於台灣各地。1980年因應台灣陶瓷生態之轉變率先轉型為以「陶藝文化結合觀光」的多元化經營，為台灣現存仍以產作為主的最老窯場之一，目前仍保留一座創窯至今已56年，仍在燒陶的老蛇窯。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110002', '龍泉火車站', 120.750004, 
 23.835237, load_blob('r2_5.jpg'), '龍泉車站在集集支線中少有遊客會在此站駐足，僅有當地部分的居民利用這座車站通勤，每日平均上下車人數不過三十人，但這座龍泉車站旁卻有著非常「南投」風情的鄉村景觀。'); 
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110002', '綠色隧道', 120.758422, 
 23.830965, load_blob('r2_6.jpg'), '位於南投名間鄉與集集鎮之間，有條長達4.5公里的綠色隧道，沿途樟樹夾道成蔭、枝葉茂密，左右兩側枝幹交織成拱形，路經此地，無論是步行、騎乘單車，或驅車前往，都能享受置身綠意中自得之樂。');

INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110003', '斗六糖廠', 120.542449, 
 23.678935, load_blob('r3_1.jpg'), '斗六糖廠位於雲林縣斗六市郊溝壩里，建於民國前三年，原由王雪農先生等三人合資創辦斗六製糖合資會社，第二年由斗六製糖株式會社收買。民國三年合併於東洋製糖株式會社，民國十六年又合併於日糖興業株式會社，民國三十五年台灣光復後改名斗六糖廠，民國八十年製糖作業結束後關廠。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110003', '雨村生態休閒農場', 120.530605, 
 23.665258, load_blob('r3_2.jpg'), '隱身在78號快速道路古坑交流道旁的雨村生態農場，雖然進來的道路還挺小的，但是生意卻意外地好，除了自然生態雕琢的用餐環境外，更設有露天用餐區，並且一個大大的生態池，將餐廳環繞。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110003', '蜜蜂故事館', 120.537217, 
 23.658836, load_blob('r3_3.jpg'), '古坑的蜜蜂故事館，擁有橫跨台灣與泰國的亞洲最大養蜂場，秉持「品質創造信譽，信譽保證品質」永續經營的理念，將故事館定位在自然、休閒、文化、教育及生態，讓您體驗100%純淨、自然、營養豐富而珍貴的蜂產品的甜蜜環繞，並能深刻了解蜜蜂的相關知識。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110003', '古坑綠色隧道', 120.546808, 
 23.662427, load_blob('r3_4.jpg'), '沿著綠色隧道而行的台糖小火車，不論鐵軌、車站或車廂都是相當獨特的空間文化，因此古坑鄉公所計畫將小火車與景觀結合，規劃為民眾婚紗拍攝地場、結婚場所及文化景觀公園，讓公園、隧道、鐵道三者結合，成為最有情調及特色的「蘭樹大道」。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110003', '湳仔車站', 120.542983, 
 23.651707, load_blob('r3_5.jpg'), '綠色隧道最邊緣地帶有一個已廢棄的車站，其實那兒很美，每到黃昏可以看到漂亮的夕陽，已廢棄的車軌帶出一條秘境，與綠色隧道平行，是一條非常寧靜的小徑，是遠離塵囂散步踏青的好去處。');

INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '蓮池潭風景區 ', 120.296553, 
 22.678774, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '原生植物園', 120.301206, 
 22.680714, null, null); 
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '微笑公園', 120.309916, 
 22.672409, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '河堤社區', 120.316361, 
 22.665454, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '愛河之心', 120.303027, 
 22.652576, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '光之塔', 120.293573, 
 22.651628, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '客家文物館', 120.294251, 
 22.650351, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '中都窯廠', 120.29186, 
 22.641983, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '高雄音樂館', 120.279185, 
 22.62729, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '真愛碼頭', 120.283133, 
 22.61905, null, null);  

INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '觀海公園', 121.464146, 
 25.123575, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '關渡大橋', 121.457204, 
 25.125654, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '竹圍碼頭', 121.456624, 
 25.136954, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '紅樹林自然保留區', 121.454941, 
 25.156343, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '淡水老街', 121.445023, 
 25.168947, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '漁人碼頭', 121.412545, 
 25.184054, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '淡海新市鎮', 121.43323, 
 25.199476, null, null);
 
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '向山眺望平台', 120.901798, 
 23.852882, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '向山落羽松', 120.902147, 
 23.853478, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '永結同心橋', 120.902071, 
 23.854627, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '向山觀景臺', 120.902842, 
 23.854693, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '水社壩', 120.901826, 
 23.862151, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '日月潭調整池-餘水吐', 120.904196, 
 23.862642, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '湖畔自行車道', 120.923215, 
 23.872445, null, null);

INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110007', '東石自然教育生態展示館', 120.160791, 
 23.508978, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110007', '北堤濕地', 120.13011, 
 23.519444, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110007', '南堤濕地', 120.134706,
 23.489531, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110007', '笨港口港口宮', 120.185833, 
 23.495576, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110007', '東石自然教育生態展示館', 120.160791, 
 23.508978, null, null);
 
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安平老街', 120.161783, 
 23.000736, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安平古堡', 120.160621, 
 23.001498, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安平樹屋', 120.159809, 
 23.003864, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安平小砲台', 120.158527, 
 22.999501, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安億橋', 120.163569, 
 22.998052, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安平運河沿岸自行車道', 120.175755, 
 22.997423, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安平旅遊資訊中心', 120.16136, 
 23.000361, null, null);

INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '新竹南寮舊漁港', 120.929017, 
 24.849829, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '看海公園', 120.918513, 
 24.83631, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '海天一線看海區', 120.915106, 
 24.832617, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '港南運河', 120.909979, 
 24.823433, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '紅樹林公園', 120.917763, 
 24.807929, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '海山漁港觀海平台', 120.903313, 
 24.764636, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '南港賞鳥區', 120.89483, 
 24.742531, null, null);
 
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110010', '捷運新店站', 121.538131, 
 24.958196, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110010', '碧潭風景區', 121.536497, 
 24.955988, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110010', '新店溪陽光橋', 121.521627, 
 24.978435, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110010', '陽光運動公園', 121.520332, 
 24.976989, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110010', '綠寶石河濱公園', 121.50496, 
 25.015255, null, null);
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110010', '江子翠河口景觀河濱公園', 121.469904, 
 25.036628, null, null);

--------------------------------------------------------
--  for Table WATER_STATION
--------------------------------------------------------


INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME,	STATION_ADDRESS, LONGITUDE,	LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) 
 values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '萊爾富便利商店', '新北市三峽區中正路二段331之1號', 121.365895, 24.909997,
 '台灣', '新北市', load_blob('wHi.png'), '00:00-24:00' ,null , '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) 
 values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '三峽派出所', '新北市三峽區民權街38號', 121.369671, 24.933825,
 '台灣', '新北市', load_blob('w2.jpg'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME,	STATION_ADDRESS, LONGITUDE,	LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) 
 values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '石門派出所', '桃園市龍潭鄉佳安村文化路230號', 121.241264, 24.842899,
 '台灣', '桃園市', load_blob('w3.jpg'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME,	STATION_ADDRESS, LONGITUDE,	LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) 
 values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11便利商店', '苗栗縣後龍鎮龍文路6號', 120.807604, 24.644035,
 '台灣', '苗栗縣', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME,	STATION_ADDRESS, LONGITUDE,	LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) 
 values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '萊爾富便利商店', '臺中市大甲區經國路407號', 120.616859, 24.349396,
 '台灣', '臺中市', load_blob('wHi.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME,	STATION_ADDRESS, LONGITUDE,	LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) 
 values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '白沙派出所', '苗栗縣通霄鎮白東里133號', 120.710651, 24.564483,
 '台灣', '苗栗縣', load_blob('w6.jpg'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME,	STATION_ADDRESS, LONGITUDE,	LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) 
 values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '三田派出所', '臺中市清水區中山路559號', 120.58825, 24.293153,
 '台灣', '臺中市', load_blob('w7.jpg'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME,	STATION_ADDRESS, LONGITUDE,	LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) 
 values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11便利商店', '彰化縣大村鄉中山路一段86號', 120.571856, 23.976824,
 '台灣', '彰化縣', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME,	STATION_ADDRESS, LONGITUDE,	LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) 
 values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '萊爾富便利商店', '雲林縣大埤鄉延平路三段582號', 120.467884, 23.6322,
 '台灣', '雲林縣', load_blob('wHi.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME,	STATION_ADDRESS, LONGITUDE,	LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) 
 values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '永靖分駐所', '彰化縣永靖鄉中山路二段17號', 120.54736, 23.920374,
 '台灣', '彰化縣', load_blob('w10.jpg'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三元店', '桃園市桃園區大業路1段54號56號1樓','121.317916','25.004812',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11千山店', '桃園市桃園區縣府路212號216號','121.299956','24.994698',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大有店', '桃園市桃園區大有路561號','121.31676','25.015532',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大佶店', '桃園市桃園區三民路3段490號','121.307397','24.983714',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大椿店', '桃園市桃園區春日路1193號1樓','121.309012','25.015378',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大權店', '桃園市桃園區大同路57號59號','121.312134','24.989337',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文中店', '桃園市桃園區文中路65號1樓','121.293231','24.995592',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文仁店', '桃園市桃園區延壽街9號11號1樓','121.293492','24.991754',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文城店', '桃園市桃園區龍壽街273巷1號1樓','121.267168','24.989017',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文福店', '桃園市桃園區文中路747號','121.275115','24.992933',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11世貿店', '桃園市桃園區中正路1087號1樓','121.297951','25.016886',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11平昌店', '桃園市桃園區中平路161號1樓','121.293602','24.985494',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正康店', '桃園市桃園區民光路49號','121.307111','25.004628',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正德店', '桃園市桃園區中正路1247號1樓','121.296255','25.020492',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正麗店', '桃園市桃園區莊一街11號13號1樓','121.295277','25.022348',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民大店', '桃園市桃園區大興路221號1樓','121.312923','25.015865',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民越店', '桃園市桃園區大有路141號143號','121.321018','25.006416',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11禾豐店', '桃園市桃園區秀山路95號1樓','121.301689','24.988431',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11立國店', '桃園市桃園區中山東路51號1樓','121.314457','24.995989',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11光北店', '桃園市桃園區中山北路42號1樓及地下1樓','121.303446','24.993175',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11全鎮店', '桃園市桃園區春日路238號240號1樓','121.314983','24.998538',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11同德店', '桃園市桃園區中埔二街150號','121.29575','25.012562',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成皇店', '桃園市桃園區復興路80號','121.316294','24.991101',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11有家店', '桃園市桃園區大有路457號459號1樓','121.318811','25.011913',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11有寶店', '桃園市桃園區寶山街209號1樓','121.316233','25.01214',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏太店', '桃園市桃園區桃鶯路384-9號384-10號1樓','121.322822','24.976764',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏亞店', '桃園市桃園區中平路102號','121.292867','24.987222',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏達三店', '桃園市桃園區興華路23號TY3棟6樓','121.327031','24.975698',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏達電店', '桃園市桃園區興華路23號','121.326607','24.975977',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11辰興店', '桃園市桃園區大興西路一段178號','121.304503','25.01449',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昇宏店', '桃園市桃園區大業路二段111號之2','121.310665','25.018382',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11欣國榮店', '桃園市桃園區經國路860號1樓','121.300751','25.031717',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金凱旋店', '桃園市桃園區壽昌街20巷45號47號','121.292408','24.989547',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金富多店', '桃園市桃園區寶慶路428號','121.290483','25.018943',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長陽店', '桃園市桃園區長沙街90號1樓','121.309485','24.980002',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11青溪店', '桃園市桃園區自強路2號1樓與中山東路153號1樓','121.318662','24.997481',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11冠吾店', '桃園市桃園區中正路455號','121.306637','25.001271',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11冠桃園店', '桃園市桃園區中泰里國際路一段1179號','121.288619','24.989252',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11城邦店', '桃園市桃園區樹仁三街81號83號85號1樓','121.322264','24.97438',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11春寶店', '桃園市桃園區春日路670號1樓','121.310843','25.010774',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11星寶店', '桃園市桃園區大業路一段426號1樓','121.311765','25.014906',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11紅蕃茄店', '桃園市桃園區復興路83號85號','121.314244','24.990804',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11埔子店', '桃園市桃園區永安路1018號','121.288313','25.009186',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桃中店', '桃園市桃園區中正路233號1樓','121.310127','24.99585',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桃民店', '桃園市桃園區民族路79號1樓','121.309472','24.991073',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桃全店', '桃園市桃園區中正路324號','121.309152','24.997923',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桃朋店', '桃園市桃園區大興西路二段1號1樓','121.300157','25.01205',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桃金店', '桃園市桃園區金門2街83號及93號','121.316817','24.981774',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桃華店', '桃園市桃園區南華街113號','121.307704','24.992044',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桃園站店', '桃園市桃園區中正路1號','121.313308','24.98976',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桃農店', '桃園市桃園區萬壽路3段41號43號45號1樓','121.322528','24.991913',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桃龍店', '桃園市桃園區龍安街79號81號','121.280257','24.988757',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泰昌店', '桃園市桃園區泰昌三街51-6號','121.294893','24.987898',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11益志店', '桃園市桃園區樹仁三街102號','121.321298','24.974269',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11益壽店', '桃園市桃園區延壽街169號171號','121.289011','24.994083',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11假日店', '桃園市桃園區大有路560號1樓','121.317792','25.01416',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11健業店', '桃園市桃園區健行路88號','121.310576','25.022182',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國仲店', '桃園市桃園區中德里國際路1段538號','121.289088','24.973865',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國安店', '桃園市桃園區經國路405號','121.304858','25.017527',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國祥店', '桃園市桃園區自強里經國路685號','121.302148','25.023801',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國揚店', '桃園市桃園區經國路242號','121.30406','25.020607',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國豐店', '桃園市桃園區國豐六街25號','121.27839','24.988115',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11得寶店', '桃園市桃園區春日路1344號1346號','121.306051','25.026408',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敏盛店', '桃園市桃園區經國路168號B1樓','121.306107','25.016283',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11祥佑店', '桃園市桃園區寶慶路176號','121.292833','25.013672',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11莊正店', '桃園市桃園區莊二街148號1樓','121.294345','25.024317',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富有店', '桃園市桃園區富國路656號','121.282658','25.020473',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富邑店', '桃園市桃園區龍祥里龍泉五街82號龍祥街98號','121.271011','24.982485',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11尊品店', '桃園市桃園區建國路41-1號1樓','121.316931','24.985555',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11崴正店', '桃園市桃園區中正五街137號139號1樓','121.30236','25.005821',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11崴信店', '桃園市桃園區信光路22號1樓','121.307567','25.006246',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11崴盛店', '桃園市桃園區慈文路51號;正康三街284號','121.306119','25.010358',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11智勝店', '桃園市桃園區桃智路1號3號1樓','121.294698','24.964854',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華信店', '桃園市桃園區成功路1段47號','121.311345','24.992296',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11慈安店', '桃園市桃園區永安路600號1樓','121.297548','25.003095',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11慈德店', '桃園市桃園區慈德街53號55號57號','121.300644','25.007488',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新大興店', '桃園市桃園區大興西路二段253號1樓','121.294414','25.0084',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新光信店', '桃園市桃園區中正路612號','121.304874','25.004882',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新武陵店', '桃園市桃園區上海路54號56號','121.2834','24.989745',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新虎山店', '桃園市桃園區成功路三段50號52號1樓','121.325612','24.9999',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新桃行店', '桃園市桃園區力行路7號','121.305008','25.003058',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新桃府店', '桃園市桃園區縣府路312號312之1號','121.300086','24.992595',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新桃林店', '桃園市桃園區延平路4號6號1樓','121.313735','24.988368',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新莊伯店', '桃園市桃園區莊敬路一段175號177號1樓','121.300349','25.025222',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新達豐店', '桃園市桃園區延平路202號;大豐路194號','121.314504','24.980432',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新德鴻店', '桃園市桃園區永福西街111號113號','121.29512','24.963832',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新龍壽店', '桃園市桃園區龍壽街20號','121.269657','24.978398',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新雙安店', '桃園市桃園區安樂街48號50號1樓;安東街56號1樓','121.315867','24.992533',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11源盛店', '桃園市桃園區國聖一街188號1樓;宏昌十二街587號1樓','121.288806','24.984561',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞家店', '桃園市桃園區三民路三段84號86號1樓','121.305761','24.99474',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聖民店', '桃園市桃園區民生路208號一樓','121.31299','24.994357',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聖保祿店', '桃園市桃園區福安里建新街68號','121.311977','24.982909',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鼎桃店', '桃園市桃園區宏昌六街281號1樓','121.288309','24.986584',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鈺朋店', '桃園市桃園區莊敬路二段105號1樓','121.292896','25.022363',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11漢豐店', '桃園市桃園區漢中街146號1樓','121.303909','24.982024',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福利國店', '桃園市桃園區同德六街170號1樓','121.296801','25.015491',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11維瀚店', '桃園市桃園區中埔六街36號1樓','121.296121','25.016612',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蜜鄰店', '桃園市桃園區龍壽街96號98號','121.26861','24.98124',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11輕井澤店', '桃園市桃園區大業路一段355號357號一樓','121.312251','25.012423',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11領華店', '桃園市桃園區中華路16號1樓','121.311283','24.99128',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11澄和店', '桃園市桃園區大業路一段277號1加2樓','121.31534','25.009058',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11箱根店', '桃園市桃園區南平路416號418號1樓','121.29604','25.017328',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11縣北店', '桃園市桃園區中山北路136號1樓','121.303417','24.995105',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11臻愛店', '桃園市桃園區大業路一段152號','121.316189','25.007276',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興武店', '桃園市桃園區復興路239之1號1樓;241號1樓','121.307748','24.988989',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍行店', '桃園市桃園區長安里力行路156號','121.301554','25.001416',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍袖店', '桃園市桃園區龍安街143號1樓','121.279593','24.991152',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11謙悅店', '桃園市桃園區新埔六街58號60號1樓','121.302601','25.014575',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙假店', '桃園市桃園區大有路660號1樓之2','121.316606','25.016681',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙慶店', '桃園市桃園區安慶街84號86號','121.292657','25.018301',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘇波店', '桃園市桃園區民生路391號','121.310389','25.00009',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鶯明店', '桃園市桃園區桃鶯路251號','121.3187','24.983966',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11驊豐店', '桃園市桃園區建國路101號1樓','121.311857','24.985301',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫帝標店', '桃園市桃園區龍泉二街65號龍城五街66.68號1樓','121.269713','24.980241',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三光店', '桃園市中壢區中央西路二段259號259-1號1樓','121.211803','24.96125',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大中原店', '桃園市中壢區新中北路151號151-1號一樓','121.238021','24.958697',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大享店', '桃園市中壢區中正路1262號1樓','121.201692','24.970767',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大崙店', '桃園市中壢區中正路四段149號151號','121.178962','24.989065',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11工業店', '桃園市中壢區吉林路131號1樓','121.250415','24.984032',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中天店', '桃園市中壢區中和路249號','121.22332','24.953273',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中同店', '桃園市中壢區大同路141號143號1樓','121.222015','24.956584',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中孝店', '桃園市中壢區忠孝路248號1樓','121.254555','24.978434',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中壢中正店', '桃園市中壢區中正路89號1樓','121.223518','24.954465',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中壢站店', '桃園市中壢區中和路139號','121.225649','24.953636',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中壢高店', '桃園市中壢區青埔里高鐵北路1段6號B1','121.215089','25.013234',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仁勛店', '桃園市中壢區華勛里華勛街112號114號','121.259898','24.950601',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11元化店', '桃園市中壢區元化路1-1號','121.227033','24.955859',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11日月光店', '桃園市中壢區中華路一段560號','121.251167','24.969882',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11王子店', '桃園市中壢區三光路130號1樓','121.212134','24.962617',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11世紀廣場店', '桃園市中壢區興南里新生路182號','121.223114','24.96114',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仕新店', '桃園市中壢區日新路112號','121.240672','24.955411',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北原店', '桃園市中壢區新中北路239號241號1樓','121.239586','24.959416',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台達二店', '桃園市中壢區東園路3號B1樓','121.239038','24.967043',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11弘揚店', '桃園市中壢區弘揚路47號1樓','121.240408','24.953359',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正神店', '桃園市中壢區成章一街10號12號1樓2樓','121.259397','24.977227',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11立莊店', '桃園市中壢區莊敬路805號','121.255109','24.964315',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11光壢店', '桃園市中壢區莒光路35號1樓','121.238173','24.952607',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吉利店', '桃園市中壢區吉林二路83巷30號32號34號','121.247673','24.983126',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吉豐店', '桃園市中壢區長沙路8號10號1樓','121.228716','24.948341',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成章店', '桃園市中壢區成章二街192號','121.256854','24.980548',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成龍店', '桃園市中壢區振興里20鄰龍岡路三段192號194號','121.233882','24.935384',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成豐店', '桃園市中壢區元化路197巷3號1樓','121.227761','24.960598',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11志廣店', '桃園市中壢區志廣路107號109號1樓2樓','121.205935','24.961311',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11亞文店', '桃園市中壢區龍川街108號110號1樓2樓及112號1樓','121.246578','24.934684',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11來來店', '桃園市中壢區中央東路62號','121.225465','24.956368',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11夜市店', '桃園市中壢區中央西路二段125號','121.214878','24.959142',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11奇采店', '桃園市中壢區晉元路289巷76號','121.263866','24.952421',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11忠敬店', '桃園市中壢區精忠一街1號1樓','121.25708','24.970842',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金鋒店', '桃園市中壢區金鋒四街50巷2號1樓','121.248273','24.945453',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金權店', '桃園市中壢區光明里中央西路二段49號','121.217234','24.958631',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長業店', '桃園市中壢區長春路23號','121.250078','24.978827',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11青埔店', '桃園市中壢區青昇路257號1樓','121.220012','25.015222',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11青埔高店', '桃園市中壢區青埔里高鐵北路1段6號B1','121.215089','25.013234',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11政群店', '桃園市中壢區中園路二段138號','121.234242','24.992395',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11柏德店', '桃園市中壢區中北路158號1樓','121.239451','24.956892',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11科學城店', '桃園市中壢區中北路二段206號','121.228235','24.952623',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11美壢店', '桃園市中壢區中美路二段72號','121.222539','24.959907',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11原大店', '桃園市中壢區實踐路46號','121.242367','24.954461',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11家權店', '桃園市中壢區民權路2段98號','121.216112','24.96725',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桃園高鐵店', '桃園市中壢區青埔里高鐵北路1段6號1樓','121.215028','25.013185',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11海和店', '桃園市中壢區六和路66號68號','121.224192','24.964029',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11海帝店', '桃園市中壢區元化路307號1樓','121.225058','24.962242',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11海華店', '桃園市中壢區慈惠三街152號154號','121.225863','24.964849',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11站行店', '桃園市中壢區新興路162號','121.226255','24.952903',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11高正店', '桃園市中壢區中正路三段134號136號一樓','121.185686','24.985873',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11高欣店', '桃園市中壢區領航南路2段208號1樓','121.214416','25.003919',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11高屋店', '桃園市中壢區民族路2段150號152號','121.204547','24.957721',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11健行店', '桃園市中壢區健行路230號1樓','121.228337','24.947164',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11笙園店', '桃園市中壢區新生路658號660號1樓','121.224023','24.971671',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統上店', '桃園市中壢區新中北路465號1樓','121.2447','24.958223',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統壢店', '桃園市中壢區定寧路15號','121.245095','24.993346',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統讚店', '桃園市中壢區龍江路62號1樓','121.257304','24.931672',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11速達店', '桃園市中壢區新生路二段378之2號','121.222547','24.984893',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11勝壢店', '桃園市中壢區中央西路一段一號一樓','121.223337','24.957157',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富莊店', '桃園市中壢區莊敬路141號','121.257343','24.96786',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復強店', '桃園市中壢區自強六路53號復華街212號1樓','121.24827','24.974355',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復華店', '桃園市中壢區中華路1段670號672號1樓','121.249583','24.969178',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11惠祥店', '桃園市中壢區榮安一街293號','121.258273','24.963527',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11森壢店', '桃園市中壢區新興里2鄰林森路30號1樓','121.225422','24.946993',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華勛店', '桃園市中壢區華勛街191號193號','121.260733','24.949168',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華愛店', '桃園市中壢區華美一路132號136號1樓','121.261028','24.953239',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華薪店', '桃園市中壢區新中北路二段179號181號','121.261748','24.956203',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新中北店', '桃園市中壢區新中北路1018-1號1樓','121.255736','24.956832',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新中華店', '桃園市中壢區中華路2段328號','121.236376','24.964544',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新元店', '桃園市中壢區新生路232號234號','121.223168','24.962869',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新街店', '桃園市中壢區環北路543號','121.229092','24.964549',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新福街店', '桃園市中壢區福州二街392號1樓','121.231666','24.967648',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新壢店', '桃園市中壢區日新路66號68號','121.23955','24.954578',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新壢揚店', '桃園市中壢區中山路138號','121.224758','24.955968',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新壢智店', '桃園市中壢區興仁路二段57號1樓','121.262643','24.967354',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬能店', '桃園市中壢區萬能路1號','121.231508','24.990861',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬興店', '桃園市中壢區月眉路二段357號1樓部份','121.183835','25.010269',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聖央店', '桃園市中壢區中央西路一段78號1樓','121.221369','24.958325',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11過嶺店', '桃園市中壢區民族路五段451號453號1樓','121.166988','24.957924',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11榮安店', '桃園市中壢區榮安十三街297號1樓及榮安十四街2號1樓','121.257843','24.960963',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福冠店', '桃園市中壢區福州一街242號1樓及2樓','121.233153','24.967251',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福神店', '桃園市中壢區福德路79號81號','121.257742','24.974897',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福記店', '桃園市中壢區林森路164號166號168號','121.226482','24.94446',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福瑞店', '桃園市中壢區信義里福州路201號','121.234331','24.94998',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11精材店', '桃園市中壢區吉林路23號B1樓','121.244928','24.979279',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11領航店', '桃園市中壢區領航北路二段239號1樓','121.205245','25.010353',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11影華店', '桃園市中壢區九和一街20號之1樓','121.22389','24.961608',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11慶和店', '桃園市中壢區後寮一路140號142號1樓','121.245664','24.940818',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11慶福店', '桃園市中壢區同慶路277號1樓','121.255559','24.940091',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樂家店', '桃園市中壢區永福路1045號','121.252083','24.965047',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11學屋店', '桃園市中壢區民族路三段402號406號','121.190086','24.960664',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興東店', '桃園市中壢區中山東路三段206號','121.249848','24.942584',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興美店', '桃園市中壢區興國路85號87號一樓','121.220832','24.959847',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興華店', '桃園市中壢區興仁路一段56號1樓','121.260293','24.97174',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍岡店', '桃園市中壢區龍東路508號510號1樓','121.257045','24.93509',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍東店', '桃園市中壢區龍東路138號140號1樓','121.252258','24.929162',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍翔店', '桃園市中壢區普義路175號','121.231422','24.96084',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍學店', '桃園市中壢區龍昌路178號1樓A1','121.2495','24.93745',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11環民店', '桃園市中壢區環西路2號','121.207176','24.957586',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11環宇店', '桃園市中壢區自強15鄰環中東路8號','121.260198','24.967237',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11環福店', '桃園市中壢區普忠路213號','121.246215','24.960948',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11豐利店', '桃園市中壢區南園二路63號','121.234271','24.971533',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11豐亞店', '桃園市中壢區民族路6段232號236號1樓','121.16168','24.961791',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11壢和店', '桃園市中壢區中和路114號','121.2255','24.95412',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11壢美店', '桃園市中壢區中美路39號1樓及建國北路55號1樓','121.226679','24.958249',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11壢都店', '桃園市中壢區長沙路131號成都路72號','121.231951','24.949844',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11壢福店', '桃園市中壢區信義里廣州路202號','121.232736','24.952454',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11耀康店', '桃園市中壢區溪洲街267巷1號一樓','121.23012','24.962381',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫旺店', '桃園市中壢區興安二街1號','121.262957','24.966433',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11八勇店', '桃園市八德區忠勇街197號','121.303747','24.962202',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11八福店', '桃園市八德區福國街76-1號','121.293269','24.957535',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11八德介壽店', '桃園市八德區介壽路二段214號1樓','121.298111','24.951982',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11八德建國店', '桃園市八德區建國路165號','121.287134','24.934378',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大湳店', '桃園市八德區和平路875-1號','121.319529','24.959741',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11世傳店', '桃園市八德區和平路122號126號1樓','121.302297','24.957566',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吉富店', '桃園市八德區白鷺里永豐南路72號','121.27929','24.960601',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11尚群店', '桃園市八德區中山路166號','121.284392','24.926788',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明光店', '桃園市八德區中華路157號','121.279277','24.984151',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明福店', '桃園市八德區大明街105號107號','121.299088','24.969057',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東勇店', '桃園市八德區東勇街83號','121.306691','24.963168',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松柏林店', '桃園市八德區松柏林135號1樓','121.299128','24.939479',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11迎和店', '桃園市八德區銀和街65號67號69號','121.297383','24.95608',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11冠成店', '桃園市八德區重慶街172號','121.303771','24.955997',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11勇伯店', '桃園市八德區東勇北路380號','121.30668','24.969067',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桃德店', '桃園市八德區介壽路一段794號','121.29994','24.96276',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11茗安店', '桃園市八德區陸光街45號','121.297627','24.961255',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11高城店', '桃園市八德區高城八街58巷5號1樓','121.274237','24.978421',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國僑店', '桃園市八德區建國路1075號','121.295555','24.956669',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11捷安店', '桃園市八德區興豐路689號1樓','121.29635','24.931263',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11麻園店', '桃園市八德區介壽路二段360號362號','121.297464','24.948203',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11湧北店', '桃園市八德區東勇街396-1號','121.309093','24.965312',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新宏國店', '桃園市八德區中華路292號294號1樓','121.276047','24.981753',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11義展店', '桃園市八德區義勇街151號151-1號1樓','121.305527','24.963601',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11榮興店', '桃園市八德區榮興路1139號','121.306119','24.937122',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福國店', '桃園市八德區福國北街82號','121.295332','24.961045',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福僑店', '桃園市八德區廣福路162號164號1樓2樓及地下室','121.29558','24.959662',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廣福店', '桃園市八德區廣福路16號','121.298995','24.958933',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廣懋店', '桃園市八德區廣福路578號','121.285748','24.960305',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德力店', '桃園市八德區大福里介壽路一段134號136號','121.302268','24.9753',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德勇店', '桃園市八德區大勇里忠勇街365號','121.30332','24.968104',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德隆店', '桃園市八德區永豐路408號410號1樓','121.275108','24.972263',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德僑店', '桃園市八德區豐德路31號1樓','121.294723','24.924765',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興豐店', '桃園市八德區興豐路340號342號','121.287458','24.92929',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11豐德店', '桃園市八德區永豐路591之1號593號1樓','121.271033','24.97555',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11丰順店', '桃園市平鎮區中豐路一段281之1號1樓','121.212927','24.925908',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11比利店', '桃園市平鎮區上海路161號','121.206493','24.913455',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11平東店', '桃園市平鎮區平東路225號227號229號1樓','121.249019','24.915809',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正湧店', '桃園市平鎮區正義路82號1樓','121.222893','24.929936',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成達店', '桃園市平鎮區育達路136號','121.210051','24.951931',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成德店', '桃園市平鎮區承德路2號4號1樓','121.219712','24.948647',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏宇店', '桃園市平鎮區金陵路二段104號','121.222954','24.94081',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11技嘉店', '桃園市平鎮區南平路180之1號','121.206439','24.920516',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11京利店', '桃園市平鎮區南京路206號','121.206125','24.916207',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明揚店', '桃園市平鎮區延平路二段76號','121.212117','24.94956',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東正店', '桃園市平鎮區平東路661號','121.239588','24.912328',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金平店', '桃園市平鎮區東勢里金陵路四段485號1樓','121.231387','24.911963',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金沅店', '桃園市平鎮區東勢里金陵路5段255號','121.231104','24.90445',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金陵店', '桃園市平鎮區金陵路76號78號1樓','121.222909','24.948746',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金磚店', '桃園市平鎮區新富里新富二街18號20號','121.215586','24.941897',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11海利店', '桃園市平鎮區上海路115號','121.206392','24.911128',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11翁京店', '桃園市平鎮區中豐路南勢二段118號','121.210876','24.917467',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11高安店', '桃園市平鎮區民族路3段95號','121.195679','24.957023',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11高義店', '桃園市平鎮區復旦路二段211巷10號1樓','121.201608','24.946359',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11祥鋐店', '桃園市平鎮區金陵路三段74號76號','121.227218','24.92829',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富寶店', '桃園市平鎮區新富五街9號1樓','121.214246','24.939836',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11皓倫店', '桃園市平鎮區振興西路72號','121.213124','24.946294',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11開立店', '桃園市平鎮區廣仁里新光路19號21號','121.206038','24.940502',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新貴中店', '桃園市平鎮區新貴里中豐路一段98號1樓','121.2137','24.929728',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新鎮興店', '桃園市平鎮區中興路平鎮段349號351號353號','121.191625','24.902464',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11楊崧店', '桃園市平鎮區復旦路二段123-5;123-6號1樓','121.202791','24.947987',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11裕達店', '桃園市平鎮區育達路160號','121.208526','24.951898',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑋特店', '桃園市平鎮區延平路三段246號248號一樓','121.201918','24.938087',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廣文店', '桃園市平鎮區復興里文化街241號','121.203382','24.951457',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廣城店', '桃園市平鎮區廣達里廣平街20號24號1樓','121.207695','24.954565',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廣泰店', '桃園市平鎮區廣泰路130號132號','121.204354','24.945951',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廣興店', '桃園市平鎮區忠孝路69號及廣東段305號306號','121.212937','24.954545',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德享店', '桃園市平鎮區南勢里14鄰中豐路南勢二段377號379號381號','121.211611','24.909571',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德興店', '桃園市平鎮區振興路12號','121.219171','24.945375',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11學央店', '桃園市平鎮區中央路187號','121.190725','24.966239',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍侑店', '桃園市平鎮區龍德路8號1樓;龍福路1號1樓','121.250109','24.925238',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍南店', '桃園市平鎮區龍南路348號','121.251401','24.921717',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11環興店', '桃園市平鎮區環南路110號','121.206641','24.954504',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11豐訊店', '桃園市平鎮區中豐路山頂段479號','121.211668','24.894018',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鎮光店', '桃園市平鎮區湧光里中豐路山頂段206號208號之1樓','121.210765','24.899475',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鎮宮店', '桃園市平鎮區中山路233號235號237號1樓','121.256335','24.927371',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鎮業店', '桃園市平鎮區南豐路238號240號1樓','121.2048','24.89988',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鎮豐店', '桃園市平鎮區南豐路99號','121.208267','24.900128',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙榮店', '桃園市平鎮區雙連里民族路雙連三段8號1樓','121.179205','24.958825',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11壢達店', '桃園市平鎮區環南路231-5號1樓','121.206907','24.951523',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11關爺店', '桃園市平鎮區南東路376號1樓','121.220615','24.918383',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11韻翔店', '桃園市平鎮區文化街71號1樓','121.203254','24.954549',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11寶麗店', '桃園市平鎮區湧安里自由街57號59號','121.204106','24.89229',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11千禧店', '桃園市龜山區光峰路千禧新城15號1樓','121.340911','24.999027',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大崗店', '桃園市龜山區大崗里17鄰大湖41之2號','121.354256','25.057768',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大傳店', '桃園市龜山區大同路357號357-1號1樓及壽山段926地號','121.348','24.988235',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11山民店', '桃園市龜山區三民路100號','121.324245','24.995426',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11山興店', '桃園市龜山區山頂里明興街223號','121.333443','24.982626',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11山鶯店', '桃園市龜山區山鶯路372號','121.330449','24.980889',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11友達電店', '桃園市龜山區華亞二路189號B1','121.373866','25.046467',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11巴頓店', '桃園市龜山區龍壽里萬壽路1段492號1樓','121.397508','25.01666',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台達電店', '桃園市龜山區山鶯路252號B1樓','121.326938','24.985912',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民生北店', '桃園市龜山區民生北路一段54號1樓','121.302972','25.0337',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11光峰店', '桃園市龜山區楓樹里光峰路296號298號一樓','121.343477','25.006542',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11同銘店', '桃園市龜山區大同路212號1樓','121.344025','24.990672',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏義店', '桃園市龜山區萬壽路1段378號380號1樓','121.400274','25.017012',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11汶興店', '桃園市龜山區頂興路31-1號1樓','121.32819','24.991196',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11庚林店', '桃園市龜山區頂湖路123號B2','121.366325','25.029653',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11忠湖店', '桃園市龜山區忠義路二段630號','121.35774','25.056356',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長林店', '桃園市龜山區復興街9號','121.367424','25.060552',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11信陽店', '桃園市龜山區公西里12鄰復興一路86號','121.368366','25.059506',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11冠廷店', '桃園市龜山區南美里南上路332號1F','121.303095','25.045613',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11勇利店', '桃園市龜山區文化一路86-6號','121.376682','25.054115',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11柏魁店', '桃園市龜山區振興路1021之1號','121.368189','25.024908',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11美壽店', '桃園市龜山區萬壽路二段107號107之1號','121.36122','25.001508',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11茶專店', '桃園市龜山區萬壽路2段353號1樓','121.355473','25.001209',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11財春店', '桃園市龜山區振興路636號638號','121.36062','25.014589',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11祥崁店', '桃園市龜山區南祥路41號43號45號1樓','121.297176','25.046637',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統文店', '桃園市龜山區文化七路179號1樓','121.367466','25.051851',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11陸光店', '桃園市龜山區陸光路83號85號1樓','121.331034','24.995747',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11頂湖店', '桃園市龜山區新興街240號242號244號1樓','121.356058','25.046398',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11凱華店', '桃園市龜山區文化二路183號1樓','121.371941','25.052355',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11凱達店', '桃園市龜山區精忠里長壽路155號157號','121.342097','25.001047',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富寓店', '桃園市龜山區文德路80號82號','121.381243','25.057134',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11登冠店', '桃園市龜山區文化二路52巷53號一樓','121.366185','25.056229',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華亞店', '桃園市龜山區文化二路43號','121.367142','25.057222',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華亞文化店', '桃園市龜山區文化一路86之55號','121.381463','25.049872',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華龍店', '桃園市龜山區萬壽路1段292號1樓龍華街2巷6號B1','121.403288','25.01776',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11貴林店', '桃園市龜山區樂善里15鄰文明路43號','121.379125','25.055904',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新九揚店', '桃園市龜山區復興一路264號1樓','121.364193','25.05678',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新長明店', '桃園市龜山區復興一路62號1樓','121.368967','25.059905',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新尊爵店', '桃園市龜山區復興三路139號141號143號145號1樓','121.370108','25.049459',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新龜山店', '桃園市龜山區萬壽路2段1170號','121.332341','24.993684',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬壽店', '桃園市龜山區萬壽路二段1057號1樓','121.33535','24.994213',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11壽興店', '桃園市龜山區中興路一段73號1樓2樓3樓','121.339012','24.994575',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11愿景店', '桃園市龜山區文化一路42號','121.37397','25.05685',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福鶯店', '桃園市龜山區山鶯路156之4號1樓','121.324835','24.988482',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廣智店', '桃園市龜山區復興一路392-1號','121.360486','25.054308',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廣華店', '桃園市龜山區文化三路386號1樓','121.366593','25.054225',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廣瀨店', '桃園市龜山區忠義路二段13號','121.353236','25.039133',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樂高店', '桃園市龜山區文化七路85號1樓','121.363789','25.051795',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樂善店', '桃園市龜山區文明路131號1樓','121.381022','25.052853',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11緯華店', '桃園市龜山區文化二路34巷6號及14弄18號1樓','121.364609','25.059286',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11養生村店', '桃園市龜山區長青路2號A棟','121.36675','25.018523',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11憲訓店', '桃園市龜山區光華里公西里文化三路32之2號','121.34462','25.023449',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興龍店', '桃園市龜山區新路里中興路366-6號1樓2樓','121.335668','24.992219',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龜山銘傳店', '桃園市龜山區德明路152號154號1樓','121.343803','24.988501',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龜山廣達店', '桃園市龜山區文化二路211號','121.375017','25.049577',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11嶺頂店', '桃園市龜山區嶺頂里2鄰西嶺頂26號','121.363762','25.002064',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鴻臣店', '桃園市龜山區楓樹里忠義路一段870-1號','121.350037','25.01987',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11體育大店', '桃園市龜山區文化一路250號','121.384187','25.035621',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫華夏店', '桃園市龜山區文化二路28-1號28-2號28-3號1樓','121.364603','25.060498',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫騰龍店', '桃園市龜山區萬壽路1段110號112號114號1樓2樓','121.407023','25.018638',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11士香店', '桃園市大溪區員林路一段228號','121.277124','24.895493',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大溪店', '桃園市大溪區中央路152號','121.287671','24.882744',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仁冠店', '桃園市大溪區仁和路二段319號321號','121.261582','24.905986',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仁善店', '桃園市大溪區埔頂路二段183號','121.279534','24.910607',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11內柵店', '桃園市大溪區康莊路三段20號','121.282285','24.861112',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文漢店', '桃園市大溪區文化路188號','121.28994','24.877372',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11百吉店', '桃園市大溪區復興路二段35號','121.306397','24.829792',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11亞都店', '桃園市大溪區僑愛一街72巷15號','121.294326','24.922441',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和氣店', '桃園市大溪區仁和路二段51號1樓','121.268738','24.902875',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11忠新店', '桃園市大溪區大鶯路1539-1號','121.317107','24.930112',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11芯德店', '桃園市大溪區復興路182號','121.293072','24.877906',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11埔頂店', '桃園市大溪區仁愛里埔頂路1段468號','121.277109','24.905236',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11峰里店', '桃園市大溪區復興路二段782號786號','121.330373','24.832002',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11翁和店', '桃園市大溪區仁文里介壽路1153號一樓','121.283927','24.900666',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11翁武店', '桃園市大溪區民權東路149號','121.293046','24.881325',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新康莊店', '桃園市大溪區復興路31號1樓','121.289626','24.88044',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新劉興店', '桃園市大溪區南興里永昌路320號','121.26154','24.895758',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞員店', '桃園市大溪區員林路3段157號1樓','121.261912','24.879995',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11嘉福店', '桃園市大溪區員林路2段359之1號','121.268454','24.884293',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11頭寮店', '桃園市大溪區復興路一段906號','121.284828','24.848079',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍園店', '桃園市大溪區石園路615號','121.255863','24.86701',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙橡園店', '桃園市大溪區僑愛里介壽路210號','121.293441','24.921052',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大成店', '桃園市楊梅區梅山西街10號','121.145487','24.909217',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大楊店', '桃園市楊梅區楊湖路1段100號','121.13949','24.909497',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11水美店', '桃園市楊梅區楊新路二段52號52-1號','121.136237','24.919964',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吉慶店', '桃園市楊梅區富岡里中正路100號','121.081433','24.936296',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11秀才店', '桃園市楊梅區秀才路313號315號1樓','121.139545','24.898768',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11欣高店', '桃園市楊梅區楊梅里文德路1號1樓梅高路52-9號','121.145273','24.916868',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11苙佑店', '桃園市楊梅區梅高路133號','121.145015','24.924588',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11高山頂店', '桃園市楊梅區幼獅路二段295-1號','121.167344','24.936717',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11高尚店', '桃園市楊梅區梅高路二段136巷5號','121.145078','24.938393',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11梅獅店', '桃園市楊梅區瑞塘里梅獅路二段231號','121.177538','24.906047',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11凱成店', '桃園市楊梅區文化街220號222號222-1號','121.183434','24.911954',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富先店', '桃園市楊梅區萬大路111號113號','121.178434','24.910441',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富崗店', '桃園市楊梅區新明街450號','121.073467','24.93054',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11揚善店', '桃園市楊梅區中山北路一段77號','121.151688','24.907424',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新梅店', '桃園市楊梅區新農街469-8號469-9號1樓','121.160476','24.912781',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新楊欣店', '桃園市楊梅區中山北路一段388號1樓','121.159053','24.909006',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新楊埔店', '桃園市楊梅區中興路47號1樓新興街66號1樓','121.184486','24.918307',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11楊山店', '桃園市楊梅區中山南路98號100號1樓','121.137744','24.907895',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11楊功店', '桃園市楊梅區瑞溪路二段162號1樓','121.18198','24.909118',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11楊民店', '桃園市楊梅區三民北路177號','121.169854','24.91262',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11楊昌店', '桃園市楊梅區楊新北路23號','121.148973','24.912979',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11楊昇店', '桃園市楊梅區校前路241號','121.150051','24.902325',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11楊展店', '桃園市楊梅區校前路312號316號1樓','121.150885','24.899511',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11楊梅店', '桃園市楊梅區楊新路73號','121.145564','24.91321',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11楊陳店', '桃園市楊梅區中山里環東路497號499號','121.156023','24.910898',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11楊興店', '桃園市楊梅區楊新路3段331號333號','121.122732','24.934618',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞揚店', '桃園市楊梅區新成路97號','121.146957','24.910875',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞豐店', '桃園市楊梅區瑞原里民富路三段24號','121.10554','24.927385',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蓮花店', '桃園市楊梅區青山一街2號','121.177424','24.923053',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11駿躍店', '桃園市楊梅區環南路132號1樓','121.146381','24.901619',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11寶楊店', '桃園市楊梅區中山北路二段113號','121.169977','24.908197',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11八角店店', '桃園市蘆竹區大竹路5號','121.27437','25.012083',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11上興店', '桃園市蘆竹區上興路251號253號1樓','121.260491','25.01872',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11千雄店', '桃園市蘆竹區南崁路2段96號','121.277988','25.057705',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11元翔店', '桃園市蘆竹區六福路247巷2-1號','121.297868','25.060895',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北崁店', '桃園市蘆竹區南榮里中正路23號','121.295481','25.040975',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台茂城堡店店', '桃園市蘆竹區南崁路1段112號2樓','121.287949','25.052147',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吉福店', '桃園市蘆竹區吉林路167號1樓','121.300988','25.049696',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11竹盈店', '桃園市蘆竹區大竹里大新路133號1-3樓','121.255213','25.024915',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長榮航店', '桃園市蘆竹區新南路一段376號','121.297197','25.040703',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11南山北店', '桃園市蘆竹區南山北路2段398之1號1樓','121.275029','25.106808',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11南崁店', '桃園市蘆竹區南崁路156號','121.294067','25.047431',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11海湖店', '桃園市蘆竹區濱海路一段40號42號','121.254566','25.111698',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11航竹店', '桃園市蘆竹區大竹路408號','121.265565','25.020088',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11航宏店', '桃園市蘆竹區蘆竹里蘆竹街256號一樓','121.275525','25.051972',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11航明店', '桃園市蘆竹區南山路二段509號','121.285092','25.073366',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11航空店', '桃園市蘆竹區中正路304號','121.29227','25.047456',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11航海店', '桃園市蘆竹區長榮路1號','121.289085','25.0574',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11航榮店', '桃園市蘆竹區南崁路二段473號','121.266409','25.062444',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11航福店', '桃園市蘆竹區南福街97號99號','121.293049','25.040374',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11航興店', '桃園市蘆竹區中福里大興路233號1樓','121.256524','25.018661',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國邦店', '桃園市蘆竹區忠孝西路206號1樓','121.288795','25.039554',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11頂社店', '桃園市蘆竹區山林路3段170-2號','121.319124','25.07787',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富竹店', '桃園市蘆竹區南竹路2段313號1樓','121.279081','25.035257',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景旭店', '桃園市蘆竹區大新路852號854號之1樓','121.242875','25.023199',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景竹店', '桃園市蘆竹區南竹路五段200號1樓','121.260719','25.025632',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11開南店', '桃園市蘆竹區新興街136號1樓','121.270842','25.009277',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新台茂店', '桃園市蘆竹區南崁路1段135號','121.287261','25.05188',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞元店', '桃園市蘆竹區長春路87號','121.299874','25.052345',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11嘉美店', '桃園市蘆竹區大新路454.456號1樓','121.248529','25.024582',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福祿店', '桃園市蘆竹區五福六路45號1樓','121.296997','25.054576',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樂購店', '桃園市蘆竹區五福一路41號1樓','121.295293','25.057354',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11盧奉店', '桃園市蘆竹區奉化路25號27號1','121.286388','25.040871',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11盧長店', '桃園市蘆竹區南山路二段183號1樓','121.287006','25.065218',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11盧興店', '桃園市蘆竹區內展里長興路3段231號1樓','121.275815','25.070768',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11錦坎店', '桃園市蘆竹區南崁路1段76號78號','121.288691','25.051546',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11錦明店', '桃園市蘆竹區光明路二段102號1樓','121.287849','25.047157',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆山店', '桃園市蘆竹區中山路152號154號156號一樓','121.297623','25.05744',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆工店', '桃園市蘆竹區中興路97號1樓','121.265448','25.015747',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆竹店', '桃園市蘆竹區山腳里南山路3段308號','121.286435','25.08531',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆坎店', '桃園市蘆竹區南崁里南華一街142號一樓','121.295575','25.043534',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆海店', '桃園市蘆竹區坑口里海山路一段76號一樓','121.267798','25.09325',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆航店', '桃園市蘆竹區南興里南昌路18號1樓','121.287563','25.042235',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆勝店', '桃園市蘆竹區忠孝西路21號1樓','121.293104','25.04432',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆順店', '桃園市蘆竹區奉化路168號170號172號1樓','121.290075','25.038525',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆豐店', '桃園市蘆竹區南山路二段48號1樓','121.288874','25.062094',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大和園店', '桃園市大園區中山南路272號及272-1號1樓','121.200078','25.059716',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大園港店', '桃園市大園區大觀路1088號','121.15991','25.055663',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11內海店', '桃園市大園區內海里下厝9之9號1樓','121.183698','25.07913',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11江園店', '桃園市大園區中正東路3段620號','121.228549','25.004417',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11沙崙店', '桃園市大園區沙崙里國際路二段759號761號763號1樓','121.229659','25.090739',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東懋店', '桃園市大園區和平西路一段272號274號','121.18947','25.049501',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11果林店', '桃園市大園區果林里3鄰拔子林23之45號1','121.258113','25.075706',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11埔東店', '桃園市大園區埔心里中正東路一段165號1樓','121.224328','25.049529',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11航站店', '桃園市大園區航站南路9號','121.23312','25.077051',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11航祥店', '桃園市大園區三民路一段785號1樓','121.252383','25.090224',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11航園店', '桃園市大園區中正東路102號','121.200747','25.06265',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11航廈店', '桃園市大園區航站南路9號B2','121.23312','25.077051',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國航店', '桃園市大園區國際路1段300-1號1樓','121.196725','25.070336',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11惟升店', '桃園市大園區橫峰里中正東路311號','121.205312','25.0614',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統大店', '桃園市大園區中正東路428號','121.210215','25.059423',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11園山店', '桃園市大園區民族路1號','121.190288','25.073023',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新田園店', '桃園市大園區新興路62號','121.194504','25.063413',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11機場店', '桃園市大園區三民路二段110號112號','121.254335','25.086588',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11濱海店', '桃園市大園區竹圍里五鄰竹圍街45-3號','121.243233','25.104746',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鐵鎮店', '桃園市大園區中正東路2段428號','121.230275','25.027823',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀園店', '桃園市大園區大觀路604號606號','121.175609','25.062222',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀群店', '桃園市大園區大工路106號','121.179844','25.067604',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11上華店', '桃園市龍潭區中正路上華段6號','121.221094','24.853447',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中科院店', '桃園市龍潭區中正路佳安段481號','121.245048','24.848817',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11水龍吟店', '桃園市龍潭區中原路一段506號1樓','121.199149','24.848095',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台積Q店', '桃園市龍潭區龍園六路101號2樓','121.186371','24.883654',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正同店', '桃園市龍潭區中正里15鄰中正路472號474號','121.218943','24.857665',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11禾臣店', '桃園市龍潭區高平里高楊北路1號','121.208664','24.837906',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11同華店', '桃園市龍潭區中正里龍華路396號','121.217274','24.857385',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11百年店', '桃園市龍潭區中豐路烏樹林段317號','121.211525','24.878882',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏龍店', '桃園市龍潭區中原路二段393號1樓','121.194954','24.83735',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11易仕店', '桃園市龍潭區中豐路695巷2-1號','121.212316','24.888011',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11易仕店', '桃園市龍潭區中豐路695巷2-1號','121.212316','24.888011',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泉僑店', '桃園市龍潭區文化路12-3號','121.244882','24.849545',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11凌雲店', '桃園市龍潭區中豐路上林段358-1號','121.203106','24.859474',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11紹福店', '桃園市龍潭區五福街210號','121.222145','24.865034',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11渴望村店', '桃園市龍潭區三和里渴望路428號','121.18385','24.839535',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新友達店', '桃園市龍潭區三和里新和路1號B棟7樓','121.18888','24.842847',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新龍鄉店', '桃園市龍潭區民族路170號172號1F','121.235648','24.841388',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聖興店', '桃園市龍潭區聖亭路186號1樓','121.205375','24.86931',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍功店', '桃園市龍潭區成功路186之1號','121.227819','24.875123',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍池店', '桃園市龍潭區中豐路上林段121號','121.208231','24.862774',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍昌店', '桃園市龍潭區大昌路二段139之1號','121.222854','24.865171',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍欣店', '桃園市龍潭區中興路257號259號','121.234747','24.874143',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍政店', '桃園市龍潭區中正路162號','121.216776','24.8659',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍科店', '桃園市龍潭區龍科街228號B1','121.185934','24.877131',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍美店', '桃園市龍潭區民豐路3號4號5號1樓','121.24279','24.877286',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍運店', '桃園市龍潭區中正路105號1樓及107巷1號1樓','121.215873','24.868085',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍德店', '桃園市龍潭區中興路460號462號','121.227714','24.872268',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍潭店', '桃園市龍潭區東龍路257號259號1樓','121.213626','24.865556',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍潭友達店', '桃園市龍潭區三和里新和路1號','121.18888','24.842761',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍潭佳園店', '桃園市龍潭區中正路三坑段776號1樓','121.243879','24.831943',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11曜駿店', '桃園市龍潭區中興路292號1樓','121.233484','24.874026',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11豐彩店', '桃園市龍潭區中豐路398號1樓','121.211824','24.880554',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑽石店', '桃園市龍潭區八德里梅龍路23鄰139號141號1樓','121.198706','24.872904',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11日日興店', '桃園市新屋區東明里中山西路1段567號569號','121.083','24.976434',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北勢店', '桃園市新屋區中山東路一段729號731號735號1樓','121.130932','24.971847',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永安港店', '桃園市新屋區中山西路三段1148號','121.018551','24.988231',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金帝寶店', '桃園市新屋區中山東路1段106號','121.115335','24.970034',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景碩一廠店', '桃園市新屋區中華路1245號3樓','121.100202','24.99356',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景碩新廠店', '桃園市新屋區中華路810號1樓','121.106358','24.976072',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新屋店', '桃園市新屋區新生里12鄰中山路367號369號371號','121.10207','24.9728',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新屋山店', '桃園市新屋區新屋里中山路288號','121.106599','24.97286',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新屋中華店', '桃園市新屋區中華路357號1樓','121.106164','24.975655',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11忠愛莊店', '桃園市觀音區忠愛路一段90號92號1樓','121.16636','24.994323',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11欣富晟店', '桃園市觀音區草漯里大觀路2段312-1號','121.137152','25.043261',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富中店', '桃園市觀音區中山路二段925號','121.141197','25.009832',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富源店', '桃園市觀音區富源里57之1號2號','121.150996','24.964835',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新坡店', '桃園市觀音區中山路二段663號','121.136142','25.012994',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福音店', '桃園市觀音區草漯里五福三街83號','121.143596','25.041959',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀工店', '桃園市觀音區成功路一段525號527號1F','121.125122','25.054724',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀成店', '桃園市觀音區成功路1段557號559號1樓','121.12413','25.054801',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀昌店', '桃園市觀音區中山路21號','121.08217','25.036878',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀埔店', '桃園市觀音區藍埔里新華路1段488號','121.111905','24.993127',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀喜店', '桃園市觀音區中山路一段1159號之1號','121.108249','25.028284',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀富店', '桃園市觀音區新富路701號1樓','121.139906','25.005667',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀湘店', '桃園市觀音區忠孝路705號1樓','121.132536','25.062632',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀湖店', '桃園市觀音區濱海路廣興段132號','121.097202','25.03434',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀濤店', '桃園市觀音區樹林里民權路1號','121.118259','25.051715',
 '台灣', '桃園市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
 
 

--------------------------------------------------------
--  for Table ACTIVITY
--------------------------------------------------------

--上限改成'ACT'||LPAD(to_char(activity_seq.NEXTVAL), 6, '0')
Insert into ACTIVITY (SQ_ACTIVITY_ID,SQ_ROUTE_ID,SQ_MEMBER_ID,ACT_TITLE,MAX_POPULATION,MIN_POPULATION,ACT_DESCRIPTION,START_TIME,END_TIME,ACT_START_TIME,ACT_END_TIME,ACT_PICTURE,GP_STATUS) values ('ACT'||'-'||LPAD(to_char(activity_seq.NEXTVAL), 6, '0'),'RP110001','910001','不能錯過的冬山河自行車道',20,2,'在這裡騎車、漫步，戲水、聽濤，或是看著美麗礁岩，不論做什麼都使人倍感療癒，不捨離去。',to_date('2020-01-28','yyyy-mm-dd'),to_date('2020-02-05','yyyy-mm-dd'),to_date('2020-02-10','yyyy-mm-dd'),to_date('2020-02-15','yyyy-mm-dd'),load_blob('image001.jpg'),0);
Insert into ACTIVITY (SQ_ACTIVITY_ID,SQ_ROUTE_ID,SQ_MEMBER_ID,ACT_TITLE,MAX_POPULATION,MIN_POPULATION,ACT_DESCRIPTION,START_TIME,END_TIME,ACT_START_TIME,ACT_END_TIME,ACT_PICTURE,GP_STATUS) values ('ACT'||'-'||LPAD(to_char(activity_seq.NEXTVAL), 6, '0'),'RP110002','910002','悠遊集集綠色隧道自行車道',5,2,'來場與大自然的約會。',to_date('2020-02-05','yyyy-mm-dd'),to_date('2020-02-19','yyyy-mm-dd'),to_date('2020-02-20','yyyy-mm-dd'),to_date('2020-02-27','yyyy-mm-dd'),load_blob('image002.jpg'),0);
Insert into ACTIVITY (SQ_ACTIVITY_ID,SQ_ROUTE_ID,SQ_MEMBER_ID,ACT_TITLE,MAX_POPULATION,MIN_POPULATION,ACT_DESCRIPTION,START_TIME,END_TIME,ACT_START_TIME,ACT_END_TIME,ACT_PICTURE,GP_STATUS) values ('ACT'||'-'||LPAD(to_char(activity_seq.NEXTVAL), 6, '0'),'RP110003','910003','慵懶的午後斗六古坑',35,2,'找個下午，來個慵懶的午後時光。',to_date('2020-02-17','yyyy-mm-dd'),to_date('2020-02-28','yyyy-mm-dd'),to_date('2020-03-05','yyyy-mm-dd'),to_date('2020-03-15','yyyy-mm-dd'),load_blob('image003.jpg'),1);
Insert into ACTIVITY (SQ_ACTIVITY_ID,SQ_ROUTE_ID,SQ_MEMBER_ID,ACT_TITLE,MAX_POPULATION,MIN_POPULATION,ACT_DESCRIPTION,START_TIME,END_TIME,ACT_START_TIME,ACT_END_TIME,ACT_PICTURE,GP_STATUS) values ('ACT'||'-'||LPAD(to_char(activity_seq.NEXTVAL), 6, '0'),'RP110004','910004','來場浪漫的愛河約會之旅',30,10,'愛河自行車道中最經典推薦的就屬愛河之心到五福路橋這一段,騎著單車就能欣賞到愛河上游至下游風景。',to_date('2020-02-25','yyyy-mm-dd'),to_date('2020-03-05','yyyy-mm-dd'),to_date('2020-03-10','yyyy-mm-dd'),to_date('2020-03-15','yyyy-mm-dd'),load_blob('image004.jpg'),1);
Insert into ACTIVITY (SQ_ACTIVITY_ID,SQ_ROUTE_ID,SQ_MEMBER_ID,ACT_TITLE,MAX_POPULATION,MIN_POPULATION,ACT_DESCRIPTION,START_TIME,END_TIME,ACT_START_TIME,ACT_END_TIME,ACT_PICTURE,GP_STATUS) values ('ACT'||'-'||LPAD(to_char(activity_seq.NEXTVAL), 6, '0'),'RP110005','910005','金色柔柔波光之淡水金色水岸',15,5,'沿線美麗的風景與知名的觀光景點，使其美名不脛而走，還不在忙碌的週末出來放鬆一下嗎。',to_date('2020-02-28','yyyy-mm-dd'),to_date('2020-03-03','yyyy-mm-dd'),to_date('2020-03-05','yyyy-mm-dd'),to_date('2020-03-07','yyyy-mm-dd'),load_blob('image005.jpg'),1);
Insert into ACTIVITY (SQ_ACTIVITY_ID,SQ_ROUTE_ID,SQ_MEMBER_ID,ACT_TITLE,MAX_POPULATION,MIN_POPULATION,ACT_DESCRIPTION,START_TIME,END_TIME,ACT_START_TIME,ACT_END_TIME,ACT_PICTURE,GP_STATUS) values ('ACT'||'-'||LPAD(to_char(activity_seq.NEXTVAL), 6, '0'),'RP110006','910006','號稱最美的車道等你來看',10,5,'位於日月潭的向山自行車道曾被CNN評選為全球十大最美腳踏車道，你還不來看看嗎。',to_date('2020-03-10','yyyy-mm-dd'),to_date('2020-03-15','yyyy-mm-dd'),to_date('2020-03-20','yyyy-mm-dd'),to_date('2020-03-22','yyyy-mm-dd'),load_blob('image006.jpg'),1);
Insert into ACTIVITY (SQ_ACTIVITY_ID,SQ_ROUTE_ID,SQ_MEMBER_ID,ACT_TITLE,MAX_POPULATION,MIN_POPULATION,ACT_DESCRIPTION,START_TIME,END_TIME,ACT_START_TIME,ACT_END_TIME,ACT_PICTURE,GP_STATUS) values ('ACT'||'-'||LPAD(to_char(activity_seq.NEXTVAL), 6, '0'),'RP110007','910007','全台最大的海埔新生地 360度的環繞美景',10,5,'多樣化的多樣的生態環境與棲地型態 一處擁有豐富自然資源的生態園區，占地面積約一千五百公頃的森林園區，彷彿騎車置身在大自然當中。',to_date('2020-07-20','yyyy-mm-dd'),to_date('2020-07-30','yyyy-mm-dd'),to_date('2020-07-31','yyyy-mm-dd'),to_date('2020-08-01','yyyy-mm-dd'),load_blob('image007.jpg'),0);
Insert into ACTIVITY (SQ_ACTIVITY_ID,SQ_ROUTE_ID,SQ_MEMBER_ID,ACT_TITLE,MAX_POPULATION,MIN_POPULATION,ACT_DESCRIPTION,START_TIME,END_TIME,ACT_START_TIME,ACT_END_TIME,ACT_PICTURE,GP_STATUS) values ('ACT'||'-'||LPAD(to_char(activity_seq.NEXTVAL), 6, '0'),'RP110008','910008','拜訪南臺灣人文歷史古蹟之旅',10,5,'這一區坡度很大，很適合勇於挑戰的人前來挑戰',to_date('2020-07-22','yyyy-mm-dd'),to_date('2020-08-05','yyyy-mm-dd'),to_date('2020-08-06','yyyy-mm-dd'),to_date('2020-08-10','yyyy-mm-dd'),load_blob('image008.jpg'),1);
Insert into ACTIVITY (SQ_ACTIVITY_ID,SQ_ROUTE_ID,SQ_MEMBER_ID,ACT_TITLE,MAX_POPULATION,MIN_POPULATION,ACT_DESCRIPTION,START_TIME,END_TIME,ACT_START_TIME,ACT_END_TIME,ACT_PICTURE,GP_STATUS) values ('ACT'||'-'||LPAD(to_char(activity_seq.NEXTVAL), 6, '0'),'RP110009','910009','舒適休閒的新竹海岸線自行車道',25,10,'這絕對是輕鬆踩踏行程，全程沒有上下坡，漂亮的海景隨時陪伴你身旁，吹拂著海風騎卡踏車，超舒服的！快點來試試看。',to_date('2020-07-23','yyyy-mm-dd'),to_date('2020-07-25','yyyy-mm-dd'),to_date('2020-07-26','yyyy-mm-dd'),to_date('2020-07-27','yyyy-mm-dd'),load_blob('image009.jpg'),1);
Insert into ACTIVITY (SQ_ACTIVITY_ID,SQ_ROUTE_ID,SQ_MEMBER_ID,ACT_TITLE,MAX_POPULATION,MIN_POPULATION,ACT_DESCRIPTION,START_TIME,END_TIME,ACT_START_TIME,ACT_END_TIME,ACT_PICTURE,GP_STATUS) values ('ACT'||'-'||LPAD(to_char(activity_seq.NEXTVAL), 6, '0'),'RP110010','910009','新店溪自行車道口袋地圖帶路吃喝玩樂',40,5,'新店溪自行車道是條輕鬆悠閒的自行車道，橫跨雙北的新店溪自行車道，串連北市萬華區、中正區、文山區及新北新店區，新北市推出口袋地圖，不論吃、喝、玩等景點一目了然。。',to_date('2020-07-23','yyyy-mm-dd'),to_date('2020-07-27','yyyy-mm-dd'),to_date('2020-08-10','yyyy-mm-dd'),to_date('2020-08-15','yyyy-mm-dd'),load_blob('image010.jpg'),1);


--------------------------------------------------------
--  for Table JOINED_ACT_DETAIL
----------------

  
--這一段的第一個值要看活動表格的pk欄值下去改

Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700001','910001',to_date('2020-01-28 14:01:02', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700001','910009',to_date('2020-01-29 15:05:33', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700001','910007',to_date('2020-01-30 17:25:50', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700002','910002',to_date('2020-02-05 10:40:57', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700002','910005',to_date('2020-02-07 12:07:40', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700003','910003',to_date('2020-02-17 17:04:42', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700004','910004',to_date('2020-02-25 06:51:15', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700005','910005',to_date('2020-02-28 08:21:42', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700006','910006',to_date('2020-03-10 12:33:20', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700007','910007',to_date('2020-07-20 10:00:02', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700007','910001',to_date('2020-07-21 09:40:52', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700007','910002',to_date('2020-07-22 17:21:30', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700007','910003',to_date('2020-07-23 14:50:32', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700007','910004',to_date('2020-07-24 20:20:42', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700008','910008',to_date('2020-07-22 16:01:07', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700009','910009',to_date('2020-07-23 13:05:33', 'yyyy-mm-dd hh24:mi:ss'));
Insert into JOINED_ACT_DETAIL (SQ_ACTIVITY_ID,SQ_MEMBER_ID,JOIN_TIME) values ('ACT-700010','910009',to_date('2020-07-23 10:11:12', 'yyyy-mm-dd hh24:mi:ss'));

--------------------------------------------------------
--  for Table ACT_FAVORITE
--------------------------------------------------------


--這一段的第一個值要看活動表格的pk欄值下去改

Insert into ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) values ('ACT-700001','910001',to_date('2020-01-29 14:00:01', 'yyyy-mm-dd hh24:mi:ss'));
Insert into ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) values ('ACT-700002','910001',to_date('2020-02-07 10:04:37', 'yyyy-mm-dd hh24:mi:ss'));
Insert into ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) values ('ACT-700003','910001',to_date('2020-02-19 17:14:22', 'yyyy-mm-dd hh24:mi:ss'));
Insert into ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) values ('ACT-700004','910001',to_date('2020-02-28 06:31:45', 'yyyy-mm-dd hh24:mi:ss'));
Insert into ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) values ('ACT-700005','910001',to_date('2020-03-01 08:41:12', 'yyyy-mm-dd hh24:mi:ss'));
Insert into ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) values ('ACT-700006','910001',to_date('2020-03-13 12:23:40', 'yyyy-mm-dd hh24:mi:ss'));
Insert into ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) values ('ACT-700007','910001',to_date('2020-07-21 20:00:42', 'yyyy-mm-dd hh24:mi:ss'));
Insert into ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) values ('ACT-700008','910001',to_date('2020-07-22 16:31:57', 'yyyy-mm-dd hh24:mi:ss'));
Insert into ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) values ('ACT-700009','910001',to_date('2020-07-23 10:04:38', 'yyyy-mm-dd hh24:mi:ss'));
Insert into ACT_FAVORITE (SQ_ACTIVITY_ID,SQ_MEMBER_ID,FAVORITE_TIME) values ('ACT-700010','910001',to_date('2020-07-23 10:15:17', 'yyyy-mm-dd hh24:mi:ss'));


--------------------------------------------------------
--  for Table ACTIVITYREPORT
--------------------------------------------------------

   


--這一段的第一個值要看活動表格的pk欄值下去改(第一筆是01第二筆是02)
Insert into ACTIVITYREPORT (SQ_ACTIVITYREPORT_ID,SQ_ACTIVITY_ID,SQ_MEMBER_ID,REPORT_REASON,REPORT_STATUS) values (actreport_seq.NEXTVAL,'ACT-700008','910001','描述與事實不符',0); --這個部份的ID編號要看上面的並且一樣，用流水號會新增，這樣就錯了
Insert into ACTIVITYREPORT (SQ_ACTIVITYREPORT_ID,SQ_ACTIVITY_ID,SQ_MEMBER_ID,REPORT_REASON,REPORT_STATUS) values (actreport_seq.NEXTVAL,'ACT-700009','910001','地點標示錯誤',0);

--------------------------------------------------------
--  for Table MEMBER_STORE_ACTIVITY
--------------------------------------------------------
  
  
  INSERT INTO MEMBER_STORE_ACTIVITY (SQ_MEMBER_ID,SQ_ACTIVITY_ID,STORE_DATE) 
  VALUES('910002','ACT-700001',TO_DATE('2020-06-06','YYYY-MM-DD'));
  
  INSERT INTO MEMBER_STORE_ACTIVITY (SQ_MEMBER_ID,SQ_ACTIVITY_ID,STORE_DATE) 
  VALUES('910002','ACT-700002',TO_DATE('2020-06-06','YYYY-MM-DD'));
  
  INSERT INTO MEMBER_STORE_ACTIVITY (SQ_MEMBER_ID,SQ_ACTIVITY_ID,STORE_DATE) 
  VALUES('910002','ACT-700003',TO_DATE('2020-06-06','YYYY-MM-DD'));
  
  INSERT INTO MEMBER_STORE_ACTIVITY (SQ_MEMBER_ID,SQ_ACTIVITY_ID,STORE_DATE) 
  VALUES('910002','ACT-700004',TO_DATE('2020-06-06','YYYY-MM-DD'));
  
  INSERT INTO MEMBER_STORE_ACTIVITY (SQ_MEMBER_ID,SQ_ACTIVITY_ID,STORE_DATE) 
  VALUES('910002','ACT-700005',TO_DATE('2020-06-06','YYYY-MM-DD'));
  
--------
--商城
--------

-----------------------------------超商地址---------------------------------------




INSERT INTO STORE_ADDRESS VALUES(SQ_STORE_ADDRESS_ID.NEXTVAL, '學央', '桃園市平鎮區中央路187號', 121.1888201, 24.9654829);
INSERT INTO STORE_ADDRESS VALUES(SQ_STORE_ADDRESS_ID.NEXTVAL, '昇隆', '台北市大安區敦化南路二段238號', 121.5461667, 25.0209648);
INSERT INTO STORE_ADDRESS VALUES(SQ_STORE_ADDRESS_ID.NEXTVAL, '松山', '台北市信義區忠孝東路五段386號', 121.5735768, 25.040764);


--------------------------------------------------------------------------------

-----------------------------------廠牌資料---------------------------------------




INSERT INTO BRAND VALUES(SQ_BRAND_ID.NEXTVAL, 'BTWIN', '02-1234568','桃園市中壢區中央路115號',load_blob('btwin-logo.jpg'),'來自法國里爾的 B’TWIN 是歐洲銷量第一，世界銷量第三的專業自行車品牌。1976 年起，我們設計了一系列以最高性價比為準則的自行車，將我們的夢想付諸實現。對卓越品質的苛求，從那時起就成為 B’TWIN 的指導原則。');
INSERT INTO BRAND VALUES(SQ_BRAND_ID.NEXTVAL, 'GIANT', '02-1234567','桃園市桃園區捷安路123號',load_blob('giant_logo.jpg'),'巨大機械於1972年在臺中縣大甲鎮成立，1981年創立「捷安特」品牌，並成立「捷安特股份有限公司」負責業務銷售，在全球的生產工廠有臺灣、荷蘭及中國大陸，每年生產近500萬台各式自行車。 在通路方面，已於西歐各國、美國、日本、澳洲、加拿大、台灣及中國大陸等地，建立了自有品牌全球行銷網。');
INSERT INTO BRAND VALUES(SQ_BRAND_ID.NEXTVAL, 'MERIDA', '02-7654321','台北市八德區美利達路123號',load_blob('merida_logo.jpg'),'美利達工業股份有限公司為臺灣自行車設計、製造和銷售的公司，於1972年9月29日由曾鼎煌創建。現於中國大陸、日本、美國、歐洲等多個國家和地區設有子公司及工廠。');
INSERT INTO BRAND VALUES(SQ_BRAND_ID.NEXTVAL, 'VAN RYSEL', '02-4567812', '100台北市中正區重慶南路一段122號', load_blob('van_logo.jpg'), 'Van Rysel Ultra將作為高端競技公路車的品牌，Van Rysel在弗拉芒語中翻譯為「來自里爾」。這是迪卡儂為了展示他們從廉價自行車到以性能為導向的品牌形象轉型的一個標誌。');
INSERT INTO BRAND VALUES(SQ_BRAND_ID.NEXTVAL, 'ROCKRIDER', '02-6549872', '104台北市中山區八德路二段232號', load_blob('rockrider_logo.png'), 'Rockrider是法國迪卡濃（Decathlon）運動品超市的自有自行車品牌，為迪卡濃專業生產的高質量登山車及相關配件。');


--------------------------------------------------------------------------------

-----------------------------------商城商品---------------------------------------


INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520001', '騎行服','男款透氣排汗自行車短袖內衣 VAN RYSEL 300', 149, load_blob('vanrysel_cloth1.jpg'), '男款自行車底層衣100採用可有效排汗的輕盈布料，打造舒適愉悅的穿著體驗。',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '主要布料 : 100.0%聚酯纖維', 1);
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520001', '外套/風衣','男款透氣防曬自行車防風外套 BTWIN 500M', 499, load_blob('twinrain.jpg'), '輕巧精緻的夾克是專為城市自行車設計。 能防小雨、防風，也防春/秋的太陽。 日間或夜間都能提升您騎乘時的可見度。在城鎮中騎行時保護騎乘自行車者不被風吹、不受細雨淋', 
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '主要布料 : 100.0% 聚酯纖維', 1);
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520001', '公路車','7段變速自行車平把公路車 BTWIN Triban 100 FB', 6499, load_blob('BIKE1.jpg'), '單齒盤設計讓起步非常輕鬆：讓你能隨時掌握所在的檔位！32 mm輪胎及直式手把設計也更加舒適！', 
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '材質 : 車架（自行車） : 100.0% 鋁合金 6061', 1);
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520003', '登山車', 'BIG.NINE 300', 23200, load_blob('merdiabike2.jpg'), '「Made in Taiwan 台灣製造」，BIG.NINE與BIG.SEVEN單避震車系，其功能設計與細膩做工，完整詮釋了美利達47年的造車知識累積與經驗堆疊。',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '材質 : 100.0% 鋁', 1);
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520003', '公路車', 'SCULTURA DISC FORCE-EDITION', 148000, load_blob('merdiabike1.jpg'), '超輕量的CF4碳纖維車架，M/L尺寸僅有860公克。ProTour賽事驗證的競賽騎乘幾何設定；下管與立管採用「NACA快背斷面」管形，搭配1又1/8”漸變至1又1/4”的異徑頭管，協助降低空氣阻力。強悍踩踏力道傳輸的BB386規格；後上叉具有提升舒適度的吸震機能。輪煞版本使用傳統快拆的花鼓；碟煞版本則採用配置散熱鰭片的Flat Mount卡鉗與直通軸碟煞花鼓系統。',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '材質 : 車架（自行車）: 100.0%鋁合金6061', 1); 
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520002', '外套/風衣', '女款自行車防雨防風外套 GAINT RC 500', 1749, load_blob('giantoutcloth1.jpg'), '這款外套具有防水、透氣、彈性的薄膜，可提供雨中騎乘時絕佳的舒適性。摺疊式檔片可提供飛濺防護',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '主要布料:100.0%聚酯纖維 過肩:100.0%聚酯纖維 塗層:100.0%聚氨酯（Polyurethane）塗層', 1);  
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520003', '太陽眼鏡','輕量款 抗UV自行車太陽眼鏡 MERIDA XC100', 299, load_blob('sunglass1.jpg'), '搭配可調式鼻墊及橡膠塗層鏡架，100自行車太陽眼鏡使眼鏡安全服貼臉型。寬幅鏡片提供您更好的保護和絕佳視野。',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '材質 : 框架:85.0%聚醯纖維12, 框架:10.0%橡膠-熱塑性橡膠（TPR） 框架:5.0%不銹鋼 鏡片:100.0%聚碳酸酯', 1); 
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520005', '手套','可觸控 登山自行車防滑手套 ROCKRIDER ST 500', 499, load_blob('hand1.jpg'), '配戴登山車手套ST 500可於騎行或跌倒時防止植物刮傷雙手。手套選用既舒適又透氣的布料和設計。',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '材質 : 手背:97.0%聚酯纖維 手背:3.0%氨輪 掌面:100.0%聚氨酯（Polyurethane）塗層', 1);
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520005', '安全帽','登山車安全帽 ROCKRIDER', 499, load_blob('safecap.jpg'), '易於調整且舒適，Rockrider ST 100登山車安全帽保護你的頭部不受碰撞傷害。享受加大且較通風的9個通風孔設計。',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '材質 : 泡棉 : 100.0% 發泡聚苯乙烯（EPS，保麗龍） 彈殼 : 100.0% 聚碳酸酯（PC） 帶子 : 100.0% 聚丙烯纖維 扣環 : 100.0% 聚醯纖維', 1);
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520001', '打氣筒','附胎壓計台灣製自行車打氣筒 BTWIN FLP 500', 299, load_blob('fullair1.jpg'), '通用打氣筒（法式／英式／美式），附bars與PSI顯示的胎壓表（指針式胎壓計）。',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '材質 : 75.0%聚丙烯纖維, 25.0%鋁', 1);
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520002', '水壺','CCC車隊高流量水壺 750cc', 160, load_blob('giant_waterb1.jpg'), '750 ml自行車水壺。塑膠材質可減少異味。水壺蓋可防止水從瓶口濺出。可拆卸瓶蓋。',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '材質 : 瓶身:100.0%聚丙烯纖維 蓋、帽:100.0%聚丙烯纖維 墊片:100.0%矽膠 奶嘴:100.0%TPE苯乙烯－丁二烯(碳)－苯乙烯共聚物(氫)', 1);
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520002', '水壺架','GIANT AIRWAY DUAL CAGE 側開水壺架', 320, load_blob('giant_watera1.jpg'), '輕量時尚的自行車水壺架，玻璃纖維材質，加固塑料，耐用性強。',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '材質 : 底盤 : 90.0%尼龍材質 10.0%玻璃纖維（FG）', 1);
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520001', '外胎/內胎','20吋童車輪胎 BTWIN City 5 Protect', 299, load_blob('inout1.jpg'), '防穿刺與高性能表現，側面胎紋為轉向提供良好的抓地性，Protect+科技。',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '材質 : 膜:80.0%橡膠-天然橡膠（NR）-乳膠 膜:20.0%橡膠-合成橡膠）', 1);
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520005', '坐墊','記憶泡棉自行車坐墊套  ROCKRIDER 500 memory', 299, load_blob('chair1.jpg'), '適用於休閒自行車運動的「記憶泡棉」坐墊套，搭配可調式束帶，可貼合所有坐墊（最大14cm）。',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '材質 : 墊料:100.0%聚氨酯纖維（PU） 外層布料:100.0%聚酯纖維 背部布料:100.0%聚醯纖維', 1);
INSERT INTO SHOP_PRODUCT VALUES(SQ_PRODUCT_ID.NEXTVAL, '520001', '工具箱','自行車萬用工具箱 BTWIN 900', 2499, load_blob('workbox1.jpg'), '40款工具，43個功能，讓你受益良多。工具放在盒內，盒子用兩個扣子關起扣上，攜帶及存放皆容易且符合人體工學。',
to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'), '材質 : 本體:80.0%鋼 8.0%聚丙烯纖維 8.0%PVC塑膠（聚氯乙烯） 2.0%聚醯纖維 2.0%橡膠-熱塑性橡膠（TPR） 外蓋:100.0%聚乙烯', 1);


--------------------------------------------------------------------------------

------------------------------------商品庫存-------------------------------------

INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510001', '黑', 'M', 10);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510001', '黑', 'L', 10);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510001', '黑', 'XL', 10);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510002', '紅', 'S', 10);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510002', '紅', 'M', 10);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510003', '', '', 10);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510004', '藍', 'L', 5);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510004', '灰', 'L', 5);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510005', '麗黑', 'XL', 3);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510006', '粉紅', 'S', 10);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510006', '粉紅', 'M', 10);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510006', '粉紅', 'L', 10);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510007', '', '', 20);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510008', '藍', '', 10);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510008', '黑', '', 15);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510009', '黑', '', 5);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510010', '', '', 20);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510011', '', '', 10);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510012', '黑', '', 100);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510013', '', '', 20);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510014', '', '', 10);
INSERT INTO SHOP_PRODUCT_STOCK VALUES(SQ_STOCK_ID.NEXTVAL,'510015', '', '', 5);
--------------------------------------------------------------------------------

-----------------------------------商品訂單---------------------------------------


--'OD-'||LPAD(to_char(SQ_ORDER_ID.NEXTVAL),6,0)
INSERT INTO SHOP_ORDER VALUES ('OD-'||LPAD(to_char(SQ_ORDER_ID.NEXTVAL),6,0), '910001', '550001', '桃園市平鎮區中央路187號', systimestamp,  to_date(to_char(sysdate+7,'yyyy-mm-dd'),'yyyy-mm-dd'), 499, 1, 1);
INSERT INTO SHOP_ORDER VALUES ('OD-'||LPAD(to_char(SQ_ORDER_ID.NEXTVAL),6,0), '910002', '550002', '300新竹市東區東大路一段155號', systimestamp,  to_date(to_char(sysdate+7,'yyyy-mm-dd'),'yyyy-mm-dd'), 148000, 2, 2);
INSERT INTO SHOP_ORDER VALUES ('OD-'||LPAD(to_char(SQ_ORDER_ID.NEXTVAL),6,0), '910003', '550003', '台北市信義區忠孝東路五段386號', systimestamp, to_date(to_char(sysdate+7,'yyyy-mm-dd'),'yyyy-mm-dd'), 2000, 2, 3);


--------------------------------------------------------------------------------

---------------------------------商品訂單明細-------------------------------------


INSERT INTO SHOP_ORDER_DETAIL VALUES('OD-500001','510002',499,1);
INSERT INTO SHOP_ORDER_DETAIL VALUES('OD-500002','510005',148000,1);
INSERT INTO SHOP_ORDER_DETAIL VALUES('OD-500003','510001',499,2);
INSERT INTO SHOP_ORDER_DETAIL VALUES('OD-500003','510009',499,1);
INSERT INTO SHOP_ORDER_DETAIL VALUES('OD-500003','510010',299,1);
INSERT INTO SHOP_ORDER_DETAIL VALUES('OD-500003','510013',299,2);



-----------------------------------商品檢舉---------------------------------------

INSERT INTO SHOP_REPORT VALUES(('PRR-'||LPAD(to_char(SQ_SHOP_REPORT_ID.NEXTVAL),6,0)), '910001', '510001', '流汗黏黏，不舒服，若無風狀態騎車，更不舒服收邊沒收好，有一堆鬚鬚', systimestamp, 2);
INSERT INTO SHOP_REPORT VALUES(('PRR-'||LPAD(to_char(SQ_SHOP_REPORT_ID.NEXTVAL),6,0)), '910002', '510002', '爛東西', systimestamp, 0);
INSERT INTO SHOP_REPORT VALUES(('PRR-'||LPAD(to_char(SQ_SHOP_REPORT_ID.NEXTVAL),6,0)), '910003', '510003', '廢物', systimestamp, 1);


---------------------------------留言(商品)---------------------------------------

INSERT INTO SHOP_MESSAGE VALUES(('PRM-'||LPAD(to_char(SQ_SHOP_MESSAGE_ID.NEXTVAL),6,0)), '510001', '方便好穿', systimestamp, 1);
INSERT INTO SHOP_MESSAGE VALUES(('PRM-'||LPAD(to_char(SQ_SHOP_MESSAGE_ID.NEXTVAL),6,0)), '510006', '服務人員態度佳，親自協助拿到車上，解決載運的問題。', systimestamp, 1);
INSERT INTO SHOP_MESSAGE VALUES(('PRM-'||LPAD(to_char(SQ_SHOP_MESSAGE_ID.NEXTVAL),6,0)), '510006', '服務人員介紹非常詳細', systimestamp, 1);
INSERT INTO SHOP_MESSAGE VALUES(('PRM-'||LPAD(to_char(SQ_SHOP_MESSAGE_ID.NEXTVAL),6,0)), '510013', '既然身為越野車手套,掌心布面實在太薄了,戴兩次就快磨破了,同時車線脆弱易斷,可惜了除此之外的其他部分還不錯', systimestamp, 1);
INSERT INTO SHOP_MESSAGE VALUES(('PRM-'||LPAD(to_char(SQ_SHOP_MESSAGE_ID.NEXTVAL),6,0)), '510013', '感覺不值得這個價錢用不久手指頭的膠條就脫落了', systimestamp, 0);

--------------------------------------------------------
--  for Table MEMBER_STORE_PRODUCT_ID
--------------------------------------------------------

  INSERT INTO MEMBER_STORE_PRODUCT (SQ_MEMBER_ID,SQ_PRODUCT_ID,STORE_DATE) 
  VALUES('910002','510001',TO_DATE('2020-06-06','YYYY-MM-DD'));
  
  INSERT INTO MEMBER_STORE_PRODUCT (SQ_MEMBER_ID,SQ_PRODUCT_ID,STORE_DATE) 
  VALUES('910002','510002',TO_DATE('2020-06-06','YYYY-MM-DD'));
  
  INSERT INTO MEMBER_STORE_PRODUCT (SQ_MEMBER_ID,SQ_PRODUCT_ID,STORE_DATE) 
  VALUES('910002','510003',TO_DATE('2020-06-06','YYYY-MM-DD'));
  
  INSERT INTO MEMBER_STORE_PRODUCT (SQ_MEMBER_ID,SQ_PRODUCT_ID,STORE_DATE) 
  VALUES('910002','510004',TO_DATE('2020-06-06','YYYY-MM-DD'));
  
  INSERT INTO MEMBER_STORE_PRODUCT (SQ_MEMBER_ID,SQ_PRODUCT_ID,STORE_DATE) 
  VALUES('910002','510005',TO_DATE('2020-06-06','YYYY-MM-DD'));
  
-------------
--租車
-------------

INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password)
VALUES
(sq_bike_store_id.NEXTVAL,'捷安寶-屏東東港店','屏東縣東港鎮中正路260號','08-832-6698',22.470107,120.452611,'10:30–20:30',1,'南部','x681681@gmail.com','s95566','s95589');
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password)
VALUES
(sq_bike_store_id.NEXTVAL,'吉美自行車出租','宜蘭縣五結鄉親河路二段23號','09-5223-9961',24.672298,121.811611,'07:00–18:00',1,'北部','q987654@gmail.com','123456','123456');
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password)
VALUES
(sq_bike_store_id.NEXTVAL,'小麥町單車旅遊','高雄市鼓山區臨海二路20-3號','07-533-0070',22.622042,120.273625,'08:00–19:00',1,'南部','e987654@gmail.com','654321','654321');
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password)
VALUES
(sq_bike_store_id.NEXTVAL,'都會租車','台中市石岡區豐勢路1261之1號','04-2572-2628',24.278431 ,120.768238,'08:00–18:00',1,'中部','987654@gmail.com','s565632','z654321');
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password)
VALUES
(sq_bike_store_id.NEXTVAL,'慢慢租車','台南市後壁區73號','0935-033-043',23.366227,120.361005,'10:00–18:30',1,'南部','addd5455@gmail.com','qwer44545','asad545454');
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password)
VALUES
(sq_bike_store_id.NEXTVAL,'阿勝單車出租','花蓮縣花蓮市國聯一路152號','03-834-6522',22.792931,121.124991,'10:00–21:00',1,'東部','aaaa987@gmail.com','sdd5478','9875421');
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password)
VALUES
(sq_bike_store_id.NEXTVAL,'捷安寶-日月潭站','南投縣魚池鄉中山路163號','04-9285-6713',23.866354,120.910849,'07:00–18:00',1,'中部','q987654@gmail.com','z6547785','z53535');
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password)
VALUES
(sq_bike_store_id.NEXTVAL,'美利達宏翊自行車出租','雲林縣斗六市文化路151號','05-532-6179',23.711482,120.550331,'07:00–18:00',1,'中部','a987654@gmail.com','z123456','a456465');
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password)
VALUES
(sq_bike_store_id.NEXTVAL,'阿勝單車台東店','台東縣台東市新站路223號','0982-158-153',22.792933,121.125028,'07:00–18:00',1,'東部','a9876541@gmail.com','a45646','z1321321');
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password)
VALUES
(sq_bike_store_id.NEXTVAL,'鼻仔頭自行車出租','新北市淡水區鼻頭街16號','0953-104-308',25.166445,121.446791,'07:00–18:00',1,'北部','a681543164@gmail.com','adadda46466','s95589');
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password)
VALUES
(sq_bike_store_id.NEXTVAL,'大溪橋頭主活單車租借站','桃園市大溪區瑞安路一段273號','0933-085-326',24.886042,121.279942,'07:00–18:00',1,'北部','4949494@gmail.com','7979','s46469');

--------------------------------------------------------
--  for table bike_type 車種
--------------------------------------------------------

INSERT INTO  bike_type
(sq_bike_type_id,bike_type_name,bike_title,bike_description,bike_photo,bike_daily_price,bike_hourly_price)
VALUES
(sq_bike_type_id.NEXTVAL,'公路單車','單車界的F1','它的特徵是擁有極細的輪胎和彎曲到下方的彎把。在單車體育賽事中，追求高速騎行性能而設計的一種。當然可以參加單車賽事，也可以騎著去上班。與風融為一體的快速騎行感覺，是公路單車的最大魅力也是其長處。', load_blob('bike_img_road.jpg'),450,60);
INSERT INTO  bike_type
(sq_bike_type_id,bike_type_name,bike_title,bike_description,bike_photo,bike_daily_price,bike_hourly_price)
VALUES
(sq_bike_type_id.NEXTVAL,'公路越野車','具備多項功能的單車','是一款結合了公路單車和登山車兩種車型之長處的萬能單車。騎行非常流暢以及穩定。即使是崎嶇路面也能順暢行駛。此單車類型不僅適合休閒逛街騎乘，也非常適合初學者騎乘。可以依據用戶需求設定，來發揮它的全能性能。',load_blob('bike_img_cross.jpg'),300,40);
INSERT INTO  bike_type
(sq_bike_type_id,bike_type_name,bike_title,bike_description,bike_photo,bike_daily_price,bike_hourly_price)
VALUES
(sq_bike_type_id.NEXTVAL,'登山車','不受任何地形限制的高性能單車','正如其名，是為了能順暢的行駛在山岳地帶或崎嶇路面而設計的一款單車，並充分發揮其疾馳的性能。輪胎寬厚，所以造成的路面阻力也大，在平整的路面上可能速度不是很快，但是不必受道路的崎嶇不平限制，可以說也是一款非常值得信賴的公路騎行單車。',load_blob('bike_img_mountain.jpg'),300,40);
INSERT INTO  bike_type
(sq_bike_type_id,bike_type_name,bike_title,bike_description,bike_photo,bike_daily_price,bike_hourly_price)
VALUES
(sq_bike_type_id.NEXTVAL,'小徑車','依據生活習慣來享受小徑車的樂趣','小徑單車有大約20英寸的輪胎。騎行非常輕便，適合要頻繁停車的日常騎車逛街的用戶。設計是自由型，可以折疊的款式，便於收納。依據個人生活習慣來調整的車型。不適合段差大和崎嶇不平的道路。',load_blob('bike_img_mini.jpg'),400,50);
INSERT INTO  bike_type
(sq_bike_type_id,bike_type_name,bike_title,bike_description,bike_photo,bike_daily_price,bike_hourly_price)
VALUES
(sq_bike_type_id.NEXTVAL,'城市單車','最常見的單車 ， 俗稱：媽媽車。','這是最常見的單車類型。一般用於購物、通勤或上學。在日常生活中，是一款實用性非常高的單車，特別適合女性和年長者。而且，單車種類非常豐富，從價格便宜的款式到時尚款式，適應不同需求。',load_blob('bike_img_city.jpg'),200,30);
INSERT INTO  bike_type
(sq_bike_type_id,bike_type_name,bike_title,bike_description,bike_photo,bike_daily_price,bike_hourly_price)
VALUES
(sq_bike_type_id.NEXTVAL,'電動單車','爬坡也可以很順暢','正如其名，借用電力作為前進動力的單車。騎單車載小孩或騎單車爬坡時，借用電力使你的行駛更加輕鬆。萬一電池沒電時，也可以和一般的單車一樣踩踏前行。',load_blob('bike_img_auto.jpg'),500,65);


--------------------------------------------------------
--  for table bike 店家車輛產品
--------------------------------------------------------

--店家1
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630001','620001',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630002','620001',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630003','620001',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630004','620001',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630005','620001',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630006','620001',0);
--店家2
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630001','620002',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630002','620002',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630003','620002',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630004','620002',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630005','620002',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630006','620002',0);
--店家3
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630001','620003',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630002','620003',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630003','620003',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630004','620003',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630005','620003',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630006','620003',0);
--店家4
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630001','620004',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630002','620004',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630003','620004',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630004','620004',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630005','620004',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630006','620004',0);
--店家5
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630001','620005',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630002','620005',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630003','620005',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630004','620005',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630005','620005',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630006','620005',0);
--店家6
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630001','620006',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630002','620006',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630003','620006',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630004','620006',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630005','620006',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630006','620006',0);
--店家7
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630001','620007',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630002','620007',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630003','620007',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630004','620007',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630005','620007',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630006','620007',0);
--店家8
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630001','620008',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630002','620008',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630003','620008',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630004','620008',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630005','620008',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630006','620008',0);
--店家9
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630001','620009',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630002','620009',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630003','620009',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630004','620009',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630005','620009',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630006','620009',0);
--店家10
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630001','620010',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630002','620010',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630003','620010',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630004','620010',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630005','620010',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630006','620010',0);
--店家11
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630001','620011',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630002','620011',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630003','620011',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630004','620011',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630005','620011',0);
INSERT INTO bike(sq_bike_id ,sq_bike_type_id, sq_bike_store_id, bike_status)VALUES(sq_bike_id.NEXTVAL,'630006','620011',0);


-------------------------------------
--  for table bike_rent_master 租車訂單
--------------------------------------------------------


--上線改成'RTX'||LPAD(to_char(sq_rent_id.NEXTVAL), 6, '0')
INSERT INTO bike_rent_master
(sq_rent_id, sq_member_id,sq_bike_store_id,rent_payment,od_total_price,rent_name,rent_phone ,rent_od_status,tradeno)
VALUES
('RTX'||LPAD(to_char(sq_rent_id.NEXTVAL), 6, '0'),'910001','620001',0,13500,'老皮','0987654321',1,'2006291129266664');

INSERT INTO bike_rent_master
(sq_rent_id, sq_member_id,sq_bike_store_id,rent_payment,od_total_price,rent_name,rent_phone ,rent_od_status,tradeno)
VALUES
('RTX'||LPAD(to_char(sq_rent_id.NEXTVAL), 6, '0'),'910002','620002',0,1200,'豆皮','0987654321',1,'2006291129266665');

INSERT INTO bike_rent_master
(sq_rent_id, sq_member_id,sq_bike_store_id,rent_payment,od_total_price,rent_name,rent_phone ,rent_od_status,tradeno)
VALUES
('RTX'||LPAD(to_char(sq_rent_id.NEXTVAL), 6, '0'),'910003','620004',0,1000,'Peter','0987654321',1,'2006291129266666');

INSERT INTO bike_rent_master
(sq_rent_id, sq_member_id,sq_bike_store_id,rent_payment,od_total_price,rent_name,rent_phone ,rent_od_status,tradeno)
VALUES
('RTX'||LPAD(to_char(sq_rent_id.NEXTVAL), 6, '0'),'910001','620007',0,4500,'David','0987654321',1,'2006291129266667');

INSERT INTO bike_rent_master
(sq_rent_id, sq_member_id,sq_bike_store_id,rent_payment,od_total_price,rent_name,rent_phone ,rent_od_status,tradeno)
VALUES
('RTX'||LPAD(to_char(sq_rent_id.NEXTVAL), 6, '0'),'910001','620011',0,600,'黑皮','0987654321',1,'2006291129266668');

--------------------------------------------------------
--  for table bike_rent_detail 租車訂單明細
--------------------------------------------------------TO_TIMESTAMP('2003/12/13 10:13:18', 'YYYY/MM/DD HH:MI:SS')
INSERT INTO bike_rent_detail(sq_rent_detail_id,sq_rent_id,sq_bike_type_id,sq_bike_id ,price,rsved_rent_date,ex_return_date,real_return_date,extra_cost )VALUES(sq_rent_detail_id.NEXTVAL,'RTX600001','630001',null,450,to_date('2020-08-28 10:00:00', 'YYYY/MM/DD HH24:mi:ss'),to_date('2020-09-28 18:00:00', 'YYYY/MM/DD HH24:mi:ss'),null,null);
INSERT INTO bike_rent_detail(sq_rent_detail_id,sq_rent_id,sq_bike_type_id,sq_bike_id ,price,rsved_rent_date,ex_return_date,real_return_date,extra_cost )VALUES(sq_rent_detail_id.NEXTVAL,'RTX600002','630003',null,300,to_date('2020-07-28 10:00:00', 'YYYY/MM/DD HH24:mi:ss'),to_date('2020-08-01 18:00:00', 'YYYY/MM/DD HH24:mi:ss'),null,null);
INSERT INTO bike_rent_detail(sq_rent_detail_id,sq_rent_id,sq_bike_type_id,sq_bike_id ,price,rsved_rent_date,ex_return_date,real_return_date,extra_cost )VALUES(sq_rent_detail_id.NEXTVAL,'RTX600003','630005',null,200,to_date('2020-07-05 10:00:00', 'YYYY/MM/DD HH24:mi:ss'),to_date('2020-07-10 18:00:00', 'YYYY/MM/DD HH24:mi:ss'),null,null);
INSERT INTO bike_rent_detail(sq_rent_detail_id,sq_rent_id,sq_bike_type_id,sq_bike_id ,price,rsved_rent_date,ex_return_date,real_return_date,extra_cost )VALUES(sq_rent_detail_id.NEXTVAL,'RTX600004','630003',null,300,to_date('2020-07-15 10:00:00', 'YYYY/MM/DD HH24:mi:ss'),to_date('2020-08-01 18:00:00', 'YYYY/MM/DD HH24:mi:ss'),null,null);
INSERT INTO bike_rent_detail(sq_rent_detail_id,sq_rent_id,sq_bike_type_id,sq_bike_id ,price,rsved_rent_date,ex_return_date,real_return_date,extra_cost )VALUES(sq_rent_detail_id.NEXTVAL,'RTX600005','630005',null,200,to_date('2020-06-28 10:00:00', 'YYYY/MM/DD HH24:mi:ss'),to_date('2020-07-01 18:00:00', 'YYYY/MM/DD HH24:mi:ss'),null,null);
  
  --網頁資訊

INSERT INTO QUESTION VALUES (sq_QUESTION.NEXTVAL,'Q1：什麼是自行車？',
'A1：俗稱的自行車，在現行法規裡屬於「慢車」。慢車包含下列幾種類型：
1.雙輪腳踏車
2.電動輔助腳踏車（人力為主，電力為輔，極速25公里/小時，低於40公斤）
3.電動自行車（審驗合格，極速25公里/小時，低於40公斤）
4.三輪以上人力車（三輪客貨車、手拉推貨車，需登記領證照，違者罰300元）
5.三輪以上獸力車（牛車、馬車、驢車、雪橇狗車…，需登記領證照，違者罰300元）
 也就是說討論「自行車」的相關法規時，幾乎也是在討論三輪車跟牛車的法規。
'
);
INSERT INTO QUESTION VALUES (sq_QUESTION.NEXTVAL,'Q2：腳踏車在道路上如何通行？ 可以逆向嗎?',
'A2：有自行車專用道的路段，就必須在專用道內行駛；沒有專用道的時候應靠右側路邊行駛，不可以進入快車道，左轉需兩段式，當然也不可以逆向。違規罰300-600元');
INSERT INTO QUESTION VALUES (sq_QUESTION.NEXTVAL,'Q3：騎自行車一定要戴安全帽嗎?',
'A3：不用。但溫馨叮嚀，戴個有合格標章的安全帽可以降低受傷的風險。');
INSERT INTO QUESTION VALUES (sq_QUESTION.NEXTVAL,'Q4：騎自行車一定要有前後燈嗎?',
'A4：晚上的時候要讓別人可以看到，要開燈且裝有反光版。違規罰180元');
INSERT INTO QUESTION VALUES (sq_QUESTION.NEXTVAL,'Q5、騎到一半爆胎了怎麼辦?',
'A5：減速慢行，停靠路邊安全處檢查，然後牽車找自行車店補胎，或找滿街都有的機車行補胎亦可。');
INSERT INTO QUESTION VALUES (sq_QUESTION.NEXTVAL,'Q6: 如何避免被車撞?',
'A6:一、安裝車尾燈: 夜騎絕對需要一個閃紅光的車尾燈。
   	二、穿反光背心或安全三角標示: 高品質的反光配件不只在夜晚，
       	就算在白天也大幅增進你被看到 的機會。
	三、騎比較寬的街道:騎在外線夠寬的車道，可以同時容納下一台汽車和單車。
	四、騎比較慢的街道:車子開越慢，駕駛看到你的時間就越多。
	五、週末時，騎小巷:在禮拜五或禮拜六晚上騎車特別危險。
	六、裝後照鏡:好好使用後照鏡。
	七、別騎太靠右:聽起來違反直覺，不過為你自己與人行道間留點空間。
	八、轉彎時比手勢: 當你的騎乘在汽車駕駛預期內時，比較不會被撞。
	九、避免放音樂或用手機: 比起開車，騎腳踏車時能聽到四周的聲音更重要。
	十、當作你是隱形人般騎車: 用「就算汽車駕駛沒看到你也不會被撞到」的方法來騎乘，
    	通常對安全有幫助。
');


INSERT INTO QUESTION VALUES (sq_QUESTION.NEXTVAL,'Q7、騎到一半鏈條掉了怎麼辦？ ',
'A7：一般來講無變速的自行車較易脫鏈，如果騎行途中感覺脫鏈，應立即停止踩踏，以免鏈條卡死難處理，並減速停靠路邊安全處，如果是後飛輪脫鏈，則以左手將鏈條扣住上半部輪齒，右手輕轉踏板向後，即可上鏈歸位；如果是前齒盤脫鏈，則以右手將鏈條扣住下半部輪齒，左手輕轉踏板向後，即可上鏈歸位；
要事前後齒輪同時脫鏈，則先將鏈條扣好後飛輪，再按上述要領處理前齒盤，即可上鏈歸位；變速車脫鏈較易處理，仍按上述要領進行，唯需注意需將鏈條扣回原先脫鏈的齒輪，以免損壞變速器，手上的油漬用環保去漬油和舊毛巾即可擦拭乾淨。
假如常常脫鏈，可能是鏈條已磨損變鬆，或齒輪已磨耗無法咬合鏈條，就必須回自行車店檢修或換新。');

INSERT INTO QUESTION VALUES (sq_QUESTION.NEXTVAL,'Q8、如果將變速器調來調去，自行車會容易壞掉嗎﹖',
'A8：變速器是依據速度和路況來切換，需常常騎行使用才會得心應手，靜止起步時要從低速檔開始，隨著速度增加逐漸切換至高速檔，騎行完畢要將前後變速器皆復原歸位，也就是切換至最小的齒輪。一般人如果正常使用，幾乎不會損壞。');

INSERT INTO QUESTION VALUES (sq_QUESTION.NEXTVAL,'Q9、騎到一半剎車壞了怎麼辦﹖',
'A9：攸關生命安全的剎車系統必須時時檢查，煞車線有變形或部分斷裂即刻換新，剎車皮不堪使用也得換新，就較能避免騎行途中剎車壞掉危及安全。萬一騎行當中剎車損壞，一般以後剎車機率較高，此時應停止踩踏，並以前剎車點放減速，避免前剎車鎖死導致翻車，停靠路邊安全處檢查，並找自行車店維修更換。');

INSERT INTO QUESTION VALUES (sq_QUESTION.NEXTVAL,'Q10:我的身高適合那種尺寸的車架?',
'A10:
以下提供測量的方式: 
(一) 站立的高度
站立的高度是自行車是否合身的基本要件，所謂距離就是，您將雙腳跨過車架上，雙腳站立在地面上，從車架上管與您胯下的的距離。
要查驗高度是否合身，穿上您騎車要穿的鞋子，雙腳跨過在上管，雙腳站立在地面上。
如果您的跨下會頂到車架上管，那麼這輛車子對您而言就太大了。
(1)跨下點到車架上管應該要有最少5公分的間隙。
(2)如果您騎在未鋪好的路面則應該要有至少7.5公分間隙。
(3)您的自行車如果要用來做山區越野行駛，在困難、崎嶇的地勢至少需要10公分或以上的間隙。
以上說明為建議數值，提醒您可洽詢捷安特授權門市依個人身高比例給予專業測量說明。
(二)車架尺寸標示法通常為:  輪胎規格X車架中管長度 
');




INSERT INTO TIPS(SQ_TIPS_ID,TIPS_PICTURE,TIPS_TITLE,TIPS_DESCIPTION) VALUES (sq_TIPS.NEXTVAL ,load_blob('tip1.jpg'), '法規資訊', 
'道路交通管理處罰條例 
第3條
本條例所用名詞釋義如下：
道路：指公路、街道、巷衖、廣場、騎樓、走廊或其他供公眾通行之地方。
車道：指以劃分島、護欄或標線劃定道路之部分，及其他供車輛行駛之道路。
人行道：指為專供行人通行之騎樓、走廊，及劃設供行人行走之地面道路，與人行天橋及人行地下道。
行人穿越道：指在道路上以標線劃設，供行人穿越道路之地方。
標誌：指管制道路交通，表示警告、禁制、指示，而以文字或圖案繪製之標牌。
第72條
慢車未經核准，擅自變更裝置，或不依規定保持煞車、鈴號、燈光及反光裝置等安全設備之良好與完整者，處慢車所有人新臺幣一百八十元罰鍰，並責令限期安裝或改正。
第75條
慢車駕駛人，駕車在鐵路平交道有第五十四條各款情形之一者，處新臺幣一千二百元以上二千四百元以下罰鍰。
道路交通安全規則
第115-1條
電動輔助自行車及電動自行車，應經檢測及型式審驗合格，並粘貼審驗合格標章後，始得行駛道路。
第119條
慢車不得擅自變更裝置，並應保持煞車、鈴號、燈光及反光裝置等安全設備之良好與完整。電動輔助自行車及電動自行車之安全設備，應符合電動輔助自行車及電動自行車安全檢測基準三輪以上慢車，其安全設備應符合直轄市、縣(市)政府依道路交通管理處罰條例第六十九條第三項授權另定之管理辦法規定。
慢車擅自加裝補助引擎或馬達行駛者，依汽車之拼裝車輛處理。
第127條
慢車不得牽引其他車輛或攀附汽車隨行。
第128條
慢車有燈光設備者，應保持良好與完整，在夜間行駛應開啟燈光。
 臺北市自行車管理規則
第3條
本規則用詞定義如下：
道路：指本市行政區域內所有公路、街道、巷衖、廣場及河川高灘地等供公眾通行之地方。
自行車：指腳踏自行車、電動輔助自行車及電動自行車。
駕駛人：指自行車之駕駛人。
自行車專用道：指設有自行車專用車道線或標誌之道路。
人車共用道：指設有行人及自行車專用標誌之道路。
第4條
為保障市民財產安全、降低失竊風險與利於查竊，本市得建立自行車自願性登記制度。
前項自行車自願性登記制度作業要點由本市監理處另定之。
第5條
駕駛人行駛自行車前，應調整座墊高度，並檢視輪胎胎壓、前後煞車效能及鈴號、燈光
和反光裝置等各項配備之完整與功能良好。自行車頭燈顏色應為白色或淡黃色，尾燈顏
色應為紅色。為改善自行車騎乘安全，駕駛人行駛時宜配戴頭盔(安全帽)。
第6條
駕駛人行駛自行車時，自行車前後不得有人攀附站立，以維行車安全。');

INSERT INTO TIPS VALUES (sq_TIPS.NEXTVAL ,load_blob('tip2.jpg'), '自行車道規劃認識', 
'由【交通部運輸研究所】所出版之「自行車道系統規劃設計參考手冊」於99 年提出第一版初稿，經東部自行車路網示範計畫督導協調推動小組多次會議研商及至交通部部務會報提報，並邀集產官學進行研討暨參考國外相關規定後，於100 年提出第二版修訂，嗣後經101 年整併既有法規條文，於102年提出第三版修訂。
本手冊主要在提供推動單位在自行車道之規劃、設置、安全防護與管理上，有較為一致之標準，以保障民眾騎乘使用之安全；另外考慮自行車道之設置原即包容多元思維，因此也建議在涉及地區景觀特色之設計、資訊說明提供等部分宜由設置者發揮創意，使各地自行車道之佈設更具地方吸引力與便利性。');

INSERT INTO TIPS VALUES (sq_TIPS.NEXTVAL ,load_blob('tip3.jpg'), '單車裝備', 
'單車服
安全帽
前、後燈
水壺架
車架馬鞍袋');
INSERT INTO TIPS VALUES (sq_TIPS.NEXTVAL , load_blob('tip4.jpg') , '行前準備', 
'一、生活用品:
現金、零錢/信用卡/提款卡
身分證/健保卡
盥洗用具
個人醫藥品（特殊藥品、酸痛藥膏）
防曬乳液
二、通訊用品:
手機/充電器/電池
行動電源/備用電源
三、人身用品:
安全帽
水壺
雨衣/雨褲
自行車衣、車褲（長短不拘）
個人防護用具（護膝、護腕等）
防風太陽眼鏡
防滑、吸震手套
出遊貼心小叮嚀
1.舒適、排汗、適合的運動。
2.單車活動是長久的，請考量攜帶物品的實用性。
並以個人必需品、輕便、體積小、旅途中不易購買為主要之考量重點。
3.長途旅遊的行李請盡量精簡，托運之行李以21吋為主，個人
貴重物品請隨身保管，勿放置於托運行李中。
4.運動酸痛是必然的，請記得攜帶酸痛外敷藥品。（推薦藥品：普拿疼酸痛藥膏）');
INSERT INTO TIPS VALUES (sq_TIPS.NEXTVAL , load_blob('tip6.jpg'), '單車安全小常識', 
'正確騎乘技巧
1.手肘手臂要微彎
2.背部腰部成弓狀
3.手臂手腕要打直
4.坐墊高度要適當
5.膝蓋位置要正確
正確剎車技巧
1.適當的剎車距離
多利用點煞的方式；切記不要長時間持續按住煞車，因為會使煞車塊過熱，造成煞車力降低，發生危險！
2.剎車技巧
雙手同時剎車，只煞後輪容易打滑，只煞前輪容易造成翻車。
正確騎乘觀念
1.隨時補充熱量，才有持續運動的動力，千萬別讓自己處於飢餓的狀態。
2.隨時補充水份，別等感覺口渴了才喝。
3.適當的休息，每15-20公里休息一次，記得舒緩身體。
4.預防抽筋，多補充含鈉、鉀成分的食物或飲料。 (如：香蕉)
5.要防曬，別因麻煩而不預防，這是防曬傷不是防曬黑的。
6.保持下檔的乾淨及清爽。
騎乘安全須知
1.專心騎乘！
2.養成熱身運動，以防運動傷害。(循序漸進,確保安全)
3.尊重路權！靠路邊騎乘。
4.注意後方來車及停在路邊的車子。
5.表明你的行進動向，就如開車一樣變換車道。
6.注意力分配 前30~40% 後70%~60%。
7.回到柏油路上時，注意路面高低落差。');
INSERT INTO TIPS VALUES (sq_TIPS.NEXTVAL , load_blob('tip7.jpg') , '全臺單車驛站', 
'臺北市
大同區	大橋派出所	臺北市大同區延平北路 3 段 2 號	02-25945524
萬華區	漢中街派出所	臺北市漢中街 122 號	02-23312790
新北市
板橋區	沙崙派出所	新北市板橋區溪北路 111 號	02-26812741, 02-26867087
新莊區	新莊分局	新北市新莊區中正路 150 號	02-29924034, 02-29928918
基隆市
仁愛區	第一分局	基隆市仁愛區仁五路22號	02-24222741
桃園市
桃園區	武陵派出所	桃園市桃園區復興路135號	03-3364224
中壢區	青埔派出所	桃園市中壢區青埔路一段67號	03-4531356
新竹縣
橫山鄉	借問站 全家橫山致豐店	新竹縣橫山鄉大肚村 12 鄰中豐路二段 112-2 號	03-5931649
新埔鎮	新埔派出所	新竹縣新埔鎮中正路 475 號	03-5882034
新竹市
北區	借問站 新竹市十七公里海岸風景區旅遊服務中心	新竹市南寮街 261 號	03-5360350
東區	第二分局	新竹市光復路二段 798 號	03-5728750#1,03-5728748(勤務指揮中心 24H)
苗栗縣
苗栗市	苗栗分局	苗栗縣苗栗市勝利里金鳳街109號	037-320059
頭屋鄉	頭屋分駐所	苗栗縣頭屋鄉頭屋村中山街17號	037-253103
臺中市
大里區	成功派出所	臺中市大里區成功路 9 號	04-24950763
豐原區	翁子派出所	臺中市豐原區豐勢路二段 10 號	04-25226021, 04-25275594
彰化縣
花壇鄉	三家派出所	彰化縣花壇鄉三春村彰員路 109 號	04-7862454
芬園鄉	芬園分駐所	彰化縣芬園鄉彰南路四段 175 號	049-2522419
南投縣
南投市	中興派出所	南投縣南投市光華里光華路115號	049-2332544
南投市	永清派出所	南投縣南投市營南里南營路745號	049-2325314
雲林縣
林內鄉	林內分駐所	雲林縣林內鄉中山路1號	05-5892404
荊桐鄉	饒平派出所	雲林縣莿桐鄉饒平村饒平179號	05-5842034
嘉義縣
民雄郷	民雄分局	嘉義縣民雄郷東榮村民族路 21 號	05-2262014
朴子市	朴子分局	嘉義縣朴子市光復路 33 號	05-3793584
嘉義市
西區	北鎮派出所	嘉義市西區北港路 280 號	05-2322732
東區	興安派出所	嘉義市東區吳鳳南路 367 號	05-2224593
臺南市
柳營區	果毅派出所	臺南市柳營區神農里 296 號	06-6231514
安平區	借問站 DOGA 香酥脆椒	臺南市安平區安平路 556 號	06-2218995
高雄市
燕巢區	燕巢分駐所	高雄市燕巢區中民路585號	07-6161402
三民區	三民第一分局	高雄市三民區同盟一路367號	07-3118675
屏東縣
內埔鄉	借問站 7-11水門門市	屏東縣內埔鄉水門村忠孝路289號	08-7995113
竹田鄉	竹田分駐所	屏東縣竹田鄉竹田村中正路111號	08-7710734
宜蘭縣
蘇澳鎮	港邊派出所	宜蘭縣蘇澳鎮港邊里濱海路一段195號	03-9905608
三星鄉	大洲派出所	宜蘭縣三星鄉上將路2段468號	03-9573517
花蓮縣
豐濱鄉	借問站 芭崎賣店	花蓮縣豐濱鄉芭崎48號	0916-005943
富里鄉	借問站 富里鄉農會	花蓮縣富里鄉羅山村東湖9鄰6號	03-8821705
臺東縣
成功鎮	借問站 7-11 欣功門市	臺東縣成功鎮三民里大同路 70 號	089-854201
關山鎮	借問站 7-11 關山門市	臺東縣關山鎮和平路 4 號 4 之 1 號 1 樓	089-812792
');

COMMIT;
  
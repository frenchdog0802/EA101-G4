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
  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD,SF_PHOTO) 
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','蕭寶','x6815541@gmail.com','中壢平鎮中央路300號','0987654321','123456','123456',load_blob('mem2.jpg'));

  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD,SF_PHOTO) 
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','凱農','kanof456852@gmail.com','中壢平鎮中央路300號','0987654321','kano123456','kanof456852',load_blob('mem2.jpg'));
  
  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD,SF_PHOTO) 
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','ZongLin','ZongLin@gmail.com','中壢平鎮中央路300號','0987654321','tn1030842','tn456852',load_blob('mem2.jpg'));
  
  
 INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD,SF_PHOTO)
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','David','David@gmail.com','中壢平鎮中央路300號','0987654321','tn1030842','tn456852',load_blob('mem2.jpg'));
  
  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD,SF_PHOTO)
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','Tomhady','Tomhady@gmail.com','中壢平鎮中央路300號','0987654321','tom123456','tom456852',load_blob('mem2.jpg'));
  
  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD,SF_PHOTO)
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','湯姆貓','tom456852@gmail.com','中壢平鎮中央路300號','0987654321','tom123456789','tom456852',load_blob('mem2.jpg'));
  
  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD,SF_PHOTO)
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','Peter','Peter@gmail.com','中壢平鎮中央路300號','0987654321','peter123456','peter456852',load_blob('mem2.jpg'));
  
  INSERT INTO STAFF (SQ_STAFF_ID,SF_STATUS,SF_NAME,SF_EMAIL,SF_ADDRESS,SF_PHONE,SF_ACCOUNT,SF_PASSWORD,SF_PHOTO)
  VALUES(('STF'||'-'||RPAD(to_char(staff_seq.NEXTVAL), 6, '0')),'0','大衛海鮮','x6815541@gmail.com','中壢平鎮中央路300號','0987654321','david123456','david456852',load_blob('mem2.jpg'));
  
  
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
 22.678774, load_blob('r4_1.jpg'), '舊稱蓮花潭，位於高雄市左營區東側，南鄰龜山、北接半屏山，潭面面積約42公頃，源於高屏溪。蓮池潭周邊潭水因遍植荷花，在清領時期就名列鳳山八景，稱「泮水荷香」，現因湖畔半屏山特殊造型與龍虎塔遠近倒映水中，而以「蓮潭夕照」聞名。入夜後的蓮池潭，水霧濛濛，景色若隱若現，予人難以言喻的神秘感。潭上亭台樓閣林立，潭畔遍植垂柳，景緻秀麗。由南而北風景點分別有舊城、龍虎塔、五里亭、春秋閣、啟明堂、孔廟等，吸引各地遊客前往，假日更是絡繹不絕。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '原生植物園', 120.301206, 
 22.680714, load_blob('r4_2.jpg'), '位於左營區的原生植物園，是全國第一座以原生植物為主題的公園，佔地4.66公頃的園區以最接近大自然的生態工法建造而成，結合了高低起伏地型和舊曹公圳原有水渠，打造出猶如大自然生態縮影的風貌。流水淙淙的水生植物區、熱帶植物區、季風雨林、珊瑚礁區…讓人身歷其境、印象深刻。目前園區有45科60多種臺灣原生植物，每一株植物都附有詳細解說，就像活生生的植物圖書館。更有兒童遊憩區及生態解說中心，漫遊在綠意生態中，寓教於樂，是集休閒與教育功能的最佳去處。'); 
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '微笑公園', 120.309916, 
 22.672409, load_blob('r4_3.jpg'), '左營有一座會微笑的公園，便是為在博愛三路與至真路口的「微笑公園」，主要是因著它是一個長條帶狀如「S」型的公園，猶如笑臉，Smile的S而得名（姆，怎麼有點牽強），但不管它笑不笑，微笑公園最大的亮點是在每年5~7月，正式俗稱「黃金雨」的阿勃勒盛開的時節，春天則有成片的風鈴木，在微笑公園便可以看見怒放的黃花，當微風吹來，花葉片片落下，不管是阿勃勒或是風鈴木，乍看之下頗有下黃金雨的錯覺呢~');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '河堤社區', 120.316361, 
 22.665454, load_blob('r4_4.jpg'), '在明誠路濱愛河的兩岸，近年來此地成為了一個新興的住宅社區，放眼望去可以望見高樓圍在愛河的兩旁，高雄市政府當局也配合此地的發展開闢河堤公園、家庭汙水接管及周邊道路等措施，河堤公園成為北高雄最美麗的公園。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '愛河之心', 120.303027, 
 22.652576, load_blob('r4_5.jpg'), '結合水陸觀光、滯洪池與生態整治的「愛河之心」，耗資了一億七千萬打造，位於高雄市博愛一路和同盟一路的愛河中上游，愛河之心是由東湖與西湖構成，兩湖中間興建一座橋貫通，形狀好似一個心形。這裡的自行車道與美麗的湖岸景色，已經是高雄市人的優質休閒空間。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '光之塔', 120.293573, 
 22.651628, load_blob('r4_6.jpg'), '「光之塔」位於三民區同盟路與自立路口的三民一號公園內，是一座矗立在社區旁的台電高架鐵塔，為了提升社區的環境美感，讓鐵塔融入社區，於是以資源再利用的觀念將鐵塔建構為特殊的公共藝術，讓原本突兀的鐵塔有了新生命，更成為了三民區特殊的地標以及當地居民重要的休憩點。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '客家文物館', 120.294251, 
 22.650351, load_blob('r4_7.jpg'), '位於三民區二號公園內的高雄市客家文物館，面積廣達 8 百坪，是台灣最大的客家博物館。其設計參考大陸的客家建築，為紅瓦琉璃、三合院式建築。館內展示重點以客家文物為主，並不定期舉辦客家文化活動，以研究客家傳統風俗。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '中都窯廠', 120.29186, 
 22.641983, load_blob('r4_8.jpg'), '中都唐榮磚窯廠曾以生產高級耐火磚聞名，前身為創建於1899年的鮫島煉瓦工場。1985年，不敵時代與環保等因素要拆除的舊廠房，由於保留了二座高聳的煙囪、八卦窯、三座倒焰窯、實驗窯、隧道窯、日治時期磚造事務所等設備，無異是一座活生生的磚窯歷史博物館，不但見證了百年來工業經濟發展的軌跡，紅磚建築的結構、質地、磚飾也提供建築美學上的價值與範例，因此在2003年後陸續列為市定及國定古蹟，也是高雄第一座古蹟文化園區。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '高雄音樂館', 120.279185, 
 22.62729, load_blob('r4_9.jpg'), '坐落在高雄鹽埕區歷史博物館後方的高雄市立音樂館，成立於民國89年（西元2000年）11月，館內設施齊全，市內演奏廳及戶外演奏廣場各具特色，音樂館並有高雄市國樂團及高雄市交響樂團兩大樂團進駐。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110004', '真愛碼頭', 120.283133, 
 22.61905, load_blob('r4_10.jpg'), '真愛碼頭(12號碼頭)位於愛河的出海口處，碼頭有兩座雪白風帆分別對著高雄市區及旗津渡輪碼頭，象徵高雄市與海港對話，為了融入節約能源的概念，兩座風帆皆有太陽能發電板及發電量顯示器的裝置，除了兩座獨具特色的雪白風帆之外，真愛碼頭另設置真愛咖啡、觀景休憩高架木棧平台以及周遭的植栽綠化景觀。');  

INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '觀海公園', 121.464146, 
 25.123575, load_blob('r5_1.jpg'), '觀海公園占地遼闊，園內設施包含網球場、籃球場、兒童遊具、自行車道等設施，公園南側緊鄰淡水河邊關渡碼頭，可眺望關渡大橋。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '關渡大橋', 121.457204, 
 25.125654, load_blob('r5_2.jpg'), '「關渡大橋」是銜接新北市八里區與臺北市北投區關渡的重要交通樞紐，鮮紅色的外觀，讓關渡大橋成為當地的一大地標，設有觀景步道，可在橋上細賞淡水河岸風情。橋上的夜間景觀照明，讓淡水、八里沿岸的美景可以在夜色中呈現，有如淡水河面閃爍的星光。自行車道與汽車道分開，單車遊客可以悠閒的在這裡欣賞風景。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '竹圍碼頭', 121.456624, 
 25.136954, load_blob('r5_3.jpg'), '從竹圍捷運站出來後，步行五分鐘左右就可看到新北市金色水岸自行車道往淡水老街方向一定會經過的竹圍碼頭站，之前可以在搭乘渡輪前往龍形碼頭，也有金龍餐廳提供的接送渡輪，但目前暫停營運。竹圍碼頭附近還有不少可供車友休憩喝水的地方，涼亭座位、樹蔭底下或是河岸階梯，都是休憩好選擇！自行車騎累了，可以在此享受靜謐時光，觀賞淡水河的靜態之美，獲得充分休息後繼續上路喔！');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '紅樹林自然保留區', 121.454941, 
 25.156343, load_blob('r5_4.jpg'), '從竹圍到竿蓁，面積廣達76公頃的水筆仔純林，為水筆仔分布最北界全世界面積最大的一塊。紅樹科植物因其樹皮和木材呈紅色而得名，主要生長在熱帶和亞熱帶的河口和海濱，本區的紅樹林全屬水筆仔，為一種胎生的常綠喬木，所謂水筆仔，便是因其胎生苗形似筆桿而得名。出捷運紅樹林站後，沿外竿蓁林的50號巷子進入，即可來到紅樹林沼澤區，園區內有招潮蟹、彈塗魚等活躍其間，每年9月中旬至次年3月中旬，還有鷺鷥類、鷸類等水鳥，可說是豐富而便利的自然生態教室。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '淡水老街', 121.445023, 
 25.168947, load_blob('r5_5.jpg'), '「淡水老街」不僅早已是全台知名熱門景點，同時也吸引不少外國人慕名而來。這裡街道兩旁林立熱鬧商店，有濃濃古早味的餅舖、雜貨店，也有賣潮流服飾、玩具，當然還有最吸引人的人氣美食如阿給、魚丸，另外還有古蹟可參觀，怎麼玩都不會膩。淡水老街分成外側靠淡水河岸的部分(金色水岸步道)與內側的老街，四處可見此區著名的古早味現烤蛋糕、烤魷魚、阿婆鐵蛋、魚酥、巨無霸冰淇淋還有淡水魚丸等等，都是來到此地必吃不可的美食。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '漁人碼頭', 121.412545, 
 25.184054, load_blob('r5_6.jpg'), '淡水漁人碼頭位於新北市淡水區淡水河出海口右岸，舊名淡水第二漁港，完成於民國76年，近年在行政院農委會漁業署與新北市政府的聯合推動下，將漁港功能多元化，讓漁人碼頭搖身一變，成為一個兼具遊憩功能的港區公園。漁人碼頭為一浮動碼頭，有別於傳統結構的固定碼頭，可隨海水漲退潮而上下浮動，可同時容納150艘漁船停泊，相當壯觀。沿防波堤架高舖設的原木棧道，長約320公尺，是眺望海景與落日的絶佳場地。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110005', '淡海新市鎮', 121.43323, 
 25.199476, load_blob('r5_7.jpg'), '淡海新市鎮兼具山河海景觀，兼以淡水區原本濃厚的慢活、人文居住特質，其介於繁榮市區與低人口密度的三芝、石門、金山等，復能帶給住民平日工作、閒暇遊憩的均衡生活方式，由於這些難得特色，目前除了當地人移居需求外，淡海新市鎮已成為所謂的台北客(房地產界用以泛指平日以台北市區為生活、工作區域的中產階級居民)作為假日或近退休閑居階段的住宅選擇之一。');
 
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '向山眺望平台', 120.901798, 
 23.852882, load_blob('r6_1.jpg'), '為一座10米高，以邵族「杵」的意象為設計概念的懸臂式觀景平台，鋼材打造的特殊構造可承載數十人，演繹出工程的結構美學。懸臂由岸邊漸漸傾斜伸向日月潭，除了提供更佳的視野，也營造一種俯衝入潭的錯覺。平台表面採用簍空的格柵，讓遊客體驗步行在樹梢及日月潭水面上的刺激感，並可盡情眺望拉魯島、涵碧半島及水社壩的美麗風光。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '向山落羽松', 120.902147, 
 23.853478, load_blob('r6_2.jpg'), '向山遊客中心是秋日賞落羽松的熱門景點之一，近日湖畔旁的兩排落羽松轉色中，微風徐徐吹拂，吹起湖上波紋，枝葉隨風擺動，金黃落羽松與湖光山色相互輝映，景色詩情畫意，一旁的愛心花圃小花們也盛放著，很適合戀人拍美照，套個濾鏡美上加美。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '永結同心橋', 120.902071, 
 23.854627, load_blob('r6_3.jpg'), '永結、同心橋鄰近向山遊客中心，為水社至向山的自行車道行經景點。永結橋長約54公尺，設計上主要考量到自行車騎乘的流暢性，順應著湖面勾引流暢的弧形橋面穿越山溝；同心橋設計構想起於日月潭邵族四手網之造型，另因同心橋特別搭配白色系橋樑主體來呼應婚紗色調，搭配鄰近婚紗廣場的同心橋，成為新人拍攝婚紗的熱門景點之一。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '向山觀景臺', 120.902842, 
 23.854693, load_blob('r6_4.jpg'), '到日月潭想一次就將拉魯島、慈恩塔與水社壩盡收眼底，那麼即將在下個月在向山遊客中心啟用的「向山自行車道觀景台」就能完成所有遊客的心願，不但近可欣賞日月潭動人景緻，觀景台特殊的設計還能上下搖動，增加賞景樂趣。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '水社壩', 120.901826, 
 23.862151, load_blob('r6_5.jpg'), '日月潭水社壩堰堤公園是日月潭唯一的出口，是為疏通日月潭與明潭之間的水量所建。水社壩或許不是日月潭為人所熟知的景點名稱，但是青山綠水的景緻總是吸引大批遊客駐足欣賞，沿著岸邊的木造步道漫步，潭水波光粼粼，雲霧間隱約露臉的層層山嵐，晚間滿天星斗倒映在湖面上，如畫般的景致令人心曠神怡，成為許多攝影師捕捉美景的首選地點。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '日月潭調整池-餘水吐', 120.904196, 
 23.862642, load_blob('r6_6.jpg'), '用來排放日月潭多餘的水至水里溪，日月潭附近居民稱之為「天井」。溢水吐形狀成圓狀塔形，類似漏斗一樣只要潭水超過滿水位，就會自動流到溢水吐內排放!!');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110006', '湖畔自行車道', 120.923215, 
 23.872445, load_blob('r6_7.jpg'), '短暫休憩後再出發，時而下坡再上坡，迎風吹拂。途經日月潭纜車站，抬頭仰望天空除了可見纜車來回穿梭外，冬天時節這裡盛開粉色櫻花很是漂亮；中午時，可選擇於伊達邵商圈覓食，品嘗最道地的邵族美食，也可在此將補給品補齊後，再次上路出發! 來到慈恩塔與玄奘寺時，因位於高處可在此眺望並俯瞰日月潭美麗的潭景。經玄光寺停車場大彎坡後，一路下坡至頭社，此路段請留意並注意騎乘安全。最後自頭社返回向山遊客中心路線，坡度十分陡峭，為屬高強度。');

INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110007', '東石自然教育生態展示館', 120.160791, 
 23.508978, load_blob('r7_1.jpg'), '展示館內除設有旅客服務中心、視聽中心、自行車租賃中心、藝術走廊、農漁產業展示館及貝殼DIY創意館外，二樓更有史料及農村、漁村器物展覽、溼地生態導覽介，陳列展示了東石鄉早期農、漁、鹽及養殖業等等的生產工具，以及人文歷史、自然生態照片、知名藝術家之畫作墨寶等資料，可以讓訪客起懷舊之緒念、發思古之幽情，是進行一趟知性、感性兼備的文化之旅的好所在。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110007', '北堤濕地', 120.13011, 
 23.519444, load_blob('r7_2.jpg'), '鰲鼓濕地森林園區位於嘉義縣東石鄉，與東石漁港對望，整體範圍約1,600公頃，由台糖東石農場與鰲鼓農場(合計1,300公頃)，以及部分私有地組成。過去政府為發展農業，築起約10公里的堤防，著手開發鰲鼓海埔新生地；50年代後，轉交予台糖公司負責經營，並將該地作為甘蔗、稻米、及畜牧生產等農業使用。隨著台灣產業結構的演變，蔗田面積逐漸減少，最終因地層下陷導致海水倒灌、土壤鹽化，沿海土壤逐漸濕地化，反而成為台灣西南沿海候鳥遷移及水鳥棲息的重要地點。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110007', '南堤濕地', 120.134706,
 23.489531, load_blob('r7_3.jpg'), '鰲鼓濕地森林園區位於嘉義縣東石鄉，與東石漁港對望，整體範圍約1,600公頃，由台糖東石農場與鰲鼓農場(合計1,300公頃)，以及部分私有地組成。過去政府為發展農業，築起約10公里的堤防，著手開發鰲鼓海埔新生地；50年代後，轉交予台糖公司負責經營，並將該地作為甘蔗、稻米、及畜牧生產等農業使用。隨著台灣產業結構的演變，蔗田面積逐漸減少，最終因地層下陷導致海水倒灌、土壤鹽化，沿海土壤逐漸濕地化，反而成為台灣西南沿海候鳥遷移及水鳥棲息的重要地點。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110007', '笨港口港口宮', 120.185833, 
 23.495576, load_blob('r7_4.jpg'), '笨港口港口宮奉祀天上聖母，其地址在嘉義縣東石鄉港口村8鄰蚶子寮5號，是由先民林楷自中國湄洲奉請媽祖渡海來臺，在笨港口登陸後至蚶仔寮一株柳樹下休息，要啟程時裝在竹籠的媽祖卻擔提不起，經聖諭指示要在此地施化救世（相傳此地為「鯉魚吉穴」），於清康熙廿三年(1684年)，招集六莊村十一角頭建草廟，初期取名為「笨港天后行宮」(笨港口天后宮)。在清同治十年（1871年）廣東縣丞五品銜謝龍光渡台赴任敬獻「保障天南」一匾同時，易宮名為「港口宮」。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110007', '東石自然教育生態展示館', 120.160791, 
 23.508978, load_blob('r7_1.jpg'), '展示館內除設有旅客服務中心、視聽中心、自行車租賃中心、藝術走廊、農漁產業展示館及貝殼DIY創意館外，二樓更有史料及農村、漁村器物展覽、溼地生態導覽介，陳列展示了東石鄉早期農、漁、鹽及養殖業等等的生產工具，以及人文歷史、自然生態照片、知名藝術家之畫作墨寶等資料，可以讓訪客起懷舊之緒念、發思古之幽情，是進行一趟知性、感性兼備的文化之旅的好所在。');
 
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安平老街', 120.161783, 
 23.000736, load_blob('r8_1.jpg'), '有著台灣第一街稱號的安平老街，是300多年前荷蘭人在安平建立的第一條街道，早期街道的設計都僅供人與推車通行，因此街廓並不是很寬。許多遊客來到安平也都必然進到這條古老的街道，擁擠熱鬧的人潮是安平老街的常態，似乎不這樣也不像安平老街，街上各式老店林立，不管是國內外遊客總在老街上穿梭尋寶，偶而抬頭看看街道上的老屋還能發現幾尊安座在屋頂的風獅爺，或是在門楣上的劍獅，也是走逛安平老街的樂趣。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安平古堡', 120.160621, 
 23.001498, load_blob('r8_2.jpg'), '17世紀初荷蘭人以軍商結合的隊伍，於1624年占領今日安平，並建熱蘭遮城為其防禦要塞，全部工程完成於1634年。1662年鄭成功取荷蘭城後，改稱安平鎮，改內城為內府，臺人因此稱其為王城。清領時代，因台江陸浮失卻其重要性，加上清兵破壞熱蘭遮城建億載金城，故日漸荒廢。日治後重建，二戰後乃稱「安平古堡」。目前真正的荷蘭時期遺跡僅存古堡前方外城南城垣的磚牆。老榕盤根，無限滄桑，見證著盡400年來的台江的歷史。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安平樹屋', 120.159809, 
 23.003864, load_blob('r8_3.jpg'), '樹屋位於德記洋行後面，原是德記洋行的倉庫，大約建於十九世紀末及日治初期，此處曾做為「大日本鹽業株式會社」出張所倉庫，現況規模即為日本人增建。經百餘年歲月滄桑後，倉庫牆面滿佈榕樹盤據的氣根，高聳的榕樹茂密的樹冠彷彿成為倉庫的屋頂，也讓安平樹屋擁有難得一見的外觀及神秘氣息，形成特有的屋樹共生奇景，類似吳哥窟大樹盤纏著「塔普倫寺」。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安平小砲台', 120.158527, 
 22.999501, load_blob('r8_4.jpg'), '安平小砲台位於台南市安平區、昔日台灣城殘蹟西側，砲台護城石堤呈狹長狀南北延伸；安平小砲台包括砲台主體及北面的護城石堤：安平砲台主體位在水池公園旁，為花崗石、卵石砌成，南北西面有有六個磚造雉堞，現在所見的砲已非原物；北面的石堤以咾咕石、三合土填築而成，留有射口且設有柵門擋水，現為國家第三級古蹟，是目前保存最完整的清代早期「中國式」砲台，有別於億載金城的西式近代砲台。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安億橋', 120.163569, 
 22.998052, load_blob('r8_5.jpg'), '位於台南安平的安億橋橫跨著運河的兩端，連接著新舊安平的交通，橋邊沿途景觀幽美，逛完安平老街，沿著平生路往運河邊走，欣賞美麗的水景風光，舒服的享受一場安平漫步之旅吧。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安平運河沿岸自行車道', 120.175755, 
 22.997423, load_blob('r8_6.jpg'), '『安平運河沿岸自行車道』位於台南市的安平區，單車道路線從"望月橋"開始，沿著"安平運河"一路欣賞河岸風光前進，至"安億橋"後單車道路線一分為二，往右走可探尋古蹟美食、往左走則能飽覽自然風光。台南市安平區一帶，可說是集結各級古蹟、自然生態、特產小吃、歷史人文等多元豐富內涵觀光勝地，想要一次玩遍安平，最好的方式就是利用騎腳踏車，即健康環保又能滿載而歸。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110008', '安平旅遊資訊中心', 120.16136, 
 23.000361, load_blob('r8_7.jpg'), '旅遊服務中心所在位置分別提供有「旅遊景點資訊」、「交通食宿資訊」、「解說導覽資訊」、「遊程諮詢」、「文宣、地圖索取」、「旅遊圖書查閱」、「放大鏡、老花眼鏡出借」、「行動電話緊急充電」等服務，並提供租任腳踏車服務。');

INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '新竹南寮舊漁港', 120.929017, 
 24.849829, load_blob('r9_1.jpg'), '新竹近海魚業產量豐富，四季皆有不同魚群，更成為釣魚發燒友的天堂，週末假日處處可見成堆的釣友在此釣魚。自民國93年起，市府大力開發沿海十七公里觀光帶，不段的增加休閒設施，提供市民優質的休憩場所，變更港區範圍釋出商業用地等等，前途發展極度被看好。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '看海公園', 120.918513, 
 24.83631, load_blob('r9_2.jpg'), '看海公園名列新竹海八景之一，位於環保教育館北側，與海天一線看海區一樣，原是垃圾填起之高地，後期經過市府的重置整理，今日己成為民眾最優質的看海休憩場所，看海公園的西側，豎立著鯉魚旗，這也為當地新增設的地標，自新竹漁港遠眺，就會看到隨風飄逸的鯉魚旗，正熱情的向您打招呼，等您親臨這愜意的休憩區。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '海天一線看海區', 120.915106, 
 24.832617, load_blob('r9_3.jpg'), '海天一線看海區擁有良好之眺望海景條件，此地高出海平面約20公尺，除了可以看到貝聿銘建築師以傳統產業玻璃的特色，設計的環保局辦公大樓外牆，每日傍晚時分，您會看到大批的遊客躺在草坪上，靜觀大海，流連忘返。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '港南運河公園', 120.909979, 
 24.823433, load_blob('r9_4.jpg'), '港南濱海運河公園 是新竹熱門親子景點之一，適合當作是17公里海岸線上的中繼站。港南濱海運河公園設有大型攀爬遊具、極限飛輪、平衡木、彈性床等遊具，還有很夯的Pushbike滑步車賽道，運河公園旁有涼亭供家長休息遮陽，傍晚時分還能走道堤防欣賞夕陽日落美景。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '紅樹林公園', 120.917763, 
 24.807929, load_blob('r9_5.jpg'), '新竹香山的紅樹林生態公園，位在新竹17公里海岸線自行車道旁，有洗手間、看海區，適合中途停留補水休息，走過彩虹橋就可以到水資源環保公園，距離很近。 紅樹林生態公園整體不是很大，園區內有許多種類植物，還有多款果實可以採集，相當適合植物教學、生態教學。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '海山漁港觀海平台', 120.903313, 
 24.764636, load_blob('r9_6.jpg'), '海山漁港將會以觀光休閒漁業做為發展的方向與目標，期盼未來能成為海濱休閒旅遊的重要據點。站在約有一層樓高的觀海平台可觀看到香山濕地的全貌，還可觀察溼地蚵寮與海濱風光，有別於新竹漁港的人聲鼎沸，海山漁港帶來的是一種完全不同的靜謐風情。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110009', '南港賞鳥區', 120.89483, 
 24.742531, load_blob('r9_7.jpg'), '南港賞鳥區是一處小而美的生態區，一年四季都有不同候鳥進駐，寧靜的湖面經常可見小水鴨悠游其中。堤防內側的數個水塘，是由廢棄漁塭自然形成，已成為野鳥覓食後休憩的場所，因此也成為賞鳥的好去處。在新竹鳥會的調查紀錄資料中，這裡除了有大量的鷺科、燕科、文鳥科等鳥種出沒之外，秋冬交接時，還有數量可觀的雁鴨科鳥種，包括小水鴨、尖尾鴨、綠頭鴨等，而魚鷹、澤鵟、遊隼、紅隼等猛禽也偶而可見。');
 
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110010', '捷運新店站', 121.538131, 
 24.958196, load_blob('r10_1.jpg'), '車站位於北宜路西側，與北新路的銜接處南側；車站代碼為G01。站名取自現有地名及台汽新店站名「新店」，該地臨近著名的碧潭風景區。另外為了與鄰近之新店區公所站作區別，當地民眾經常根據台汽客運站時代的舊名以「新店總站」稱呼之。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110010', '碧潭風景區', 121.536497, 
 24.955988, load_blob('r10_2.jpg'), '碧潭為臺灣昔日八大景之一，風景秀麗，位於捷運新店總站附近，交通甚為便利，為臺北都會區民眾假日旅遊休憩的好去處。新店溪流經碧潭出現曲流、岩壁及丘陵，碧潭因河岸寬廣，水色澄碧、平靜如潭而得其名，適宜划船、游泳、釣魚等活動，景致十分宜人。早年前考試院長孫科曾在潭西岸的懸崖巨石上題有「碧潭」二字，巨石頂上民間居民蓋有亭台，名為碧亭，將潭西山壁點綴地秀麗不凡。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110010', '新店溪陽光橋', 121.521627, 
 24.978435, load_blob('r10_3.jpg'), '「陽光橋」是新北市第一座，以人為本，兼具造型、夜間光雕的人行、自行車行跨河景觀橋，其於100年11月19日正式揭綵啟用通車。「陽光橋」打破全台跨距最大的鋼構橋梁紀錄，河中不落橋墩，跨距長達245公尺，全長315公尺，為單拱肋斜鋼拱吊索橋，以琴弦般之鋼索及五個拱圈支撐橋面，突顯陽光橋的婉約。並榮獲第13屆國家建築金質獎。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110010', '陽光運動公園', 121.520332, 
 24.976989, load_blob('r10_4.jpg'), '位於碧潭左岸的「陽光運動公園」占地約20公頃，是一處很受親子家庭喜愛的河濱運動公園。園區內主要運動設施有自行車道、沙灘排球場、直排輪競速場、四百公尺跑道、越野自行車競技場和兒童遊戲區等。此地是都會區中難得可讓親子悠閒共遊、一起騎自行車的好去處，夏日來玩請定時補充防曬與水分。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110010', '綠寶石河濱公園', 121.50496, 
 25.015255, load_blob('r10_5.jpg'), '雙和區為全台人口密度最高的地方，而綠寶石運動河濱公園寓意是在人口稠密的都市中，廣闊綠地如同寶石一樣珍貴。永和綠寶石河濱公園占地遼闊，包含停車場、寵物公園、籃球場、溜冰場、網球場、排球場、羽球場、足球場、腳踏車越野練習場、棒球場、行人徒步區、休閒廣場、觀光苗圃區、槌球場、景觀步道與低水護岸。身在喧囂卻想獲得片刻舒緩的時候，來趟綠寶石運動河濱公園吧！讓心靈重新洗滌一遍，恢復成璀璨耀眼的寶石光芒。');
INSERT into ROUTE_PLAN_DETAIL(SQ_SERIAL_NUMBER,	SQ_ROUTE_ID, STEP_NAME, STEP_LONGITUDE,
STEP_LATITUDE , STEP_IMAGE, STEP_INTRODUCTION) 
 values ('RD'||LPAD(to_char(route_plan_detail_sequence.NEXTVAL), 6, '0'), 'RP110010', '江子翠河口景觀河濱公園', 121.469904, 
 25.036628, load_blob('r10_6.jpg'), '「江子翠河口景觀河濱公園」位於新店溪與大漢溪的交界處，從華江橋至板橋鐵路這一段共佔地70公頃的大漢溪畔旁，廣大的綠地是週末親子共遊的絕佳地點。公園內設置有多種設施，不僅有腳踏車道、籃球場、排球場、棒(壘)球場等等設施，絕對是您週末踩自行車追風，或運動汗水淋漓的絕佳所在！');

--------------------------------------------------------
--  for Table WATER_STATION
--------------------------------------------------------

<<<<<<< HEAD
DROP TABLE TIPS;
DROP TABLE QUESTION;
DROP TABLE bike_rent_detail;
DROP TABLE bike;
DROP TABLE bike_rent_master;
DROP TABLE bike_store;
DROP TABLE bike_type;
DROP TABLE MEMBER_STORE_PRODUCT;
DROP TABLE SHOP_REPORT;
DROP TABLE PRODUCT_COLLECTION;
DROP TABLE SHOP_MESSAGE;
DROP TABLE SHOP_ORDER_DETAIL;
DROP TABLE SHOP_ORDER;
DROP TABLE SHOP_PRODUCT_STOCK;
DROP TABLE SHOP_PRODUCT;
DROP TABLE BRAND;
DROP TABLE STORE_ADDRESS;
DROP TABLE MEMBER_STORE_ACTIVITY;
DROP TABLE ACTIVITYREPORT;
DROP TABLE ACT_FAVORITE;
DROP TABLE JOINED_ACT_DETAIL;
DROP TABLE ACTIVITY;
DROP TABLE ROUTE_PLAN_DETAIL;
DROP TABLE ROUTE_PLAN;
DROP TABLE WATER_STATION;
DROP TABLE FORUM_MESSAGE_REPORT;
DROP TABLE FORUM_MESSAGE;
DROP TABLE FORUM_THEME_REPORT;
DROP TABLE FORUM;
DROP TABLE STAFF;
DROP TABLE AUTHORITY;
DROP TABLE FUNCTION;
DROP TABLE MEMBER;
=======

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
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11上弘店', '台北市松山區敦化北路168號B2','121.548287','25.05639',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中崙店', '台北市松山區八德路3段27號','121.552737','25.048396',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北體店', '台北市松山區北寧路66號','121.55285','25.050888',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台場店', '台北市松山區八德路三段20-2號','121.551158','25.048086',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11巨蛋站店', '台北市松山區南京東路四段10之1號 B1F','121.550836','25.051489',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11市大店', '台北市松山區市民大道路四段105號','121.548085','25.045127',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民北店', '台北市松山區民生東路3段127巷6號','121.54741','25.058518',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民有店', '台北市松山區民權東路3段108號','121.544998','25.061936',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民復店', '台北市松山區民生東路四段130號','121.555146','25.058106',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吉仁店', '台北市松山區延吉街28號','121.553523','25.046301',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吉盛店', '台北市松山區南京東路5段66巷3弄1號1樓','121.560964','25.050941',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11京育店', '台北市松山區南京東路四段56-1號','121.553752','25.051459',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11京復店', '台北市松山區光復北路11巷44號','121.559468','25.049671',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11京發店', '台北市松山區南京東路五段139之4及139之8號','121.561618','25.051768',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11延新店', '台北市松山區延壽街99號1樓','121.566252','25.057296',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11延壽店', '台北市松山區延壽街422號','121.556423','25.056236',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11征東店', '台北市松山區新東街15巷1號','121.565903','25.058555',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11征唐店', '台北市松山區新東街41-7號','121.565542','25.060341',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明塑店', '台北市松山區民生東路4段54號之2一樓','121.550862','25.057384',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東光店', '台北市松山區南京東路5段15號1樓','121.55792','25.051891',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東吉店', '台北市松山區民生東路五段100號','121.560308','25.058524',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東復店', '台北市松山區復興北路313巷25號','121.546337','25.059074',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東勢店', '台北市松山區南京東路4段131號','121.555025','25.051768',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東榮店', '台北市松山區民生東路5段65號','121.558171','25.058645',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東鑫店', '台北市松山區民生東路4段55巷10號','121.550472','25.058359',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松民店', '台北市松山區三民路10號','121.56388','25.052392',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松禾店', '台北市松山區塔悠路31號33號','121.571303','25.050878',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松航店', '台北市松山區敦化北路340-9號','121.551514','25.063718',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松饒店', '台北市松山區慈祐里八德路4段767號769號','121.578011','25.051083',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松鑽店', '台北市松山區八德路四段686號','121.576641','25.049883',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長塑店', '台北市松山區敦化北路199巷2弄9號1樓','121.550051','25.055525',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11南京店', '台北市松山區南京東路3段303巷5號','121.546691','25.052477',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11威京店', '台北市松山區八德路四段151號','121.562569','25.04878',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11風復店', '台北市松山區復興南路1段43號','121.544062','25.045677',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11首都店', '台北市松山區南京東路4段51號之2','121.55106','25.051809',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11庫德店', '台北市松山區八德路2段366巷7號1樓','121.546062','25.047815',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11健一店', '台北市松山區健康路11號','121.552453','25.053224',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11婦聯店', '台北市松山區健康路224號','121.56108','25.053926',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11清愿店', '台北市松山區八德路2段439號','121.546946','25.048327',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統威店', '台北市松山區東興路13之1號','121.565443','25.050065',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11通盈店', '台北市松山區南京東路五段315號','121.566819','25.05165',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復旦店', '台北市松山區敦化南路1段5號','121.549139','25.047157',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復安店', '台北市松山區復興北路231巷6號','121.544852','25.056989',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復春店', '台北市松山區復興北路179號','121.544337','25.054422',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敦化店', '台北市松山區民權東路三段160巷9號1樓','121.547919','25.061025',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敦北店', '台北市松山區敦化北路149號1樓','121.549585','25.054074',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11朝福店', '台北市松山區三民路115號','121.563263','25.058078',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11塔優店', '台北市松山區撫遠街197號199號','121.568049','25.059856',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新育商店', '台北市松山區寧安街3巷11號1樓','121.554982','25.049098',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新復勢店', '台北市松山區八德路三段200號202號1樓','121.556434','25.047914',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新寶清店', '台北市松山區南京東路五段334號336號1樓','121.568688','25.051089',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新饒河店', '台北市松山區八德路四段697號1樓','121.576534','25.050408',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福源店', '台北市松山區新東街60巷16號18號1樓','121.566068','25.06211',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11影城店', '台北市松山區八德路四段245巷35號','121.564343','25.050443',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11慶民店', '台北市松山區民生東路3段130巷5弄14號1樓','121.54678','25.056996',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樂得店', '台北市松山區復興北路35號','121.544193','25.050146',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11錢京店', '台北市松山區敦化北路100號1樓','121.548322','25.052738',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聰明店', '台北市松山區寶清街34號1樓','121.567732','25.052698',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11寶德店', '台北市松山區八德路四段321號','121.567088','25.049364',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫壽店', '台北市松山區延壽街323號','121.560524','25.056714',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三興店', '台北市信義區吳興街156巷2弄2號4號1樓','121.561392','25.029185',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中興店', '台北市信義區基隆路2段22號','121.558791','25.031971',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仁和店', '台北市信義區正和里光復南路419巷41號','121.558423','25.036561',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北府店', '台北市信義區松仁路160號','121.568193','25.028457',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北醫店', '台北市信義區吳興街252號','121.563533','25.027177',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北醫大店', '台北市信義區吳興街250號1樓','121.562224','25.026986',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台金店', '台北市信義區市府路45號B1之53','121.564101','25.033579',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11市捷店', '台北市信義區忠孝東路五段6號1樓','121.565136','25.040914',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11必成店', '台北市信義區基隆路1段178號180號1樓','121.564947','25.042566',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永信店', '台北市信義區永吉路30巷103號','121.568836','25.043534',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11光東店', '台北市信義區忠孝東路五段524巷1弄1號','121.579504','25.041152',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11光復店', '台北市信義區光復南路471號','121.557644','25.033679',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吳興店', '台北市信義區吳興街284巷18弄2號','121.563441','25.024536',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏泰店', '台北市信義區松仁路91-1號1樓','121.568655','25.036845',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11忠林店', '台北市信義區忠孝東路五段470號1樓','121.576763','25.040874',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昌隆店', '台北市信義區基隆路二段131-4號','121.55673','25.028011',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東暉店', '台北市信義區忠孝東路4段514號','121.562485','25.040821',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松山店', '台北市信義區忠孝東路5段386號','121.574124','25.040764',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松仁店', '台北市信義區松仁路213號','121.568407','25.026747',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松信店', '台北市信義區文藝里永吉路180巷67弄5號','121.571899','25.043568',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松家店', '台北市信義區松山路608號610號','121.578498','25.035809',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松泰店', '台北市信義區松山路11號1樓','121.578121','25.04841',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松高店', '台北市信義區基隆路1段141號1樓','121.565843','25.043212',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松捷店', '台北市信義區忠孝東路五段1之6號','121.565135','25.041321',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松智店', '台北市信義區莊敬路325巷43號','121.564814','25.029133',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松義店', '台北市信義區松德路271號','121.574648','25.032912',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松錢店', '台北市信義區松隆路192號194號1樓','121.572378','25.046844',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11信吉店', '台北市信義區永吉路278巷58弄2號','121.57405','25.043477',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11信林店', '台北市信義區虎林街222巷7號9號1樓','121.577097','25.037269',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11信運店', '台北市信義區松勤街100號1樓','121.566679','25.031868',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11信嘉店', '台北市信義區嘉興街181巷21號','121.557473','25.026175',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11信德店', '台北市信義區松德路200巷10號','121.573592','25.034775',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11信醫店', '台北市信義區吳興街346號348號','121.566349','25.025814',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11革新店', '台北市信義區永吉路32號','121.568897','25.045624',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11留公店', '台北市信義區福德街249號','121.585974','25.038778',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國貿店', '台北市信義區基隆路一段333號B3','121.560995','25.034597',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11崇德店', '台北市信義區崇德街104號106號1樓','121.555603','25.024081',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11捷忠店', '台北市信義區忠孝東路5段617號','121.579105','25.04161',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統誠店', '台北市信義區松高路11號B2樓','121.565831','25.039373',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11凱悅店', '台北市信義區基隆路一段398號1樓','121.560031','25.034285',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11喬治店', '台北市信義區基隆路二段155號1樓','121.554413','25.025802',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11惠安店', '台北市信義區惠安里吳興街520號','121.56893','25.022205',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敦厚店', '台北市信義區永吉路30巷168弄1號1樓','121.568675','25.04208',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萊福店', '台北市信義區林口街48號','121.579442','25.038253',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11開源店', '台北市信義區松山路136號138號','121.577578','25.04727',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新三連店', '台北市信義區逸仙路42巷25號1樓','121.563129','25.040552',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新工農店', '台北市信義區忠孝東路5段236巷6-3號8號1樓','121.571738','25.040158',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新光店', '台北市信義區松高路12號B1樓','121.566793','25.038664',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新東宮店', '台北市信義區松山路455號','121.578039','25.039884',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11道生店', '台北市信義區新仁里東興路57號','121.566457','25.047321',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11嘉馥店', '台北市信義區信義路6段11號','121.575201','25.034161',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福中店', '台北市信義區福德街159號161號1樓','121.583328','25.037658',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德鄰店', '台北市信義區松德路127號129號1樓','121.575297','25.03752',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興貿店', '台北市信義區景新里莊敬路178巷2號','121.561036','25.031145',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11總站店', '台北市信義區吳興街486號488號1樓','121.569502','25.023487',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11總部店', '台北市信義區東興路67號1樓','121.566697','25.047029',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聯合店', '台北市信義區忠孝東路四段559巷6號','121.563667','25.041836',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11醫學店', '台北市信義區吳興街257號259號','121.563816','25.027156',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11麟運店', '台北市信義區和平東路3段461號1樓','121.558895','25.018771',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫吉店', '台北市信義區虎林街85號','121.577138','25.04479',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大台店', '台北市大安區羅斯福路3段283巷14弄16號1樓','121.532614','25.017959',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大安店', '台北市大安區大安路1段77號B1樓(東區地下街)','121.546223','25.041946',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大信店', '台北市大安區信義路三段33號','121.534563','25.033718',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大敦店', '台北市大安區敦化南路二段63巷7號1樓','121.549556','25.031191',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中廣店', '台北市大安區仁愛路三段25-1號27號','121.534331','25.038516',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仁安店', '台北市大安區仁愛路四段27巷1號','121.545243','25.038646',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仕吉店', '台北市大安區忠孝東路4段223巷42號','121.553109','25.043523',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北科大店', '台北市大安區忠孝東路3段1號(台北科技大學大川堂)','121.533931','25.04241',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台科三店', '台北市大安區基隆路四段43號第三餐廳','121.54038','25.012497',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永康店', '台北市大安區永康街43號','121.529595','25.030427',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11禾光店', '台北市大安區和平東路2段63號1樓','121.538616','25.02565',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11立仁店', '台北市大安區安和路二段74巷1號','121.551574','25.030018',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吉忠店', '台北市大安區延吉街72號','121.554192','25.042522',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11合旺店', '台北市大安區復興南路2段151巷41號','121.545411','25.028362',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11合維店', '台北市大安區四維路170巷8號1樓','121.547625','25.028195',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11安居店', '台北市大安區安居街33號','121.554426','25.020451',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11安信店', '台北市大安區信義路四段74號1樓','121.54642','25.033132',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11佑安店', '台北市大安區忠孝東路三段217巷1弄2號','121.539647','25.042414',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11技安店', '台北市大安區和平東路3段97號','121.550839','25.024519',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11辛亥店', '台北市大安區辛亥路2段57號','121.537167','25.023057',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和安店', '台北市大安區和平東路三段230號','121.554624','25.02222',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和金店', '台北市大安區和平東路1段91號','121.525706','25.026918',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和泰店', '台北市大安區和平東路一段169號','121.531704','25.026457',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11延吉店', '台北市大安區延吉街237號','121.555705','25.036636',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昇隆店', '台北市大安區敦化南路2段238號','121.548273','25.021004',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11欣安和店', '台北市大安區安和路一段47號','121.551057','25.038687',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11欣隆昌店', '台北市大安區基隆路2段142之1號及142之2號','121.556496','25.028386',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11芙蓉店', '台北市大安區仁愛路三段74號1樓','121.538598','25.038097',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11花市店', '台北市大安區建國南路一段274號','121.537272','25.036371',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金信店', '台北市大安區金山南路2段18號1樓','121.52694','25.033281',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金華店', '台北市大安區金華街140之1號','121.528431','25.029814',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長星店', '台北市大安區基隆路3段85號','121.54534','25.01781',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11信中店', '台北市大安區信義路三段101號','121.538664','25.03365',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11信安店', '台北市大安區大安路一段218號','121.54589','25.034291',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11信義店', '台北市大安區信義路4段265巷12弄1號','121.554413','25.034224',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11信興店', '台北市大安區信義路四段32號','121.544676','25.033141',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建安店', '台北市大安區敦化南路一段187巷29號','121.550671','25.042638',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建忠店', '台北市大安區忠孝東路三段249號','121.541434','25.041794',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建南店', '台北市大安區建國南路二段151巷6之8號','121.5384','25.028706',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建綸店', '台北市大安區仁愛路4段151巷27號','121.551922','25.039776',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11恆安店', '台北市大安區永康街7-1號','121.529911','25.033133',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11科技站店', '台北市大安區復興南路2段203號','121.543666','25.026283',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11科建店', '台北市大安區建國南路一段28號30號','121.536228','25.044269',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11師大店', '台北市大安區師大路87號','121.528471','25.023193',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泰利店', '台北市大安區仁愛路四段266巷15弄22號','121.554234','25.036558',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國青店', '台北市大安區辛亥路3段30號(台大國青宿舍)','121.544607','25.020501',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國館店', '台北市大安區光復南路240巷25號','121.556366','25.040571',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11崇光店', '台北市大安區復興南路一段135巷5號','121.54454','25.042696',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11教育大學店', '台北市大安區敦南街38號','121.546479','25.023345',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統家店', '台北市大安區忠孝東路4段216巷27弄1號1樓','121.553361','25.039938',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統領店', '台北市大安區忠孝東路四段205巷7弄5號1樓','121.552245','25.042254',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11通化店', '台北市大安區通化街26之8號','121.554216','25.031426',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11頂好店', '台北市大安區仁愛路4段79號1號','121.547229','25.038255',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11頂東店', '台北市大安區大安路一段43號','121.546255','25.043521',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鹿鳴店', '台北市大安區羅斯福路4段1號','121.533697','25.016984',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11喜悅店', '台北市大安區復興南路2段82-1及82-2號','121.543243','25.030944',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富陽店', '台北市大安區和平東路3段298號300號1樓','121.556246','25.020682',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復昌店', '台北市大安區通化里光復南路616號','121.557335','25.032264',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復維店', '台北市大安區復興南路二段17號','121.543897','25.032399',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敦禾店', '台北市大安區敦化南路二段265巷6號1樓','121.549574','25.025447',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敦安店', '台北市大安區安和路一段86號','121.552397','25.0347',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敦信店', '台北市大安區仁愛路4段122巷50號1樓','121.550178','25.034565',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敦南店', '台北市大安區敦化南路一段236巷13號','121.547216','25.040605',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敦頂店', '台北市大安區忠孝東路4段101巷7號','121.548128','25.04213',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敦隆店', '台北市大安區敦化南路2段182號','121.548327','25.023666',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敦維店', '台北市大安區東豐街43號45號1樓','121.546674','25.036237',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敦親店', '台北市大安區辛亥路二段171巷8號','121.540983','25.022127',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華電店', '台北市大安區通化街177號','121.553541','25.027566',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新東帝店', '台北市大安區敦化南路二段97號1樓','121.549789','25.028692',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新泰順店', '台北市大安區泰順街13號','121.531544','25.025102',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新國聯店', '台北市大安區光復南路180巷12號','121.556961','25.042381',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11溫州店', '台北市大安區羅斯福路3段245號','121.529996','25.019418',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11溫東店', '台北市大安區和平東路一段266號','121.533606','25.026015',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞升店', '台北市大安區杭州南路二段91號','121.522046','25.028588',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞安店', '台北市大安區瑞安街182號','121.541056','25.028544',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11義村店', '台北市大安區忠孝東路三段160號','121.538224','25.041525',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鳳翔店', '台北市大安區忠孝東路4段216巷68號','121.552885','25.038084',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樂安店', '台北市大安區樂業街71號73號','121.550849','25.02197',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樂利店', '台北市大安區樂利路76號78號1樓','121.551834','25.025776',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樂和店', '台北市大安區樂利路29號29-1號','121.551507','25.02742',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樂隆店', '台北市大安區敦化南路二段331巷14號','121.549609','25.022687',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11黎元店', '台北市大安區臥龍街188巷1號','121.550932','25.018066',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11豫銘店', '台北市大安區大安路2段102號','121.545866','25.030789',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11錢忠店', '台北市大安區忠孝東路四段26巷5號','121.544478','25.041136',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11靜安店', '台北市大安區光復南路262號','121.557558','25.040194',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍延店', '台北市大安區師大路59巷13號','121.529356','25.023917',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍門店', '台北市大安區和平東路2段18號','121.535922','25.02575',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍淵店', '台北市大安區和平東路二段118巷33號','121.54291','25.023523',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍普店', '台北市大安區敦化南路一段233巷25號','121.55074','25.04043',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11濟南店', '台北市大安區濟南路三段12號1樓','121.533873','25.040157',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11臨江店', '台北市大安區安和路二段67號','121.552532','25.030523',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11豐安店', '台北市大安區東豐街9號','121.544267','25.036114',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11懷生店', '台北市大安區忠孝東路3段248巷9號','121.541391','25.041067',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11麟光店', '台北市大安區臥龍街252號及252-1號','121.556997','25.018364',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫泰店', '台北市大安區古風里泰順街64號1樓','121.531154','25.022309',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大永店', '台北市中山區明水路581巷15號1樓','121.55093','25.080221',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大吉店', '台北市中山區吉林路101號','121.530288','25.05611',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中福店', '台北市中山區民生東路2段113號','121.531669','25.058067',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中錦店', '台北市中山區中山北路二段98號','121.522757','25.059861',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11元大店', '台北市中山區遼寧街110號1樓','121.541925','25.052637',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11六條通店', '台北市中山區林森北路107巷15號1樓','121.525672','25.050372',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天津店', '台北市中山區天津街65號','121.523591','25.051786',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民美店', '台北市中山區圓山里中山北路3段57號','121.523081','25.068315',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永明店', '台北市中山區明水路397巷7弄25號1樓','121.548833','25.078255',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11伊東店', '台北市中山區伊通街30號1樓','121.53466','25.050953',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吉安店', '台北市中山區吉林路365號367號','121.530479','25.064896',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吉林店', '台北市中山區吉林路209號1樓2樓','121.530377','25.06028',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11合江店', '台北市中山區合江街60號','121.539056','25.055827',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11江東店', '台北市中山區長安東路2段43號45-1號1樓','121.531752','25.048693',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11江陵店', '台北市中山區一江街23號1樓','121.531595','25.053126',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11行天店', '台北市中山區農安街178號','121.534839','25.064642',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11京都店', '台北市中山區林森北路411號','121.525701','25.059767',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11佳佳店', '台北市中山區民生東路二段157號','121.535927','25.058118',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明水店', '台北市中山區明水路636號樂群三路1號','121.551324','25.082822',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東崙店', '台北市中山區八德路二段282號','121.541676','25.046915',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11林北店', '台北市中山區民生東路1段46號46-1號1樓','121.524673','25.057908',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11林安店', '台北市中山區林森北路572號','121.525596','25.065',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11林森店', '台北市中山區林森北路500號','121.525518','25.061745',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11林森北店', '台北市中山區林森北路380之1號1樓','121.525399','25.058585',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松盛店', '台北市中山區南京東路二段115巷1號','121.53364','25.052614',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松運店', '台北市中山區松江路101號','121.533228','25.051235',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松錦店', '台北市中山區松江路295號295-1號1樓','121.533375','25.061017',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松鑫店', '台北市中山區松江路208號','121.532967','25.057829',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11欣旺店', '台北市中山區北安路604號606號','121.548997','25.081951',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11直安店', '台北市中山區北安路649號','121.54919','25.084047',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金宴店', '台北市中山區建國北路二段151巷8號1樓','121.53809','25.06181',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金鑽店', '台北市中山區民權西路66號','121.519993','25.062707',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長中店', '台北市中山區中山北路2段40-1號','121.522468','25.054554',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長北店', '台北市中山區長春路11號','121.523677','25.055064',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長松店', '台北市中山區松江路65號','121.53315','25.048989',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長津店', '台北市中山區長安東路1段12號','121.522919','25.04943',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長通店', '台北市中山區長安東路二段101號','121.535112','25.048533',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長新店', '台北市中山區長安東路1段75號1樓','121.528001','25.048589',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11威克店', '台北市中山區南京東路3段208號1樓','121.543105','25.051615',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建欣店', '台北市中山區建國北路2段13號1樓','121.537309','25.053828',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建錦店', '台北市中山區建國北路2段127號1樓B1樓','121.537333','25.060037',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建龍店', '台北市中山區龍江路239號1樓','121.540944','25.058208',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11春城店', '台北市中山區長春路135號135之1號','121.531351','25.054931',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11春森店', '台北市中山區長春路67號','121.526506','25.055017',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11春龍店', '台北市中山區長春路257號','121.540615','25.054752',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11柯鑫店', '台北市中山區中山北路2段11巷3號1樓','121.523404','25.052824',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11美麗華店', '台北市中山區北安路839-1號','121.557303','25.084665',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11原中店', '台北市中山區中原街121號','121.529073','25.063212',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國京店', '台北市中山區南京東路三段21號1樓','121.537779','25.052399',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國旺店', '台北市中山區南京東路一段132巷8號','121.527073','25.051316',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國賓店', '台北市中山區中山北路二段75-1號','121.523054','25.057435',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國學店', '台北市中山區長春路182號','121.53419','25.0547',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11基河店', '台北市中山區樂群二路206號1樓','121.559239','25.079744',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11崑崙店', '台北市中山區中山北路一段105巷13號','121.523298','25.050779',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11莊福店', '台北市中山區長春路168號','121.533233','25.054356',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11麥田店', '台北市中山區晴光里中山北路3段47號','121.522933','25.066674',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11勝權店', '台北市中山區民權東路二段26號','121.528863','25.062475',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復北店', '台北市中山區復興北路164號1樓','121.543829','25.053385',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復錦店', '台北市中山區復興北路352號','121.54402','25.060105',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11晶華店', '台北市中山區林森北路262號','121.525348','25.054597',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11曾德店', '台北市中山區錦州街21-2號','121.525081','25.060395',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11森北店', '台北市中山區林森北路108號1樓2樓','121.524912','25.050914',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11翔運店', '台北市中山區中山北路2段44巷2號1樓','121.522428','25.055007',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11圓武店', '台北市中山區吉林路28號','121.529979','25.051479',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11敬群店', '台北市中山區樂群二路154號1樓','121.557629','25.079591',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新大直店', '台北市中山區北安路621巷48號','121.546432','25.082837',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新西華店', '台北市中山區民生東路3段31號','121.539101','25.058018',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新晴光店', '台北市中山區雙城街30號1樓','121.524204','25.065894',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新錦祥店', '台北市中山區錦西街16號','121.521385','25.060299',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新寶店', '台北市中山區建國北路一段136號','121.536452','25.050922',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11農安店', '台北市中山區農安街28-2號','121.526417','25.064817',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11實踐大學店', '台北市中山區大直街70號1樓','121.546189','25.083755',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11榮金店', '台北市中山區龍江路384巷1號','121.540876','25.066902',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11榮星店', '台北市中山區龍江路322號','121.540838','25.06484',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11榮鑫店', '台北市中山區建國北路三段91號','121.536698','25.065677',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福權店', '台北市中山區民權東路2段96號98號1樓','121.531884','25.06242',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11撫順店', '台北市中山區中山北路三段23-6號','121.522496','25.064859',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11潤泰店', '台北市中山區八德路二段314號','121.542807','25.047182',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11稻江店', '台北市中山區新生北路3段35號','121.528054','25.06497',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興復店', '台北市中山區興安街112號一樓','121.543131','25.055987',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11錦北店', '台北市中山區錦州街8號','121.523569','25.060247',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11錦合店', '台北市中山區合江街117號','121.539297','25.060348',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11錦捷店', '台北市中山區錦州街229號1樓','121.532428','25.060509',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11錦龍店', '台北市中山區龍江路281-1號','121.540835','25.06016',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍京店', '台北市中山區龍江路104號1樓','121.540255','25.052833',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11濱江店', '台北市中山區龍江路356巷39及41號1樓','121.539345','25.066242',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11薇美店', '台北市中山區敬業三路11號1樓','121.555941','25.083639',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11權東店', '台北市中山區民權東路3段73號','121.54358','25.062525',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11權松店', '台北市中山區松江路363號','121.533398','25.063791',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11歡唱店', '台北市中山區林森北路310巷10號1樓','121.524784','25.056124',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫安江店', '台北市中山區長安東路二段178號178-1號1樓','121.540528','25.048193',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫東一店', '台北市中山區一江街11號13號','121.531597','25.051165',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫長安店', '台北市中山區長安東路一段53巷1之3號','121.526524','25.049147',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫越店', '台北市中山區南京西路12巷9號1樓','121.521504','25.051907',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫德惠店', '台北市中山區德惠街15號1樓','121.525996','25.066862',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫錦州店', '台北市中山區錦州街263號','121.534911','25.060377',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫櫃店', '台北市中山區松江路183號183-1號1樓','121.533288','25.05645',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11千成店', '台北市中正區林森南路4號之3','121.522903','25.043751',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11千翔店', '台北市中正區許昌街17號1樓','121.516971','25.045748',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大永博店', '台北市中正區博愛路97號1樓','121.511644','25.043153',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中航店', '台北市中正區林森南路12號','121.522538','25.042552',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中華電店', '台北市中正區信義路一段21-3號B1樓','121.523275','25.036515',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中愛店', '台北市中正區寧波東街17號1樓','121.520249','25.033082',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中樂店', '台北市中正區延平南路47號','121.510506','25.045116',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11丹陽店', '台北市中正區杭州南路一段83號','121.525546','25.03905',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仁金店', '台北市中正區仁愛路二段39號39-1號','121.528948','25.038452',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北高鐵店', '台北市中正區北平西路3號B1樓','121.519384','25.047133',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11古亭店', '台北市中正區汀州路二段210號','121.52366','25.022488',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台大店', '台北市中正區林森南路53號55號','121.52213','25.040172',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台北1店', '台北市中正區北平西路3號(東南站)','121.51771','25.047316',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台北2店', '台北市中正區北平西路3號(西南站)','121.516349','25.047529',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台北3店', '台北市中正區北平西路3號(西北站)','121.516841','25.048427',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台北4店', '台北市中正區北平西路3號(東北站)','121.517868','25.048114',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台北五店', '台北市中正區北平西路3號','121.516806','25.047944',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台北六店', '台北市中正區北平西路3號','121.516806','25.047944',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台醫店', '台北市中正區中山南路7號B1 樓','121.518616','25.040756',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11汀州店', '台北市中正區汀州路一段129號','121.5095','25.02805',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11同昌店', '台北市中正區南昌路2段173號','121.522798','25.025511',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11忠聯店', '台北市中正區忠孝東路二段100號1樓','121.530537','25.042845',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11杭信店', '台北市中正區信義路2段15號1樓','121.525349','25.035302',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11欣漢華店', '台北市中正區中華路一段41號1樓','121.509514','25.044943',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金山店', '台北市中正區金山南路1段108號','121.527393','25.035486',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11青島店', '台北市中正區青島東路4號','121.521392','25.043946',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11南昌店', '台北市中正區南昌路一段72號','121.517221','25.031126',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11南海店', '台北市中正區南海路50號','121.515324','25.032037',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11牯嶺店', '台北市中正區廈門街99巷19-2號1樓','121.518814','25.02397',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11秋葉原店', '台北市中正區市民大道3段2號B2樓','121.531239','25.04556',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11英雄館店', '台北市中正區長沙街一段20號1樓','121.508594','25.040309',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11軍總店', '台北市中正區汀州路三段129號','121.530801','25.016335',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11重南店', '台北市中正區武昌街一段1-2號1樓','121.513528','25.044167',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11晉江店', '台北市中正區和平西路一段26號','121.52075','25.026586',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國圖店', '台北市中正區中山南路20號B1樓','121.516883','25.037241',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11捷市店', '台北市中正區忠孝西路一段49號B3樓','121.517672','25.0472',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11捷欣店', '台北市中正區忠孝西路一段47號B1樓(25號櫃)','121.517382','25.046568',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11捷戰店', '台北市中正區忠孝西路一段50-1號(捷運地下街)','121.515583','25.046575',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11掬華店', '台北市中正區中華路2段407號','121.508221','25.026082',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11教育大店', '台北市中正區愛國西路1號教育大學內','121.513148','25.035688',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統全店', '台北市中正區汀州路三段249號','121.534345','25.013669',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統聯店', '台北市中正區忠孝東路二段130-2號130-3號','121.531887','25.042148',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11紹興店', '台北市中正區紹興北街37號1樓','121.525559','25.045552',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11博美店', '台北市中正區武昌街一段45號1樓','121.511392','25.044275',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11博源店', '台北市中正區思源街16號','121.531095','25.014415',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華山店', '台北市中正區忠孝東路1段138號','121.525618','25.044106',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華慶店', '台北市中正區中華路一段59之16號','121.508334','25.04138',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11開博店', '台北市中正區開封街一段40號42號1樓','121.512264','25.045985',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新南店', '台北市中正區新生南路1段126-7號','121.532495','25.037107',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新格蘭店', '台北市中正區衡陽路27號','121.512786','25.042408',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新紹南店', '台北市中正區信義路一段13-1號','121.522709','25.036486',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新雲店', '台北市中正區三愛里連雲街81號','121.530154','25.034431',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新廈門店', '台北市中正區廈門街42號46號','121.517404','25.025584',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新愛國店', '台北市中正區延平南路177號','121.507572','25.034476',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新羅福店', '台北市中正區羅斯福路3段82號','121.526474','25.021987',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬光店', '台北市中正區中華路二段157號','121.504288','25.031165',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬翔店', '台北市中正區公園路13號','121.517414','25.0455',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11寧波店', '台北市中正區寧波西街3號','121.518746','25.031515',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11漢慶店', '台北市中正區漢口街一段82號1樓','121.512207','25.045166',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興信鑫店', '台北市中正區信陽街12號14號1樓','121.515885','25.044567',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11濟新店', '台北市中正區濟南路2段50號','121.531172','25.040321',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11臨沂店', '台北市中正區文祥里臨沂街74號76號','121.527801','25.034531',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11羅亭店', '台北市中正區羅斯福路二段68號','121.521933','25.027316',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11羅館店', '台北市中正區羅斯福路3段316巷16號1樓','121.532336','25.015592',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11警廣店', '台北市中正區廣州街10-2號10-3號10-4部分號1樓','121.508064','25.03554',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫大孝店', '台北市中正區黎明里重慶南路一段1-1號一樓','121.513355','25.047041',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫公信店', '台北市中正區信陽街2-1號','121.516767','25.044642',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫台北店', '台北市中正區黎明里忠孝西路一段35號一樓','121.518477','25.046208',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫杭店', '台北市中正區杭州南路1段23號','121.526566','25.042442',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫泉州店', '台北市中正區汀州路一段285號一樓','121.513801','25.026358',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫重寧店', '台北市中正區寧波西街86號1樓','121.515924','25.029933',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫國語店', '台北市中正區福州街11-3號11-4號','121.519784','25.029604',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫華福店', '台北市中正區懷寧街30號32號1樓','121.514099','25.045409',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫衡陽店', '台北市中正區衡陽路6號1樓','121.513777','25.042294',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫館店', '台北市中正區汀州路3段269號1樓2樓','121.535305','25.012656',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三德店', '台北市大同區承德路三段55號57號1樓','121.518588','25.065332',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大龍店', '台北市大同區昌吉街72號74號76號','121.515872','25.065797',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中興醫店', '台北市大同區鄭州路145號B1','121.50919','25.050911',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仟發店', '台北市大同區民生西路95號97號','121.519287','25.057605',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11延民店', '台北市大同區民族西路246號248號1樓','121.512532','25.068602',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11延年店', '台北市大同區延平北路3段61-5號','121.511137','25.065876',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11延埕店', '台北市大同區延平北路2段159號161號','121.511607','25.058295',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11延華店', '台北市大同區延平北路一段78號80號','121.511789','25.05183',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11延龍店', '台北市大同區延平北路四段16號18號1樓','121.510788','25.069242',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11承華店', '台北市大同區承德路一段22號','121.516684','25.050444',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昌吉店', '台北市大同區承德路三段60號60-1號','121.518103','25.065387',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長峰店', '台北市大同區長安西路45之2號47號1樓','121.517966','25.050874',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11保聖店', '台北市大同區酒泉街58號60號','121.515727','25.071883',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11南西店', '台北市大同區南京西路316號','121.513','25.053913',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11哈蜜店', '台北市大同區重慶北路3段309號','121.514002','25.073896',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11迪化店', '台北市大同區民生西路343號345號','121.511182','25.057043',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11酒泉店', '台北市大同區重慶北路三段260號1-2樓','121.513568','25.071528',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11涼州店', '台北市大同區延平北路二段232號234號1樓','121.511303','25.059861',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11湧久店', '台北市大同區延平北路4段157號159號','121.511357','25.073077',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11詠樂店', '台北市大同區南京西路233巷15號17號1.2樓','121.510538','25.054357',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11圓泉店', '台北市大同區酒泉街25號27號1樓','121.519315','25.070781',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11圓慶店', '台北市大同區南京西路127號','121.514576','25.054271',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11塔城店', '台北市大同區長安西路271號1樓及273巷2號1樓','121.510677','25.052223',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新慶陽店', '台北市大同區重慶北路2段60號','121.5138','25.055701',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德倫店', '台北市大同區承德路3段240號242號1樓','121.518552','25.072542',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11慶吉店', '台北市大同區重慶北路三段47號49號1樓','121.513907','25.065754',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11稻埕店', '台北市大同區南京西路436號1F','121.508791','25.053291',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鄭州店', '台北市大同區鄭州路3-2號','121.515741','25.049012',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11靜中店', '台北市大同區寧夏路71號','121.515199','25.058493',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11篷萊店', '台北市大同區寧夏路131-1號','121.514479','25.060779',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙連店', '台北市大同區民生西路176號','121.517531','25.057195',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11權鑫店', '台北市大同區民權西路157之1號1樓','121.516291','25.063251',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫太原店', '台北市大同區太原路40號42號44號','121.515105','25.050371',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫寧店', '台北市大同區民生西路214號216號1樓','121.514995','25.056876',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大埔店', '台北市萬華區中華路2段34號','121.504954','25.03305',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大華店', '台北市萬華區萬大路495號497號','121.49779','25.019961',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中寧店', '台北市萬華區中華路2段602-1-2號一樓','121.509959','25.024629',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11六福店', '台北市萬華區漢口街二段73號1樓','121.505238','25.046236',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11世運店', '台北市萬華區昆明街81號83號','121.504863','25.042891',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成都店', '台北市萬華區成都路96號1樓','121.504314','25.043142',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11克難店', '台北市萬華區萬青街168號','121.50154','25.02351',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏旭店', '台北市萬華區西園路一段238號1之2樓','121.49884','25.034903',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昆寧店', '台北市萬華區西寧南路50巷3號5號','121.505899','25.044383',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昆福店', '台北市萬華區昆明街30-1號30-2號1樓','121.505913','25.0473',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明日店', '台北市萬華區成都路27巷1號1樓','121.506911','25.042826',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11青園店', '台北市萬華區青年路18號1樓','121.50572','25.026092',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桂明店', '台北市萬華區桂林路55號','121.503061','25.038297',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11桂林店', '台北市萬華區桂林路160號','121.497735','25.038404',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國雙店', '台北市萬華區新忠里西藏路125巷17號','121.502573','25.028041',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11捷盟店', '台北市萬華區漢中街51號','121.507448','25.044047',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富帆店', '台北市萬華區華中里萬大路464號一樓','121.497608','25.020124',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華江店', '台北市萬華區華江里20鄰環河南路2段200號','121.493038','25.034099',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華藏店', '台北市萬華區西藏路107號107之1號1樓','121.503513','25.029696',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華雙店', '台北市萬華區環河南路二段252號','121.491692','25.033206',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11開寧店', '台北市萬華區西寧南路16號','121.506892','25.046539',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11園舺店', '台北市萬華區西園路二段140巷52號','121.494908','25.031538',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新峨嵋店', '台北市萬華區峨嵋街111之2號之3號','121.503876','25.044335',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新起店', '台北市萬華區長沙街2段87號1樓','121.504879','25.040659',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新寧南店', '台北市萬華區西寧南路80號','121.50584','25.042485',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新艋舺店', '台北市萬華區萬大路292號','121.500285','25.025252',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬大店', '台北市萬華區萬大路245號247號1樓','121.500648','25.026218',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬和店', '台北市萬華區萬大路184號','121.500345','25.02789',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬忠店', '台北市萬華區東園街28巷58號','121.494375','25.026133',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬東店', '台北市萬華區萬大路486巷59弄1號','121.495898','25.02046',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬長店', '台北市萬華區東園街78號1樓','121.49679','25.025062',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬華店', '台北市萬華區莒光路216號萬大路57號1樓','121.500735','25.031338',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬華站店', '台北市萬華區康定路382號','121.500122','25.033601',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬運店', '台北市萬華區西園路一段153號B1(捷運龍山寺站B1)','121.499549','25.035475',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11漢中店', '台北市萬華區漢中街185號187號','121.506842','25.041138',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11漢陽店', '台北市萬華區昆明街197號199號1樓','121.504189','25.039208',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11漢寧店', '台北市萬華區西寧南路85號','121.506847','25.045579',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廣明店', '台北市萬華區昆明街285號之3之4','121.503659','25.036831',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興義店', '台北市萬華區興義街6號8號1樓','121.491663','25.026766',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍山店', '台北市萬華區康定路203號205號1樓','121.501514','25.03611',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍廣店', '台北市萬華區廣州街148號','121.500593','25.036581',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙環店', '台北市萬華區環河南路二段207號','121.49154','25.032052',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11寶昌店', '台北市萬華區寶興街186號','121.495345','25.023652',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫武昌店', '台北市萬華區武昌街二段57號1樓','121.507197','25.044847',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫青天店', '台北市萬華區青年路144號','121.502404','25.021671',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫樂昇店', '台北市萬華區武昌街二段114之3號','121.50487','25.04517',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫寶店', '台北市萬華區寶興街 43號45號1樓','121.49347','25.027372',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文一店', '台北市文山區木新路三段327號','121.556352','24.98047',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文山店', '台北市文山區永安街22巷23號25號1樓','121.568931','24.98675',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文忠店', '台北市文山區忠順街二段10號1樓','121.56238','24.984598',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文新店', '台北市文山區樟新里木新路三段276號','121.558167','24.98111',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文儀店', '台北市文山區木新路三段54號56號','121.564063','24.982614',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11木柵店', '台北市文山區木柵路2段157號','121.562958','24.989113',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11木盛店', '台北市文山區木柵路三段88號','121.566929','24.988536',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11木新店', '台北市文山區木新路2段255號','121.566689','24.983168',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11世新大店', '台北市文山區木柵路1段17巷1號','121.546108','24.98975',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仙岩店', '台北市文山區仙岩路18號','121.548578','24.998588',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北福興店', '台北市文山區興旺里福興路20號','121.551392','25.002804',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台師大店', '台北市文山區汀州路4段88號行政大樓1樓','121.536319','25.008059',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11辛亥站店', '台北市文山區辛亥路四段132號','121.55664','25.00449',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11忠順店', '台北市文山區忠順街1段26巷15號','121.559653','24.982563',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金恩店', '台北市文山區指南路二段149號','121.577273','24.987419',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11指南店', '台北市文山區指南路1段34號36號1樓','121.569664','24.987687',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11政大店', '台北市文山區指南路2段99號101號','121.575542','24.987804',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11康喜店', '台北市文山區興隆路三段42號','121.555654','25.000271',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11添恩店', '台北市文山區指南路3段8號10號','121.579901','24.985137',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景中店', '台北市文山區景文里景文街96號98號','121.540934','24.990277',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景高店', '台北市文山區景華里景興路14號','121.544545','24.997875',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景捷店', '台北市文山區景福街252號','121.540183','24.99345',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景華店', '台北市文山區興東里景華街130號','121.547032','24.995788',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景興店', '台北市文山區景興路113號115號','121.544858','24.995084',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華興店', '台北市文山區木柵路一段168號170號','121.552137','24.987573',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新安康店', '台北市文山區木柵路二段88號90號1樓','121.559929','24.988586',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新秀店', '台北市文山區秀明路二段8號10號','121.574145','24.991642',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新景美店', '台北市文山區木新路三段179號181號','121.560475','24.981486',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新萬盛店', '台北市文山區羅斯福路5段21號1樓','121.538358','25.008162',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新萬隆店', '台北市文山區羅斯福路六段20號22號','121.539438','25.00001',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬芳店', '台北市文山區萬安街23號25號','121.570669','25.000959',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬芳醫店', '台北市文山區興隆路三段111號','121.558387','24.999963',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬美店', '台北市文山區萬和街6號2樓之1','121.567174','25.002163',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬隆站店', '台北市文山區羅斯福路5段249號1樓','121.539261','25.00173',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬福店', '台北市文山區萬年里羅斯福路5段170巷33及35號','121.536565','25.004655',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11試院店', '台北市文山區木柵路1段139號','121.550272','24.987532',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11漢神店', '台北市文山區景中街45號1樓','121.544101','24.992714',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11滬江店', '台北市文山區羅斯福路六段308號310號','121.539619','24.990602',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興北店', '台北市文山區興隆路三段108號','121.557376','24.999312',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興岩店', '台北市文山區興隆路2段244巷20號1樓','121.553168','25.000183',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興芳店', '台北市文山區興光里興隆路3段173-175號','121.560104','24.996421',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興隆店', '台北市文山區興隆路2段219號','121.55029','25.001289',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11羅捷店', '台北市文山區景行里羅斯福路6段391號','121.540836','24.992502',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11羅斯福店', '台北市文山區羅斯福路五段216號','121.538561','25.002325',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中坡店', '台北市南港區中坡南路47號1樓','121.583626','25.042837',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中貿店', '台北市南港區經貿二路186號2樓','121.615486','25.059421',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11玉成店', '台北市南港區南港路3段9號1樓','121.591949','25.054033',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11玉德店', '台北市南港區玉成街150號1樓','121.583643','25.045086',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11向揚店', '台北市南港區向陽路166號1樓','121.594127','25.055919',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11庄研店', '台北市南港區研究院路二段152號','121.616918','25.038393',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11佳樂店', '台北市南港區南港路一段305號','121.607617','25.054387',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11忠陽店', '台北市南港區忠孝東路六段465號1樓','121.59407','25.05092',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昆陽店', '台北市南港區忠孝東路6段448號','121.593992','25.050252',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11林坊店', '台北市南港區東新街80巷1號','121.587128','25.046297',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11研究店', '台北市南港區研究院路2段14號','121.615517','25.047641',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11胡適店', '台北市南港區研究院路二段94號96號98巷1號','121.61587','25.044149',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11香城店', '台北市南港區南港路一段167號1樓','121.613308','25.055177',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11凱松店', '台北市南港區八德路四段778號780號','121.580271','25.050525',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11港泰店', '台北市南港區忠孝東路七段359號1樓','121.604558','25.052247',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11港福店', '台北市南港區興華路90號','121.605654','25.056089',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11港德店', '台北市南港區福德街373巷25號','121.591447','25.039379',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11港興店', '台北市南港區興華路119號121號123號125號','121.605708','25.056909',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華技店', '台北市南港區研究院路三段72號74號1樓','121.614191','25.034819',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華院店', '台北市南港區研究院路三段234號','121.610623','25.03384',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雄強店', '台北市南港區忠孝東路六段276號','121.589022','25.049098',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11慈愛店', '台北市南港區重陽路164號','121.600903','25.057143',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新福玉店', '台北市南港區成福路145號147號','121.587829','25.041587',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11經貿店', '台北市南港區三重路19號1樓','121.613803','25.056118',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聯成店', '台北市南港區聯成里昆陽街150-1號150-3號','121.594184','25.049094',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聯坊店', '台北市南港區東新街118巷1號','121.588323','25.046466',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11馥樺店', '台北市南港區三重路23號1樓','121.614137','25.059102',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鵬馳店', '台北市南港區南港路三段49-1號','121.589833','25.053227',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11耀港店', '台北市南港區研究院路一段99號1樓之14','121.616235','25.051977',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫貿店', '台北市南港區經貿二路168號4樓','121.61613','25.05889',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大眾店', '台北市內湖區港墘路221巷41號1樓','121.575066','25.073334',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大潤發店', '台北市內湖區舊宗路一段128號','121.57817','25.061244',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11日內瓦店', '台北市內湖區瑞光路76巷59號1樓','121.580303','25.070196',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民東店', '台北市內湖區民權東路6段88號','121.585883','25.068773',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11名寶店', '台北市內湖區民權東路6段180巷17號19號','121.592892','25.068245',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成功店', '台北市內湖區成功路二段252號','121.590366','25.066119',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成美店', '台北市內湖區新明路317號','121.58455','25.056887',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成湖店', '台北市內湖區成功路四段346號','121.599662','25.084854',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11行龍店', '台北市內湖區行愛路128號','121.580118','25.063894',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11西武店', '台北市內湖區內湖路一段285巷65弄3號5號1樓','121.566981','25.084476',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11西湖店', '台北市內湖區內湖路一段321號','121.567783','25.082263',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11克里斯店', '台北市內湖區五分街33號35號1樓','121.613362','25.067733',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11秀湖店', '台北市內湖區成功路4段359號1樓','121.600053','25.084554',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11見晴店', '台北市內湖區瑞光路196號','121.576948','25.074982',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11里昂店', '台北市內湖區瑞光路406號1樓','121.570641','25.078199',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明湖店', '台北市內湖區東湖路45號','121.614071','25.068865',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11欣福店', '台北市內湖區民權東路6段120巷7弄8號','121.587655','25.067675',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金湖店', '台北市內湖區文湖街83號1樓','121.563942','25.086537',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金雲店', '台北市內湖區星雲街136號','121.594971','25.079848',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金碧店', '台北市內湖區金龍路215號1樓','121.587246','25.08823',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金德店', '台北市內湖區金龍路5號1F','121.595079','25.084383',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金龍店', '台北市內湖區內湖路二段407號409號1樓','121.593309','25.084615',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金聯發店', '台北市內湖區內湖路三段141巷7號','121.589237','25.086326',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長鴻店', '台北市內湖區大湖山莊街219巷6號8號1樓','121.59941','25.088435',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11星成店', '台北市內湖區星雲街17號','121.590507','25.078026',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11洲子店', '台北市內湖區瑞光路517號1樓','121.568966','25.079267',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11悅來店', '台北市內湖區五分街1號','121.611986','25.067786',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11晏揚店', '台北市內湖區康寧路三段99巷14號','121.610662','25.072728',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11參龍店', '台北市內湖區行善路64號','121.576101','25.056973',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國醫店', '台北市內湖區成功路二段325號','121.592376','25.071816',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11康明店', '台北市內湖區康寧路三段165巷23弄1號','121.612189','25.071451',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11康雲店', '台北市內湖區康寧路一段160號','121.594443','25.078978',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11康葫店', '台北市內湖區民權東路六段296巷3號1樓','121.605603','25.07252',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11康寧店', '台北市內湖區康寧路三段26巷1號','121.607934','25.072185',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11康醫店', '台北市內湖區成功路5段420巷30號','121.608619','25.075598',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11彩龍店', '台北市內湖區行善路35號1F','121.576433','25.056893',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11清圳店', '台北市內湖區東湖路113巷88號','121.61561','25.072068',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11清湖店', '台北市內湖區金湖路49號1樓','121.596672','25.082278',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富港店', '台北市內湖區港富里港墘路15號1樓','121.578343','25.082951',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11港華店', '台北市內湖區港華街40號1樓','121.574918','25.083043',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11港鑫店', '台北市內湖區內湖路1段737巷35號','121.578727','25.079726',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11紫陽店', '台北市內湖區紫陽里陽光街159號','121.5852','25.074963',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11紫新店', '台北市內湖區成功路三段201號1樓','121.590981','25.080625',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華經店', '台北市內湖區行忠路30號','121.577601','25.065267',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11匯陽店', '台北市內湖區陽光街383號','121.576204','25.072742',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新潭美店', '台北市內湖區新明路425號427號','121.581064','25.054867',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞江店', '台北市內湖區瑞陽里江南街71巷16弄76號','121.579009','25.076249',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞和店', '台北市內湖區瑞光路316巷56號1樓','121.573272','25.075833',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞東店', '台北市內湖區洲子街102號1樓','121.57059','25.080078',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞富店', '台北市內湖區瑞光路188巷51號1樓','121.576059','25.074075',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞湖店', '台北市內湖區江南街128號','121.575454','25.076165',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞寶店', '台北市內湖區瑞光路583巷27號1樓','121.568115','25.080918',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞鑫店', '台北市內湖區瑞光路580號','121.566309','25.080175',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11達人店', '台北市內湖區內湖路2段249號251號','121.589663','25.082',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11碧綠店', '台北市內湖區內湖路三段59巷1號61號63號','121.592054','25.086132',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福湖店', '台北市內湖區內湖路一段411巷19弄1號','121.57121','25.082549',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11墘都店', '台北市內湖區內湖路一段669號','121.575809','25.079905',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德成店', '台北市內湖區內湖路2段366號','121.590867','25.082374',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德福店', '台北市內湖區成功路4段30巷27號29號31號','121.591748','25.082275',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德馨店', '台北市內湖區洲子街46號','121.573387','25.07906',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11環金店', '台北市內湖區環山路二段81號83號1樓','121.575009','25.085048',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11環湖店', '台北市內湖區環山路一段70號','121.566875','25.086626',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11麗安店', '台北市內湖區內湖路一段445號1樓','121.572277','25.081342',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瓏山林店', '台北市內湖區康樂街125巷2號','121.61953','25.073387',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瓏馬店', '台北市內湖區康樂街213號','121.620648','25.075874',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11馨瑩店', '台北市內湖區內湖路一段91巷2號','121.561294','25.084548',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11權金店', '台北市內湖區金湖路405號1樓','121.604391','25.073409',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫文德店', '台北市內湖區文德路99號1樓','121.583371','25.078726',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫江南店', '台北市內湖區文德路6號1樓','121.578876','25.07852',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫碁泰店', '台北市內湖區康寧路三段63號65號67號','121.608259','25.072353',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫輝煌店', '台北市內湖區東湖路119巷49弄2號1樓','121.617076','25.069845',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三玉店', '台北市士林區天母東路88之1號1樓','121.535807','25.118061',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三樂店', '台北市士林區劍潭路21號1樓','121.522695','25.084129',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11士正店', '台北市士林區中正路301號1樓','121.523789','25.094792',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11士東店', '台北市士林區士東路48號','121.527814','25.111915',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11士鑽店', '台北市士林區文林路102號B1','121.526199','25.087836',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11丹樺店', '台北市士林區文林路530號','121.524099','25.097251',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11友成店', '台北市士林區社中街211號1樓','121.508421','25.091105',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天北店', '台北市士林區天母里天母西路39-1號1樓','121.527473','25.118781',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天東店', '台北市士林區中山北路7段14巷2-1號','121.531242','25.118703',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天美店', '台北市士林區天母東路8巷98號','121.530156','25.114305',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天真店', '台北市士林區中山北路7段141巷6之1號1樓','121.531436','25.123138',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天越店', '台北市士林區天母東路50巷25號','121.533244','25.116888',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天裕店', '台北市士林區中山北路七段156號1樓','121.53266','25.124054',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天福店', '台北市士林區天母東路8巷31弄2號','121.531867','25.116812',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天鑫店', '台北市士林區天玉街8號','121.526963','25.119864',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11太學店', '台北市士林區華岡路45之1號1樓','121.541887','25.137791',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文大店', '台北市士林區格致路57號','121.546486','25.137934',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文林店', '台北市士林區大北路14號16號1樓','121.52659','25.089878',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文學店', '台北市士林區光華路26巷10號1樓','121.54161','25.137299',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11冬樂店', '台北市士林區美崙街112號一樓','121.51988','25.097087',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11至善天下店', '台北市士林區至善路二段264號','121.550925','25.100437',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11至誠店', '台北市士林區至誠路二段31號','121.529259','25.10181',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11兒樂店', '台北市士林區承德路五段55號','121.5146','25.093999',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11承河店', '台北市士林區基河路132號1樓','121.522847','25.089097',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11承富店', '台北市士林區承德路四段39號','121.52277','25.081019',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東洋店', '台北市士林區中山北路7段14巷19號Ｂ1','121.532398','25.118896',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11社中店', '台北市士林區社中街320號322號1樓','121.505185','25.092423',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11社鑽店', '台北市士林區中正路639號1樓','121.508208','25.086206',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11芝山店', '台北市士林區福華路126號1樓','121.522863','25.102871',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11芝玉店', '台北市士林區忠義街121號','121.532808','25.107718',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11前港店', '台北市士林區後港街98之1號2號1樓','121.521541','25.085879',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11洲美店', '台北市士林區延平北路六段505號','121.498221','25.093424',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11草山店', '台北市士林區格致路28號','121.546449','25.136941',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11凱立店', '台北市士林區忠義街68號','121.53134','25.105828',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11凱立店', '台北市士林區忠義街68號','121.53134','25.105828',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華岡店', '台北市士林區光華路26巷7-1號','121.541482','25.136886',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華齡店', '台北市士林區華齡街17巷2號4號1樓','121.519337','25.083135',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11集鑫店', '台北市士林區延平北路6段202號204號','121.505126','25.089588',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新士林店', '台北市士林區大東路123號125號1樓','121.525449','25.091682',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新天強店', '台北市士林區克強路11及11-1號1樓','121.524484','25.108799',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新文店', '台北市士林區文昌路64號','121.521305','25.096115',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新忠誠店', '台北市士林區中山北路6段18號20號1樓','121.526761','25.104034',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新承德店', '台北市士林區承德路4段30號','121.522042','25.080383',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新福林店', '台北市士林區福林路191號','121.532655','25.096887',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新福慶店', '台北市士林區基河路1號1樓(部份)','121.524946','25.086269',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新劍潭店', '台北市士林區福港街246號','121.517487','25.084339',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11葫東店', '台北市士林區延平北路五段228號230號1樓','121.510066','25.084282',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11葫蘆店', '台北市士林區延平北路五段134號134-2號1樓','121.510364','25.082178',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11誠義店', '台北市士林區忠誠路一段126號','121.528778','25.105707',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福志店', '台北市士林區雨農路25號','121.53226','25.098488',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福芝店', '台北市士林區福國路94號','121.522372','25.102057',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福氣店', '台北市士林區延平北路六段122號124號1樓','121.507855','25.089307',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福捷店', '台北市士林區中正路235巷14號','121.526054','25.094826',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福通店', '台北市士林區大南路400號402號1樓','121.51586','25.089629',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福陽店', '台北市士林區延平北路五段269號271號1樓','121.509577','25.085355',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福順店', '台北市士林區重慶北路4段149號151號1樓','121.51185','25.083225',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福溢店', '台北市士林區德行西路96號','121.521269','25.104145',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福榮店', '台北市士林區中正路220號222號','121.526092','25.095529',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福鑫店', '台北市士林區中正路324號','121.522541','25.094652',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福讚店', '台北市士林區中正路227號','121.526197','25.095263',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聚鑫店', '台北市士林區延平北路六段350號','121.501219','25.090706',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11劍潭站店', '台北市士林區中山北路五段65號1樓','121.525126','25.084425',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德天店', '台北市士林區德行西路52號1樓','121.522989','25.105272',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德行店', '台北市士林區忠誠路二段7號1樓','121.530636','25.10908',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德東店', '台北市士林區德行東路262號1樓','121.534693','25.109746',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德芝店', '台北市士林區士東路286巷37號','121.537651','25.11177',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德華店', '台北市士林區文林路669號1樓及B1','121.52219','25.100917',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德誠店', '台北市士林區德行東路106號108號1樓','121.528702','25.107814',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11豫鋒店', '台北市士林區大南路322號','121.518275','25.088952',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘭雅店', '台北市士林區中山北路6段150號','121.525082','25.106373',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫仰德店', '台北市士林區仰德大道三段68號70號','121.552876','25.118849',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11一德店', '台北市北投區中央北路4段513號','121.468456','25.12815',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大中店', '台北市北投區中央南路一段114號','121.501056','25.130534',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中陽店', '台北市北投區中央北路三段55號57號1樓','121.4849','25.137918',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11公館店', '台北市北投區公館路31號','121.503115','25.133059',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天富店', '台北市北投區富貴一路3號1樓','121.523837','25.113726',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11加賀屋店', '台北市北投區溫泉路73巷5號地下二樓之1','121.506171','25.135692',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北投店', '台北市北投區中和街222號','121.50179','25.13909',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北榮店', '台北市北投區石牌路二段201號(榮民總醫院生活廣場)','121.520082','25.119349',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11石捷店', '台北市北投區石牌路二段8號','121.515502','25.115351',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11立農店', '台北市北投區承德路7段378號','121.502749','25.118635',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11光中店', '台北市北投區光明路122號','121.501821','25.133288',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11安遠店', '台北市北投區致遠二路149號','121.512955','25.117452',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11百齡店', '台北市北投區石牌路一段35號','121.510143','25.11313',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11行義店', '台北市北投區石牌路二段335號1樓','121.52437','25.122856',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11西安店', '台北市北投區大興街44號46號1樓','121.499361','25.13017',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11秀山店', '台北市北投區中和街476號478號','121.495229','25.145234',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和信醫店', '台北市北投區立德路125號1樓','121.472414','25.12837',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和業店', '台北市北投區中和街10號','121.503438','25.137517',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和碩店', '台北市北投區立功街76號1樓','121.469653','25.125631',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11奇岩店', '台北市北投區崇仁路一段76號','121.501475','25.126287',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11承啟店', '台北市北投區福興里承德路七段76號','121.510813','25.111447',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明華店', '台北市北投區明德路99號','121.519411','25.10946',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明德店', '台北市北投區明德路114號','121.520245','25.109879',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東華店', '台北市北投區裕民一路40巷1號','121.517952','25.116486',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11知心店', '台北市北投區知行路185號1樓','121.466162','25.119251',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金和店', '台北市北投區中和街314號316號1樓','121.499919','25.14105',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11政戰店', '台北市北投區中央北路二段15號17號','121.496048','25.136464',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11春天店', '台北市北投區泉源路12-1號1樓','121.504344','25.137204',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泉北店', '台北市北投區溫泉路70號','121.504897','25.135226',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泉源店', '台北市北投區泉源路30號地下一樓','121.506521','25.140187',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11致遠店', '台北市北投區石牌路一段126號','121.512396','25.114053',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11振華店', '台北市北投區石牌路2段80號82號','121.516329','25.116865',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11振興醫店', '台北市北投區振興街45號B1','121.522374','25.117715',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11清江店', '台北市北投區公館路165號1樓','121.506861','25.129499',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統勝店', '台北市北投區自強街82號','121.514648','25.11059',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富邦店', '台北市北投區實踐街22號24號','121.508177','25.114959',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華碩店', '台北市北投區立德路15號B1','121.471387','25.124608',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新豪美店', '台北市北投區文林北路98號100號','121.517646','25.10564',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11榮總店', '台北市北投區石牌路2段301號','121.522754','25.121492',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福致店', '台北市北投區致遠一路二段49號51號1樓','121.513637','25.112015',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德致店', '台北市北投區明德路87號89號1樓','121.518749','25.109047',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11擎天崗店', '台北市北投區湖山路一段12號','121.547476','25.152493',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11薇閣店', '台北市北投區中央北路一段108號','121.499545','25.134852',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙全店', '台北市北投區中庸里大業路715-717號','121.500961','25.137221',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11懷得店', '台北市北投區懷德街85號1樓','121.519656','25.114096',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11關渡店', '台北市北投區知行路282號','121.467399','25.121604',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鐏賢店', '台北市北投區尊賢街247號','121.506854','25.11754',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11護專店', '台北市北投區振興街31號','121.522299','25.118001',
 '台灣', '台北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11千群店', '新北市板橋區東丘里民享街53號','121.47596','25.015124',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大庭店', '新北市板橋區國光里6鄰國光路65號1樓','121.459051','25.018034',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中一店', '新北市板橋區中正路332之5號1樓','121.454566','25.022579',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11心心店', '新北市板橋區實踐路105號107號','121.464222','25.005342',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文聖店', '新北市板橋區文聖街64號','121.476899','25.030688',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11台藝大店', '新北市板橋區大觀路一段59號','121.447929','25.006542',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正泰店', '新北市板橋區三民路二段202-20及21號1樓','121.478747','25.01331',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正華店', '新北市板橋區中正路274號276號','121.455312','25.019939',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正隆店', '新北市板橋區民生路一段53號','121.475591','25.012886',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民族店', '新北市板橋區福祿里民族路310號','121.470873','25.006564',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11光仁店', '新北市板橋區中山路二段273號','121.477711','25.018028',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11存德店', '新北市板橋區篤行路二段86號88號1樓','121.431439','24.991824',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成合店', '新北市板橋區金門街40號','121.433255','24.993807',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11百壽店', '新北市板橋區文化路一段305號1樓','121.465138','25.019076',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11佑容店', '新北市板橋區五權里五權街49號51號','121.464743','24.993796',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11坤耀店', '新北市板橋區南門街39號1F','121.457411','25.008582',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11幸運店', '新北市板橋區區運路21號','121.465797','25.01022',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11府中店', '新北市板橋區府中路82號84號1樓','121.456358','25.009598',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11府運店', '新北市板橋區重慶路18號20號1樓','121.460889','25.007824',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明陽店', '新北市板橋區新翠里陽明街251號','121.462669','25.02508',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昇容店', '新北市板橋區重慶路346巷8號','121.46366','24.997397',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11杰朋店', '新北市板橋區新海路385巷10弄11號','121.458097','25.026377',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11板信店', '新北市板橋區信義路142號144號146號1樓','121.45863','24.99191',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11板站店', '新北市板橋區文化路一段54號B1樓(板站)','121.46409','25.013953',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11板站北店', '新北市板橋區文化路一段54號(板站北)','121.463349','25.014555',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11板站東店', '新北市板橋區文化路一段54號(板站東)','121.464325','25.014765',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11板聖店', '新北市板橋區文化路二段472號','121.475066','25.032654',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11板慶店', '新北市板橋區忠孝路37號1樓2樓','121.460999','25.002055',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11板鐵店', '新北市板橋區縣民大道2段7號B1','121.463815','25.014051',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11板權店', '新北市板橋區民權路198-200號','121.459106','25.013842',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松林店', '新北市板橋區松江街109巷1號松江街107號','121.469024','25.030554',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11武江店', '新北市板橋區光武街2巷2號','121.468301','25.024767',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11油庫口店', '新北市板橋區文化路一段188巷38號40號1樓','121.466692','25.019061',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金林店', '新北市板橋區金門街303號305號','121.430069','24.986439',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金園店', '新北市板橋區金門街175號','121.432628','24.990209',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11青蘋果店', '新北市板橋區中山路2段531巷17弄20號','121.482144','25.021984',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11南雅店', '新北市板橋區新興里南雅南路一段8號1樓','121.456041','25.006499',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建宗店', '新北市板橋區溪福里篤行路3段玉平巷76弄8號及10號','121.427641','24.985812',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建茗店', '新北市板橋區四川路一段104號','121.45969','25.004568',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11春秋店', '新北市板橋區莒光路40巷14號16號','121.470191','25.023859',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11秋雅店', '新北市板橋區南雅南路2段144巷14號1樓','121.45082','24.995917',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11致理店', '新北市板橋區陽明街23巷29號1樓','121.466222','25.020517',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11英海店', '新北市板橋區雨農路50號','121.461015','25.024355',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11香雅店', '新北市板橋區南雅西路2段297號299號','121.452129','25.01557',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11埔西店', '新北市板橋區文化路一段419之5號1樓','121.467415','25.022542',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11埔站店', '新北市板橋區民生路二段247號1樓','121.468037','25.022053',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11埔運店', '新北市板橋區民生路三段40號42號1樓','121.467567','25.025001',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11埔墘店', '新北市板橋區永豐街87號','121.473532','25.019079',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11家豐店', '新北市板橋區中山路二段137號1樓','121.475054','25.016708',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11家麒店', '新北市板橋區宏國路27號','121.46773','25.031558',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11海山店', '新北市板橋區漢生東路310號','121.471331','25.008669',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11偉嘉店', '新北市板橋區文化路一段270巷3弄2號','121.467606','25.020836',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國和店', '新北市板橋區和平路29號','121.459829','24.995555',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國府店', '新北市板橋區國光路184號186號1樓','121.460963','25.018378',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國庭店', '新北市板橋區國光路1號3號1樓','121.456503','25.017299',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國慶店', '新北市板橋區國慶路151號','121.461471','24.996175',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11勝多店', '新北市板橋區縣民大道三段270巷2-6號','121.477959','25.023288',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11智樂店', '新北市板橋區新生街89巷2號','121.458214','25.022021',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華翠店', '新北市板橋區莒光路63號','121.471235','25.024207',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華德店', '新北市板橋區四川路2段47巷3弄8號及8之1號','121.454465','24.994688',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11貴興店', '新北市板橋區貴興路25號27號1樓','121.457792','25.004167',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雅東店', '新北市板橋區南雅東路31之1號5號6號7號1樓','121.454381','25.006162',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雅盛店', '新北市板橋區漢生東路181號183號1樓','121.469764','25.011785',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11園林店', '新北市板橋區南雅西路二段102號104號1樓','121.452311','25.011828',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新巨蛋店', '新北市板橋區長江路一段419號421號423號','121.463155','25.031063',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新兆圓店', '新北市板橋區實踐路34號34-1號1樓','121.463555','25.00707',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新亞醫店', '新北市板橋區南雅南路二段21號1樓2樓','121.452772','24.997265',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新板橋店', '新北市板橋區文化路1段135號','121.462031','25.01521',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新展店', '新北市板橋區大觀路二段185號1樓','121.444826','24.99986',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新海店', '新北市板橋區文德里新海路138號','121.460875','25.023297',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新僑中店', '新北市板橋區僑中一街124巷3弄3號','121.445737','25.012299',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新翠華店', '新北市板橋區三民路一段31巷14號16號','121.480045','25.022967',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新觀和店', '新北市板橋區大觀路二段55號57號1樓','121.446719','25.002767',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11溪州店', '新北市板橋區溪崑二街108.110號1樓','121.426475','24.988702',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11溪崑店', '新北市板橋區大觀路3段212巷70號72號1樓','121.430163','24.99321',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞林店', '新北市板橋區龍翠里大同街52號','121.478844','25.027565',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞新店', '新北市板橋區瑞安街75號','121.455697','25.021243',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬板店', '新北市板橋區莒光路221號223號','121.474228','25.022787',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬鄰店', '新北市板橋區華江里民生路二段226巷46號1樓','121.471617','25.022315',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11裕民店', '新北市板橋區裕民街126號','121.458945','25.0274',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11僑一店', '新北市板橋區僑中一街104號','121.446608','25.01174',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11漢西店', '新北市板橋區漢生西路64號66號1樓','121.463157','25.018943',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11漢東店', '新北市板橋區漢生東路309號','121.471827','25.008234',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福利店', '新北市板橋區中山路二段172號','121.477048','25.017184',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11維陽店', '新北市板橋區陽明街131號','121.463436','25.023774',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11維群店', '新北市板橋區四維路139號','121.465034','25.025324',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11維禮店', '新北市板橋區四維路278號280號1樓','121.463222','25.02882',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11遠揚店', '新北市板橋區南雅南路2段124號','121.452025','24.997106',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11慶中店', '新北市板橋區重慶路159號161號','121.462684','25.002846',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樂福店', '新北市板橋區中山路二段304號306號1樓','121.479919','25.018851',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11緯中店', '新北市板橋區中正路21號23號','121.456045','25.012542',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11戰國店', '新北市板橋區永豐街173號175號','121.475867','25.020611',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樹中店', '新北市板橋區溪城路105號1樓','121.427538','24.982829',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11縣東店', '新北市板橋區縣民大道二段108號1樓','121.467153','25.015361',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11縣道店', '新北市板橋區縣民大道二段196號','121.469372','25.017046',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興板店', '新北市板橋區德興街22號24號','121.45275','24.994392',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11館東店', '新北市板橋區館前東路17號','121.460032','25.007221',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11館慶店', '新北市板橋區館前東路26號1樓','121.460332','25.007097',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍翠店', '新北市板橋區雙十路二段138之1號138之2號','121.47367','25.02911',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11糧驛店', '新北市板橋區德翠里龍泉街93號','121.456995','25.02462',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11舊社店', '新北市板橋區中山路2段412號','121.482872','25.020878',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11豐成店', '新北市板橋區三民路1段31巷89弄10號12號1樓','121.481799','25.023525',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙源店', '新北市板橋區雙十路二段47巷30號32號','121.475296','25.025883',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11馥都店', '新北市板橋區中山路二段399號401號','121.480321','25.019683',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11懷民店', '新北市板橋區民治街111號','121.47855','25.031196',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11懷翠店', '新北市板橋區懷德街181巷23號','121.48018','25.030232',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11懷德店', '新北市板橋區懷德街55號57號','121.477322','25.032679',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11耀心店', '新北市板橋區中山路一段50巷22-2-15-39-46號','121.46148','25.008774',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11議會店', '新北市板橋區莊敬路60號','121.472661','25.026505',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀泰店', '新北市板橋區大觀路2段174巷166弄2號4號','121.441865','25.003227',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀龍店', '新北市板橋區龍興街24號','121.442963','25.000124',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三禾店', '新北市三重區大智街139號139之2號1樓','121.490777','25.071002',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三好店', '新北市三重區自強路四段102號104號1樓','121.491267','25.079812',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三安店', '新北市三重區正義北路235號','121.495862','25.069228',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三重店', '新北市三重區重新路3段18號','121.495016','25.061409',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11下竹圍店', '新北市三重區下竹圍街26號','121.480981','25.075513',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大智店', '新北市三重區大同北路63號','121.495197','25.063483',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大興店', '新北市三重區仁華街80巷27號1樓','121.484536','25.083961',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中南店', '新北市三重區中正南路248-1號248-2號','121.493603','25.053986',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11五華店', '新北市三重區五華街148號','121.491193','25.084047',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仁仁店', '新北市三重區仁愛街50號','121.495907','25.072602',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11分子尾店', '新北市三重區仁愛街479號479之1號','121.489091','25.082177',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天台店', '新北市三重區仁德里正義南路13號15號1樓','121.497892','25.061661',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天勝店', '新北市三重區仁愛街687號','121.48328','25.080932',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天龍店', '新北市三重區龍門路217號219號221號','121.500253','25.073343',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文興店', '新北市三重區文化南路7號','121.500028','25.062384',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11日揚店', '新北市三重區中正北路18之2號之3號之4號1樓','121.488508','25.063158',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11平安店', '新北市三重區正義北路51號','121.497456','25.064165',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正大店', '新北市三重區中正北路235號','121.475879','25.070634',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正孝店', '新北市三重區中正北路151號153號','121.482569','25.06773',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正南店', '新北市三重區正義南路67號69號','121.498232','25.060178',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正強店', '新北市三重區自強路一段38號40號1樓','121.497958','25.067174',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正陽店', '新北市三重區正義北路386號388號','121.49315','25.071469',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正龍店', '新北市三重區正義北路332號','121.494525','25.070701',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11立行店', '新北市三重區力行路2段160號','121.482769','25.076486',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11立福店', '新北市三重區力行路一段60之1號60之2號1樓','121.484572','25.069068',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11合康店', '新北市三重區永福街199及201-2號','121.479743','25.074581',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11百利店', '新北市三重區仁義街208號','121.496396','25.082165',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11百義店', '新北市三重區仁義街232號','121.494489','25.085069',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11車路頭店', '新北市三重區車路頭街135號','121.48412','25.075811',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11幸亞店', '新北市三重區溪尾街29號','121.491461','25.075527',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11幸福店', '新北市三重區自強路1段272號','121.492084','25.067756',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明益店', '新北市三重區忠孝路三段61號','121.480752','25.066269',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長元店', '新北市三重區長元街2-2號','121.498838','25.065835',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長泰店', '新北市三重區介壽路1號','121.499021','25.068989',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長揚店', '新北市三重區三和路二段6號之2','121.501213','25.066714',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長壽店', '新北市三重區正義北路159號','121.496555','25.067182',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11前瞻店', '新北市三重區新北大道2段258號','121.466455','25.061685',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11美吉店', '新北市三重區集美街240號','121.492263','25.055964',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11美慈店', '新北市三重區慈愛街52號','121.486213','25.079267',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11虹諭店', '新北市三重區中正北路193巷21弄43號','121.478994','25.071074',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11重安店', '新北市三重區重安街60號及60-1號','121.490915','25.057484',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11重美店', '新北市三重區重新路四段100號102號1樓','121.48775','25.056978',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11重富店', '新北市三重區溪尾街321號323號1樓','121.487972','25.084338',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11重智店', '新北市三重區大智街195號','121.489347','25.073458',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11重華店', '新北市三重區五華街181號185號1樓','121.4901','25.085345',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11重新店', '新北市三重區重新路四段45號','121.487981','25.057592',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11重運店', '新北市三重區三和路四段111-1及111-2號1樓','121.485704','25.077452',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11重樂店', '新北市三重區三信路196號1樓','121.487197','25.085472',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11竑嘉店', '新北市三重區仁愛街32號之1','121.496504','25.071578',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11修德店', '新北市三重區重陽路3段11號13號1樓','121.489416','25.066542',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泰和店', '新北市三重區長安街71號1樓','121.501411','25.067385',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11真旺店', '新北市三重區成功路50巷1號','121.488872','25.050543',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11陡門頭店', '新北市三重區三民街329號','121.476998','25.069063',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11高仁店', '新北市三重區仁愛街274號','121.492766','25.078621',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11健華店', '新北市三重區忠孝路二段63號','121.484944','25.070655',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11清茂店', '新北市三重區成功路106號之2','121.487281','25.051548',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11頂崁店', '新北市三重區光復路一段82號1樓','121.471783','25.050355',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11頂華店', '新北市三重區頂崁街189號','121.477522','25.06649',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富仟店', '新北市三重區五谷王北街139號','121.476248','25.052102',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復貴店', '新北市三重區光復路2段146之2號1樓','121.471965','25.059969',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11湯旺店', '新北市三重區重新路五段609巷2之3號1樓','121.467991','25.045631',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11湯城店', '新北市三重區重新路5段609巷12號之9之10','121.468628','25.046361',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11登頂店', '新北市三重區光復路2段2號','121.471891','25.05342',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11集吉店', '新北市三重區三賢街61號63號1樓','121.489177','25.088844',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11集美店', '新北市三重區集美街107號','121.489429','25.052865',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11集興店', '新北市三重區光明里24鄰集美街202號','121.491058','25.053924',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11匯和店', '新北市三重區三和路4段390巷2號','121.481901','25.078971',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11慈佑店', '新北市三重區溪尾街189號191號','121.488702','25.08051',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11愛家店', '新北市三重區中興北街42巷11號','121.469126','25.049355',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新洛華店', '新北市三重區中華路113號115號','121.483637','25.06349',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新陽店', '新北市三重區三陽路62號64號','121.484076','25.058605',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福運店', '新北市三重區福德北路57號59號1樓','121.502378','25.065447',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福濱店', '新北市三重區龍濱路51號53號1樓','121.502767','25.068811',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11銀座店', '新北市三重區信義西街4號','121.498985','25.06471',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興光店', '新北市三重區大同南路220號','121.4969','25.056441',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興頂店', '新北市三重區中興北街177號','121.469147','25.056097',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興園店', '新北市三重區重陽路1段132號134號1樓','121.486502','25.060533',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍濱店', '新北市三重區龍濱路207號209號','121.502021','25.071817',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11環德店', '新北市三重區福德南路38號1樓','121.502993','25.062685',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫強店', '新北市三重區自強路三段30號32號','121.486836','25.072388',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11一新店', '新北市中和區福祥里27鄰永和路56號58號1樓','121.499121','25.004277',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中安店', '新北市中和區宜安路62號66號','121.511564','24.997141',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11元龍店', '新北市中和區板南路655號1樓','121.484075','25.007847',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天城店', '新北市中和區景平路240巷1弄4號','121.515338','24.993097',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11日福店', '新北市中和區中和路380號','121.510679','25.002078',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11水源店', '新北市中和區中山路2段62號','121.503978','25.00469',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11世紀店', '新北市中和區中正路710號1樓K棟','121.485553','24.9974',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民自店', '新北市中和區冠穗里民享街38號38之1號','121.473909','25.003006',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民德店', '新北市中和區民德路47號47-1號','121.468982','25.002025',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永振店', '新北市中和區南華路16號','121.502643','24.995619',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永華店', '新北市中和區南山路127巷18弄42號1樓','121.503579','24.996537',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11立言店', '新北市中和區中正路872號','121.484085','25.006331',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11立德店', '新北市中和區立德街103號','121.485143','25.009032',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11全茂店', '新北市中和區連城路469巷9號11號','121.483656','24.995604',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吉客店', '新北市中和區德光路90號92號1樓','121.468785','25.003594',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11安斌店', '新北市中和區中安街84號86號1樓','121.511985','25.001736',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11艾德蒙店', '新北市中和區中正路738號1樓','121.485592','24.998015',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11孝忠店', '新北市中和區忠孝街37巷2號','121.511055','24.98355',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏禧店', '新北市中和區景平路429號1樓','121.501381','24.995427',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏鑫店', '新北市中和區中正路837號','121.484647','25.002326',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11沅氣店', '新北市中和區中山路三段29號31號1樓','121.479204','25.005786',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11秀杉店', '新北市中和區自立路129號131號','121.522016','24.994068',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11秀景店', '新北市中和區成功路115號117號','121.526024','24.991004',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11佳客店', '新北市中和區民德路126號126之1號','121.468485','25.001332',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和捷店', '新北市中和區和平街84號86號88號1樓','121.50757','24.991281',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和復店', '新北市中和區復興路19號','121.505741','24.989711',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和錦店', '新北市中和區錦和路402號404號','121.490897','24.989899',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和醫店', '新北市中和區中正路291號B1','121.493879','24.993787',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宜安店', '新北市中和區宜安路103號1樓','121.510363','24.997714',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11杰明店', '新北市中和區泰和街25號1樓','121.499419','24.999865',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11板南店', '新北市中和區板南路486號','121.488064','25.006472',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11板勝店', '新北市中和區連城路219巷4號','121.494438','24.997282',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11松旺店', '新北市中和區中山路三段108號','121.477052','25.005803',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11保健店', '新北市中和區保健路2巷1號1樓','121.507814','24.998185',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11冠德店', '新北市中和區景平路71-5號','121.518887','24.99157',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11南谷店', '新北市中和區中和路257號','121.50517','24.99979',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11南勢角店', '新北市中和區興南路1段55號','121.510751','24.990166',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建一店', '新北市中和區建康路101號','121.488296','25.000307',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建六店', '新北市中和區建六路62號','121.486109','25.002031',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建康店', '新北市中和區建康路270號','121.492926','25.000138',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11春吉店', '新北市中和區建一路148號','121.487962','24.998782',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11員山店', '新北市中和區員山路163號','121.481127','24.996923',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11員新店', '新北市中和區員山路504號','121.479443','25.008219',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11家美店', '新北市中和區中山路二段317號之1','121.493912','25.002031',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泰隆店', '新北市中和區立德街102號','121.487055','25.008165',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11得晴店', '新北市中和區景平路239巷1號1樓','121.509756','24.992687',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11捷興店', '新北市中和區興南路1段81號','121.509928','24.988989',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11莒光店', '新北市中和區莒光路138號1樓','121.472365','25.001212',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11莒城店', '新北市中和區莒光路91號93號1樓','121.472446','25.003174',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11連城店', '新北市中和區連城路89巷3之1號5之1號1樓','121.497083','24.999687',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11連通店', '新北市中和區圓通路293號','121.494944','24.992534',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11連勝店', '新北市中和區景平路513號','121.49931','24.998717',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11頂新店', '新北市中和區興南路2段49號51號','121.507282','24.985292',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富興店', '新北市中和區中興里復興路277-1號279號','121.502276','24.990205',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景仁店', '新北市中和區東南里14鄰忠孝街103號1樓','121.511907','24.98623',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景安店', '新北市中和區景安路210號','121.503941','24.990861',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景旺店', '新北市中和區成功路1號','121.526373','24.994185',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景順店', '新北市中和區中正路778號1樓','121.485297','25.000555',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景圓店', '新北市中和區圓通路162-1號162-2號1樓','121.497514','24.995425',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景愛店', '新北市中和區仁愛街45號47號1樓','121.511106','24.988272',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景新店', '新北市中和區景新街436號','121.513023','24.988428',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景福店', '新北市中和區景新街467巷22號','121.514194','24.988369',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景禮店', '新北市中和區景安路100號102號','121.505419','24.995616',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景鑫店', '新北市中和區中正路683號','121.484984','24.998085',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11圓通店', '新北市中和區圓通路280號282號','121.491629','24.990756',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新民享店', '新北市中和區民享街91號','121.474391','25.001471',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新和高店', '新北市中和區中正路502號1樓','121.488775','24.994482',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新連正店', '新北市中和區連城路347巷2號','121.488084','24.996001',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新積穗店', '新北市中和區民安街27號29號1樓','121.480279','25.000494',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11椰城店', '新北市中和區安平路61號','121.510029','24.995597',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聖武店', '新北市中和區新生街48號50號1樓','121.483214','25.003099',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11嘉新店', '新北市中和區員山路419號421號1樓','121.480944','25.003314',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11壽德店', '新北市中和區壽德街11號1樓','121.465106','24.995885',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11漳和店', '新北市中和區中山路2段131-6號','121.5024','25.003131',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福和店', '新北市中和區秀朗里大勇街25巷1號','121.51716','24.993195',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福泉店', '新北市中和區福祥路68號70號','121.499387','25.005163',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福美店', '新北市中和區景平路756號758號','121.496447','25.004714',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福真店', '新北市中和區景平路679號681號','121.496501','25.0029',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福勝店', '新北市中和區福祥路158號','121.498586','25.007546',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廣麗店', '新北市中和區廣福路87號89號91號1樓','121.50208','25.000921',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德旺店', '新北市中和區壽德街22號1樓','121.466219','24.994651',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德偉店', '新北市中和區中興街162號164號','121.499828','24.991505',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樂鑫店', '新北市中和區新生街146號','121.483532','25.000729',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11橋安店', '新北市中和區橋安街20號1F','121.492372','25.005324',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興和店', '新北市中和區自立路187號189號1樓','121.524015','24.991435',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興榮店', '新北市中和區福南里21鄰興南路二段90號1樓','121.50541','24.984468',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11錦盛店', '新北市中和區錦盛里圓通路335巷三弄21號','121.493456','24.990349',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11環冠店', '新北市中和區中山路3段118之6之7之8號1樓','121.474917','25.008812',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11禧緻店', '新北市中和區華新街156號','121.507586','24.982348',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11藍山店', '新北市中和區南山路41號及37巷2號','121.502187','24.99872',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大正店', '新北市永和區中正路559號561號1樓2樓','121.516726','25.00835',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仁愛店', '新北市永和區仁愛路128號130號1樓','121.511271','25.01317',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仁寶店', '新北市永和區仁愛路302號304號','121.503516','25.008115',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11元坊店', '新北市永和區保安路134號136號','121.508694','25.01523',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北福店', '新北市永和區福和路121號1樓','121.521713','25.007686',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民光店', '新北市永和區中正路166號','121.515032','24.996708',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永中店', '新北市永和區中山路一段58號','121.512925','25.010745',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永平店', '新北市永和區中山路一段149至153號','121.509997','25.009429',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永竹店', '新北市永和區竹林路146號','121.520091','25.010827',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永利店', '新北市永和區永元里永元路93號','121.522322','25.0017',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永和店', '新北市永和區文化路7號','121.515375','25.014975',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永興店', '新北市永和區竹林路98號','121.519573','25.012068',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永權店', '新北市永和區民權路52號54號','121.519993','24.99833',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宇陽店', '新北市永和區永利路77號','121.521277','25.003607',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11安福店', '新北市永和區福和路213號','121.519192','25.007476',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11有民店', '新北市永和區民有街9號11號1樓','121.516308','24.996935',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11竹林店', '新北市永和區竹林路211號','121.520767','25.008879',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏圖店', '新北市永和區永和路一段85號','121.513366','25.007387',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11秀朗店', '新北市永和區得和路389號391號1樓','121.525266','24.99932',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和和店', '新北市永和區秀朗路2段128號','121.524913','25.001491',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11孟揚店', '新北市永和區秀和里林森路62號','121.523894','25.004153',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11忠信店', '新北市永和區中興街101號','121.518428','25.012237',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昇庚店', '新北市永和區永貞路182號184號','121.516213','25.004289',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昇陽店', '新北市永和區雙和里1鄰中和路417號419號','121.50915','25.000665',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11保平店', '新北市永和區保平路135號','121.510263','25.006191',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11保生店', '新北市永和區保安里保生路1號','121.5066','25.007141',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11保順店', '新北市永和區保順路39號及保順路37巷2號','121.503144','25.010593',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11保騰店', '新北市永和區信義路16號','121.514544','25.012109',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11保鑽店', '新北市永和區潭墘里安樂路138號140號','121.514192','25.000256',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11界和店', '新北市永和區中和路339號339號之1','121.507638','24.999777',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11得和店', '新北市永和區中正路342號','121.517833','25.000257',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11得福店', '新北市永和區得和路241號','121.520326','25.000105',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11添丁店', '新北市永和區永貞路404號1樓','121.509079','25.007735',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富朋店', '新北市永和區永和路二段116號','121.515144','25.011985',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復美店', '新北市永和區秀朗路1段146號','121.518158','25.00333',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新永元店', '新北市永和區永元路28號30號','121.52226','25.00068',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新保捷店', '新北市永和區保生路22巷2號1樓','121.506959','25.007635',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新保福店', '新北市永和區保安路220號','121.50734','25.013624',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福愛店', '新北市永和區永平路274號仁愛路242號','121.508127','25.011558',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11潭安店', '新北市永和區中正路167號','121.516511','24.998566',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11豫溪店', '新北市永和區中正路702巷1號3號及中正路710號','121.516237','25.010127',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍馬店', '新北市永和區文化路188號','121.511247','25.016014',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11環永店', '新北市永和區環河西路2段231號233號1樓','121.50099','25.009859',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11邁群店', '新北市永和區民生路42號','121.522432','24.996854',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11麗金店', '新北市永和區成功路一段83號85號1樓','121.527163','25.003019',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11一級棒店', '新北市新莊區中山路3段488號490號','121.413191','25.030154',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三洋店', '新北市新莊區中正路677號679號','121.426334','25.029829',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中央店', '新北市新莊區中平路439號B1樓','121.443795','25.056531',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中泰店', '新北市新莊區中港一街10號10-1號','121.451643','25.045828',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中港店', '新北市新莊區中港路133號','121.455226','25.040182',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11丹鳳店', '新北市新莊區雙鳳里中山路三段664號','121.413577','25.023629',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11五工店', '新北市新莊區福基里17鄰五工二路91號','121.459283','25.066597',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11加州店', '新北市新莊區中平路81巷2號','121.444636','25.045346',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11弘安店', '新北市新莊區萬安街82號84號','121.420645','25.022964',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11光華店', '新北市新莊區民安西路390號','121.428433','25.010333',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11后福店', '新北市新莊區後港一路29號','121.425184','25.026073',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11安復店', '新北市新莊區復興路1段213號','121.452463','25.043863',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11西盛店', '新北市新莊區民安西路113號之1','121.426676','25.017922',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏全店', '新北市新莊區中和街61號','121.447462','25.046984',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏福店', '新北市新莊區公園一路34號36號1樓','121.443509','25.035416',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宏懋店', '新北市新莊區民安西路70號72號1樓','121.427131','25.020136',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11宜增店', '新北市新莊區立基里33鄰中平路192號','121.444981','25.048234',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11幸和店', '新北市新莊區中和街174號176號1樓','121.447534','25.049243',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昌宏店', '新北市新莊區昌隆街31號','121.454729','25.050952',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11林宏店', '新北市新莊區成功街1號','121.426236','25.02213',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11花旗店', '新北市新莊區中港路132巷26號','121.456479','25.040652',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11采旺店', '新北市新莊區天祥街74號','121.415904','25.029331',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金座店', '新北市新莊區長青街5號7號','121.459092','25.042155',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11品嘉店', '新北市新莊區新樹路69之4號之5號1樓','121.439091','25.030067',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建中店', '新北市新莊區建中街6號8號','121.449759','25.03759',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11後港店', '新北市新莊區後港一路76巷14弄1號1樓','121.427277','25.025543',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11思源店', '新北市新莊區幸福路40號42號','121.457941','25.049507',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11美新店', '新北市新莊區復興路二段141號143號','121.457574','25.044528',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11茂源店', '新北市新莊區思源路40-1號','121.4602','25.043394',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11原成店', '新北市新莊區化成路305號1樓','121.465848','25.055453',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11時安店', '新北市新莊區建安街95號97號1樓','121.426947','25.024274',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11真豪店', '新北市新莊區中華路1段73號','121.452237','25.040022',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國瑞店', '新北市新莊區新樹路300號之5','121.432756','25.00627',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11添祥店', '新北市新莊區天祥街22號24號1樓','121.4175','25.02734',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11莊成店', '新北市新莊區化成路354號','121.465943','25.049243',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11莊泰店', '新北市新莊區新泰路21號','121.44957','25.032858',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11莊勝店', '新北市新莊區八德街59號61號1樓','121.424884','25.022237',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11莊龍店', '新北市新莊區龍安路66號','121.415191','25.021493',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11傑元店', '新北市新莊區中正路929巷11號13號','121.411209','25.020338',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11傑出店', '新北市新莊區昌平街61號63號1樓2樓','121.4546','25.053228',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富旺店', '新北市新莊區自立街172號','121.455706','25.04537',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富新店', '新北市新莊區瓊林南路118-5號','121.433739','25.011274',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富營店', '新北市新莊區富國路20號1樓','121.418464','25.026331',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復和店', '新北市新莊區復興路一段79號81號1樓','121.448196','25.042754',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11港義店', '新北市新莊區中港路527號','121.451744','25.051242',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新化成店', '新北市新莊區化成路213號1樓','121.465814','25.051713',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新安店', '新北市新莊區民安東路185號187號部份1樓','121.433189','25.020504',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新年店', '新北市新莊區豐年街54號','121.44639','25.031621',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新宏盛店', '新北市新莊區後港一路114號','121.428626','25.026981',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新茂店', '新北市新莊區化成路118號120號','121.465419','25.044385',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新展盛店', '新北市新莊區西盛街325號327號1樓','121.428117','25.014671',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新泰店', '新北市新莊區新泰路267號','121.445842','25.040093',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新統義店', '新北市新莊區建中街91號93號1樓','121.446865','25.036403',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新港原店', '新北市新莊區中原路201號203號1樓','121.450403','25.054215',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新福圓店', '新北市新莊區五工三路93號1樓','121.458086','25.065356',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新遠店', '新北市新莊區中正路651號之8號','121.430038','25.030181',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新樹店', '新北市新莊區新樹路166號及民安路461號','121.434869','25.022562',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新龍店', '新北市新莊區光明里民安西路232號','121.425877','25.01438',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新龍俊店', '新北市新莊區龍安路351號353號1樓','121.422859','25.019149',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11榮和店', '新北市新莊區中和街191巷1號3號5號','121.447099','25.051076',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11榮信店', '新北市新莊區中原里中榮街25鄰90號92號1樓','121.447777','25.052963',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11榮富店', '新北市新莊區中榮街43號47號','121.449726','25.05267',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福來店', '新北市新莊區五權一路8號','121.456901','25.0647',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福基店', '新北市新莊區福基里五工路70號','121.45792','25.063562',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福港店', '新北市新莊區中港路390號','121.4524','25.049244',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福壽店', '新北市新莊區福壽街140號','121.45784','25.051832',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福營店', '新北市新莊區福營里建國一路50號52號','121.433979','25.03101',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11維妮店', '新北市新莊區四維路17號19號','121.423754','25.024389',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11輔大店', '新北市新莊區中正路516-1號','121.433449','25.032465',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11輔明店', '新北市新莊區中正路514巷99號','121.428767','25.035784',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11輔泰店', '新北市新莊區三泰路11號','121.437893','25.034955',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11輔進店', '新北市新莊區中正路510號','121.430113','25.037365',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鳳祥店', '新北市新莊區中正路708-2號','121.416678','25.02492',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廣進店', '新北市新莊區四維路173號','121.422379','25.021482',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興洲店', '新北市新莊區新泰路472號1樓','121.443141','25.045279',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11錦興店', '新北市新莊區思源路181號','121.459671','25.045531',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11頭前店', '新北市新莊區化成路429-4號','121.464832','25.059962',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍安店', '新北市新莊區龍安路256號','121.42141','25.019463',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍盛店', '新北市新莊區西盛街204巷1號1樓206號1樓','121.428015','25.018045',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙泰店', '新北市新莊區新泰路330號','121.444927','25.041947',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙鳳店', '新北市新莊區雙鳳路114號1樓','121.413505','25.028161',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11藝高店', '新北市新莊區中平路357號','121.444585','25.051727',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11藝寶店', '新北市新莊區立信三街8號','121.443705','25.049497',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11儷新店', '新北市新莊區新樹路451號','121.43277','25.013386',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫福店', '新北市新莊區幸福路727號1樓','121.449314','25.049042',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11二十張店', '新北市新店區二十張路5號1樓','121.540123','24.982683',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11凡賽絲店', '新北市新店區安民街290號1樓','121.517713','24.973382',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大坪林店', '新北市新店區民權路18號','121.54204','24.983002',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大盛店', '新北市新店區建國路133號','121.53921','24.978377',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中行店', '新北市新店區中興路一段193號195號','121.543231','24.96522',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11五峰店', '新北市新店區中興路一段252號','121.544657','24.966817',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11及人店', '新北市新店區安民街72號','121.516533','24.966624',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天闊店', '新北市新店區環河路16號','121.537168','24.961789',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北宜店', '新北市新店區北宜路二段82號之2','121.553574','24.953289',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北新店', '新北市新店區北新路1段289號291號','121.540964','24.967144',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11正民店', '新北市新店區中正路508號1樓','121.533876','24.982984',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11全新店', '新北市新店區安康路2段147號1樓','121.511295','24.95993',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11同仁店', '新北市新店區民權路96號','121.536679','24.983069',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11安民店', '新北市新店區安民街133巷9號11號','121.5161','24.969122',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11安成店', '新北市新店區安成街35號29號','121.509988','24.96093',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11安佳店', '新北市新店區安祥路111號','121.47537','24.956949',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11安忠店', '新北市新店區安忠路20號','121.514398','24.96195',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11安城店', '新北市新店區安康路一段283號','121.52365','24.963449',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11江菱店', '新北市新店區民權路93號1樓','121.537304','24.982756',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11百和店', '新北市新店區中正路306號308號','121.537475','24.974572',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11百福店', '新北市新店區三民路50號52號1樓','121.535703','24.972046',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11百豐店', '新北市新店區安康路一段168號1樓','121.525999','24.963178',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11青潭店', '新北市新店區北宜路一段41-1號','121.538279','24.957292',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11冠冠店', '新北市新店區北新路1段231號','121.540552','24.965763',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11南強店', '新北市新店區中興路3段168號1F','121.544409','24.98096',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建國店', '新北市新店區中正路236號','121.539741','24.973084',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11康曜店', '新北市新店區安康路三段41號','121.49291','24.952782',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11涵碧店', '新北市新店區碧潭路37號','121.534118','24.95636',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統和店', '新北市新店區安和里安民街335號337號','121.517149','24.974797',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統客店', '新北市新店區寶興路49號','121.549455','24.973283',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11莊鑫店', '新北市新店區中正路519號','121.533391','24.985164',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11連豐店', '新北市新店區大豐路12號','121.541258','24.980338',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11景大店', '新北市新店區安忠路71巷1號1樓','121.511358','24.957423',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新中店', '新北市新店區中正路160號1樓','121.541371','24.971944',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新正店', '新北市新店區中正路682號','121.534121','24.989892',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新和店', '新北市新店區新和街70號72號1樓','121.520162','24.985535',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新宜店', '新北市新店區北宜路二段4號6號','121.54759','24.951895',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新店站店', '新北市新店區北宜路一段2號','121.537557','24.957872',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新明店', '新北市新店區光明街140號','121.539469','24.961397',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新矽谷店', '新北市新店區北新路三段205-1號','121.539933','24.984448',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新順安店', '新北市新店區順安街57號','121.540822','24.986176',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新極景店', '新北市新店區北新路2段252-1號','121.542865','24.978',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新猷店', '新北市新店區安和路三段77號','121.51772','24.983649',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新福民店', '新北市新店區中央路135號','121.530388','24.973797',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新廣店', '新北市新店區中正路542之5號1樓','121.533791','24.985693',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新燕店', '新北市新店區新烏路2段382號384號1樓','121.551186','24.909402',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新錦秀店', '新北市新店區錦秀路13號15號1樓','121.479613','24.944746',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新贊店', '新北市新店區北新路1段14號1樓','121.540914','24.965489',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新鵬店', '新北市新店區中正路696號1樓','121.53416','24.990596',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新寶橋店', '新北市新店區寶橋路192號','121.550693','24.97819',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11嶄新店', '新北市新店區中正路57-2號1樓','121.544247','24.969975',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11碧潭店', '新北市新店區北宜路一段28號','121.538076','24.956896',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11碧興店', '新北市新店區北宜路一段120號122號1樓','121.539068','24.954965',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福強店', '新北市新店區三民路147之1號149號1樓','121.533887','24.972862',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福德店', '新北市新店區三民路179號1樓','121.534852','24.975259',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德正店', '新北市新店區德正街23巷1號','121.544057','24.971966',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德玉店', '新北市新店區安康路三段195號','121.488015','24.951684',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鎮鑫店', '新北市新店區中興路1段289號','121.545521','24.968847',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙建店', '新北市新店區二十張路64號64之1號1樓','121.536664','24.980183',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙鑫店', '新北市新店區北新路二段169號','121.542734','24.976235',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11寶中店', '新北市新店區寶慶街66號','121.541804','24.986891',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11寶科店', '新北市新店區寶橋路235巷5號1樓','121.551536','24.98019',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11寶強店', '新北市新店區寶中路88號1樓','121.548623','24.980264',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11寶新店', '新北市新店區北新路二段57號','121.542718','24.973256',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11寶福店', '新北市新店區寶橋路78巷3號1F','121.546956','24.975135',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三暉店', '新北市樹林區樹福里復興路1號','121.422937','24.995014',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11千歲店', '新北市樹林區千歲街26-10號','121.425299','24.996039',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大東圓店', '新北市樹林區柑園街一段67號67-1號67-2號1樓','121.402265','24.960155',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大展店', '新北市樹林區俊英街232號234號1樓','121.425049','25.01033',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大智通店', '新北市樹林區佳園路二段70-1號','121.390565','24.959562',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11山佳店', '新北市樹林區中山路3段87號','121.400112','24.974708',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11友勤店', '新北市樹林區大有路65號1樓','121.383459','24.947562',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11太順店', '新北市樹林區太順街49巷2號','121.41788','24.979136',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11合喬店', '新北市樹林區三福街68號','121.404897','25.016285',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11佳宏店', '新北市樹林區太平路150巷1號','121.418467','24.977916',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11佳辰店', '新北市樹林區佳園路三段488號','121.38244','24.944283',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昌展店', '新北市樹林區復興路67號1樓','121.421657','24.993094',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11昌聖店', '新北市樹林區文化街21號23號1樓','121.419369','24.987576',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11武林店', '新北市樹林區光華街2號4號','121.413611','25.003743',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11俊安店', '新北市樹林區俊英街156號','121.426895','25.006527',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11俊興店', '新北市樹林區三俊街172號1樓','121.417667','25.015295',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11俊龍店', '新北市樹林區三俊街96號1樓','121.414372','25.015479',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11城雅店', '新北市樹林區學成路519號1樓','121.379802','24.945952',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11御昇店', '新北市樹林區佳園路二段34號1樓','121.39156','24.962754',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統友店', '新北市樹林區中山路一段86號','121.423309','24.99148',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11凱園店', '新北市樹林區國凱街55號1樓','121.420451','24.97902',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11復育店', '新北市樹林區樹西里13鄰育英街146號1樓','121.419053','24.989517',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11順興店', '新北市樹林區東興街41號','121.411511','24.976538',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新宇鈞店', '新北市樹林區大安路115號117號1樓','121.422562','24.997716',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新樹工店', '新北市樹林區保安街二段6號','121.415932','25.001306',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11榮德店', '新北市樹林區東榮街8-10號','121.418127','24.983697',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福多店', '新北市樹林區三福街39號41號','121.408408','25.01661',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11慶斌店', '新北市樹林區中洲街51巷1號','121.396579','24.970917',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11慶嶸店', '新北市樹林區保安街一段323號323-1號1樓','121.417738','24.998149',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11學林店', '新北市樹林區大雅路341號343號1樓','121.378804','24.949395',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樹安店', '新北市樹林區大安路530號1樓','121.413653','24.985878',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樹林店', '新北市樹林區保安街1段3號','121.427141','24.993223',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樹林一店', '新北市樹林區鎮前街112號','121.424601','24.991407',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樹保店', '新北市樹林區保安街二段357號','121.412478','25.010022',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樹英店', '新北市樹林區大同里中華路120號','121.417737','24.980601',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樹復店', '新北市樹林區復興路340號','121.415968','24.986306',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樹園店', '新北市樹林區佳園路一段52號1樓','121.392971','24.970587',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樹新店', '新北市樹林區樹新路245號','121.431207','25.000836',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樹鳳店', '新北市樹林區中正路417號 1樓','121.417008','25.007548',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樹樺店', '新北市樹林區中華路341之5號341之6號一樓','121.415207','24.980154',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樹龍店', '新北市樹林區中正路222號1樓','121.419158','25.006551',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍興店', '新北市樹林區三興里龍興街33號','121.403108','25.015865',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11上北可店', '新北市土城區明德路一段232號','121.460458','24.977479',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11土城店', '新北市土城區中央路三段42號','121.43725','24.967913',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中山二店', '新北市土城區中山路3號B1樓','121.412576','24.96109',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中林店', '新北市土城區員林街14號','121.443115','24.977766',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11太子店', '新北市土城區中山路47號','121.420686','24.962891',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11太陽城店', '新北市土城區中央路四段281之8號281之9號','121.412129','24.953293',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文青店', '新北市土城區青雲路243號245號','121.45923','24.98114',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民生廠店', '新北市土城區民生街4號B1','121.414236','24.961155',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11立金店', '新北市土城區立德路70號72號','121.464072','24.986746',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11光員店', '新北市土城區光明街15號','121.442086','24.974478',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11廷寮店', '新北市土城區清水路237號','121.46123','24.983111',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11志城店', '新北市土城區金城路三段243號245號247號1樓','121.471401','24.989902',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11佳福店', '新北市土城區青雲路152號','121.458989','24.983297',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11延和店', '新北市土城區平和里延和路106號','121.466988','24.98975',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11延城店', '新北市土城區延和路203號1樓','121.469739','24.990294',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11延福店', '新北市土城區延平街36號','121.468137','24.991993',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11忠承店', '新北市土城區忠承路103號1樓','121.438523','24.964784',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11忠華店', '新北市土城區中華路一段185號187號1樓','121.443581','24.98553',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11承天店', '新北市土城區承天路1號','121.435906','24.966287',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泳豐店', '新北市土城區永豐路264之1號','121.469618','24.978765',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金城店', '新北市土城區金城路3段71號','121.466278','24.987169',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金峰店', '新北市土城區明峰街9號11號','121.465681','24.985886',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金源店', '新北市土城區水源街59號','121.440275','24.975991',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金裕店', '新北市土城區柑林里8鄰裕民路257之1號','121.454955','24.98276',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11青雲店', '新北市土城區青雲路499號501號','121.458911','24.973376',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11信利店', '新北市土城區興城路96巷4號','121.440253','24.971878',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11城運店', '新北市土城區承天路10號','121.437274','24.96486',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11皇翔店', '新北市土城區中央路一段88號1樓','121.446928','24.98893',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11皇裕店', '新北市土城區裕民路114巷16號1樓','121.450397','24.986034',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11虹海店', '新北市土城區中央路四段109號111號1樓','121.4167','24.957693',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11高峰店', '新北市土城區中央路二段187號','121.442112','24.975735',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11清和店', '新北市土城區清水路100號','121.457737','24.98148',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11祥吉店', '新北市土城區延吉街194號','121.467771','24.985142',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11祥泰店', '新北市土城區中山路38號','121.425618','24.964254',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11頂埔店', '新北市土城區中央路4段274號276號1樓','121.414541','24.956716',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11崴城店', '新北市土城區中央路4段35-3號','121.423011','24.961944',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11隆城店', '新北市土城區學士路17號','121.453568','24.982687',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新永寧店', '新北市土城區中央路三段191之1號及永寧路1號3號','121.430618','24.964747',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新亞洲店', '新北市土城區亞洲路110號112號1樓','121.434111','24.972286',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新紫城店', '新北市土城區福安街38號40號','121.419164','24.964891',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新裕生店', '新北市土城區裕民路57號及55巷2號','121.449076','24.987998',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新學府店', '新北市土城區學府路1段169號','121.452822','24.985504',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聖運店', '新北市土城區柑林里明德路二段159號','121.448094','24.982977',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福祥店', '新北市土城區中央路一段320號322號','121.443054','24.981654',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德城店', '新北市土城區明德路一段139號141號','121.465312','24.980214',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11慶祥店', '新北市土城區中華路2段126號1樓','121.437391','24.973782',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11學城店', '新北市土城區學府路一段118號','121.455445','24.987597',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11學裕店', '新北市土城區學成路91巷2號93號1樓','121.450824','24.988466',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11濬家店', '新北市土城區廣明街2號','121.456114','24.991784',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鴻成店', '新北市土城區學府路一段28號1樓','121.458347','24.988597',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫城店', '新北市土城區中華路1段94號','121.444545','24.987483',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11文豪店', '新北市蘆洲區民族路402號406號1樓','121.474736','25.091512',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民仁店', '新北市蘆洲區仁愛街58號60號','121.471623','25.093783',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民欣店', '新北市蘆洲區光榮路63號65號67號','121.461126','25.088532',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11永樂店', '新北市蘆洲區永樂街35號37號1樓','121.457931','25.088225',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11池田店', '新北市蘆洲區民族路165號','121.479238','25.088298',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和華店', '新北市蘆洲區正和街28號','121.469756','25.08217',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長九店', '新北市蘆洲區九芎街92號94號1樓','121.465754','25.079972',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長樂店', '新北市蘆洲區長安街269號','121.458539','25.083897',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11前進店', '新北市蘆洲區中正路185巷50號52號1樓','121.467061','25.084841',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11美禎店', '新北市蘆洲區復興路322號','121.481822','25.090257',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11飛龍店', '新北市蘆洲區永安南路二段356號環堤大道2號6號','121.456123','25.082842',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11珈英店', '新北市蘆洲區復興路92號','121.47563','25.086885',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11徐匯店', '新北市蘆洲區中山一路6號1樓','121.480565','25.080585',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泰星店', '新北市蘆洲區成功里長安街276號','121.457384','25.087111',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11健倫店', '新北市蘆洲區保新里4鄰三民路230號','121.468434','25.089648',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統吉店', '新北市蘆洲區永平街32巷12弄1號','121.459171','25.091532',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11統祥店', '新北市蘆洲區復興路18號1樓','121.47213','25.085065',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11智華店', '新北市蘆洲區光華路72號','121.467974','25.082812',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11華安店', '新北市蘆洲區長安街107號','121.461437','25.08088',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11集德店', '新北市蘆洲區集賢路228號1樓','121.482124','25.08641',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11集賢店', '新北市蘆洲區集賢路271號','121.481061','25.083749',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新吉麗店', '新北市蘆洲區中山一路204號1樓','121.473424','25.080912',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新義民店', '新北市蘆洲區民族路122號124號','121.47898','25.085536',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11榮華店', '新北市蘆洲區長榮路75號1樓','121.461944','25.083502',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11領袖店', '新北市蘆洲區集賢路224巷60號62號','121.480957','25.088134',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11憲金店', '新北市蘆洲區光華路22巷1號','121.469433','25.08344',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙捷店', '新北市蘆洲區信義路162號166號168號1樓','121.47928','25.083725',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙華店', '新北市蘆洲區中華街8號','121.463286','25.081611',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆三店', '新北市蘆洲區三民路6號8號','121.476098','25.082174',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆正店', '新北市蘆洲區中正路261號','121.467417','25.087215',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆永店', '新北市蘆洲區永安南路二段18號','121.467519','25.076929',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆安店', '新北市蘆洲區長安街64號1樓','121.462887','25.079986',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆荻店', '新北市蘆洲區永康街1巷35號1樓','121.460134','25.084863',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆揚店', '新北市蘆洲區民生街30號','121.474622','25.078874',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆華店', '新北市蘆洲區長安街140號1樓','121.460184','25.082145',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆樂店', '新北市蘆洲區長樂路55號1樓','121.46298','25.086142',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆權店', '新北市蘆洲區民權路136號138號1樓','121.473121','25.088952',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11蘆讚店', '新北市蘆洲區中山二路184號','121.470481','25.080603',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鷺江店', '新北市蘆洲區長榮路679號1樓','121.460209','25.092132',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11白雲店', '新北市汐止區民權街二段79號之1','121.61927','25.048104',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11旭昇店', '新北市汐止區大同路三段332號','121.679444','25.071089',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11旭泰店', '新北市汐止區建成路57巷1號3號','121.662267','25.072466',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11汐止站店', '新北市汐止區信義路1號','121.662398','25.06915',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11汐忠店', '新北市汐止區忠孝東路282號','121.663733','25.068221',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11汐旺店', '新北市汐止區中興里6鄰中興路105號','121.632281','25.064794',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11汐政店', '新北市汐止區汐萬路一段222號','121.651755','25.072901',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11汐科店', '新北市汐止區大同路二段167-1號1樓','121.65108','25.064096',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11汐峰店', '新北市汐止區仁愛路32號34號1樓','121.660382','25.06279',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11汐湖店', '新北市汐止區康寧街141巷49號51號1樓','121.621204','25.067945',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11汐福店', '新北市汐止區福德一路243號','121.633895','25.064776',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11艾科卡店', '新北市汐止區茄苳路196號','121.670229','25.06906',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11伯爵店', '新北市汐止區明峰街12號','121.635058','25.071522',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明峰店', '新北市汐止區明峰街179之1號','121.628607','25.06994',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明園店', '新北市汐止區汐萬路二段62巷1號1樓','121.649475','25.082295',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東科大店', '新北市汐止區新台五路一段96號','121.648379','25.060248',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11東晴店', '新北市汐止區新台五路2段80號','121.662341','25.065827',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11矽功店', '新北市汐止區大同路1段284號','121.634743','25.057606',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11社后店', '新北市汐止區中興里中興路190號','121.631577','25.065784',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建陽店', '新北市汐止區福德一路452號1樓','121.625448','25.058993',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11建德店', '新北市汐止區福德一路399號1樓','121.627528','25.060512',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11茄苳店', '新北市汐止區忠孝東路357號359號1樓','121.6655','25.07066',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11康湖店', '新北市汐止區康寧街490號','121.632887','25.068468',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11勝福店', '新北市汐止區福德一路98號100號(夾層)樓','121.637673','25.068226',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富鄰店', '新北市汐止區宜興街8號','121.621172','25.041454',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11尊爵店', '新北市汐止區伯爵街32號','121.638973','25.078349',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11智慧店', '新北市汐止區大同路2段281號','121.654124','25.065922',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11湖前店', '新北市汐止區湖前街99號101號','121.631586','25.070862',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11湖鑫店', '新北市汐止區湖前街37號39號1樓','121.632152','25.069698',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11登峰店', '新北市汐止區新台五路一段149號1樓','121.653372','25.062425',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11進益店', '新北市汐止區大同路二段314號','121.655728','25.066661',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鄉長店', '新北市汐止區鄉長路二段16號','121.668716','25.081251',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新工建店', '新北市汐止區中興路60號','121.635715','25.061486',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新旭勝店', '新北市汐止區建成路160巷2號','121.661558','25.073571',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新汐農店', '新北市汐止區樟樹一路113號115號','121.6419','25.064096',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新盛昌店', '新北市汐止區長江街13巷1號','121.654714','25.071306',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新樟樹店', '新北市汐止區樟樹二路255號','121.640781','25.068541',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11實萬店', '新北市汐止區汐萬路二段248號1樓','121.646376','25.088966',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福仁店', '新北市汐止區仁愛路143號','121.663417','25.064342',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福百店', '新北市汐止區福德一路161號','121.636273','25.066451',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11樟福店', '新北市汐止區樟樹一路256號258號1樓','121.642599','25.067311',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11潤安店', '新北市汐止區龍安路32號','121.655126','25.063918',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11橋東店', '新北市汐止區建成路31號33號1樓','121.663984','25.072684',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聯合報店', '新北市汐止區大同路一段369號1樓','121.641684','25.06093',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11二橋店', '新北市鶯歌區中正三路93號','121.338269','24.940923',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三靖店', '新北市鶯歌區三鶯路52號一樓','121.357137','24.942214',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11元町店', '新北市鶯歌區光明街128號130號1樓','121.345322','24.955902',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11尖山店', '新北市鶯歌區國際二路6巷1號','121.338305','24.973854',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金億店', '新北市鶯歌區建國路278號','121.347037','24.953458',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金鶯店', '新北市鶯歌區鶯桃路131-133號','121.338042','24.954511',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長虹店', '新北市鶯歌區鶯桃路432號1樓','121.333196','24.964655',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11國鶯店', '新北市鶯歌區中山路142號1F','121.349817','24.957082',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11博鑫店', '新北市鶯歌區中正三路283-1號283-2號1樓','121.33095','24.937092',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11翔鳳店', '新北市鶯歌區鶯桃路467號469號','121.331982','24.965841',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新鶯歌站店', '新北市鶯歌區文化路68號之1','121.355209','24.954493',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬全店', '新北市鶯歌區鶯桃路660號','121.329114','24.969324',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聖陶店', '新北市鶯歌區文化路407號411號','121.35289','24.949566',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11歌亭店', '新北市鶯歌區尖山里尖山路150號','121.346469','24.948575',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11歌園店', '新北市鶯歌區國華路31號','121.34296','24.955671',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11歌德店', '新北市鶯歌區德昌二街77號之1','121.333241','24.957528',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鳳福店', '新北市鶯歌區鶯桃路2段48號50號1樓','121.325383','24.972793',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鶯育店', '新北市鶯歌區南雅路34號36號1樓','121.348739','24.953941',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鶯桃店', '新北市鶯歌區鶯桃路二段7號','121.325925','24.971921',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鶯瓷店', '新北市鶯歌區尖山埔路100號102號','121.347451','24.95123',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鶯歌店', '新北市鶯歌區國慶街139號','121.350913','24.953693',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大峽店', '新北市三峽區大學路13鄰147號1樓','121.374088','24.943962',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11中園店', '新北市三峽區民權街235號1樓','121.368083','24.927685',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天下店', '新北市三峽區中正路1段110號112號1樓','121.373984','24.92959',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北大成店', '新北市三峽區學成路301號303號1樓','121.376451','24.943844',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11民昇店', '新北市三峽區民生街136號','121.372667','24.935051',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11岩昇店', '新北市三峽區溪東路300號','121.409899','24.930664',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11芳榮店', '新北市三峽區中正路二段536號538號','121.360748','24.906609',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金銘店', '新北市三峽區介壽路一段27號','121.375623','24.933266',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11冠綸店', '新北市三峽區中華路59號61號1樓','121.372381','24.930551',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11峽太店', '新北市三峽區大同路90號92號','121.375575','24.927642',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11峽北店', '新北市三峽區大同路7號','121.377592','24.928851',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11峽光店', '新北市三峽區光明路62號1樓','121.375016','24.929162',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11恩主店', '新北市三峽區鳶山里21鄰復興路447號','121.362395','24.938444',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11御成店', '新北市三峽區國光街35號','121.37519','24.937284',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新北大店', '新北市三峽區大學路156號1樓','121.373617','24.945372',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新峽店', '新北市三峽區民權街184號186號1樓','121.367762','24.929689',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬誠店', '新北市三峽區民生街25號','121.376017','24.936488',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11嘉添店', '新北市三峽區嘉添路109-2號','121.369194','24.911302',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福峽店', '新北市三峽區介壽路1段286號1樓','121.379948','24.929874',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11綠洲店', '新北市三峽區鳶山里12鄰中山路186號1樓','121.363915','24.936901',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11綠雅店', '新北市三峽區文化路122號','121.370932','24.936279',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11歐洲店', '新北市三峽區三樹路199號','121.378718','24.941874',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11學勤店', '新北市三峽區學勤路105號及大德路211號1樓','121.374835','24.946465',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11橫溪店', '新北市三峽區溪北街109號','121.398476','24.935501',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍恩店', '新北市三峽區國學街13號','121.372904','24.942162',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11豐康店', '新北市三峽區成福路241號','121.426822','24.925403',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11天元店', '新北市淡水區北新路三段30號1樓2樓','121.483788','25.186538',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11水鑫店', '新北市淡水區大忠街83號','121.446044','25.177534',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北淡店', '新北市淡水區北新路182巷34號36號38號40號','121.448696','25.177578',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11巧立店', '新北市淡水區北新路184巷57號59號1樓','121.451044','25.177724',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11立竹店', '新北市淡水區民族路56號','121.461786','25.135977',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11立征店', '新北市淡水區大義街16號1樓','121.443424','25.17836',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11立飛店', '新北市淡水區民生路126號128號1樓2樓','121.463986','25.138242',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11吉發店', '新北市淡水區自強路275號','121.462594','25.128186',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11竹捷店', '新北市淡水區竹圍里民族路10號','121.460537','25.136781',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11竹圍店', '新北市淡水區民權路109號111號','121.460241','25.13747',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11老街店', '新北市淡水區公明街48號1樓','121.443164','25.168817',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11見欣店', '新北市淡水區中正東路一段三巷12號1樓','121.451397','25.165106',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11協元店', '新北市淡水區中山路176之2號1樓','121.441372','25.174172',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11武強店', '新北市淡水區自強路375號1樓','121.464704','25.13347',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金旦店', '新北市淡水區淡金路三段254號256號','121.449041','25.206417',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金沙店', '新北市淡水區沙崙路133號','121.422903','25.182767',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金星店', '新北市淡水區北新路65號','121.446111','25.178415',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金紅店', '新北市淡水區淡金路3段2號','121.446659','25.197549',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金崙店', '新北市淡水區沙崙路24號1樓','121.421458','25.181224',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金寶店', '新北市淡水區中正路169號','121.438741','25.171117',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11皇后店', '新北市淡水區新春街87號','121.438994','25.182827',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11紅樹林店', '新北市淡水區中正東路二段81號1樓','121.459595','25.153653',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11英專店', '新北市淡水區英專路93號','121.445686','25.17188',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11真善美店', '新北市淡水區新市一路三段141號141之1號1樓','121.447568','25.183243',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11偕成店', '新北市淡水區民生路54號','121.461849','25.137853',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11淡大店', '新北市淡水區北新路182巷5弄39號','121.449367','25.177039',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11淡水店', '新北市淡水區中正東路3號','121.445327','25.168876',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11淡水站店', '新北市淡水區中正路1號','121.445459','25.167935',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11淡江店', '新北市淡水區學府路207號','121.446352','25.17558',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11淡欣店', '新北市淡水區水源街2段104號','121.452806','25.174584',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11淡芝店', '新北市淡水區淡金路五段120號1樓','121.456654','25.237113',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11渡船頭店', '新北市淡水區中正路57號59號','121.441613','25.16953',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新市鎮店', '新北市淡水區新市一路三段18號1樓','121.445368','25.182806',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新春店', '新北市淡水區新春街142號1樓','121.441788','25.181647',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新真理店', '新北市淡水區新民街102號104號','121.438243','25.177156',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新淡專店', '新北市淡水區新民街180巷18號20號1樓','121.437454','25.179081',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11源德店', '新北市淡水區水源街一段75之2號1樓B1','121.444872','25.172384',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11聖約翰店', '新北市淡水區淡金路四段532號','121.452058','25.226583',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11滬站店', '新北市淡水區中正路1號','121.445459','25.167935',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11學府店', '新北市淡水區學府路39號41號1樓','121.44779','25.169052',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11霞關店', '新北市淡水區淡金路59-61號B1','121.456021','25.161602',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鯊魚店', '新北市淡水區沙崙路214號','121.42488','25.184053',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫鑫店', '新北市淡水區水源街2段76號','121.451279','25.174099',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11九份店', '新北市瑞芳區基山街3號','121.84521','25.109733',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三爪坑店', '新北市瑞芳區三爪子坑路15號17號','121.813879','25.107545',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新建興店', '新北市瑞芳區大埔路138號','121.761807','25.100861',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞芳店', '新北市瑞芳區明燈路3段52號54號','121.807091','25.108005',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞信店', '新北市瑞芳區民生街23號','121.805955','25.107462',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11瑞濱店', '新北市瑞芳區海濱路157號','121.829607','25.121907',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11大五股店', '新北市五股區成泰路2段81號','121.438033','25.083874',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11水碓店', '新北市五股區水碓路14號','121.433708','25.072495',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11弘龍店', '新北市五股區工商路16號','121.439648','25.08322',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成洲店', '新北市五股區成泰路三段577巷92號94號','121.449422','25.104045',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11成泰店', '新北市五股區成泰路2段84號1樓','121.437654','25.082371',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11利客來店', '新北市五股區成泰路3段419號','121.449674','25.097412',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11來峰店', '新北市五股區成泰路一段163號165號1樓','121.435069','25.074309',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11股興店', '新北市五股區中興路一段3號','121.469544','25.072225',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泰里店', '新北市五股區成泰路四段12號1樓','121.453271','25.106441',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泰股店', '新北市五股區成泰路3段577巷24號','121.451481','25.102922',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富美店', '新北市五股區五股工業區五權路23號','121.449819','25.066603',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11富得店', '新北市五股區五權路48號1樓','121.453212','25.06857',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11登福店', '新北市五股區登林路76之3號','121.431005','25.069423',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新台店', '新北市五股區五工六路14號','121.450745','25.062215',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新圓山店', '新北市五股區成泰路一段191號','121.435005','25.076505',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福泰店', '新北市五股區五福路49號51號1樓','121.433107','25.089677',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福臨店', '新北市五股區工商路150號','121.433285','25.087344',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11維中店', '新北市五股區四維路120號','121.467933','25.074708',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11龍五店', '新北市五股區凌雲路一段136號','121.449566','25.102223',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11十八甲店', '新北市泰山區福興一街87號','121.432009','25.057739',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仁泰店', '新北市泰山區明志路二段1號','121.430305','25.053794',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11公園賞店', '新北市泰山區仁愛路66號','121.432316','25.054937',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11日勝店', '新北市泰山區山腳里泰林路2段515號517號','121.424093','25.063764',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11季欣店', '新北市泰山區全興路109號','121.433772','25.056753',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明志店', '新北市泰山區工專路68號70號1樓','121.422779','25.040508',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明泰店', '新北市泰山區明志路二段366號368號1樓','121.425575','25.045039',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11明貴店', '新北市泰山區明志路三段44號46號1樓','121.424698','25.04243',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11武仁店', '新北市泰山區仁愛路100巷28號30號','121.43341','25.054911',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11南亞三店', '新北市泰山區南林路98號8樓','121.415139','25.050108',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11奕真店', '新北市泰山區明志路二段185號1樓(部份)','121.427801','25.049799',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泰山店', '新北市泰山區楓江路22號24號','121.434085','25.062349',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11泰陽店', '新北市泰山區中山路2段836號838號1樓','121.42188','25.032834',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11羚陽店', '新北市泰山區泰林路二段302號304號','121.430984','25.062855',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11貴鳳店', '新北市泰山區貴鳳街2號','121.421193','25.031246',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新陽光店', '新北市泰山區泰林路2段368號370號','121.42855','25.063906',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11義學店', '新北市泰山區明志路2段74號76號','121.428796','25.052476',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11滿泰店', '新北市泰山區明志路1段28號','121.433442','25.065521',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11輔新店', '新北市泰山區新北大道五段385號','121.432134','25.043299',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11工林店', '新北市林口區工六路76號','121.400282','25.077219',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11仁森店', '新北市林口區粉寮路1段64號','121.397058','25.078538',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11未來店', '新北市林口區文化二路一段571號1樓2樓','121.375485','25.07822',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11安林店', '新北市林口區文化二路一段24號26號','121.365063','25.067549',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11至富店', '新北市林口區中湖里14鄰中湖40號之9','121.383297','25.091498',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11貝比店', '新北市林口區湖南村8鄰頭湖70-9號','121.373424','25.086887',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11佳林店', '新北市林口區林口路197號','121.387551','25.082497',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11幸福市店', '新北市林口區文化三路二段302號1樓','121.377807','25.084408',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11忠柯店', '新北市林口區忠孝路642號','121.378689','25.068366',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11旺來店', '新北市林口區文化三路二段20號1樓','121.373307','25.078569',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11采鋺店', '新北市林口區文化三路一段368號','121.364833','25.07235',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長坤店', '新北市林口區文化一路一段43號1樓','121.370838','25.06971',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11美雅仕店', '新北市林口區文化二路一段262號1樓','121.371382','25.073726',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11香賓店', '新北市林口區忠孝路382號1樓','121.369509','25.07089',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11卿斳店', '新北市林口區竹林路48號','121.387121','25.077625',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11粉寮店', '新北市林口區粉寮路二段36號','121.403352','25.086558',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11愛鄉店', '新北市林口區仁愛路2段140號142號1樓','121.382371','25.07453',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新林口店', '新北市林口區中正路90號92號1樓','121.394314','25.077306',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11遠來店', '新北市林口區仁愛路2段510號1樓','121.374057','25.077451',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德園店', '新北市林口區文化二路一段120巷1之1號','121.368078','25.070598',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11德聖店', '新北市林口區公園路17號','121.366631','25.06771',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興林店', '新北市林口區南勢村南勢街280號','121.357748','25.076301',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11興都店', '新北市林口區文化二路一段378號1樓之一之二之三','121.374239','25.076278',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11霖口店', '新北市林口區中山路250號250之3號1樓','121.385929','25.079591',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11麗池店', '新北市林口區文化二路2段120號','121.379683','25.08219',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11麗興店', '新北市林口區麗園一街11巷1號1樓之2','121.377086','25.070659',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀林店', '新北市林口區林口路78號80號','121.389279','25.080883',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北深店', '新北市深坑區北深路二段183號','121.61229','25.001139',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11平埔店', '新北市深坑區文化街82號','121.617815','25.00206',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11埔昇店', '新北市深坑區埔新街63號','121.620245','25.002416',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11真誠店', '新北市深坑區北深路三段263號','121.598863','25.004452',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11深坑店', '新北市深坑區北深路三段145號','121.603434','25.002753',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬順店', '新北市深坑區北深路3段198號200號1樓','121.601522','25.003757',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11鑫庫店', '新北市深坑區北深路一段118號120號','121.635265','25.010761',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11錠富店', '新北市石碇區隆盛村雙溪56號1樓','121.651504','25.00578',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11坪林店', '新北市坪林區水柳腳路159號','121.706748','24.934474',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11三芝店', '新北市三芝區中正路1段61號63號1樓','121.503445','25.257853',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金芝店', '新北市三芝區中興街一段2號','121.497648','25.259636',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11淺水灣店', '新北市三芝區中柳村北勢子42之11號1樓','121.47232','25.252433',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11石門店', '新北市石門區中山路78號','121.567776','25.291807',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11八仙店', '新北市八里區中華路二段292號296號298號1樓','121.404333','25.14889',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11八里店', '新北市八里區中山路二段343號1樓','121.399459','25.147106',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11左岸店', '新北市八里區龍米路2段230號之1號之2號1樓','121.431656','25.158743',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11西雅圖店', '新北市八里區中山路2段151號153號1樓','121.405146','25.150971',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11長坑店', '新北市八里區中華路3段168號','121.392115','25.129022',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11益彰店', '新北市八里區中山路二段409號411號','121.397399','25.146417',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11神州店', '新北市八里區龍米路一段113號','121.452447','25.126108',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11喜城店', '新北市八里區中華路二段562號','121.398558','25.144797',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀海店', '新北市八里區龍米路一段140號','121.452924','25.125729',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11觀景店', '新北市八里區觀海大道53號','121.428153','25.161609',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11平溪店', '新北市平溪區靜安路二段338號340號','121.737166','25.024259',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙祥店', '新北市雙溪區雙溪村太平路65號67號','121.865025','25.03591',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11雙溪店', '新北市雙溪區自強路7號','121.866113','25.039113',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11和川店', '新北市貢寮區延平街63號','121.924572','25.055696',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11貢寮店', '新北市貢寮區仁和路9號','121.922956','25.05175',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新福隆店', '新北市貢寮區福隆里興隆街24之1號','121.944498','25.016727',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11福隆站店', '新北市貢寮區福隆街8號8-1號','121.944928','25.016143',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11北海店', '新北市金山區中山路105號','121.639627','25.219395',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金中店', '新北市金山區中山路305號307號','121.635811','25.223478',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金全店', '新北市金山區清水路52號','121.629524','25.23565',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11金祥店', '新北市金山區中正路145號','121.632003','25.22132',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11新野柳店', '新北市萬里區野柳港東路158號','121.689856','25.204912',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11溫泉店', '新北市萬里區加投路197-2號','121.644172','25.214968',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11萬里店', '新北市萬里區瑪鍊路49號51號','121.688032','25.176307',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11翡翠灣店', '新北市萬里區龜吼村美崙38號39號','121.684174','25.185662',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11那魯灣店', '新北市烏來區烏來里溫泉街80號','121.550714','24.86197',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1);
INSERT into WATER_STATION (SQ_STATION_ID, STATION_NAME, STATION_ADDRESS, LONGITUDE, LATITUDE, 
 COUNTRY, AREA, STATION_IMAGE, BUSINESS_HOURS ,
   MODIFY_ID, INSERT_BY, CHECK_FLAG, ADD_STATION) values ('WS'||LPAD(to_char(water_station_sequence.NEXTVAL), 6, '0'), '7-11來鑫店', '新北市烏來區忠治里堰堤9號11號','121.547283','24.870267',
 '台灣', '新北市', load_blob('w7-11.png'), '00:00-24:00' , null, '910006', 1, 1); 
 
>>>>>>> 56aeda6aa46aeafcb0817868434eec06ce799338

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




<<<<<<< HEAD
CREATE TABLE PRODUCT_COLLECTION (
     SQ_MEMBER_ID VARCHAR2(15) NOT NULL,
     SQ_PRODUCT_ID VARCHAR2(15) NOT NULL,
     PRODUCT_NAME  VARCHAR2(60) NOT NULL,
     COLLECTION_DATE DATE NOT NULL,
     CONSTRAINT COLLECTION_MEMBER_ID_FK FOREIGN KEY (SQ_MEMBER_ID) REFERENCES MEMBER (SQ_MEMBER_ID),
     CONSTRAINT COLLECTION_PRODUCT_ID_FK FOREIGN KEY (SQ_PRODUCT_ID) REFERENCES SHOP_PRODUCT (SQ_PRODUCT_ID),
     CONSTRAINT COLLECTION_PK PRIMARY KEY(SQ_MEMBER_ID, SQ_PRODUCT_ID)
);

CREATE TABLE SHOP_MESSAGE(
      SQ_SHOP_MESSAGE_ID      VARCHAR2(40) NOT NULL,
      SQ_PRODUCT_ID           VARCHAR2(40) NOT NULL,
      SHOP_MESSAGE_DETAIL     CLOB         NOT NULL,
      SHOP_MESSAGE_TIME       TIMESTAMP    NOT NULL,
      SHOP_MESSAGE_STATUS      NUMBER(1)    NOT NULL,
      CONSTRAINT MESSAGE_ID_PK   PRIMARY KEY(SQ_SHOP_MESSAGE_ID),
      CONSTRAINT MESSAGE_PRODUCT_ID_FK FOREIGN KEY(SQ_PRODUCT_ID) REFERENCES SHOP_PRODUCT(SQ_PRODUCT_ID)
);
COMMENT ON COLUMN SHOP_MESSAGE.SHOP_MESSAGE_STATUS IS '0:顯示 1:隱藏';


CREATE TABLE MEMBER_STORE_PRODUCT (
        SQ_MEMBER_ID VARCHAR2(40) NOT NULL,
        SQ_PRODUCT_ID VARCHAR2(40) NOT NULL,
        STORE_DATE DATE,
        PRIMARY KEY (SQ_MEMBER_ID,SQ_PRODUCT_ID),
        FOREIGN KEY (SQ_MEMBER_ID) REFERENCES MEMBER(SQ_MEMBER_ID),
        FOREIGN KEY (SQ_PRODUCT_ID) REFERENCES SHOP_PRODUCT(SQ_PRODUCT_ID)
  );
  
CREATE TABLE bike_store(
  sq_bike_store_id     VARCHAR2(40)  NOT NULL,
  bike_store_name      VARCHAR2(200) NOT NULL,
  bike_store_location  VARCHAR2(200) NOT NULL,
  bike_store_phone     VARCHAR2(40)  NOT NULL,
  store_longitude       DECIMAL(17,12) NOT NULL,
  store_latitude       DECIMAL(17,12) NOT NULL,
  store_opentime       VARCHAR2(40)  NOT NULL,
  store_status         NUMBER(1)     NOT NULL,
   area                 VARCHAR2(40)  NOT NULL,
   store_email       VARCHAR2(200) NOT NULL,
   store_account   VARCHAR2(200) NOT NULL,
   store_password VARCHAR2(200) NOT NULL,
   store_photo   BLOB,
  PRIMARY KEY(sq_bike_store_id)
);
=======
INSERT INTO BRAND VALUES(SQ_BRAND_ID.NEXTVAL, 'BTWIN', '02-1234568','桃園市中壢區中央路115號',load_blob('btwin-logo.jpg'),'來自法國里爾的 B’TWIN 是歐洲銷量第一，世界銷量第三的專業自行車品牌。1976 年起，我們設計了一系列以最高性價比為準則的自行車，將我們的夢想付諸實現。對卓越品質的苛求，從那時起就成為 B’TWIN 的指導原則。');
INSERT INTO BRAND VALUES(SQ_BRAND_ID.NEXTVAL, 'GIANT', '02-1234567','桃園市桃園區捷安路123號',load_blob('giant_logo.jpg'),'巨大機械於1972年在臺中縣大甲鎮成立，1981年創立「捷安特」品牌，並成立「捷安特股份有限公司」負責業務銷售，在全球的生產工廠有臺灣、荷蘭及中國大陸，每年生產近500萬台各式自行車。 在通路方面，已於西歐各國、美國、日本、澳洲、加拿大、台灣及中國大陸等地，建立了自有品牌全球行銷網。');
INSERT INTO BRAND VALUES(SQ_BRAND_ID.NEXTVAL, 'MERIDA', '02-7654321','台北市八德區美利達路123號',load_blob('merida_logo.jpg'),'美利達工業股份有限公司為臺灣自行車設計、製造和銷售的公司，於1972年9月29日由曾鼎煌創建。現於中國大陸、日本、美國、歐洲等多個國家和地區設有子公司及工廠。');
INSERT INTO BRAND VALUES(SQ_BRAND_ID.NEXTVAL, 'VAN RYSEL', '02-4567812', '100台北市中正區重慶南路一段122號', load_blob('van_logo.jpg'), 'Van Rysel Ultra將作為高端競技公路車的品牌，Van Rysel在弗拉芒語中翻譯為「來自里爾」。這是迪卡儂為了展示他們從廉價自行車到以性能為導向的品牌形象轉型的一個標誌。');
INSERT INTO BRAND VALUES(SQ_BRAND_ID.NEXTVAL, 'ROCKRIDER', '02-6549872', '104台北市中山區八德路二段232號', load_blob('rockrider_logo.png'), 'Rockrider是法國迪卡濃（Decathlon）運動品超市的自有自行車品牌，為迪卡濃專業生產的高質量登山車及相關配件。');
>>>>>>> 56aeda6aa46aeafcb0817868434eec06ce799338


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
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password,store_photo)
VALUES
(sq_bike_store_id.NEXTVAL,'捷安寶-屏東東港店','屏東縣東港鎮中正路260號','08-832-6698',22.470107,120.452611,'10:30–20:30',1,'南部','x681681@gmail.com','s95566','s95589',load_blob('PAPAGO.png'));
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password,store_photo)
VALUES
(sq_bike_store_id.NEXTVAL,'吉美自行車出租','宜蘭縣五結鄉親河路二段23號','09-5223-9961',24.672298,121.811611,'07:00–18:00',1,'北部','q987654@gmail.com','123456','123456',load_blob('PAPAGO.png'));
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password,store_photo)
VALUES
(sq_bike_store_id.NEXTVAL,'小麥町單車旅遊','高雄市鼓山區臨海二路20-3號','07-533-0070',22.622042,120.273625,'08:00–19:00',1,'南部','e987654@gmail.com','654321','654321',load_blob('PAPAGO.png'));
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password,store_photo)
VALUES
(sq_bike_store_id.NEXTVAL,'都會租車','台中市石岡區豐勢路1261之1號','04-2572-2628',24.278431 ,120.768238,'08:00–18:00',1,'中部','987654@gmail.com','s565632','z654321',load_blob('PAPAGO.png'));
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password,store_photo)
VALUES
(sq_bike_store_id.NEXTVAL,'慢慢租車','台南市後壁區73號','0935-033-043',23.366227,120.361005,'10:00–18:30',1,'南部','addd5455@gmail.com','qwer44545','asad545454',load_blob('PAPAGO.png'));
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password,store_photo)
VALUES
(sq_bike_store_id.NEXTVAL,'阿勝單車出租','花蓮縣花蓮市國聯一路152號','03-834-6522',22.792931,121.124991,'10:00–21:00',1,'東部','aaaa987@gmail.com','sdd5478','9875421',load_blob('PAPAGO.png'));
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password,store_photo)
VALUES
(sq_bike_store_id.NEXTVAL,'捷安寶-日月潭站','南投縣魚池鄉中山路163號','04-9285-6713',23.866354,120.910849,'07:00–18:00',1,'中部','q987654@gmail.com','z6547785','z53535',load_blob('PAPAGO.png'));
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password,store_photo)
VALUES
(sq_bike_store_id.NEXTVAL,'美利達宏翊自行車出租','雲林縣斗六市文化路151號','05-532-6179',23.711482,120.550331,'07:00–18:00',1,'中部','a987654@gmail.com','z123456','a456465',load_blob('PAPAGO.png'));
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password,store_photo)
VALUES
(sq_bike_store_id.NEXTVAL,'阿勝單車台東店','台東縣台東市新站路223號','0982-158-153',22.792933,121.125028,'07:00–18:00',1,'東部','a9876541@gmail.com','a45646','z1321321',load_blob('PAPAGO.png'));
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password,store_photo)
VALUES
(sq_bike_store_id.NEXTVAL,'鼻仔頭自行車出租','新北市淡水區鼻頭街16號','0953-104-308',25.166445,121.446791,'07:00–18:00',1,'北部','a681543164@gmail.com','adadda46466','s95589',load_blob('PAPAGO.png'));
INSERT INTO bike_store
(sq_bike_store_id ,bike_store_name,bike_store_location,bike_store_phone,store_latitude,store_longitude,store_opentime,store_status,area,store_email,store_account,store_password,store_photo)
VALUES
(sq_bike_store_id.NEXTVAL,'大溪橋頭主活單車租借站','桃園市大溪區瑞安路一段273號','0933-085-326',24.886042,121.279942,'07:00–18:00',1,'北部','4949494@gmail.com','7979','s46469',load_blob('PAPAGO.png'));

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




INSERT INTO TIPS(SQ_TIPS_ID,TIPS_TITLE,TIPS_DESCRIPTION) VALUES (sq_TIPS.NEXTVAL, 1, 
'道路交通管理處罰條例 
第3條
本條例所用名詞釋義如下：
道路：指公路、街道、巷衖、廣場、騎樓、走廊或其他供公眾通行之地方。
車道：指以劃分島、護欄或標線劃定道路之部分，及其他供車輛行駛之道路。
人行道：指為專供行人通行之騎樓、走廊，及劃設供行人行走之地面道路，與人行天橋及人行地下道。
行人穿越道：指在道路上以標線劃設，供行人穿越道路之地方。
標誌：指管制道路交通，表示警告、禁制、指示，而以文字或圖案繪製之標牌。
');

INSERT INTO TIPS VALUES (sq_TIPS.NEXTVAL ,2, 
'由【交通部運輸研究所】所出版之「自行車道系統規劃設計參考手冊」於99 年提出第一版初稿，經東部自行車路網示範計畫督導協調推動小組多次會議研商及至交通部部務會報提報，並邀集產官學進行研討暨參考國外相關規定後，於100 年提出第二版修訂，嗣後經101 年整併既有法規條文，於102年提出第三版修訂。
本手冊主要在提供推動單位在自行車道之規劃、設置、安全防護與管理上，有較為一致之標準，以保障民眾騎乘使用之安全；另外考慮自行車道之設置原即包容多元思維，因此也建議在涉及地區景觀特色之設計、資訊說明提供等部分宜由設置者發揮創意，使各地自行車道之佈設更具地方吸引力與便利性。');


INSERT INTO TIPS VALUES (sq_TIPS.NEXTVAL ,3, '單車服');

INSERT INTO TIPS VALUES (sq_TIPS.NEXTVAL ,4, '現金、零錢/信用卡/提款卡');

INSERT INTO TIPS VALUES (sq_TIPS.NEXTVAL , 5, '1.手肘手臂要微彎');

INSERT INTO TIPS VALUES (sq_TIPS.NEXTVAL ,6, '大同區	大橋派出所	臺北市大同區延平北路 3 段 2 號	02-25945524');

INSERT INTO TIPS VALUES (sq_TIPS.NEXTVAL ,6, '大同區	大橋派出所	臺北市大同區延平北路 3 段 2 號	02-25945524');

INSERT INTO TIPS VALUES (sq_TIPS.NEXTVAL ,6, '大同區	大橋派出所	臺北市大同區延平北路 3 段 2 號	02-25945524');


COMMIT;
  
alter session set deferred_segment_creation=false;


--------------------------------------------------------
--  DROP SEQUENCE
--------------------------------------------------------


DROP SEQUENCE sq_TIPS;
DROP SEQUENCE sq_QUESTION;
DROP SEQUENCE sq_bike_store_id;
DROP SEQUENCE sq_bike_type_id;
DROP SEQUENCE sq_bike_id;
DROP SEQUENCE sq_rent_id;
DROP SEQUENCE sq_rent_detail_id;
DROP SEQUENCE activity_seq;
DROP SEQUENCE actreport_seq;
DROP SEQUENCE SQ_ORDER_ID;
DROP SEQUENCE SQ_PRODUCT_ID;
DROP SEQUENCE SQ_BRAND_ID;
DROP SEQUENCE SQ_SHOP_REPORT_ID;
DROP SEQUENCE SQ_SHOP_MESSAGE_ID;
DROP SEQUENCE SQ_STORE_ADDRESS_ID;
DROP SEQUENCE SQ_STOCK_ID;
DROP SEQUENCE route_plan_sequence;
DROP SEQUENCE route_plan_detail_sequence;
DROP SEQUENCE water_station_sequence;
DROP SEQUENCE staff_seq;
DROP SEQUENCE FUNCTION_NUM_seq;
DROP SEQUENCE member_seq;
DROP SEQUENCE theme_seq;
DROP SEQUENCE THEME_REPORT_ID_seq;
DROP SEQUENCE FORUM_MESSAGE_ID_seq;
DROP SEQUENCE MESSAGE_REPORT_ID_seq;


--------------------------------------------------------
--  CREATE SEQUENCE
--------------------------------------------------------
CREATE SEQUENCE sq_TIPS
INCREMENT BY 1
START WITH 320001
MAXVALUE 329999
NOCACHE;

CREATE SEQUENCE sq_QUESTION
INCREMENT BY 1
START WITH 310001
MAXVALUE 319999
NOCACHE;

CREATE SEQUENCE sq_rent_detail_id
INCREMENT BY 1
START WITH 610001
MAXVALUE 619999
NOCACHE;

CREATE SEQUENCE sq_rent_id
INCREMENT BY 1
START WITH 600001
MAXVALUE 609999
NOCACHE;

CREATE SEQUENCE sq_bike_id
INCREMENT BY 1
START WITH 640001
MAXVALUE 649999
NOCACHE;

CREATE SEQUENCE sq_bike_type_id
INCREMENT BY 1
START WITH 630001
MAXVALUE 639999
NOCACHE;

CREATE SEQUENCE sq_bike_store_id
INCREMENT BY 1
START WITH 620001
MAXVALUE 629999
NOCACHE;

CREATE SEQUENCE SQ_SHOP_MESSAGE_ID
INCREMENT BY 1
START WITH 540001
MAXVALUE 549999
NOCACHE;


CREATE SEQUENCE SQ_SHOP_REPORT_ID
INCREMENT BY 1
START WITH 530001
MAXVALUE 539999
NOCACHE;

CREATE SEQUENCE SQ_ORDER_ID
INCREMENT BY 1
START WITH 500001
MAXVALUE 509999
NOCACHE;

CREATE SEQUENCE SQ_PRODUCT_ID
INCREMENT BY 1
START WITH 510001
MAXVALUE 519999
NOCACHE;

CREATE SEQUENCE SQ_STOCK_ID
INCREMENT BY 1
START WITH 560001
MAXVALUE 569999
NOCYCLE
NOCACHE;

CREATE SEQUENCE SQ_BRAND_ID
INCREMENT BY 1
START WITH 520001
MAXVALUE 529999
NOCACHE;

CREATE SEQUENCE SQ_STORE_ADDRESS_ID
INCREMENT BY 1
START WITH 550001
MAXVALUE 559999
NOCACHE;

CREATE SEQUENCE actreport_seq
INCREMENT BY 1
START WITH 710000
MAXVALUE 719999
NOCACHE;

CREATE SEQUENCE activity_seq
   INCREMENT BY 1
   START WITH 700001
   MAXVALUE 709999
   NOCACHE;

CREATE SEQUENCE water_station_sequence 
      INCREMENT BY 1  -- 每次加幾個 
      START WITH 130001    -- 從1開始計數 
      NOMAXVALUE      -- 不設置最大值 
      NOCACHE;
      
CREATE SEQUENCE route_plan_detail_sequence 
      INCREMENT BY 1  -- 每次加幾個 
      START WITH 120001    -- 從1開始計數 
      NOMAXVALUE      -- 不設置最大值 
      NOCACHE; 
      
CREATE SEQUENCE route_plan_sequence 
      INCREMENT BY 1  -- 每次加幾個 
      START WITH 110001    -- 從1開始計數 
      NOMAXVALUE      -- 不設置最大值 
      NOCACHE;
      
 CREATE SEQUENCE member_seq
     INCREMENT BY 1
     START WITH 910001
     MINVALUE 910001
     MAXVALUE 919999
     CYCLE
     NOCACHE;
  
CREATE SEQUENCE theme_seq
     INCREMENT BY 1
     START WITH 400001
     MAXVALUE 409999
     CYCLE
     NOCACHE;
     
CREATE SEQUENCE THEME_REPORT_ID_seq
     INCREMENT BY 1
     START WITH 410001
     MAXVALUE 419999
     CYCLE
     NOCACHE;

CREATE SEQUENCE FORUM_MESSAGE_ID_seq
     INCREMENT BY 1
     START WITH 420001
     MINVALUE 420001
     MAXVALUE 429999
     CYCLE
     NOCACHE; 
     
     
CREATE SEQUENCE MESSAGE_REPORT_ID_seq
     INCREMENT BY 1
     START WITH 430001
     MAXVALUE 439999
     CYCLE
     NOCACHE; 
     
CREATE SEQUENCE staff_seq
     INCREMENT BY 1
     START WITH 810001
     MINVALUE 810001
     MAXVALUE 819999
     CYCLE
     NOCACHE;

CREATE SEQUENCE FUNCTION_NUM_seq
     INCREMENT BY 1
     START WITH 820001
     MINVALUE 820001
     MAXVALUE 829999
     CYCLE
     NOCACHE;


--------------------------------------------------------
--  DROP TABLE
--------------------------------------------------------

DROP TABLE TIPS;
DROP TABLE QUESTION;
DROP TABLE bike_rent_detail;
DROP TABLE bike;
DROP TABLE bike_rent_master;
DROP TABLE bike_store;
DROP TABLE bike_type;
DROP TABLE MEMBER_STORE_PRODUCT;
DROP TABLE SHOP_REPORT;
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

--------------------------------------------------------
-- CREATE TABLES
--------------------------------------------------------

CREATE TABLE MEMBER (
     SQ_MEMBER_ID           VARCHAR2(40) PRIMARY KEY NOT NULL,  
     MEMBER_ACCOUNT     VARCHAR2(15) NOT NULL,
     PASSWORD                 VARCHAR2(15) NOT NULL,
     M_NAME                       VARCHAR2(40) NOT NULL,
     GENDER                       NUMBER(1)      NOT NULL,
     BIRTHDAY                    DATE,  
     CELLPHONE                 NUMBER(15),
     M_EMAIL                      VARCHAR2(40) NOT NULL,
     VALIDATION                NUMBER(1)       NOT NULL,
     REGISTERED               DATE                 NOT NULL,
     M_PHOTO                    BLOB,
     BACK_IMG                   BLOB,
     NICK_NAME                 VARCHAR2(40),
     ADDRESS                    VARCHAR2(60) NOT NULL,
     CREATE_TIME             TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

  
  CREATE TABLE FORUM (
        SQ_THEME_ID VARCHAR2(40) PRIMARY KEY NOT NULL,
        SQ_MEMBER_ID VARCHAR2(40) NOT NULL,
        THEME_NAME VARCHAR2(90) NOT NULL, 
        THEME_TIME TIMESTAMP NOT NULL,
        REPONSE_SUM NUMBER(4) NOT NULL,
        THEME_DETIAL CLOB NOT NULL,
        THEME_PIC BLOB,
        THEME_DISPLAY_STATUS NUMBER(1),
        FOREIGN KEY (SQ_MEMBER_ID) REFERENCES MEMBER(SQ_MEMBER_ID)
  );
 CREATE TABLE FORUM_THEME_REPORT (
        SQ_THEME_REPORT_ID VARCHAR2(40) PRIMARY KEY NOT NULL,
        SQ_THEME_ID VARCHAR2(40) NOT NULL,
        SQ_MEMBER_ID VARCHAR2(40) NOT NULL,
        THEME_REPORT_DETAIL CLOB NOT NULL,
        THEME_REPORT_TIME TIMESTAMP NOT NULL,
        THEME_REPORT_TYPE NUMBER(1) NOT NULL,
        FOREIGN KEY (SQ_THEME_ID) REFERENCES FORUM(SQ_THEME_ID),
        FOREIGN KEY (SQ_MEMBER_ID) REFERENCES MEMBER(SQ_MEMBER_ID)
  );
  
CREATE TABLE FORUM_MESSAGE (
        SQ_FORUM_MESSAGE_ID VARCHAR2(40) PRIMARY KEY NOT NULL,
        SQ_THEME_ID VARCHAR2(40) NOT NULL,
        SQ_MEMBER_ID VARCHAR2(40) NOT NULL,
        MESSAGE_DETAIL CLOB NOT NULL,
        MESSAGE_TIME TIMESTAMP NOT NULL,
        MESSAGE_DISPLAY_STATUS NUMBER(1) NOT NULL,
        FOREIGN KEY (SQ_THEME_ID) REFERENCES FORUM(SQ_THEME_ID),
        FOREIGN KEY (SQ_MEMBER_ID) REFERENCES MEMBER(SQ_MEMBER_ID)
  );
  
  
CREATE TABLE FORUM_MESSAGE_REPORT(
       SQ_MESSAGE_REPORT_ID VARCHAR2(40)PRIMARY KEY NOT NULL,
       SQ_FORUM_MESSAGE_ID VARCHAR2(40) NOT NULL,
       SQ_MEMBER_ID VARCHAR2(40) NOT NULL,
       MESSAGE_REPORT_DETAIL CLOB NOT NULL,
       MESSAGE_REPORT_TIME TIMESTAMP NOT NULL,
       MESSAGE_REPORT_TYPE NUMBER(1) NOT NULL,
       FOREIGN KEY (SQ_FORUM_MESSAGE_ID) REFERENCES FORUM_MESSAGE(SQ_FORUM_MESSAGE_ID),
       FOREIGN KEY (SQ_MEMBER_ID) REFERENCES MEMBER(SQ_MEMBER_ID)
  );
  
CREATE TABLE STAFF (
        SQ_STAFF_ID VARCHAR2(40) PRIMARY KEY NOT NULL,
        SF_STATUS NUMBER(3) NOT NULL,
       	SF_NAME VARCHAR2(30) NOT NULL,
        SF_EMAIL VARCHAR2(40) NOT NULL,
        SF_ADDRESS VARCHAR2(100) ,
        SF_PHONE VARCHAR2(40) NOT NULL,
        SF_PASSWORD VARCHAR2(15) NOT NULL,
        SF_ACCOUNT VARCHAR2(15) NOT NULL,
        SF_PHOTO      BLOB 
  );
  
CREATE TABLE FUNCTION (
  SQ_FUNCTION_NUM VARCHAR2(40) PRIMARY KEY NOT NULL,
  FUNCTION_NAME VARCHAR2(40) NOT NULL
  );

CREATE TABLE AUTHORITY (
        SQ_STAFF_ID VARCHAR2(40)  NOT NULL,
        SQ_FUNCTION_NUM VARCHAR2(40) NOT NULL,
        FOREIGN KEY (SQ_FUNCTION_NUM) REFERENCES FUNCTION(SQ_FUNCTION_NUM)
  );
  
CREATE TABLE ROUTE_PLAN (
    SQ_ROUTE_ID VARCHAR2(40) NOT NULL,
    SQ_MEMBER_ID VARCHAR2(20),
    SQ_STAFF_ID VARCHAR2(20),
    ROUTE_NAME VARCHAR2(200) NOT NULL,
    DISTANCE DECIMAL(8,4) NOT NULL,
    COUNTRY VARCHAR2(40) NOT NULL,
    START_AREA VARCHAR2(200) NOT NULL,
    END_AREA VARCHAR2(200) NOT NULL,
    ROUTE_IMAGE BLOB,
    ROUTE_INTRODUCTION VARCHAR2(4000),
    INSERT_TIMESTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATE_TIMESTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    MODIFY_ID VARCHAR2(20),
    CHECK_FLAG NUMBER(1) NOT NULL,
    ADD_ROUTE NUMBER(1) NOT NULL,
    CONSTRAINT ROUTE_PLAN_PK PRIMARY KEY (SQ_ROUTE_ID),
	CONSTRAINT ROUTE_PLAN_FK1 FOREIGN KEY (SQ_MEMBER_ID) REFERENCES MEMBER (SQ_MEMBER_ID),
	CONSTRAINT ROUTE_PLAN_FK2 FOREIGN KEY (SQ_STAFF_ID) REFERENCES STAFF (SQ_STAFF_ID)
);
COMMENT ON COLUMN ROUTE_PLAN.CHECK_FLAG IS '0:未審核 1:審核通過 2:審核未通過';
COMMENT ON COLUMN ROUTE_PLAN.ADD_ROUTE IS '0:未上架 1:審核通過 2:審核未通過';

CREATE TABLE ROUTE_PLAN_DETAIL(
	SQ_SERIAL_NUMBER VARCHAR2(40),
	SQ_ROUTE_ID VARCHAR2(40),
	STEP_NAME VARCHAR2(40) NOT NULL,
	STEP_LONGITUDE DECIMAL(17,12),
	STEP_LATITUDE DECIMAL(17,12),
	INSERT_TIMESTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	STEP_IMAGE BLOB,
	STEP_INTRODUCTION VARCHAR2(4000),
	CONSTRAINT ROUTE_PLAN_DETAIL_PK PRIMARY KEY (SQ_SERIAL_NUMBER),
	CONSTRAINT ROUTE_PLAN_DETAIL_FK FOREIGN KEY (SQ_ROUTE_ID) REFERENCES ROUTE_PLAN (SQ_ROUTE_ID)
);

CREATE TABLE WATER_STATION(
	SQ_STATION_ID VARCHAR2(40) NOT NULL,
	STATION_NAME VARCHAR2(200) NOT NULL,
	STATION_ADDRESS VARCHAR2(400) NOT NULL,
	LONGITUDE DECIMAL(17,12) NOT NULL,
	LATITUDE DECIMAL(17,12) NOT NULL,
	COUNTRY VARCHAR2(40) NOT NULL,
	AREA VARCHAR2(40) NOT NULL,
	STATION_IMAGE BLOB,
	BUSINESS_HOURS VARCHAR2(40),
	INSERT_TIMESTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	UPDATE_TIMESTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	MODIFY_ID VARCHAR2(40),
	INSERT_BY VARCHAR2(40),
	CHECK_FLAG NUMBER(1) NOT NULL,
	ADD_STATION NUMBER(1) NOT NULL,
	CONSTRAINT WATER_STATION_PK PRIMARY KEY (SQ_STATION_ID)
);
COMMENT ON COLUMN WATER_STATION.CHECK_FLAG IS '0:未審核 1:審核通過 2:審核未通過';
COMMENT ON COLUMN WATER_STATION.ADD_STATION IS '0:未上架 1:已上架';


CREATE TABLE ACTIVITY (
       SQ_ACTIVITY_ID VARCHAR2(40) PRIMARY KEY NOT NULL,
       SQ_ROUTE_ID VARCHAR2(40) NOT NULL, 
       SQ_MEMBER_ID VARCHAR2(40) NOT NULL,
       ACT_TITLE VARCHAR2(200) NOT NULL,
       MAX_POPULATION NUMBER(10) CHECK(MAX_POPULATION>0) NOT NULL,
       MIN_POPULATION NUMBER(10) CHECK(MIN_POPULATION>0) NOT NULL,
       ACT_DESCRIPTION CLOB NOT NULL, 
       START_TIME DATE NOT NULL, 
       END_TIME DATE NOT NULL, 
       ACT_START_TIME DATE NOT NULL, 
       ACT_END_TIME DATE NOT NULL, 
       ACT_PICTURE BLOB, 
       GP_STATUS NUMBER(2) NOT NULL ,
       CONSTRAINT FK_ACTIVITY_ROUTE FOREIGN KEY(SQ_ROUTE_ID) REFERENCES ROUTE_PLAN(SQ_ROUTE_ID),
       CONSTRAINT FK_ACTIVITY_MEMBER FOREIGN KEY(SQ_MEMBER_ID) REFERENCES MEMBER(SQ_MEMBER_ID) 
);

COMMENT ON COLUMN ACTIVITY.GP_STATUS IS '0.成團
1.未成團
2.取消揪團
3.下架';

CREATE TABLE JOINED_ACT_DETAIL (
  SQ_ACTIVITY_ID VARCHAR2(40) NOT NULL, 
  SQ_MEMBER_ID VARCHAR2(40) NOT NULL, 
  JOIN_TIME TIMESTAMP NOT NULL, 
  CONSTRAINT FK_ACTIVITY_ID 
  FOREIGN KEY (SQ_ACTIVITY_ID) REFERENCES ACTIVITY (SQ_ACTIVITY_ID),
  CONSTRAINT FK_MEMBER_ID
  FOREIGN KEY (SQ_MEMBER_ID) REFERENCES MEMBER (SQ_MEMBER_ID),
  CONSTRAINT JOINED_ACT_DETAIL_PK
  PRIMARY KEY (SQ_ACTIVITY_ID,SQ_MEMBER_ID)
  );
  
CREATE TABLE ACT_FAVORITE (	
  SQ_ACTIVITY_ID VARCHAR2(40) NOT NULL, 
  SQ_MEMBER_ID VARCHAR2(40) NOT NULL, 
  FAVORITE_TIME TIMESTAMP NOT NULL,
  CONSTRAINT FK_ACT_FAVORITE_1
  FOREIGN KEY (SQ_ACTIVITY_ID) REFERENCES ACTIVITY (SQ_ACTIVITY_ID),
  CONSTRAINT FK_MEMBER_ID_1
  FOREIGN KEY (SQ_MEMBER_ID) REFERENCES MEMBER (SQ_MEMBER_ID),
  CONSTRAINT ACT_FAVORITE_PK_1
  PRIMARY KEY (SQ_ACTIVITY_ID,SQ_MEMBER_ID)
  );
  
CREATE TABLE ACTIVITYREPORT (
  SQ_ACTIVITYREPORT_ID VARCHAR2(40) PRIMARY KEY NOT NULL, 
  SQ_ACTIVITY_ID VARCHAR2(40) NOT NULL, 
  SQ_MEMBER_ID VARCHAR2(40) NOT NULL, 
  REPORT_REASON VARCHAR2(200), 
  REPORT_STATUS NUMBER(1) NOT NULL,
  CONSTRAINT FK_ACTIVITYREPORT_1 FOREIGN KEY (SQ_ACTIVITY_ID) REFERENCES ACTIVITY (SQ_ACTIVITY_ID),
  CONSTRAINT FK_MEMBERR_ID_1 FOREIGN KEY (SQ_MEMBER_ID) REFERENCES MEMBER (SQ_MEMBER_ID)
  );
 
COMMENT ON COLUMN ACTIVITYREPORT.REPORT_STATUS IS '0.檢舉未處理 
1.檢舉成功
2.檢舉失敗';

CREATE TABLE MEMBER_STORE_ACTIVITY (
     SQ_MEMBER_ID VARCHAR2(40) NOT NULL,
     SQ_ACTIVITY_ID VARCHAR2(40) NOT NULL,
     STORE_DATE DATE,
     PRIMARY KEY (SQ_MEMBER_ID,SQ_ACTIVITY_ID),
     FOREIGN KEY (SQ_MEMBER_ID) REFERENCES MEMBER(SQ_MEMBER_ID),
     FOREIGN KEY (SQ_ACTIVITY_ID) REFERENCES ACTIVITY(SQ_ACTIVITY_ID)
  );
  
CREATE TABLE STORE_ADDRESS(
      SQ_STORE_ADDRESS_ID       VARCHAR2(40)   NOT NULL,
      STORE_NAME                VARCHAR2(15)    NOT NULL,
      STORE_ADDRESS_DETAIL      VARCHAR2(90)   NOT NULL,
      STORE_LONGITUDE           DECIMAL(17,12) NOT NULL,
      STORE_LATITUDE            DECIMAL(17,12) NOT NULL,
      CONSTRAINT STORE_ADDRESS_PK PRIMARY KEY(SQ_STORE_ADDRESS_ID)
);
-----------------------------------廠牌資料---------------------------------------
CREATE TABLE BRAND(
      SQ_BRAND_ID         VARCHAR2(40) NOT NULL,
      BRAND_NAME          VARCHAR2(30) NOT NULL,
      BRAND_PHONE         VARCHAR2(15) NOT NULL,
      BRAND_ADDRESS       VARCHAR2(60) NOT NULL,
      BRAND_SIGN          BLOB,
      BRAND_DETAIL        CLOB,
      CONSTRAINT BARND_PK PRIMARY KEY (SQ_BRAND_ID)
);

CREATE TABLE SHOP_PRODUCT(
      SQ_PRODUCT_ID           VARCHAR2(15)  NOT NULL,
      SQ_BRAND_ID                VARCHAR2(40)  NOT NULL,
      PRODUCT_KIND_NAME  VARCHAR2(30)  NOT NULL,
      PRODUCT_NAME            VARCHAR2(60)  NOT NULL,
      PRODUCT_PRICE           NUMBER(7)     NOT NULL,
      PRODUCT_PIC                BLOB,
      PRODUCT_DETAIL          CLOB          NOT NULL,
      ADD_DATE                     DATE,
      PRODUCT_MATERIAL     CLOB,
      PRODUCT_STATUS         NUMBER(1)     NOT NULL,
      CONSTRAINT SHOP_PRODUCT_SQ_PRODUCT_ID_PK PRIMARY KEY (SQ_PRODUCT_ID),
      CONSTRAINT BRAND_ID_FK FOREIGN KEY (SQ_BRAND_ID) REFERENCES BRAND (SQ_BRAND_ID)
);
COMMENT ON COLUMN SHOP_PRODUCT.PRODUCT_STATUS IS '0:以下架 1:已上架 2:補貨中';

CREATE TABLE SHOP_PRODUCT_STOCK(
SQ_STOCK_ID       VARCHAR2(40) NOT NULL,
SQ_PRODUCT_ID     VARCHAR2(40) NOT NULL,
PRODUCT_COLOR     VARCHAR2(9),
PRODUCT_MODEL     VARCHAR2(5),
STOCK_TOTAL       NUMBER(4),
CONSTRAINT STOCK_ID_PK PRIMARY KEY (SQ_STOCK_ID),
CONSTRAINT PRODUCT_ID_FK FOREIGN KEY (SQ_PRODUCT_ID) REFERENCES SHOP_PRODUCT (SQ_PRODUCT_ID)
);

CREATE TABLE SHOP_ORDER (
      SQ_ORDER_ID                      VARCHAR2(40) NOT NULL,
      SQ_MEMBER_ID                   VARCHAR2(40) NOT NULL,
      SQ_STORE_ADDRESS_ID     VARCHAR2(40),
      ORDER_ADDRESS                VARCHAR2(60)NOT NULL,
      ORDER_DATE                       DATE    NOT NULL,
      PAY_DEADLINE 					   DATE    NOT NULL,
      SHOP_ORDER_PRICE           NUMBER(7)    NOT NULL,
      PAY_MODE                           NUMBER(1)    NOT NULL,
      ORDER_STATUS                   NUMBER(1)    NOT NULL,
      CONSTRAINT ORDER_ID_PK PRIMARY KEY (SQ_ORDER_ID),
      CONSTRAINT SHOP_ORDER_SQ_MEMBER_ID_FK FOREIGN KEY (SQ_MEMBER_ID) REFERENCES MEMBER (SQ_MEMBER_ID),
      CONSTRAINT ADDRESS_ID_FK FOREIGN KEY (SQ_STORE_ADDRESS_ID) REFERENCES STORE_ADDRESS (SQ_STORE_ADDRESS_ID)
);

COMMENT ON COLUMN SHOP_ORDER.PAY_MODE IS '1:貨到付款 2:信用卡';
COMMENT ON COLUMN SHOP_ORDER.ORDER_STATUS IS '0:處理中 1:已出貨 2:已到門市 3:已完成 4:以退費';

CREATE TABLE SHOP_ORDER_DETAIL(
      SQ_ORDER_ID         VARCHAR2(40) NOT NULL,
      SQ_PRODUCT_ID       VARCHAR2(15) NOT NULL,
      PRODUCT_PRICE       NUMBER(7)    NOT NULL,
      ORDER_SUM           NUMBER(5)    NOT NULL,
      CONSTRAINT ORDER_DETAIL_ID_FK FOREIGN KEY (SQ_ORDER_ID) REFERENCES SHOP_ORDER (SQ_ORDER_ID),
      CONSTRAINT PRODUCT_DETAIL_ID_FK FOREIGN KEY (SQ_PRODUCT_ID) REFERENCES SHOP_PRODUCT (SQ_PRODUCT_ID),
      CONSTRAINT SHOP_ORDER_DETAIL_PK PRIMARY KEY(SQ_ORDER_ID, SQ_PRODUCT_ID)
);

CREATE TABLE SHOP_REPORT(
      SQ_SHOP_REPORT_ID       VARCHAR2(40) NOT NULL,
      SQ_MEMBER_ID            VARCHAR2(40) NOT NULL,            
      SQ_PRODUCT_ID           VARCHAR2(15) NOT NULL,
      SHOP_REPORT_DETAIL      CLOB         NOT NULL,
      SHOP_REPORT_TIME        TIMESTAMP    NOT NULL,
      SHOP_REPORT_STATUS      NUMBER(1)    NOT NULL,
      CONSTRAINT SHOP_REPORT_ID_PK PRIMARY KEY(SQ_SHOP_REPORT_ID),
      CONSTRAINT MEMBER_ID_FK FOREIGN KEY(SQ_MEMBER_ID) REFERENCES MEMBER(SQ_MEMBER_ID),
      CONSTRAINT REPORT_PRODUCT_ID_FK FOREIGN KEY(SQ_PRODUCT_ID) REFERENCES SHOP_PRODUCT(SQ_PRODUCT_ID)
);
COMMENT ON COLUMN SHOP_REPORT.SHOP_REPORT_STATUS IS '0:未處理 1:處理中 2:已處理';

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

COMMENT ON COLUMN  bike_store.store_status IS
'店家狀態:
0 : 休息
1 : 開店
2 : 歇業';

CREATE TABLE bike_type(
  sq_bike_type_id  VARCHAR2(40)  NOT NULL,
  bike_type_name   VARCHAR2(200) NOT NULL,
  bike_title       VARCHAR2(200) NOT NULL,
  bike_description CLOB ,
  bike_photo       BLOB ,
  bike_daily_price       NUMBER(8,2)   NOT NULL,
  bike_hourly_price       NUMBER(8,2)   NOT NULL,
  
  PRIMARY KEY(sq_bike_type_id)
);

CREATE TABLE bike(
  sq_bike_id 		VARCHAR2(40) NOT NULL,
  sq_bike_type_id 	VARCHAR2(40) NOT NULL,
  sq_bike_store_id 	VARCHAR(40) NOT NULL,
  publication_date 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  bike_status 		NUMBER(1,0) NOT NULL,
  PRIMARY KEY (sq_bike_id),
  CONSTRAINT fk_bike_bike_type
  FOREIGN KEY (sq_bike_type_id) REFERENCES bike_type(sq_bike_type_id),
  CONSTRAINT fk_bike_bike_store
  FOREIGN KEY (sq_bike_store_id) REFERENCES bike_store(sq_bike_store_id)
);
COMMENT ON COLUMN  bike.bike_status IS
'車輛狀態:
0:正常
1:維修
2:遺失
3:報廢
';


CREATE TABLE bike_rent_master
  (
    sq_rent_id        VARCHAR2(40) NOT NULL ,
    sq_member_id      VARCHAR2(40) NOT NULL,
    sq_bike_store_id  VARCHAR2(40) NOT NULL,
    rent_payment      NUMBER(1,0) NOT NULL,
    od_total_price    NUMBER(8,2) NOT NULL,
    rent_name         VARCHAR2(40) NOT NULL,
    rent_phone        VARCHAR2(40) NOT NULL,
    rent_od_status    NUMBER(1,0) NOT NULL,
	order_date        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   tradeno        VARCHAR2(40) NOT NULL,
    PRIMARY KEY (sq_rent_id),
    CONSTRAINT fk_bike_master_member FOREIGN KEY(sq_member_id) REFERENCES member(sq_member_id),
    CONSTRAINT fk_bike_master_bike_store FOREIGN KEY(sq_bike_store_id) REFERENCES bike_store(sq_bike_store_id)
  );
  
COMMENT ON COLUMN  bike_rent_master.tradeno IS
'綠界交易編號' ;

 COMMENT ON COLUMN  bike_rent_master.rent_payment IS
'付款模式 信用卡:
0:付款成功
1:付款失敗'; 


COMMENT ON COLUMN  bike_rent_master.rent_od_status IS
'訂單狀態:
0:訂單成立
1:訂單完成
2:訂單取消';



CREATE TABLE bike_rent_detail(
  sq_rent_detail_id   	  VARCHAR2(40) NOT NULL,
  sq_rent_id                 VARCHAR2(40) NOT NULL,
  sq_bike_type_id    	   VARCHAR2(40) NOT NULL,
  sq_bike_id                 VARCHAR2(40),
  price                        NUMBER(8,2),
  extra_cost                   NUMBER(8,2) ,
  rsved_rent_date        TIMESTAMP NOT NULL,
  ex_return_date         TIMESTAMP NOT NULL,
  real_return_date       TIMESTAMP ,
  PRIMARY KEY(sq_rent_detail_id),
  CONSTRAINT fk_bike_detail_bike FOREIGN KEY (sq_bike_id) REFERENCES bike(sq_bike_id),
   CONSTRAINT fk_bike_detail_bike_type FOREIGN KEY(sq_bike_type_id) REFERENCES bike_type(sq_bike_type_id),
  CONSTRAINT fk_bike_detail_bike_master FOREIGN KEY (sq_rent_id) REFERENCES bike_rent_master(sq_rent_id)
);
COMMENT ON COLUMN  bike_rent_detail.extra_cost IS
'逾時+賠償費用';

CREATE TABLE QUESTION (
       SQ_QUESTION_ID        VARCHAR2(40) NOT NULL,
       QUESTION_TITLE        VARCHAR2(200) NOT NULL,
       QUESTION_DESCIPTION          CLOB,
       CONSTRAINT QUESTION_PRIMARY_KEY PRIMARY KEY (SQ_QUESTION_ID)
 );
 


CREATE TABLE TIPS (
 SQ_TIPS_ID          VARCHAR2(40) NOT NULL PRIMARY KEY,
 TIPS_PICTURE        BLOB,
 TIPS_TITLE          VARCHAR2(200) NOT NULL,
 TIPS_DESCIPTION     CLOB NOT NULL
 );
 
 commit;
 


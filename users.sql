--------------------------------------------------------
--  File created - Tuesday-August-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "RESERVATION" ("USER_ID" VARCHAR2(20), "REC_CREATE_DATE" DATE, "RESV_DATE" DATE, "UNRESV_DATE" DATE, "TEST_CASE_ID" VARCHAR2(80), "TEST_CASE_NAME" VARCHAR2(80), "PROJECT_ID" VARCHAR2(80), "LOCKED" VARCHAR2(1), "SUB_ID" VARCHAR2(12), "MBR_TYPE" VARCHAR2(80), "FIRST_NM" VARCHAR2(80), "LAST_NM" VARCHAR2(80), "DOB" VARCHAR2(80), "HOME_ZIP_CD" VARCHAR2(80), "ACCNT_NUM" VARCHAR2(80), "ACCNT_NM" VARCHAR2(80), "SUPP_EOB_IND" VARCHAR2(80), "BLENDED_CAT" VARCHAR2(80), "COVERAGE" VARCHAR2(80), "CLAIM_TYPE" VARCHAR2(80)) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table TDM_RESERVATION
--------------------------------------------------------

  CREATE TABLE "TDM_RESERVATION" ("RECORD_ID" VARCHAR2(15), "LOCKED" VARCHAR2(10), "ROW_DATA" VARCHAR2(50), "RESERVE_DATA" VARCHAR2(50), "UNLOCK_TIME" TIMESTAMP (6), "UNRESERVE" VARCHAR2(50), "USER_ID" VARCHAR2(15), "RESERVE_DATA_ID" VARCHAR2(50), "RESERVE_DATA_TYPE" VARCHAR2(10), "TEST_CASE_ID" VARCHAR2(25), "TEST_CASE_NAME" VARCHAR2(50), "PROJECT_ID" VARCHAR2(50)) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 MAXSIZE UNLIMITED BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "SYSTEM"
--------------------------------------------------------
--  DDL for Table TDM_USERS
--------------------------------------------------------

  CREATE TABLE "TDM_USERS" ("USER_ID" VARCHAR2(15), "USERNAME" VARCHAR2(50), "PASSWORD" VARCHAR2(50), "ENABLED" CHAR(1), "MOBILE_NO" VARCHAR2(15), "EMAIL_ID" VARCHAR2(50)) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 MAXSIZE UNLIMITED BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "SYSTEM"
--------------------------------------------------------
--  DDL for Table TDM_USERS_AUTH
--------------------------------------------------------

  CREATE TABLE "TDM_USERS_AUTH" ("USER_ROLE_ID" VARCHAR2(3), "ROLE" VARCHAR2(10), "USER_ID" VARCHAR2(15)) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 MAXSIZE UNLIMITED BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "SYSTEM"
REM INSERTING into RESERVATION
SET DEFINE OFF;
REM INSERTING into TDM_RESERVATION
SET DEFINE OFF;
REM INSERTING into TDM_USERS
SET DEFINE OFF;
Insert into TDM_USERS (USER_ID,USERNAME,PASSWORD,ENABLED,MOBILE_NO,EMAIL_ID) values ('amathur','Ankur','amathur','1','123456789','ankur.mathur@capgemini.com');
Insert into TDM_USERS (USER_ID,USERNAME,PASSWORD,ENABLED,MOBILE_NO,EMAIL_ID) values ('testdemo','testdemo','tes76$','1','8787878787','test@demo.com');
Insert into TDM_USERS (USER_ID,USERNAME,PASSWORD,ENABLED,MOBILE_NO,EMAIL_ID) values ('John','Jack','Jack','1','442288','Jack@cap.com');
Insert into TDM_USERS (USER_ID,USERNAME,PASSWORD,ENABLED,MOBILE_NO,EMAIL_ID) values ('Wilson','Wilson','Wilson','1','224488','Wilson@cap.com');
Insert into TDM_USERS (USER_ID,USERNAME,PASSWORD,ENABLED,MOBILE_NO,EMAIL_ID) values ('demo','demonew','demo','1','999999','demo@capgemini.com');
Insert into TDM_USERS (USER_ID,USERNAME,PASSWORD,ENABLED,MOBILE_NO,EMAIL_ID) values ('demoTest','demoTest','dem53$','1','9876543211','demoTest@gmail.com');
Insert into TDM_USERS (USER_ID,USERNAME,PASSWORD,ENABLED,MOBILE_NO,EMAIL_ID) values ('samuel12','samuels','sam83$','1','772288','samuels@cap.com');
Insert into TDM_USERS (USER_ID,USERNAME,PASSWORD,ENABLED,MOBILE_NO,EMAIL_ID) values ('demo2','demo2','demo2','1','1234567','demo2@capgemini.com');
Insert into TDM_USERS (USER_ID,USERNAME,PASSWORD,ENABLED,MOBILE_NO,EMAIL_ID) values ('arnold','arnold','arn84$','1','123456789','arnold@cap.com');
Insert into TDM_USERS (USER_ID,USERNAME,PASSWORD,ENABLED,MOBILE_NO,EMAIL_ID) values ('Arnold12','Arnold','Arn43$','1','337799','Arnold@cap.com');
Insert into TDM_USERS (USER_ID,USERNAME,PASSWORD,ENABLED,MOBILE_NO,EMAIL_ID) values ('demo1','demo1','demo1','1','02066311755','demo1@capgemini.com');
REM INSERTING into TDM_USERS_AUTH
SET DEFINE OFF;
Insert into TDM_USERS_AUTH (USER_ROLE_ID,ROLE,USER_ID) values ('494','ROLE_ADMIN','amathur');
Insert into TDM_USERS_AUTH (USER_ROLE_ID,ROLE,USER_ID) values ('495','ROLE_ADMIN','testdemo');
Insert into TDM_USERS_AUTH (USER_ROLE_ID,ROLE,USER_ID) values ('467','ROLE_ADMIN','John');
Insert into TDM_USERS_AUTH (USER_ROLE_ID,ROLE,USER_ID) values ('457','ROLE_USER','demo');
Insert into TDM_USERS_AUTH (USER_ROLE_ID,ROLE,USER_ID) values ('468','ROLE_USER','Wilson');
Insert into TDM_USERS_AUTH (USER_ROLE_ID,ROLE,USER_ID) values ('493','ROLE_ADMIN','demo1');
Insert into TDM_USERS_AUTH (USER_ROLE_ID,ROLE,USER_ID) values ('474','ROLE_ADMIN','samuel12');
Insert into TDM_USERS_AUTH (USER_ROLE_ID,ROLE,USER_ID) values ('465','ROLE_ADMIN','demo2');
Insert into TDM_USERS_AUTH (USER_ROLE_ID,ROLE,USER_ID) values ('488','ROLE_ADMIN','demoTest');
Insert into TDM_USERS_AUTH (USER_ROLE_ID,ROLE,USER_ID) values ('478','ROLE_USER','arnold');
Insert into TDM_USERS_AUTH (USER_ROLE_ID,ROLE,USER_ID) values ('479','ROLE_USER','Arnold12');
--------------------------------------------------------
--  DDL for Index XPKRESERVATION
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPKRESERVATION" ON "TDM_RESERVATION" ("USER_ID", "RECORD_ID", "RESERVE_DATA_ID") PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 MAXSIZE UNLIMITED BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "SYSTEM"
--------------------------------------------------------
--  DDL for Index TDM_RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TDM_RESERVATION_PK" ON "TDM_RESERVATION" ("RESERVE_DATA_ID") PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Index XPKUSERS_AUTH
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPKUSERS_AUTH" ON "TDM_USERS" ("USER_ID") PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 MAXSIZE UNLIMITED BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "SYSTEM"
--------------------------------------------------------
--  DDL for Index XPKUSERS
--------------------------------------------------------

  CREATE UNIQUE INDEX "XPKUSERS" ON "TDM_USERS_AUTH" ("USER_ROLE_ID") PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "USERS"
--------------------------------------------------------
--  Constraints for Table TDM_RESERVATION
--------------------------------------------------------

  ALTER TABLE "TDM_RESERVATION" MODIFY ("RESERVE_DATA_ID" NOT NULL ENABLE)
  ALTER TABLE "TDM_RESERVATION" MODIFY ("USER_ID" NOT NULL ENABLE)
  ALTER TABLE "TDM_RESERVATION" MODIFY ("RECORD_ID" NOT NULL ENABLE)
  ALTER TABLE "TDM_RESERVATION" ADD CONSTRAINT "TDM_RESERVATION_PK" PRIMARY KEY ("RESERVE_DATA_ID") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table TDM_USERS
--------------------------------------------------------

  ALTER TABLE "TDM_USERS" ADD CONSTRAINT "XPKUSERS_AUTH" PRIMARY KEY ("USER_ID") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 MAXSIZE UNLIMITED BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "SYSTEM"  ENABLE
  ALTER TABLE "TDM_USERS" MODIFY ("USER_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table TDM_USERS_AUTH
--------------------------------------------------------

  ALTER TABLE "TDM_USERS_AUTH" ADD CONSTRAINT "XPKUSERS" PRIMARY KEY ("USER_ROLE_ID") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "USERS"  ENABLE
  ALTER TABLE "TDM_USERS_AUTH" MODIFY ("USER_ID" NOT NULL ENABLE)
  ALTER TABLE "TDM_USERS_AUTH" MODIFY ("USER_ROLE_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table TDM_RESERVATION
--------------------------------------------------------

  ALTER TABLE "TDM_RESERVATION" ADD CONSTRAINT "TDM_RESERVATION_FK1" FOREIGN KEY ("USER_ID") REFERENCES "TDM_USERS" ("USER_ID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table TDM_USERS_AUTH
--------------------------------------------------------

  ALTER TABLE "TDM_USERS_AUTH" ADD CONSTRAINT "R_42" FOREIGN KEY ("USER_ID") REFERENCES "TDM_USERS" ("USER_ID") ENABLE
--------------------------------------------------------
--  DDL for Trigger TDM_Record_ID_Gen
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TDM_Record_ID_Gen" before INSERT ON USRES.TDM_RESERVATION
 FOR each ROW
BEGIN
   SELECT "ID_SEQ".nextval INTO :NEW.Record_Id FROM dual;
end;
ALTER TRIGGER "TDM_Record_ID_Gen" DISABLE

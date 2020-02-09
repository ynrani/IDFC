CREATE TABLE TDG_SCHEMA_DETAILS(REQSCHEMAID NUMBER,URL VARCHAR2(150),USERNAME VARCHAR2(100),PASSWORD VARCHAR2(100),SEQTABLEPREFIX VARCHAR2(100),
SCHEMAMASTERTABLES VARCHAR2(250));

ALTER TABLE TDG_SCHEMA_DETAILS ADD CONSTRAINT PK_SCHEMA_DETAILS PRIMARY KEY(REQSCHEMAID);
ALTER TABLE TDG_SCHEMA_DETAILS ADD(USERID VARCHAR2(15));
ALTER TABLE TDG_SCHEMA_DETAILS ADD(COLUMNSDEPENDS VARCHAR2(500));
ALTER TABLE TDG_SCHEMA_DETAILS ADD(SCHEMAPASSTABS VARCHAR2(500));
ALTER TABLE TDG_SCHEMA_DETAILS ADD(MANUALDICTIONARY VARCHAR2(50));

CREATE TABLE TDG_GUI_DETAILS(REQGUIID NUMBER,REQSCHEMAID NUMBER,COLUMNVALUES VARCHAR2(50),COLUMNLABEL VARCHAR2(50),COLUMNTYPE VARCHAR2(50));
ALTER TABLE TDG_GUI_DETAILS ADD(COLUMNNAME VARCHAR2(100));
ALTER TABLE TDG_GUI_DETAILS ADD CONSTRAINT PK_GUI_DETAILS PRIMARY KEY(REQGUIID);
ALTER TABLE TDG_GUI_DETAILS ADD CONSTRAINT FK_REQSCHEMAID FOREIGN KEY(REQSCHEMAID) REFERENCES TDG_SCHEMA_DETAILS(REQSCHEMAID);



CREATE TABLE TDG_REQUEST_LIST(REQUESTID NUMBER,USERID VARCHAR2(15),REQUESTCOUNT NUMBER,REQSCHEMAID NUMBER,CONDITIONVALUES VARCHAR2(500));
ALTER TABLE TDG_REQUEST_LIST ADD CONSTRAINT PK_REQUEST_LIST PRIMARY KEY(REQUESTID);
ALTER TABLE TDG_REQUEST_LIST ADD(CONDITIONS VARCHAR2(2000));


CREATE TABLE TDG_REQUEST_GEN_LIST(REQGENID NUMBER,REQUESTID NUMBER,COLUMN1 VARCHAR2(50),COLUMN2 VARCHAR2(50),COLUMN3 VARCHAR2(50),COLUMN4 VARCHAR2(50),
COLUMN5 VARCHAR2(50),COLUMN6 VARCHAR2(50),COLUMN7 VARCHAR2(50),COLUMN8 VARCHAR2(50),COLUMN9 VARCHAR2(50),COLUMN10 VARCHAR2(50),COLUMN11 VARCHAR2(50),COLUMN12 VARCHAR2(50),
COLUMN13 VARCHAR2(50),COLUMN14 VARCHAR2(50),COLUMN15 VARCHAR2(50),COLUMN16 VARCHAR2(50),COLUMN17 VARCHAR2(50),COLUMN18 VARCHAR2(50),COLUMN19 VARCHAR2(50),
COLUMN20 VARCHAR2(50),COLUMN21 VARCHAR2(50),COLUMN22 VARCHAR2(50),COLUMN23 VARCHAR2(50),COLUMN24 VARCHAR2(50),COLUMN25 VARCHAR2(50),COLUMN26 VARCHAR2(50),
COLUMN27 VARCHAR2(50),COLUMN28 VARCHAR2(50),COLUMN29 VARCHAR2(50),COLUMN30 VARCHAR2(50));
ALTER TABLE TDG_REQUEST_GEN_LIST ADD CONSTRAINT PK_REQUESTGEN_LIST PRIMARY KEY(REQGENID);
ALTER TABLE TDG_REQUEST_GEN_LIST ADD CONSTRAINT FK_REQUEST_ID_LIST FOREIGN KEY(REQUESTID) REFERENCES TDG_REQUEST_LIST(REQUESTID);

ALTER TABLE TDG_SCHEMA_DETAILS ADD(SCHEMANAME VARCHAR2(50));
ALTER TABLE TDG_REQUEST_LIST ADD(SCHEMANAME VARCHAR2(50));
ALTER TABLE TDG_GUI_DETAILS MODIFY(COLUMNVALUES VARCHAR2(500));


CREATE TABLE TDG_DATA_CONDITIONAL_DETAILS(ID NUMBER,URL VARCHAR2(150),USERNAME VARCHAR2(100),PASSWORD VARCHAR2(100),TABLENAME VARCHAR2(50));
ALTER TABLE TDG_DATA_CONDITIONAL_DETAILS ADD CONSTRAINT PK_DATA_CONDITIONAL_DETAILS PRIMARY KEY(ID);
ALTER TABLE TDG_DATA_CONDITIONAL_DETAILS ADD(USERID VARCHAR2(15));
ALTER TABLE TDG_DATA_CONDITIONAL_DETAILS ADD CONSTRAINT UK_DATA_CONDITIONAL_TABNAME UNIQUE(TABLENAME);
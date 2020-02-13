SET CMDSEP ;

DROP TABLE "FDQA_All_types";

CREATE MULTISET TABLE "FDQA_All_types"  (
      "TBYTEINT" BYTEINT,
      "TSMALLINT" SMALLINT,
      "TINTEGER" INTEGER,
      "TDOUBLE" DOUBLE,
      "TDECIMAL" DECIMAL(19,4),
      "TDATE" DATE,
      "TTIME" TIME,
      "TTIMESTAMP" TIMESTAMP,
      "TCHAR" CHAR(10),
      "TNCHAR" CHAR(10) CHARACTER SET UNICODE,
      "TVARCHAR" VARCHAR(10),
      "TNVARCHAR" VARCHAR(10) CHARACTER SET UNICODE,
      "TCLOB" CLOB,
      "TNCLOB" CLOB CHARACTER SET UNICODE,
      "TBYTE" BYTE(10),
      "TVARBYTE" VARBYTE(10),
      "TBLOB" BLOB );   

DROP TABLE "FDQA_Ascii_types"; 

CREATE MULTISET TABLE "FDQA_Ascii_types"  (
      "ATSTRING" VARCHAR(5), 
      "ATFLOAT" DOUBLE, 
      "ATNUMBER" SMALLINT, 
      "ATBOOL" SMALLINT, 
      "ATLONGINT" INTEGER, 
      "ATDATE" DATE, 
      "ATTIME" TIME, 
      "ATDATETIME" TIMESTAMP, 
      "ATBLOB" BLOB, 
      "ATMEMO" CLOB );

DROP TABLE "FDQA_Batch_test";

CREATE MULTISET TABLE "FDQA_Batch_test"  (
      "TINT" INTEGER, 
      "TSTRING" VARCHAR(50), 
      "TBLOB" BLOB);

DROP TABLE "FDQA_Blob";      

CREATE MULTISET TABLE "FDQA_Blob"  (
      "ID" INTEGER NOT NULL GENERATED BY DEFAULT
      AS IDENTITY ( START WITH 1 INCREMENT BY 1 NO CYCLE ),
      "BLOBDATA" BLOB);

DROP TABLE "FDQA_DB_types"; 

CREATE MULTISET TABLE "FDQA_DB_types"  (
      "FTSTRING" VARCHAR(50), 
      "FTSMALLINT" SMALLINT, 
      "FTINTEGER" INTEGER, 
      "FTWORD" SMALLINT, 
      "FTBOOLEAN" SMALLINT, 
      "FTFLOAT" DOUBLE, 
      "FTCURRENCY" DECIMAL(19,4), 
      "FTBCD" DECIMAL(19,4), 
      "FTDATE" DATE, 
      "FTTIME" TIME, 
      "FTDATETIME" TIMESTAMP, 
      "FTBYTES" VARBYTE(50), 
      "FTBLOB" BLOB, 
      "FTMEMO" CLOB );   

DROP TABLE "FDQA_details_autoinc"; 

DROP TABLE "FDQA_master_autoinc"; 

CREATE MULTISET TABLE "FDQA_master_autoinc"  (
      "ID1" INTEGER NOT NULL GENERATED BY DEFAULT
      AS IDENTITY ( START WITH 1 INCREMENT BY 1 NO CYCLE ), 
      "NAME1" VARCHAR(20) NOT NULL );   

ALTER TABLE "FDQA_master_autoinc" 
  ADD CONSTRAINT "PK_mast_autoinc" PRIMARY KEY ("ID1");

ALTER TABLE "FDQA_master_autoinc" 
  ADD CONSTRAINT "UK_master_autoinc" UNIQUE ("NAME1"); 

CREATE MULTISET TABLE "FDQA_details_autoinc"  (
      "ID2" INTEGER NOT NULL GENERATED BY DEFAULT
      AS IDENTITY ( START WITH 1 INCREMENT BY 1 NO CYCLE ), 
      "FK_ID1" INTEGER, 
      "NAME2" VARCHAR(50) );   

ALTER TABLE "FDQA_details_autoinc" 
  ADD CONSTRAINT "PK_det_autoinc" PRIMARY KEY ("ID2");

ALTER TABLE "FDQA_details_autoinc" 
  ADD CONSTRAINT "FK_detaut_mastauto" FOREIGN KEY ("FK_ID1")
  REFERENCES WITH CHECK OPTION "FDQA_master_autoinc"  ("ID1");
 
DROP TABLE "FDQA_ForAsync";

CREATE MULTISET TABLE "FDQA_ForAsync"  (
      "ID" INTEGER, 
      "NAME" VARCHAR(20) );   

DROP TABLE "FDQA_Identity_tab";

CREATE MULTISET TABLE "FDQA_Identity_tab"  (
      "auto" INTEGER NOT NULL GENERATED BY DEFAULT
      AS IDENTITY ( START WITH 1 INCREMENT BY 1 NO CYCLE ), 
      "DESCR" VARCHAR(50) );   

DROP TABLE "FDQA_LockTable";

CREATE MULTISET TABLE "FDQA_LockTable"  (
      "ID" INTEGER, 
      "NAME" VARCHAR(100) );   

DROP TABLE "FDQA_MaxLength";

CREATE MULTISET TABLE "FDQA_MaxLength"  (
      "STR" VARCHAR(10000), 
      "MEMOS" CLOB,
      "WIDESTR" VARCHAR(10000) CHARACTER SET UNICODE, 
      "BLOBS" BLOB);

DROP TABLE "FDQA_NoValsTable";       

CREATE MULTISET TABLE "FDQA_NoValsTable"  (
      "ID" INTEGER DEFAULT 2000, 
      "NAME" VARCHAR(10) DEFAULT 'hello');   

DROP TABLE "FDQA_Numbers";

CREATE MULTISET TABLE "FDQA_Numbers"  (
      "DTBYTE" SMALLINT, 
      "DTSBYTE" BYTEINT, 
      "DTINT16" SMALLINT, 
      "DTINT32" INTEGER, 
      "DTINT64" DECIMAL(19,0), 
      "DTUINT16" INTEGER, 
      "DTUINT32" DECIMAL(10,0), 
      "DTUINT64" DECIMAL(20,0), 
      "DTDOUBLE" DOUBLE, 
      "DTCURRENCY" DECIMAL(19,4),
      "DTBCD" DECIMAL(28,14), 
      "DTFMTBCD" DECIMAL(28,14),
      "DTBOOLEAN" BYTEINT );   

DROP TABLE "FDQA_TabWithPK";

CREATE MULTISET TABLE "FDQA_TabWithPK"  (
      "F1" INTEGER NOT NULL,
      "F2" varchar(2000) );   

ALTER TABLE "FDQA_TabWithPK"
  ADD CONSTRAINT "PK_tabwpk" PRIMARY KEY ("F1");

DROP TABLE "FDQA_TransTable";

CREATE MULTISET TABLE "FDQA_TransTable"  (
      "ID" INTEGER NOT NULL DEFAULT 2000,
      "NAME" VARCHAR(100) DEFAULT '' );

ALTER TABLE "FDQA_TransTable"
  ADD CONSTRAINT "PK_TransTable" PRIMARY KEY ("ID");

DROP TABLE "FDQA_WString";

CREATE MULTISET TABLE "FDQA_WString" (
      "WIDESTRING" VARCHAR(2000) CHARACTER SET UNICODE );

DROP TABLE "FDQA_Bcd";

CREATE MULTISET TABLE "FDQA_Bcd"  (
      "FTCURRENCY" DECIMAL(19,4), 
      "FTBCD" DECIMAL(19,4), 
      "FTFMTBCD" DECIMAL(22,4) );

DROP TABLE "FDQA_ParamBind";

CREATE MULTISET TABLE "FDQA_ParamBind" (
  "P1" VARCHAR(50),
  "P2" VARCHAR(50),
  "P3" VARCHAR(50),
  "P4" VARCHAR(50) );

DROP TABLE "FDQA_map1";

CREATE MULTISET TABLE "FDQA_map1"  (
  "ID1" INTEGER NOT NULL , 
  "NAME1" VARCHAR(20) NOT NULL );

DROP TABLE "FDQA_map2";

CREATE MULTISET TABLE "FDQA_map2"  (
  "ID2" INTEGER NOT NULL , 
  "NAME2" VARCHAR(20) );

DROP TABLE "FDQA_map3";
 
CREATE MULTISET TABLE "FDQA_map3"  (
  "ID3" INTEGER NOT NULL , 
  "NAME3" VARCHAR(20) );   

DROP TABLE "FDQA_map4";

CREATE MULTISET TABLE "FDQA_map4"  (
  "ID4" INTEGER NOT NULL , 
  "NAME4" VARCHAR(20) );

DROP TABLE "FDQA_FK_tab";

CREATE TABLE "FDQA_FK_tab" (
  id INTEGER NOT NULL PRIMARY KEY,
  fk_id INTEGER,
 CONSTRAINT FK_FDQA_FK_tab FOREIGN KEY (fk_id) REFERENCES WITH NO CHECK OPTION "FDQA_FK_tab"(id)
);
 
DROP VIEW "FDQA_V_Test";

CREATE VIEW "FDQA_V_Test" AS
SELECT p.ProductID, p.ProductName, p.UnitPrice * p.UnitsInStock as TotalPrice,
  c.CategoryID, c.CategoryID as CID, c.CategoryName
FROM "Products" p left join "Categories" c on p.CategoryID = c.CategoryID;

DROP TABLE FDQA_OrderDetails;

CREATE TABLE FDQA_OrderDetails (
  OrderID              INTEGER NOT NULL PRIMARY KEY,
  OnDate               DATE,
  ProductID            INTEGER,
  UnitPrice            DECIMAL(19,4),
  Quantity             SMALLINT,
  Discount             DOUBLE,
  Notes                VARCHAR(100)
);

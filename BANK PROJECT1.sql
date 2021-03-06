 create DATABASE BMS_DB1;
 
 use BMS_DB1;
 
 show databases;
 
 -- CUSTOMER_PERSONAL_INFO
 
 CREATE TABLE CUSTOMER_PERSONAL_INFO(
 CUSTOMER_ID VARCHAR(6),
 CUSTOMER_NAME VARCHAR(30),
 DATE_OF_BIRTH DATE,
 GUARDIAN_NAME VARCHAR(30),
 CONTACT_NO INT(15),
 MAIL_ID VARCHAR(30),
 GENDER CHAR(1),
 MARITAL_STATUS VARCHAR(10),
 IDENTIFICATION_DOC_TYPE VARCHAR(20),
 ID_DOC_NO VARCHAR(20),
 CITIZENSHIP VARCHAR(10),
 CONSTRAINT CUST_PERS_INFO_PK primary key(CUSTOMER_ID)
 );
 
 INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
 VALUES('SBI01','ANAND','1980-01-01','PRAKASH',1234567890,'ANAND@123','M','UNMARRIED','AADHAAR',001,'INDIA');
 INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
 VALUES('SBI02','NIRBHAY','1981-01-01','RAJESH',1245789630,'NIRBHAY@123','M','UNMARRIED','AADHAAR',002,'INDIA');
 INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
 VALUES('SBI03','RAJAT','1982-01-01','RAJESH',1245963870,'ADESH123@GMAIL.COM','M','MARRIED','AADHAAR',003,'INDIAN');
 INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
 VALUES('SBI04','ANNU','1983-01-01','JAY',1023657894,'ANNU123@GMAIL.COM','F','UNMARRIED','AADHAAR',004,'INDIAN');
 INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
 VALUES('SBI05','ANUP','1985-01-01','PRAKASH',1240569876,'ANUP123@GMAIL.COM','M','UNMARRIED','AADHAAR',005,'INDIAN');
 INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
 VALUES('SBI06','AKASH','1986-01-01','RANJAN',1475896320,'AKASH123@GMAIL.COM','M','UNARRIED','AADHAAR',006,'INDIAN');
 INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
 VALUES('SBI07','ADARSH','1987-01-01','GUPTA',1203459876,'ADARSH123@GMAIL.COM','M','MARRIED','AADHAAR',007,'INDIAN');
 INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
 VALUES('SBI08','NEHA','1988-01-01','SINGH',1963205875,'NEHA123@GMAIL.COM','F','UNMARRIED','PAN',008,'INDIAN');
 
 
 DESCRIBE CUSTOMER_PERSONAL_INFO;
 SELECT * FROM CUSTOMER_PERSONAL_INFO;  
 SHOW TABLES;
 
 -- CUSTOMER_REFRENCE_INFO
 
 CREATE TABLE CUSTOMER_REFRENCE_INFO(
 CUSTOMER_ID VARCHAR(5),
 REFRENCE_ACC_NAME VARCHAR(20),
 REFRENCE_ACC_NO BIGINT(16),
 REFRENCE_ACC_ADDRESS VARCHAR(50),
 RELATION VARCHAR(25),
 CONSTRAINT CUST_REF_INFO_PK primary key(CUSTOMER_ID),
 CONSTRAINT CUST_REF_INFO_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_PERSONAL_INFO
 );
 
INSERT INTO CUSTOMER_REFRENCE_INFO(CUSTOMER_ID,REFRENCE_ACC_NAME,REFRENCE_ACC_NO, REFRENCE_ACC_ADDRESS,RELATION)
 VALUES('SBI01','ANAND',1122334455,'SECTOR18','GOOD');
INSERT INTO CUSTOMER_REFRENCE_INFO(CUSTOMER_ID,REFRENCE_ACC_NAME,REFRENCE_ACC_NO, REFRENCE_ACC_ADDRESS,RELATION)
 VALUES('SBI02','NIRBHAY',1122334456,'SECTOR15','GOOD');
INSERT INTO CUSTOMER_REFRENCE_INFO(CUSTOMER_ID,REFRENCE_ACC_NAME,REFRENCE_ACC_NO, REFRENCE_ACC_ADDRESS,RELATION)
 VALUES('SBI03','RAJAT',1122334457,'SECTOR16','GOOD');
INSERT INTO CUSTOMER_REFRENCE_INFO(CUSTOMER_ID,REFRENCE_ACC_NAME,REFRENCE_ACC_NO, REFRENCE_ACC_ADDRESS,RELATION)
 VALUES('SBI04','ANUP',1122334458,'SECTOR20','GOOD');
INSERT INTO CUSTOMER_REFRENCE_INFO(CUSTOMER_ID,REFRENCE_ACC_NAME,REFRENCE_ACC_NO, REFRENCE_ACC_ADDRESS,RELATION)
 VALUES('SBI05','AKASH',1122334459,'SECTOR22','GOOD');
INSERT INTO CUSTOMER_REFRENCE_INFO(CUSTOMER_ID,REFRENCE_ACC_NAME,REFRENCE_ACC_NO, REFRENCE_ACC_ADDRESS,RELATION)
 VALUES('SBI06','ANNU',1122334460,'SECTOR4','GOOD');
INSERT INTO CUSTOMER_REFRENCE_INFO(CUSTOMER_ID,REFRENCE_ACC_NAME,REFRENCE_ACC_NO, REFRENCE_ACC_ADDRESS,RELATION)
 VALUES('SBI07','ADARSH',1122334461,'SECTOR5','GOOD');
INSERT INTO CUSTOMER_REFRENCE_INFO(CUSTOMER_ID,REFRENCE_ACC_NAME,REFRENCE_ACC_NO, REFRENCE_ACC_ADDRESS,RELATION)
 VALUE('SBI08','SHYAM',1122334462,'SECTOR8','GOOD');
 
  SELECT * FROM CUSTOMER_REFRENCE_INFO;
  DESCRIBE CUSTOMER_REFRENCE_INFO;
  SHOW TABLES;
  
  -- BANK_INFO
  
  CREATE TABLE BANK_INFO(
  IFSC_CODE VARCHAR(15),
  BANK_NAME VARCHAR(25),
  BRANCH_NAME VARCHAR(25),
  CONSTRAINT BANK_INFO_PK PRIMARY KEY(IFSC_CODE)
  );
  
  INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)
  VALUES('ABC001','SBI','ALPHA 1');
  INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)
  VALUES('ABC002','PNB','GAMA 1');
  INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)
  VALUES('ABC003','SBI','GAMA 2');
  INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)
  VALUES('ABC004','SBI','ALPHA 2');
  INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)
  VALUES('ABC005','SBI','BETA 1');
  INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)
  VALUES('ABC006','SBI','BETA 2');
  INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)
  VALUES('ABC007','SBI','DELTA 1');
  INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)
  VALUES('ABC008','SBI','DELTA 2');
  
  
  SELECT * FROM BANK_INFO;
  DESCRIBE BANK_INFO;
  SHOW TABLES;
  
  -- ACCOUNT_INFO
  
  CREATE TABLE ACCOUNT_INFO(
  ACCOUNT_NO BIGINT(16),
  CUSTOMER_ID VARCHAR(5),
  ACCOUNT_TYPE VARCHAR(10),
  REGISTRATION_DATE DATE,
  ACTIVATION_DATE DATE,
  IFSC_CODE VARCHAR(10),
  INTEREST DECIMAL(7,2),
  INITIAL_DEPOSITE BIGINT(10),
  CONSTRAINT ACC_INFO_PK PRIMARY KEY(ACCOUNT_NO),
  CONSTRAINT ACC_INFO_PERS_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_REFRENCE_INFO(CUSTOMER_ID),
  CONSTRAINT ACC_INFO_BANK_FK FOREIGN KEY(IFSC_CODE) REFERENCES BANK_INFO(IFSC_CODE)
  );
  
  INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST,INITIAL_DEPOSITE)
  VALUE(100200300,'SBI01','SAVING','2022-02-02','2022-02-08','ABC001',5.6,15000);
  INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST,INITIAL_DEPOSITE)
  VALUE(100200301,'SBI02','SAVING','2022-02-03','2022-02-09','ABC002',12.5,15000);
  INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST,INITIAL_DEPOSITE)
  VALUE(100200302,'SBI03','SAVING','2022-02-04','2022-02-10','ABC004',11.5,15000);
  INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST,INITIAL_DEPOSITE)
  VALUE(100200303,'SBI04','CURRENT','2022-02-05','2022-02-11','ABC005',12.0,5000);
  INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST,INITIAL_DEPOSITE)
  VALUE(100200304,'SBI05','CURRENT','2022-02-06','2022-02-12','ABC006',9.5,20000);
  INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST,INITIAL_DEPOSITE)
  VALUE(100200305,'SBI06','SAVING','2022-02-07','2022-02-13','ABC007',8.5,16000);
  INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST,INITIAL_DEPOSITE)
  VALUE(100200306,'SBI07','SAVING','2022-02-08','2022-02-14','ABC008',13.6,10000);
  INSERT INTO ACCOUNT_INFO(ACCOUNT_NO,CUSTOMER_ID,ACCOUNT_TYPE,REGISTRATION_DATE,ACTIVATION_DATE,IFSC_CODE,INTEREST,INITIAL_DEPOSITE)
  VALUE(100200307,'SBI08','CURRENT','2022-02-09','2022-02-15','ABC003',9.5,18000);
  
  
  SELECT * FROM ACCOUNT_INFO;
   DESCRIBE ACCOUNT_INFO;
  
  
  
  
  
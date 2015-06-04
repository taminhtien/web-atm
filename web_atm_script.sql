DROP DATABASE IF EXISTS atm;
CREATE DATABASE atm;
USE atm;

CREATE TABLE CUSTOMER (
	CustID INTEGER NOT NULL AUTO_INCREMENT,
	CustName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
	PRIMARY KEY (CustID)
);

CREATE TABLE CARD (
	CardNo CHAR(10) NOT NULL,
    CustID INTEGER NOT NULL,
    PIN CHAR(32) NOT NULL,
    Balance LONG NOT NULL,
	PRIMARY KEY (CardNo)
);

CREATE TABLE ATM (
	ATMID INTEGER NOT NULL AUTO_INCREMENT,
    Address VARCHAR(255) NOT NULL,
    LeftMoney LONG NOT NULL,
	PRIMARY KEY (ATMID)
);

CREATE TABLE LOG (
	LogID INTEGER NOT NULL AUTO_INCREMENT,
    LogDate DATETIME NOT NULL,
    ATMID INTEGER NOT NULL,
    CardNo CHAR(10) NOT NULL,
    Ammount LONG NOT NULL,
    Details VARCHAR(255),  
	PRIMARY KEY (LogID)
);

ALTER TABLE CARD
   ADD FOREIGN KEY (CustID)
   REFERENCES CUSTOMER (CustID);
   
ALTER TABLE LOG
   ADD FOREIGN KEY (ATMID)
   REFERENCES ATM (ATMID);

ALTER TABLE LOG
   ADD FOREIGN KEY (CardNo)
   REFERENCES CARD (CardNo);
   
INSERT INTO CUSTOMER (CustName, Email, Address)
	VALUE ('Tạ Minh Tiên', 'taminhtien1993@gmail.com', '1/4 ấp Đình, xã Tân Xuân, huyện Hóc Môn, TP. HCM');
            
INSERT INTO CUSTOMER (CustName, Email, Address)
	VALUE ('Nguyễn Quốc Vương', 'vuongnq@gmail.com', 'Lê Đại Hành, phường 11, quận 11, TP. HCM');
            
INSERT INTO CARD (CardNo, CustID, PIN, Balance)
	VALUES ('0000000001', '1', '1111', '50000000');
            
INSERT INTO CARD (CardNo, CustID, PIN, Balance)
	VALUES ('1000000001', '1', '1111', '20000000');
            
INSERT INTO CARD (CardNo, CustID, PIN, Balance)
	VALUES ('0000000002', '2', '0000', '50000000');
            
INSERT INTO CARD (CardNo, CustID, PIN, Balance)
	VALUES ('1000000002', '2', '1111', '20000000');
            
INSERT INTO ATM (ATMID, Address, LeftMoney)
	VALUES ('1', 'Ngã Tư Bảy Hiền, Tân Bình, TP. HCM', '1000000000');

INSERT INTO ATM (ATMID, Address, LeftMoney)
	VALUES ('2', '227 Nguyễn Văn Cừ, Quận 5, TP. HCM', '2000000000');

INSERT INTO ATM (Address, LeftMoney)
	VALUES ('Nhà riêng Tạ Minh Tiên', '4000000000');
            
INSERT INTO LOG (LogDate, ATMID, CardNo, Ammount, Details)
	VALUES (STR_TO_DATE('5/25/2015 8:06:26 AM', '%c/%e/%Y %r'), '1', '0000000001', '2000000', 'Rút 2 triệu');
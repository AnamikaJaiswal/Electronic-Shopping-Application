create table CATEGORY(CID INT PRIMARY KEY AUTO_INCREMENT, CNAME VARCHAR(30) NOT NULL , COMM FLOAT NOT NULL);

create table admin_details(adminid int primary key auto_increment, adminname varchar(30) not null, adminemail varchar(30) not null, adminpwd varchar(100) not null, adminmob varchar(10) not null);

create table customer_details(cusid int primary key auto_increment,cusname varchar(50) not null,cusemail varchar(50) not null,cuspwd varchar(100) not null,cusmob varchar(10) not null);

create table vendor_details(venid int primary key auto_increment, venname varchar(30) not null, venemail varchar(30) not null, venpwd varchar(100) not null, venmob varchar(10) not null, venpan varchar(10) not null,venstate varchar(30) not null, venpincode int(6) not null, venstatus varchar(10) not null );

CREATE  TABLE VENDOR_PRODUCT (VENID int NOT NULL , PID int PRIMARY KEY Auto_Increment,CID int NOT NULL ,PRODNAME VARCHAR(40) NOT NULL,VPRICE float NOT NULL, QUANTITY int NOT NULL,DESCRIPTION VARCHAR(50) NOT NULL,IMAGE VARCHAR(40) NOT NULL,FOREIGN KEY (VENID) REFERENCES VENDOR_DETAILS(VENID),FOREIGN KEY (CID) REFERENCES CATEGORY(CID), brandname varchar(40) not null);

create table cus_address(cusid int not null,aid int primary key auto_increment,FOREIGN KEY(cusid) REFERENCES customer_details(cusid),addtype varchar(20) not null,streetno varchar(20) not null,landmark varchar(50) not null,dist varchar(50) not null,state varchar(50) not null,pincode int not null);

CREATE TABLE ORDERS(OID int PRIMARY KEY Auto_Increment,CUSID int NOT NULL ,AID int NOT NULL , ODATE date NOT NULL ,PAYMENTMODE VARCHAR(40) NOT NULL,TOTALPAYMENT float NOT NULL , FOREIGN KEY (CUSID) REFERENCES CUSTOMER_DETAILS(CUSID),FOREIGN KEY (AID) REFERENCES CUS_ADDRESS(AID));

create table order_details(oid int not null, pid int not null, oquantity int not null,odid int primary key not null auto_increment, foreign key (oid) references orders(oid), foreign key (pid) references VENDOR_PRODUCT(pid) );


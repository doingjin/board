select * from all_tables;

drop table member;
drop table board;

CREATE TABLE MEM(
	ID varchar(20) NOT NULL,
	PW varchar(20) NOT NULL
);
insert into MEM values ('qwe','1212');

CREATE TABLE BOARD(
	NUM INT PRIMARY KEY,
	ID VARCHAR(20),
	TITLE VARCHAR(50) NOT NULL,
	CONTENT VARCHAR(1000),
	BDATE DATE DEFAULT SYSDATE
);
INSERT INTO BOARD VALUES (1,'qwe','1st글','WELCOME TO THE BOARD!',SYSDATE);
INSERT INTO BOARD VALUES (2,'oing','오잉','test 중....',SYSDATE);


select * from MEM;
select * from BOARD;
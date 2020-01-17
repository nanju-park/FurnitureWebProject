

------------------------(재선)
--review 
create table review(
id number(10) not null,
name varchar2(20),
subject varchar2(100),
content varchar2(1000),
ipaddr varchar2(20),
created_at varchar2(20),
photo varchar2(300)
);


create table review_re(
id number(10) not null,
name varchar2(20),
content varchar2(1000),
ipaddr varchar2(20),
created_at varchar2(20),
qaboard_id number(10)
);

-- qna 게시판
create table qaboard(
id number(10) not null,
name varchar2(20),
subject varchar2(100),
content varchar2(1000),
ipaddr varchar2(20),
created_at varchar2(20),
photo varchar2(300)
);
--qna re게시판
create table qaboard_re(
id number(10) not null,
name varchar2(20),
content varchar2(1000),
ipaddr varchar2(20),
created_at varchar2(20),
qaboard_id number(10)
);
--drop table 테이블명
--reviewmain.jsp
--reviewwrite.jsp
--reviewrewrite.jsp
--reviewview.jsp
--one컬럼 리스트로.
--이미지 포스트를 아티클 화면으로.
--qna는 텍스트로만
--server패키지의
--server.xml에 host 안에 다음 구절 첨가.
--<Context path="img" reloadable="true" docBase="d:\file"> </Context>
--servlet-context안에 다음구절 첨가
--<resources mapping="/img/*" location="d:\file" />



------------------------(난주)

--침실 테이블
create table bedroom(
imageIndex number(10) not null,
productName varchar2(50) not null,
cateE varchar2(50) not null,
cateK varchar2(50) not null,
price number(30),
saveFileName varchar2(50)
);

--거실 테이블
create table livingroom(
imageIndex number(10) not null,
productName varchar2(50) not null,
cateE varchar2(50) not null,
cateK varchar2(50) not null,
price number(30),
saveFileName varchar2(50)
);

------------------------(효은)

--주방/다이닝룸
create table diningroom(
imageIndex number(10) not null,
productName varchar2(50) not null,
cate varchar2(50) not null,
cateEn varchar2(50),
price number(15),
saveFileName varchar2(50)
);

--홈데코
create table deco(
imageIndex number(10) not null,
productName varchar2(50) not null,
cate varchar2(50) not null,
cateEn varchar2(50),
price number(15),
saveFileName varchar2(50)
);

--member 테이블
create table fumember(
email varchar2(50),
pwd varchar2(500),
name varchar2(30),
phone varchar2(15),
salt varchar2(500),
addr1 varchar(100),
addr2 varchar(100),
addr3 varchar(100),
enableEmail number(2),
constraint pk_fumember_email primary key(email)
);


create table fupayment (

	payid NUMBER(10) not null,
	email varchar(50),
	paytype varchar(10),
	imagepath varchar (500),
	productEa number(10),
	productPrice number(10),
	deliveryMessage varchar(2000),
	constraint payment_pk_payid primary key(payid),
    	constraint payment_fk_email FOREIGN key (email) REFERENCES fumember(email) 
);




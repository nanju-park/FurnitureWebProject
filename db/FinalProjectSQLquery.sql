

------------------------(�缱)
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

-- qna �Խ���
create table qaboard(
id number(10) not null,
name varchar2(20),
subject varchar2(100),
content varchar2(1000),
ipaddr varchar2(20),
created_at varchar2(20),
photo varchar2(300)
);
--qna re�Խ���
create table qaboard_re(
id number(10) not null,
name varchar2(20),
content varchar2(1000),
ipaddr varchar2(20),
created_at varchar2(20),
qaboard_id number(10)
);
--drop table ���̺��
--reviewmain.jsp
--reviewwrite.jsp
--reviewrewrite.jsp
--reviewview.jsp
--one�÷� ����Ʈ��.
--�̹��� ����Ʈ�� ��ƼŬ ȭ������.
--qna�� �ؽ�Ʈ�θ�
--server��Ű����
--server.xml�� host �ȿ� ���� ���� ÷��.
--<Context path="img" reloadable="true" docBase="d:\file"> </Context>
--servlet-context�ȿ� �������� ÷��
--<resources mapping="/img/*" location="d:\file" />



------------------------(����)

--ħ�� ���̺�
create table bedroom(
imageIndex number(10) not null,
productName varchar2(50) not null,
cateE varchar2(50) not null,
cateK varchar2(50) not null,
price number(30),
saveFileName varchar2(50)
);

--�Ž� ���̺�
create table livingroom(
imageIndex number(10) not null,
productName varchar2(50) not null,
cateE varchar2(50) not null,
cateK varchar2(50) not null,
price number(30),
saveFileName varchar2(50)
);

------------------------(ȿ��)

--�ֹ�/���̴׷�
create table diningroom(
imageIndex number(10) not null,
productName varchar2(50) not null,
cate varchar2(50) not null,
cateEn varchar2(50),
price number(15),
saveFileName varchar2(50)
);

--Ȩ����
create table deco(
imageIndex number(10) not null,
productName varchar2(50) not null,
cate varchar2(50) not null,
cateEn varchar2(50),
price number(15),
saveFileName varchar2(50)
);

--member ���̺�
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




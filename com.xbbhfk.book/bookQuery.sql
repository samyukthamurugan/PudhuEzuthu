create table T_XBBNHFK_BOOK(
AUTHOR VARCHAR(45),
BOOK_DESCRIPTION VARCHAR(45),
BOOK_ID int primary key,
COPY_TYPE VARCHAR(30),
BOOK_DIMENSION VARCHAR(30),
BOOK_GENRE VARCHAR(30),
PAGES int,
PRICE float,
WEIGHT float)
;
create table T_XBBNHFK_SUBSCRIPTION
(SUB_TYPE VARCHAR(45),AMOUNT float,EMAIL VARCHAR(45)
);

insert into T_XBBNHFK_DELIVERY_STAT(courier_Name,consignment_Number,sent_Date,sent_Time,courier_Address,ad_description,number_of_books,sent_to) values('st','1234','apr3','4pm','chennai','good',);
drop table T_XBBNHFK_SUBSCRIPTION;

select * from T_XBBNHFK_SUBSCRIPTION;

ALTER TABLE T_XBBNHFK_BOOKS
ADD CONSTRAINT PK_T_XBBNHFK_BOOKS PRIMARY KEY (BOOK_ID);

create table T_XBBNHFK_DELIVERY_STAT(
courier_Name varchar(45),
consignment_Number varchar(45),
sent_Date varchar(45),
sent_Time varchar(45),
courier_Address varchar(45),
number_of_books int,
ad_description varchar(45),
sent_to varchar(45),
primary key(consignment_Number)

);
select * from T_XBBNHFK_DELIVERY_STAT;

insert into T_XBBNHFK_BOOK values('samyuktha','HandBags',23,'Hard','9x9x9','Romance',678,98.08,12.5)



select * from T_XBBNHFK_DELIVERY_STAT;

alter table T_XBBNHFK_DELIVERYSTATUS 
ADD CONSTRAINT FK_T_XBBNHFK_DELIVERYSTATUS
FOREIGN KEY (BOOK_ID) REFERENCES  T_XBBNHFK_BOOK(book_id);
 drop table T_XBBNHFK_DELIVERY_STATUS;
select * from T_XBBNHFK_LOGIN
create table T_XBBNHFK_LOGIN
(
USER_ID int NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1000, INCREMENT BY 1),
USER_NAME VARCHAR(30),
PASSWORD VARCHAR(30)
);

create table T_XBBNHFK_WISHLIST(
BOOK_ID int,
BOOK_DESCRIPTION VARCHAR(45),

PRICE float,

primary key(BOOK_ID));

drop table T_XBBNHFK_WISHLIST

insert into T_XBBNHFK_LOGIN(user_name,password) values('admin','sammu' );

insert into T_XBBNHFK_LOGIN(user_name,password) values('sadhanashara@gmail.com','sammu' );
select * from T_XBBNHFK_BOOKS;

select user_id from T_XBBNHFK_LOGIN where user_name=

select * from T_XBBNHFK_LOGIN;
-------------------------------------------------------------------------------------------------------------
create or replace procedure insert_into_wishlist(id T_XBBNHFK_BOOK.BOOK_ID%TYPE,name T_XBBNHFK_BOOK.BOOK_DESCRIPTION%TYPE,code T_XBBNHFK_BOOK.PRICE%TYPE)
is
begin
insert into T_XBBNHFK_WISHLIST(BOOK_ID,BOOK_DESCRIPTION,PRICE)values(id,name,code);
commit;
end



select * from T_XBBNHFK_PROFILE_DETAIL;

select p.user_name,p.user_last_name,s.sub_type,s.amount,s.email from T_XBBNHFK_PROFILE_DETAIL p join T_XBBNHFK_SUBSCRIPTION s on p.email_id=s.email

delete from T_XBBNHFK_PROFILE_DETAIL where user_last_name='thra'

create table T_XBBNHFK_PROFILE_DETAIL(
USER_NAME VARCHAR(45),
USER_LAST_NAME VARCHAR(45),
PHONE_NUMBER VARCHAR(45),
EMAIL_ID VARCHAR(45),
ADDRESS_LINE1 VARCHAR(45),
ADDRESS_LINE2 VARCHAR(45),
CITY VARCHAR(30),
ZIP_CODE VARCHAR(30),

USER_ID int 
 primary key
);










































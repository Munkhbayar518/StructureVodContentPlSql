select * from vod_content_info;

delete from vod_content_info where content_id = 56;

alter table vod_live_content
rename column scheduled_start_date to start_date;


alter table vod_live_content
rename column scheduled_end_date to end_date;

alter table vod_live_content
modify end_date date default sysdate;

alter table vod_live_content
modify start_date date default sysdate;


select * from vod_live_content;
--live-content, serial-content edr geed type bh ystoi ym shg bnldaa. 
insert into vod_live_content values(69, 'qwer', sysdate, sysdate, 'sdf', 'asfd', 'asd', 'fsdf','fs','afd');
/
select extract(day from sysdate) from dual;
select  from dual;
select TO_CHAR (SYSDATE, 'YYYY-MM-DD hh:mi:ss'), systimestamp, sysdate from dual;


select extract(year from (select trunc(sysdate) as sysa from dual));
select * from vod_live_content;

select extract(year from sysdate) from dual;

select trunc(sysdate, 'q') from dual;
select to_char(sysdate, 'yyyy-mm-dd') from dual;
select sysdate from dual;
select to_date('2023-10-22 08:57') + 5 from dual;

alter session set nls_date_format ='yyyy-mm-dd mi:ss';

select * from vod_program;
select * from tv_program@ddisholddb x left join product_catalog@ddisholddb y on x.product_id = y.product_id order by in_date desc;


select * from vod_live_content;
drop sequence seq_sms_code;
/
create sequence seq_sms_code 
minvalue 10
maxvalue 40
start with 12
increment by 3
cycle
nocache;
/
alter sequence seq_sms_code
modify maxvalue = 30;
create OR REPLACE NONEDITIONABLE trigger tr_vod_sms_code
before insert or update on "VOD_LIVE_CONTENT"
for each row 
begin
    select seq_sms_code.nextval into :NEW.sms_code from dual;
end;
/
drop trigger tr_sms_code;
/
ALTER TABLE vod_live_content
ADD CONSTRAINT unique_vod_live_content UNIQUE (in_date, product_id, sms_code);
/

ALTER TABLE vod_live_content
DROP CONSTRAINT SYS_C009247;

SELECT constraint_name
FROM user_constraints
WHERE table_name = 'VOD_LIVE_CONTENT' AND constraint_type = 'P';


alter table vod_live_content
modify in_date varchar2(20);


alter table vod_live_content
add start_time varchar2(20);


alter table vod_live_content
add end_time varchar2(20);


alter table vod_live_content
drop column start_date;

alter table vod_live_content
drop column end_date;

select * from vod_live_content;
alter table vod_live_content
add product_id number;

insert into vod_live_content values();
insert into vod_live_content values(69, 'blalbla', 'blbabla', 'abab', 'dasdas', 'asfd', 'fsd', 'fs','afd', 'dsfsa', 56);

create sequence seq_vod_live_content_id
minvalue 1 
maxvalue 10000
start with 1 
increment by 1 
nocache
nocycle;
/
create trigger tr_vod_live_content_id
before insert on "VOD_LIVE_CONTENT"
for each row
begin
    select seq_vod_live_content_id.nextval into :NEW.live_content_id from dual;
end;
/

create table vod_content_type(
content_type number,
content_type_name varchar2(30));
select * from vod_content_type;
insert into vod_content_type values(1, 'FEATURE');
insert into vod_content_type values(2, 'SHORT');
insert into vod_content_type values(3, 'SERIES');
insert into vod_content_type values(4, 'LIVE');

/

SELECT * FROM VOD_CONTENT_INFO;



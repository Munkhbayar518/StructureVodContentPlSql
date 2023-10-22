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
/
create sequence seq_sms_code 
minvalue 12
maxvalue 22
start with 12
increment by 3
cycle
nocache;
/
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
ADD CONSTRAINT unique_vod_live_content UNIQUE (column1, column2, column3);
/

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

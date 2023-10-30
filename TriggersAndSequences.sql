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
create sequence seq_sms_code 
minvalue 10
maxvalue 40
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

select * from vod_serial_content;
alter table vod_serial_content
rename column name_mon to episode_name;


alter table vod_serial_content
drop column name_eng;

create sequence seq_vod_serial_content_id
minvalue 1
maxvalue 10000
start with 1
increment by 1
nocache
nocycle;
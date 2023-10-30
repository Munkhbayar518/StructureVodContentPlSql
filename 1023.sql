select * from vod_genres_list;
delete from vod_genres_list where genre_name in ('Horror','Thriller','default_genres');
update vod_genres_list set genre_id = 22 where genre_name = '?????????????';
commit;

select * from tv_content@ddisholddb;
select * from vod_content_info;
select * from vod_content_infpo;
select * from vod_content_actors;
select * from vod_content_genres;
select * from vod_actors_list;
select * from vod_genres_list;
--onClick={formik.handleSubmit} 

select * from vod_content_info;
delete from vod_genres_list where genre_id in (22,23);
select * from product_catalog@ddisholddb;

select * from vod_content_info;
SELECT * FROM VOD_GENRES_LIST;
select * from vod_parental_ratings_list;
SELECT * FROM VOD_PARENTAL_RATINGS_LIST;
ALTER TABLE VOD_PARENTAL_RATINGS_LIST 
RENAME COLUMN PARENTAL_RATING_DESCIPTION TO PARENTAL_RATING_DESCRIPTION;


create table VOD_PARENTAL_RATINGS_LIST
(
    PARENTAL_RATING_ID NUMBER,
    PARENTAL_RATING_NAME VARCHAR2(30),
    PARENTAL_RATING_DESCIPTION VARCHAR2(50)
);

insert into vod_parental_ratings_list values(1, '3+', 'https://ikon.mn/opinion/1q4e');
insert into vod_parental_ratings_list values(2, '6+', 'https://ikon.mn/opinion/1q4e');
insert into vod_parental_ratings_list values(3, '12+', 'https://ikon.mn/opinion/1q4e');
insert into vod_parental_ratings_list values(4, '18+', 'https://ikon.mn/opinion/1q4e');



select * from sys_users;
insert into sys_users(user_first_name, user_last_name, user_reg_no, user_phone, user_email, user_password, access_type, branch_id, role_id, department_id, division_id, status,  user_name)
values('????????','???????', '??95092735', '80109125', 'munkhbayar.b@ddishtv.mn', '96FY4FQE338=', 'SYS', '5', '1', '4', '5' ,'A', 'dalishmb');

insert into sys_users(user_first_name, user_last_name, user_reg_no, user_phone, user_email, user_password, access_type, branch_id, role_id, department_id, division_id, status,  user_name)
values('?????','?', '??02092735', '80102531', 'samad.ts@ddishtv.mn', '96FY4FQE338=', 'SYS', '5', '1', '4', '5' ,'A', 'samad');


commit;
 select decryptdata('96FY4FQE338=') from dual;
COMMIT;
commit;

select * from vod_content_info x left join vod_content_posters y on x.content_id = x.content_id;

SELECT * FROM VOD_CONTENT_POSTERS WHERE CONTENT_ID = 85;
select * from vod_content_posters;
select * from vod_poster_types;
select * from vod_content_posters x left join vod_poster_types y on x.poster_type = y.type;
select * from tv_channel_info;
select * from vod_content_info;
select * from vod_content_types;
select * from vod_live_content;
select * from vod_content_info;
select * from vod_serial_content;
select * from vod_content_info;
select * from vod_content_info where content_type = 1 order by created_date desc fetch first 10 rows only;
--posteriin type aar ni oruulah
--insert into vod_content_info with poster_type
--feature film = content_type = 1
--serial film = content_type = 2  double insert hiine gesn ug uu? yes, vod_live_Content dotor tsagiin medeelel edr ni bn 
--live  content_type = 3 

select * from vod_live_content;
select * from user_tab_columns where table_name = 'VOD_LIVE_CONTENT';

select * from vod_serial_content;
--vod_content_info ??? ??? ????? ?? ????? 
--drop unitel_asset_id
-- add season and episode
select * from vod_serial_content;
alter table vod_serial_content
drop column unitel_asset_id;

alter table vod_serial_content
add season number;

alter table vod_serial_content
add episode number;
--vod_serial_content ??? ??? ????? ?? ???? ???


INSERT INTO VOD_SERIAL_CONTENT(CONTENT_ID, DDISH_OLD_ID, EPISODE_NAME, DESCRIPTION_SHORT, DESCRIPTION_LONG, YEAR, PARENTAL_RATING, TRAILER, IS_FREE, IS_MGL, IS_BOX, AR_PRICE, UPDATED_USER_NAME, UPDATED_ACCESS_TYPE, SEASON, EPISODE) VALUES (67, 1243,'{input.episodeName}','{input.descriptionShort}','{input.descriptionLong}',1995,'{18+}','{input.trailer}','Y','Y','Y',1996,'{audit.UserName}','{audit.accessType}',1, 2);

select * from vod_serial_content;
select * from vod_live_content;         
select * from vod_content_info;
select * from vod_live_content;
select * from vod_actors_list;
select * from vod_content_info;
select * from sys_users;
INSERT INTO VOD_SERIAL_CONTENT(CONTENT_ID, DDISH_OLD_ID, EPISODE_NAME, DESCRIPTION_SHORT, DESCRIPTION_LONG, YEAR, PARENTAL_RATING, TRAILER, IS_FREE, IS_MGL, IS_BOX, AR_PRICE, UPDATED_USER_NAME, UPDATED_ACCESS_TYPE, SEASON, EPISODE) VALUES (105,123,'????????? ????','I dont feel anything','I dont know why i dont feel anything',1995,'18+','idk','N','Y','Y',1599,'DalishMb','SYS',1, 1);
select * from vod_content_info where content_id = 116 fetch first 1 rows only;
select * from vod_content_info;
select * from vod_content_posters;

/
set serveroutput on;
declare
p_success_message varchar2(200);
begin
    vod_package.edit_vod_content(123, 'changes this from package', 2366, 'changes this from package', 'changes this from package', 'changes this from package', 'changes this from package', 'changes this from package', 'changes this from package', 2005, '18+', 'fasdf' ,'N', 'N', 'Y', 5000, 'Y', 'MB','SYS', 54315, 1, p_success_message);
    
    DBMS_OUTPUT.PUT_LINE(P_SUCCESS_MESSAGE);
end;
/
ALTER TABLE VOD_CONTENT_INFO 
RENAME COLUMN UPDATED_ACESSS_TYPE TO UPDATED_ACCESS_TYPE;


select * from vod_type;
select * from vod_content_info;
commit;
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

commit;
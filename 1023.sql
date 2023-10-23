select * from vod_genres_list;
delete from vod_genres_list where genre_name in ('Horror','Thriller','default_genres');
update vod_genres_list set genre_id = 22 where genre_name = '?????????????';
commit;

select * from tv_content@ddisholddb;
select * from vod_content_info;

select * from vod_content_actors;
select * from vod_actors_list;

--onClick={formik.handleSubmit} 

select * from vod_content_info;